; ModuleID = '/llk/IR_all_yes/fs/nilfs2/recovery.c_pt.bc'
source_filename = "../fs/nilfs2/recovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.nilfs_super_root = type { i32, i16, i16, i64, %struct.nilfs_inode, %struct.nilfs_inode, %struct.nilfs_inode }
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
%struct.nilfs_recovery_info = type { i32, i64, i64, i64, i64, i64, %struct.list_head, i64, i64, i64, i64 }
%struct.nilfs_segment_summary = type { i32, i32, i32, i16, i16, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.nilfs_finfo = type { i64, i64, i32, i32 }
%struct.nilfs_recovery_block = type { i32, i64, i64, i32, %struct.list_head }
%struct.nilfs_binfo_v = type { i64, i64 }
%struct.nilfs_segment_entry = type { %struct.list_head, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013error %d loading the latest checkpoint\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013error %d preparing segment for recovery\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013error %d writing segment for recovery\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013I/O error reading segment\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Magic number mismatch\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sequence number mismatch\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Checksum error in super root\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Checksum error in segment payload\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Inconsistency found\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No super root in the last segment\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013unrecognized segment error %d\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014invalid segment: %s\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016salvaged %lu blocks\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013error %d roll-forwarding partial segment at blocknr = %llu\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014error %d recovering data block (ino=%lu, block-offset=%llu)\00", [34 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014buffer sync write failed during post-cleaning of recovery.\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 741, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 752, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 766, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 54, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 57, i32 9 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 60, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 63, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 66, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 69, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 72, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 75, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 78, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 672, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 683, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 546, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 717, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [24 x i8] c"../fs/nilfs2/recovery.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 705, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_read_super_root_block(ptr nocapture noundef readonly %nilfs, i64 noundef %sr_block, ptr nocapture noundef writeonly %pbh, i32 noundef %check) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pbh, align 4
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %1 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns_bdev, align 4
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %3 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ns_blocksize, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %2, i64 noundef %sr_block, i32 noundef %4, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %failed.thread, label %if.end, !prof !44

failed.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ns_sb46 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %5 = ptrtoint ptr %ns_sb46 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns_sb46, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %6, ptr noundef nonnull @.str.3) #9
  br label %cleanup23

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check)
  %tobool4.not = icmp eq i32 %check, 0
  br i1 %tobool4.not, label %if.end.if.end21_crit_edge, label %if.then5

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then5:                                         ; preds = %if.end
  %sr_bytes = getelementptr %struct.nilfs_super_root, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sr_bytes to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sr_bytes, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  br i1 %cmp, label %if.then5.sw.epilog.i_crit_edge, label %lor.lhs.false

if.then5.sw.epilog.i_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

lor.lhs.false:                                    ; preds = %if.then5
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp8 = icmp ult i32 %13, %conv
  br i1 %cmp8, label %lor.lhs.false.sw.epilog.i_crit_edge, label %if.end11

lor.lhs.false.sw.epilog.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp.i = icmp ult i32 %13, 5
  br i1 %cmp.i, label %do.body2.i, label %if.end16, !prof !44

do.body2.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

if.end16:                                         ; preds = %if.end11
  %conv12 = zext i16 %11 to i64
  %sub.i = add nsw i64 %conv12, -4
  %sub8.i = add i32 %13, -4
  %conv9.i = zext i32 %sub8.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv9.i)
  %cmp10.i = icmp ult i64 %sub.i, %conv9.i
  %extract.t.i = trunc i64 %sub.i to i32
  %cond.off0.i = select i1 %cmp10.i, i32 %extract.t.i, i32 %sub8.i
  %ns_crc_seed.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 53
  %14 = ptrtoint ptr %ns_crc_seed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ns_crc_seed.i, align 4
  %call.i41 = tail call i32 @crc32_le(i32 noundef %15, ptr noundef %sr_bytes, i32 noundef %cond.off0.i) #12
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %8, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i41, i32 %18)
  %cmp17.not = icmp eq i32 %call.i41, %18
  br i1 %cmp17.not, label %if.end16.if.end21_crit_edge, label %if.end16.sw.epilog.i_crit_edge

if.end16.sw.epilog.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %if.end16.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %19 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %pbh, align 4
  br label %cleanup23

sw.epilog.i:                                      ; preds = %if.end16.sw.epilog.i_crit_edge, %lor.lhs.false.sw.epilog.i_crit_edge, %if.then5.sw.epilog.i_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  %.in = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %20 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.in, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6) #9
  br label %cleanup23

cleanup23:                                        ; preds = %sw.epilog.i, %if.end21, %failed.thread
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %sw.epilog.i ], [ -5, %failed.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dispose_segment_list(ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not3 = icmp eq ptr %1, %head
  br i1 %cmp.i.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #9
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %12, %head
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_salvage_orphan_logs(ptr noundef %nilfs, ptr noundef %sb, ptr noundef %ri) local_unnamed_addr #0 align 64 {
entry:
  %segnum.i = alloca [4 x i64], align 8
  %nsalvaged_blocks.i = alloca i32, align 4
  %dsync_blocks.i = alloca %struct.list_head, align 4
  %root = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #9
  %0 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %root, align 4, !annotation !46
  %ri_lsegs_start = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 3
  %1 = ptrtoint ptr %ri_lsegs_start to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ri_lsegs_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ri_lsegs_end = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 4
  %3 = ptrtoint ptr %ri_lsegs_end to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ri_lsegs_end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ri_cno = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 2
  %5 = ptrtoint ptr %ri_cno to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ri_cno, align 8
  %call = call i32 @nilfs_attach_checkpoint(ptr noundef %sb, i64 noundef %6, i32 noundef 1, ptr noundef nonnull %root) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then4, !prof !47

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsalvaged_blocks.i) #9
  %9 = ptrtoint ptr %nsalvaged_blocks.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nsalvaged_blocks.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dsync_blocks.i) #9
  %10 = getelementptr inbounds %struct.list_head, ptr %dsync_blocks.i, i32 0, i32 1
  %11 = ptrtoint ptr %dsync_blocks.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dsync_blocks.i, ptr %dsync_blocks.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dsync_blocks.i, ptr %10, align 4
  %13 = ptrtoint ptr %ri_lsegs_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ri_lsegs_start, align 8
  %ri_lsegs_start_seq.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 5
  %15 = ptrtoint ptr %ri_lsegs_start_seq.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ri_lsegs_start_seq.i, align 8
  %ns_blocks_per_segment.i.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %17 = ptrtoint ptr %ns_blocks_per_segment.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ns_blocks_per_segment.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %14)
  %cmp164.i.i = icmp ult i64 %14, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !47

if.then168.i.i:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %14 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %18
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %nilfs_get_segnum_of_block.exit.i

if.else174.i.i:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %14) #13, !srcloc !48
  %asmresult1.i.i.i = extractvalue { i64, i64 } %19, 1
  br label %nilfs_get_segnum_of_block.exit.i

nilfs_get_segnum_of_block.exit.i:                 ; preds = %if.else174.i.i, %if.then168.i.i
  %segnum.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %conv.i.i = zext i32 %18 to i64
  %mul.i113.i = mul i64 %segnum.0.i.i, %conv.i.i
  %add.i114.i = add nsw i64 %conv.i.i, -1
  %sub.i.i = add i64 %add.i114.i, %mul.i113.i
  %ri_segnum.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 9
  %ri_pseg_start.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 7
  %ns_bdev.i.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %ns_blocksize.i.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %ns_ctime.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 18
  %ns_nongc_ctime.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 19
  %ns_first_data_block.i254.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 50
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %while.cond.i.outer.backedge, %nilfs_get_segnum_of_block.exit.i
  %seg_end.0.i.ph = phi i64 [ %sub.i.i, %nilfs_get_segnum_of_block.exit.i ], [ %sub.i252.i, %while.cond.i.outer.backedge ]
  %bh_sum.0.i.ph = phi ptr [ null, %nilfs_get_segnum_of_block.exit.i ], [ %call.i.i.i, %while.cond.i.outer.backedge ]
  %pseg_start.0.i.ph = phi i64 [ %14, %nilfs_get_segnum_of_block.exit.i ], [ %pseg_start.0.i.ph.be, %while.cond.i.outer.backedge ]
  %seg_seq.0.i.ph = phi i64 [ %16, %nilfs_get_segnum_of_block.exit.i ], [ %inc67.i, %while.cond.i.outer.backedge ]
  %segnum.0.i.ph = phi i64 [ %segnum.0.i.i, %nilfs_get_segnum_of_block.exit.i ], [ %nextnum.0.i.ph.be, %while.cond.i.outer.backedge ]
  %nextnum.0.i.ph = phi i64 [ 0, %nilfs_get_segnum_of_block.exit.i ], [ %nextnum.0.i.ph.be, %while.cond.i.outer.backedge ]
  %tobool64.not.i.ph = phi i1 [ true, %nilfs_get_segnum_of_block.exit.i ], [ false, %while.cond.i.outer.backedge ]
  %state.0.i.ph = phi i32 [ 0, %nilfs_get_segnum_of_block.exit.i ], [ %state.3284.i, %while.cond.i.outer.backedge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end53.i.while.cond.i_crit_edge, %while.cond.i.outer
  %bh_sum.0.i = phi ptr [ %call.i.i.i, %if.end53.i.while.cond.i_crit_edge ], [ %bh_sum.0.i.ph, %while.cond.i.outer ]
  %pseg_start.0.i = phi i64 [ %add.i, %if.end53.i.while.cond.i_crit_edge ], [ %pseg_start.0.i.ph, %while.cond.i.outer ]
  %nextnum.0.i = phi i64 [ %segnum.0.i235.i, %if.end53.i.while.cond.i_crit_edge ], [ %nextnum.0.i.ph, %while.cond.i.outer ]
  %tobool64.not.i = phi i1 [ true, %if.end53.i.while.cond.i_crit_edge ], [ %tobool64.not.i.ph, %while.cond.i.outer ]
  %state.0.i = phi i32 [ %state.2.i, %if.end53.i.while.cond.i_crit_edge ], [ %state.0.i.ph, %while.cond.i.outer ]
  %20 = ptrtoint ptr %ri_segnum.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ri_segnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %segnum.0.i.ph, i64 %21)
  %cmp.not.i = icmp eq i64 %segnum.0.i.ph, %21
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %22 = ptrtoint ptr %ri_pseg_start.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ri_pseg_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pseg_start.0.i, i64 %23)
  %cmp1.not.i = icmp ugt i64 %pseg_start.0.i, %23
  br i1 %cmp1.not.i, label %lor.rhs.i.while.end.i_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i.while.end.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %tobool.not.i116.i = icmp eq ptr %bh_sum.0.i, null
  br i1 %tobool.not.i116.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i117.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i117.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %bh_sum.0.i) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i117.i, %while.body.i.brelse.exit.i_crit_edge
  %24 = ptrtoint ptr %ns_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns_bdev.i.i, align 4
  %26 = ptrtoint ptr %ns_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ns_blocksize.i.i, align 4
  %call.i.i.i = call ptr @__bread_gfp(ptr noundef %25, i64 noundef %pseg_start.0.i, i32 noundef %27, i32 noundef 8) #9
  %tobool.not.i118.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i118.i, label %brelse.exit.i.failed.i_crit_edge, label %if.end.i

brelse.exit.i.failed.i_crit_edge:                 ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end.i:                                         ; preds = %brelse.exit.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data.i.i, align 4
  %call3.i = call fastcc i32 @nilfs_validate_log(ptr noundef %nilfs, i64 noundef %seg_seq.0.i.ph, ptr noundef nonnull %call.i.i.i, ptr noundef %29) #9
  %30 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3.i, label %strayed.i [
    i32 0, label %if.end9.i
    i32 2, label %if.end.i.failed.i_crit_edge
  ]

if.end.i.failed.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end9.i:                                        ; preds = %if.end.i
  %ss_flags.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %29, i32 0, i32 4
  %31 = ptrtoint ptr %ss_flags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ss_flags.i, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32) #9
  %conv.i = zext i16 %33 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.failed.i_crit_edge

if.end9.i.failed.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end12.i:                                       ; preds = %if.end9.i
  %ss_next.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %29, i32 0, i32 7
  %34 = ptrtoint ptr %ss_next.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ss_next.i, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #9
  %37 = ptrtoint ptr %ns_blocks_per_segment.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ns_blocks_per_segment.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %36)
  %cmp164.i227.i = icmp ult i64 %36, 4294967296
  br i1 %cmp164.i227.i, label %if.then168.i232.i, label %if.else174.i234.i, !prof !47

if.then168.i232.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i229.i = trunc i64 %36 to i32
  %div172.i230.i = udiv i32 %conv169.i229.i, %38
  %conv173.i231.i = zext i32 %div172.i230.i to i64
  br label %nilfs_get_segnum_of_block.exit236.i

if.else174.i234.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %38, i64 %36) #13, !srcloc !48
  %asmresult1.i.i233.i = extractvalue { i64, i64 } %39, 1
  br label %nilfs_get_segnum_of_block.exit236.i

nilfs_get_segnum_of_block.exit236.i:              ; preds = %if.else174.i234.i, %if.then168.i232.i
  %segnum.0.i235.i = phi i64 [ %conv173.i231.i, %if.then168.i232.i ], [ %asmresult1.i.i233.i, %if.else174.i234.i ]
  %ss_create.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %29, i32 0, i32 6
  %40 = ptrtoint ptr %ss_create.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ss_create.i, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #9
  %43 = ptrtoint ptr %ns_ctime.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %ns_ctime.i, align 8
  %and14.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %nilfs_get_segnum_of_block.exit236.i.if.end18.i_crit_edge

nilfs_get_segnum_of_block.exit236.i.if.end18.i_crit_edge: ; preds = %nilfs_get_segnum_of_block.exit236.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then16.i:                                      ; preds = %nilfs_get_segnum_of_block.exit236.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %ns_nongc_ctime.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %42, ptr %ns_nongc_ctime.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %nilfs_get_segnum_of_block.exit236.i.if.end18.i_crit_edge
  %45 = zext i32 %state.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %state.0.i, label %if.end18.i.try_next_pseg.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end18.i.sw.bb25.i_crit_edge
  ]

if.end18.i.sw.bb25.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25.i

if.end18.i.try_next_pseg.i_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_next_pseg.i

sw.bb.i:                                          ; preds = %if.end18.i
  %46 = and i32 %conv.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %46)
  %.not.i = icmp eq i32 %46, 9
  br i1 %.not.i, label %sw.bb.i.sw.bb25.i_crit_edge, label %sw.bb.i.try_next_pseg.i_crit_edge

sw.bb.i.try_next_pseg.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_next_pseg.i

sw.bb.i.sw.bb25.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25.i

sw.bb25.i:                                        ; preds = %sw.bb.i.sw.bb25.i_crit_edge, %if.end18.i.sw.bb25.i_crit_edge
  %and26.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %sw.bb25.i.failed.i_crit_edge, label %if.end29.i

sw.bb25.i.failed.i_crit_edge:                     ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end29.i:                                       ; preds = %sw.bb25.i
  %ss_nfinfo.i.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %29, i32 0, i32 9
  %47 = ptrtoint ptr %ss_nfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ss_nfinfo.i.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i237.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i237.i, label %if.end29.i.if.end35.i_crit_edge, label %if.end.i.i

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.end.i.i:                                       ; preds = %if.end29.i
  %ss_sumbytes.i.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %29, i32 0, i32 10
  %50 = ptrtoint ptr %ss_sumbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ss_sumbytes.i.i, align 8
  %52 = ptrtoint ptr %ns_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ns_blocksize.i.i, align 4
  %54 = ptrtoint ptr %ns_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ns_bdev.i.i, align 4
  %call.i.i240.i = call ptr @__bread_gfp(ptr noundef %55, i64 noundef %pseg_start.0.i, i32 noundef %53, i32 noundef 8) #9
  %tobool4.not.i.i = icmp eq ptr %call.i.i240.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.failed.i_crit_edge, label %if.end9.i.i, !prof !44

if.end.i.i.failed.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %56 = call i32 @llvm.bswap.i32(i32 %51) #9
  %add.i241.i = add i32 %53, -1
  %sub.i242.i = add i32 %add.i241.i, %56
  %div.i243.i = udiv i32 %sub.i242.i, %53
  %conv.i244.i = zext i32 %div.i243.i to i64
  %add2.i.i = add i64 %pseg_start.0.i, %conv.i244.i
  %ss_bytes.i.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %29, i32 0, i32 3
  %57 = ptrtoint ptr %ss_bytes.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ss_bytes.i.i, align 4
  %59 = call i16 @llvm.bswap.i16(i16 %58) #9
  %conv10.i.i = zext i16 %59 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %nilfs_skip_summary_info.exit.i.i.for.cond.i.i_crit_edge, %if.end9.i.i
  %bh.0.i.i = phi ptr [ %call.i.i240.i, %if.end9.i.i ], [ %bh.6.i.i, %nilfs_skip_summary_info.exit.i.i.for.cond.i.i_crit_edge ]
  %offset.0.i.i = phi i32 [ %conv10.i.i, %if.end9.i.i ], [ %offset.6.i.i, %nilfs_skip_summary_info.exit.i.i.for.cond.i.i_crit_edge ]
  %nfinfo.0.i.i = phi i32 [ %49, %if.end9.i.i ], [ %dec54.i.i, %nilfs_skip_summary_info.exit.i.i.for.cond.i.i_crit_edge ]
  %blocknr.0.i.i = phi i64 [ %add2.i.i, %if.end9.i.i ], [ %add60.i.i, %nilfs_skip_summary_info.exit.i.i.for.cond.i.i_crit_edge ]
  %b_size.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %b_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %b_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %offset.0.i.i)
  %cmp.i.i.i = icmp ult i32 %61, %offset.0.i.i
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %do.end7.i.i.i, !prof !44

do.body2.i.i.i:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end7.i.i.i:                                    ; preds = %for.cond.i.i
  %sub.i.i.i = sub i32 %61, %offset.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i.i)
  %cmp9.i.i.i = icmp ult i32 %sub.i.i.i, 24
  br i1 %cmp9.i.i.i, label %brelse.exit.i.i.i, label %do.end7.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge

do.end7.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge: ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_read_summary_info.exit.i.i

brelse.exit.i.i.i:                                ; preds = %do.end7.i.i.i
  %b_blocknr.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %b_blocknr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %b_blocknr.i.i.i, align 8
  call void @__brelse(ptr noundef nonnull %bh.0.i.i) #9
  %64 = ptrtoint ptr %ns_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ns_bdev.i.i, align 4
  %add.i.i.i = add i64 %63, 1
  %66 = ptrtoint ptr %ns_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ns_blocksize.i.i, align 4
  %call.i.i.i.i = call ptr @__bread_gfp(ptr noundef %65, i64 noundef %add.i.i.i, i32 noundef %67, i32 noundef 8) #9
  %tobool11.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %brelse.exit.i.i.i.failed.i_crit_edge, label %brelse.exit.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge, !prof !44

brelse.exit.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge: ; preds = %brelse.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_read_summary_info.exit.i.i

brelse.exit.i.i.i.failed.i_crit_edge:             ; preds = %brelse.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

nilfs_read_summary_info.exit.i.i:                 ; preds = %brelse.exit.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge, %do.end7.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge
  %bh.1.i.i = phi ptr [ %bh.0.i.i, %do.end7.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge ], [ %call.i.i.i.i, %brelse.exit.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge ]
  %offset.1.i.i = phi i32 [ %offset.0.i.i, %do.end7.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge ], [ 0, %brelse.exit.i.i.i.nilfs_read_summary_info.exit.i.i_crit_edge ]
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 %offset.1.i.i
  %tobool12.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool12.not.i.i, label %nilfs_read_summary_info.exit.i.i.if.then.i143.i.i_crit_edge, label %if.end22.i.i, !prof !44

nilfs_read_summary_info.exit.i.i.if.then.i143.i.i_crit_edge: ; preds = %nilfs_read_summary_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i143.i.i

if.end22.i.i:                                     ; preds = %nilfs_read_summary_info.exit.i.i
  %add23.i.i.i = add i32 %offset.1.i.i, 24
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr.i.i.i, align 8
  %72 = call i64 @llvm.bswap.i64(i64 %71) #9
  %conv23.i.i = trunc i64 %72 to i32
  %fi_nblocks.i.i = getelementptr inbounds %struct.nilfs_finfo, ptr %add.ptr.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %fi_nblocks.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fi_nblocks.i.i, align 8
  %75 = call i32 @llvm.bswap.i32(i32 %74) #9
  %fi_ndatablk.i.i = getelementptr inbounds %struct.nilfs_finfo, ptr %add.ptr.i.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %fi_ndatablk.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fi_ndatablk.i.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #9
  %sub24.i.i = sub i32 %75, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.not206.i.i = icmp eq i32 %77, 0
  br i1 %cmp.not206.i.i, label %if.end22.i.i.while.end.i.i_crit_edge, label %if.end22.i.i.while.body.i.i_crit_edge

if.end22.i.i.while.body.i.i_crit_edge:            ; preds = %if.end22.i.i
  br label %while.body.i.i

if.end22.i.i.while.end.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end22.i.i.while.body.i.i_crit_edge
  %dec210.in.i.i = phi i32 [ %dec210.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %78, %if.end22.i.i.while.body.i.i_crit_edge ]
  %blocknr.1209.i.i = phi i64 [ %inc.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %blocknr.0.i.i, %if.end22.i.i.while.body.i.i_crit_edge ]
  %offset.3208.i.i = phi i32 [ %add23.i128.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add23.i.i.i, %if.end22.i.i.while.body.i.i_crit_edge ]
  %bh.3207.i.i = phi ptr [ %bh.4.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %bh.1.i.i, %if.end22.i.i.while.body.i.i_crit_edge ]
  %dec210.i.i = add i32 %dec210.in.i.i, -1
  %b_size.i109.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.3207.i.i, i32 0, i32 4
  %79 = ptrtoint ptr %b_size.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %b_size.i109.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %offset.3208.i.i)
  %cmp.i110.i.i = icmp ult i32 %80, %offset.3208.i.i
  br i1 %cmp.i110.i.i, label %do.body2.i111.i.i, label %do.end7.i114.i.i, !prof !44

do.body2.i111.i.i:                                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end7.i114.i.i:                                 ; preds = %while.body.i.i
  %sub.i112.i.i = sub i32 %80, %offset.3208.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i112.i.i)
  %cmp9.i113.i.i = icmp ult i32 %sub.i112.i.i, 16
  br i1 %cmp9.i113.i.i, label %if.then10.i117.i.i, label %do.end7.i114.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge

do.end7.i114.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge: ; preds = %do.end7.i114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_read_summary_info.exit131.i.i

if.then10.i117.i.i:                               ; preds = %do.end7.i114.i.i
  %b_blocknr.i115.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.3207.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %b_blocknr.i115.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %b_blocknr.i115.i.i, align 8
  %tobool.not.i.i116.i.i = icmp eq ptr %bh.3207.i.i, null
  br i1 %tobool.not.i.i116.i.i, label %if.then10.i117.i.i.brelse.exit.i124.i.i_crit_edge, label %if.then.i.i118.i.i

if.then10.i117.i.i.brelse.exit.i124.i.i_crit_edge: ; preds = %if.then10.i117.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i124.i.i

if.then.i.i118.i.i:                               ; preds = %if.then10.i117.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %bh.3207.i.i) #9
  br label %brelse.exit.i124.i.i

brelse.exit.i124.i.i:                             ; preds = %if.then.i.i118.i.i, %if.then10.i117.i.i.brelse.exit.i124.i.i_crit_edge
  %83 = ptrtoint ptr %ns_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ns_bdev.i.i, align 4
  %add.i120.i.i = add i64 %82, 1
  %85 = ptrtoint ptr %ns_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ns_blocksize.i.i, align 4
  %call.i.i122.i.i = call ptr @__bread_gfp(ptr noundef %84, i64 noundef %add.i120.i.i, i32 noundef %86, i32 noundef 8) #9
  %tobool11.not.i123.i.i = icmp eq ptr %call.i.i122.i.i, null
  br i1 %tobool11.not.i123.i.i, label %brelse.exit.i124.i.i.failed.i_crit_edge, label %brelse.exit.i124.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge, !prof !44

brelse.exit.i124.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge: ; preds = %brelse.exit.i124.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_read_summary_info.exit131.i.i

brelse.exit.i124.i.i.failed.i_crit_edge:          ; preds = %brelse.exit.i124.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

nilfs_read_summary_info.exit131.i.i:              ; preds = %brelse.exit.i124.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge, %do.end7.i114.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge
  %bh.4.i.i = phi ptr [ %bh.3207.i.i, %do.end7.i114.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge ], [ %call.i.i122.i.i, %brelse.exit.i124.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge ]
  %offset.4.i.i = phi i32 [ %offset.3208.i.i, %do.end7.i114.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge ], [ 0, %brelse.exit.i124.i.i.nilfs_read_summary_info.exit131.i.i_crit_edge ]
  %b_data.i126.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %b_data.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data.i126.i.i, align 4
  %add.ptr.i127.i.i = getelementptr i8, ptr %88, i32 %offset.4.i.i
  %add23.i128.i.i = add i32 %offset.4.i.i, 16
  %tobool27.not.i.i = icmp eq ptr %add.ptr.i127.i.i, null
  br i1 %tobool27.not.i.i, label %nilfs_read_summary_info.exit131.i.i.out.i.i_crit_edge, label %if.end37.i.i, !prof !44

nilfs_read_summary_info.exit131.i.i.out.i.i_crit_edge: ; preds = %nilfs_read_summary_info.exit131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

if.end37.i.i:                                     ; preds = %nilfs_read_summary_info.exit131.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3136, i32 noundef 40) #14
  %tobool39.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool39.not.i.i, label %if.end37.i.i.out.i.i_crit_edge, label %if.end49.i.i, !prof !44

if.end37.i.i.out.i.i_crit_edge:                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

if.end49.i.i:                                     ; preds = %if.end37.i.i
  %90 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv23.i.i, ptr %call7.i.i.i, align 8
  %inc.i.i = add i64 %blocknr.1209.i.i, 1
  %blocknr51.i.i = getelementptr inbounds %struct.nilfs_recovery_block, ptr %call7.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %blocknr51.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %blocknr.1209.i.i, ptr %blocknr51.i.i, align 8
  %92 = ptrtoint ptr %add.ptr.i127.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %add.ptr.i127.i.i, align 8
  %94 = call i64 @llvm.bswap.i64(i64 %93) #9
  %vblocknr.i.i = getelementptr inbounds %struct.nilfs_recovery_block, ptr %call7.i.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %vblocknr.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %vblocknr.i.i, align 8
  %bi_blkoff.i.i = getelementptr inbounds %struct.nilfs_binfo_v, ptr %add.ptr.i127.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %bi_blkoff.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %bi_blkoff.i.i, align 8
  %98 = call i64 @llvm.bswap.i64(i64 %97) #9
  %conv52.i.i = trunc i64 %98 to i32
  %blkoff.i.i = getelementptr inbounds %struct.nilfs_recovery_block, ptr %call7.i.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %blkoff.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv52.i.i, ptr %blkoff.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.nilfs_recovery_block, ptr %call7.i.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %10, align 4
  %call.i.i132.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %101, ptr noundef nonnull %dsync_blocks.i) #9
  br i1 %call.i.i132.i.i, label %if.end.i.i.i.i, label %if.end49.i.i.cleanup.i.i_crit_edge

if.end49.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i.i.i:                                   ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %list.i.i, ptr %10, align 4
  %103 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %dsync_blocks.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.nilfs_recovery_block, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i.i.i, align 8
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %list.i.i, ptr %101, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i.i.i, %if.end49.i.i.cleanup.i.i_crit_edge
  %cmp.not.i.i = icmp eq i32 %dec210.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup.i.i.while.end.i.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %if.end22.i.i.while.end.i.i_crit_edge
  %bh.3.lcssa.i.i = phi ptr [ %bh.1.i.i, %if.end22.i.i.while.end.i.i_crit_edge ], [ %bh.4.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %offset.3.lcssa.i.i = phi i32 [ %add23.i.i.i, %if.end22.i.i.while.end.i.i_crit_edge ], [ %add23.i128.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %blocknr.1.lcssa.i.i = phi i64 [ %blocknr.0.i.i, %if.end22.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %dec54.i.i = add i32 %nfinfo.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec54.i.i)
  %cmp55.i.i = icmp eq i32 %dec54.i.i, 0
  br i1 %cmp55.i.i, label %while.end.i.i.out.i.i_crit_edge, label %if.end58.i.i

while.end.i.i.out.i.i_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

if.end58.i.i:                                     ; preds = %while.end.i.i
  %conv59.i.i = zext i32 %sub24.i.i to i64
  %add60.i.i = add i64 %blocknr.1.lcssa.i.i, %conv59.i.i
  %b_size.i133.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.3.lcssa.i.i, i32 0, i32 4
  %106 = ptrtoint ptr %b_size.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %b_size.i133.i.i, align 8
  %sub.i134.i.i = sub i32 %107, %offset.3.lcssa.i.i
  %div1.i.i.i = lshr i32 %sub.i134.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub24.i.i, i32 %div1.i.i.i)
  %cmp.not.i.i245.i = icmp ugt i32 %sub24.i.i, %div1.i.i.i
  br i1 %cmp.not.i.i245.i, label %if.else.i.i246.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i.i = shl i32 %sub24.i.i, 3
  %add.i135.i.i = add i32 %offset.3.lcssa.i.i, %mul.i.i.i
  br label %nilfs_skip_summary_info.exit.i.i

if.else.i.i246.i:                                 ; preds = %if.end58.i.i
  %b_blocknr.i136.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.3.lcssa.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %b_blocknr.i136.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %b_blocknr.i136.i.i, align 8
  %div22.i.i.i = lshr i32 %107, 3
  %sub3.i.i.i = sub i32 %sub24.i.i, %div1.i.i.i
  %add4.i.i.i = add nsw i32 %div22.i.i.i, -1
  %sub5.i.i.i = add i32 %add4.i.i.i, %sub3.i.i.i
  %div6.i.i.i = udiv i32 %sub5.i.i.i, %div22.i.i.i
  %sub7.i.i.i = add i32 %div6.i.i.i, 536870911
  %mul8.i.i.i = mul i32 %sub7.i.i.i, %div22.i.i.i
  %sub9.i.i.i = sub i32 %sub3.i.i.i, %mul8.i.i.i
  %mul10.i.i.i = shl i32 %sub9.i.i.i, 3
  %tobool.not.i.i137.i.i = icmp eq ptr %bh.3.lcssa.i.i, null
  br i1 %tobool.not.i.i137.i.i, label %if.else.i.i246.i.brelse.exit.i142.i.i_crit_edge, label %if.then.i.i138.i.i

if.else.i.i246.i.brelse.exit.i142.i.i_crit_edge:  ; preds = %if.else.i.i246.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i142.i.i

if.then.i.i138.i.i:                               ; preds = %if.else.i.i246.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %bh.3.lcssa.i.i) #9
  br label %brelse.exit.i142.i.i

brelse.exit.i142.i.i:                             ; preds = %if.then.i.i138.i.i, %if.else.i.i246.i.brelse.exit.i142.i.i_crit_edge
  %110 = ptrtoint ptr %ns_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ns_bdev.i.i, align 4
  %conv.i.i.i = zext i32 %div6.i.i.i to i64
  %add11.i.i.i = add i64 %109, %conv.i.i.i
  %112 = ptrtoint ptr %ns_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ns_blocksize.i.i, align 4
  %call.i.i141.i.i = call ptr @__bread_gfp(ptr noundef %111, i64 noundef %add11.i.i.i, i32 noundef %113, i32 noundef 8) #9
  br label %nilfs_skip_summary_info.exit.i.i

nilfs_skip_summary_info.exit.i.i:                 ; preds = %brelse.exit.i142.i.i, %if.then.i.i.i
  %bh.6.i.i = phi ptr [ %call.i.i141.i.i, %brelse.exit.i142.i.i ], [ %bh.3.lcssa.i.i, %if.then.i.i.i ]
  %offset.6.i.i = phi i32 [ %mul10.i.i.i, %brelse.exit.i142.i.i ], [ %add.i135.i.i, %if.then.i.i.i ]
  %tobool61.not.i.i = icmp eq ptr %bh.6.i.i, null
  br i1 %tobool61.not.i.i, label %nilfs_skip_summary_info.exit.i.i.failed.i_crit_edge, label %nilfs_skip_summary_info.exit.i.i.for.cond.i.i_crit_edge

nilfs_skip_summary_info.exit.i.i.for.cond.i.i_crit_edge: ; preds = %nilfs_skip_summary_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

nilfs_skip_summary_info.exit.i.i.failed.i_crit_edge: ; preds = %nilfs_skip_summary_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

out.i.i:                                          ; preds = %while.end.i.i.out.i.i_crit_edge, %if.end37.i.i.out.i.i_crit_edge, %nilfs_read_summary_info.exit131.i.i.out.i.i_crit_edge
  %bh.8.i.i = phi ptr [ %bh.4.i.i, %nilfs_read_summary_info.exit131.i.i.out.i.i_crit_edge ], [ %bh.4.i.i, %if.end37.i.i.out.i.i_crit_edge ], [ %bh.3.lcssa.i.i, %while.end.i.i.out.i.i_crit_edge ]
  %err.4.i.i = phi i32 [ -12, %if.end37.i.i.out.i.i_crit_edge ], [ -5, %nilfs_read_summary_info.exit131.i.i.out.i.i_crit_edge ], [ 0, %while.end.i.i.out.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %bh.8.i.i, null
  br i1 %tobool.not.i.i.i, label %out.i.i.nilfs_scan_dsync_log.exit.i_crit_edge, label %out.i.i.if.then.i143.i.i_crit_edge

out.i.i.if.then.i143.i.i_crit_edge:               ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i143.i.i

out.i.i.nilfs_scan_dsync_log.exit.i_crit_edge:    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_scan_dsync_log.exit.i

if.then.i143.i.i:                                 ; preds = %out.i.i.if.then.i143.i.i_crit_edge, %nilfs_read_summary_info.exit.i.i.if.then.i143.i.i_crit_edge
  %err.4222.i.i = phi i32 [ %err.4.i.i, %out.i.i.if.then.i143.i.i_crit_edge ], [ -5, %nilfs_read_summary_info.exit.i.i.if.then.i143.i.i_crit_edge ]
  %bh.8221.i.i = phi ptr [ %bh.8.i.i, %out.i.i.if.then.i143.i.i_crit_edge ], [ %bh.1.i.i, %nilfs_read_summary_info.exit.i.i.if.then.i143.i.i_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.8221.i.i) #9
  br label %nilfs_scan_dsync_log.exit.i

nilfs_scan_dsync_log.exit.i:                      ; preds = %if.then.i143.i.i, %out.i.i.nilfs_scan_dsync_log.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %err.4.i.i, %out.i.i.nilfs_scan_dsync_log.exit.i_crit_edge ], [ %err.4222.i.i, %if.then.i143.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool31.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool31.not.i, label %nilfs_scan_dsync_log.exit.i.if.end35.i_crit_edge, label %nilfs_scan_dsync_log.exit.i.failed.i_crit_edge, !prof !47

nilfs_scan_dsync_log.exit.i.failed.i_crit_edge:   ; preds = %nilfs_scan_dsync_log.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

nilfs_scan_dsync_log.exit.i.if.end35.i_crit_edge: ; preds = %nilfs_scan_dsync_log.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %nilfs_scan_dsync_log.exit.i.if.end35.i_crit_edge, %if.end29.i.if.end35.i_crit_edge
  %and36.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.try_next_pseg.i_crit_edge, label %if.then38.i

if.end35.i.try_next_pseg.i_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_next_pseg.i

if.then38.i:                                      ; preds = %if.end35.i
  %call39.i = call fastcc i32 @nilfs_recover_dsync_blocks(ptr noundef %nilfs, ptr noundef %sb, ptr noundef %8, ptr noundef nonnull %dsync_blocks.i, ptr noundef nonnull %nsalvaged_blocks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then38.i.try_next_pseg.i_crit_edge, label %if.then38.i.failed.i_crit_edge, !prof !47

if.then38.i.failed.i_crit_edge:                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.then38.i.try_next_pseg.i_crit_edge:            ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_next_pseg.i

try_next_pseg.i:                                  ; preds = %if.then38.i.try_next_pseg.i_crit_edge, %if.end35.i.try_next_pseg.i_crit_edge, %sw.bb.i.try_next_pseg.i_crit_edge, %if.end18.i.try_next_pseg.i_crit_edge
  %state.2.i = phi i32 [ %state.0.i, %if.end18.i.try_next_pseg.i_crit_edge ], [ 1, %if.end35.i.try_next_pseg.i_crit_edge ], [ 0, %sw.bb.i.try_next_pseg.i_crit_edge ], [ 0, %if.then38.i.try_next_pseg.i_crit_edge ]
  %114 = ptrtoint ptr %ri_lsegs_end to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ri_lsegs_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pseg_start.0.i, i64 %115)
  %cmp50.i = icmp eq i64 %pseg_start.0.i, %115
  br i1 %cmp50.i, label %try_next_pseg.i.while.end.i_crit_edge, label %if.end53.i

try_next_pseg.i.while.end.i_crit_edge:            ; preds = %try_next_pseg.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end53.i:                                       ; preds = %try_next_pseg.i
  %ss_nblocks.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %29, i32 0, i32 8
  %116 = ptrtoint ptr %ss_nblocks.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ss_nblocks.i, align 8
  %118 = call i32 @llvm.bswap.i32(i32 %117) #9
  %conv54.i = zext i32 %118 to i64
  %add.i = add i64 %pseg_start.0.i, %conv54.i
  %cmp55.i = icmp ult i64 %add.i, %seg_end.0.i.ph
  br i1 %cmp55.i, label %if.end53.i.while.cond.i_crit_edge, label %if.end53.i.if.end66.i_crit_edge

if.end53.i.if.end66.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.end53.i.while.cond.i_crit_edge:                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

strayed.i:                                        ; preds = %if.end.i
  %119 = ptrtoint ptr %ri_lsegs_end to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %ri_lsegs_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pseg_start.0.i, i64 %120)
  %cmp60.i = icmp ne i64 %pseg_start.0.i, %120
  %or.cond285.i = and i1 %tobool64.not.i, %cmp60.i
  br i1 %or.cond285.i, label %strayed.i.if.end66.i_crit_edge, label %strayed.i.while.end.i_crit_edge

strayed.i.while.end.i_crit_edge:                  ; preds = %strayed.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

strayed.i.if.end66.i_crit_edge:                   ; preds = %strayed.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.end66.i:                                       ; preds = %strayed.i.if.end66.i_crit_edge, %if.end53.i.if.end66.i_crit_edge
  %state.3284.i = phi i32 [ %state.0.i, %strayed.i.if.end66.i_crit_edge ], [ %state.2.i, %if.end53.i.if.end66.i_crit_edge ]
  %nextnum.1282.i = phi i64 [ %nextnum.0.i, %strayed.i.if.end66.i_crit_edge ], [ %segnum.0.i235.i, %if.end53.i.if.end66.i_crit_edge ]
  %inc67.i = add i64 %seg_seq.0.i.ph, 1
  %121 = ptrtoint ptr %ns_blocks_per_segment.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ns_blocks_per_segment.i.i, align 4
  %conv.i248.i = zext i32 %122 to i64
  %mul.i249.i = mul i64 %nextnum.1282.i, %conv.i248.i
  %add.i251.i = add nsw i64 %conv.i248.i, -1
  %sub.i252.i = add i64 %add.i251.i, %mul.i249.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nextnum.1282.i)
  %cmp.i253.i = icmp eq i64 %nextnum.1282.i, 0
  br i1 %cmp.i253.i, label %if.then.i256.i, label %if.end66.i.while.cond.i.outer.backedge_crit_edge

if.end66.i.while.cond.i.outer.backedge_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.outer.backedge

while.cond.i.outer.backedge:                      ; preds = %if.then.i256.i, %if.end66.i.while.cond.i.outer.backedge_crit_edge
  %pseg_start.0.i.ph.be = phi i64 [ %conv4.i255.i, %if.then.i256.i ], [ %mul.i249.i, %if.end66.i.while.cond.i.outer.backedge_crit_edge ]
  %nextnum.0.i.ph.be = phi i64 [ 0, %if.then.i256.i ], [ %nextnum.1282.i, %if.end66.i.while.cond.i.outer.backedge_crit_edge ]
  br label %while.cond.i.outer

if.then.i256.i:                                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %ns_first_data_block.i254.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ns_first_data_block.i254.i, align 8
  %conv4.i255.i = zext i32 %124 to i64
  br label %while.cond.i.outer.backedge

while.end.i:                                      ; preds = %strayed.i.while.end.i_crit_edge, %try_next_pseg.i.while.end.i_crit_edge, %lor.rhs.i.while.end.i_crit_edge
  %bh_sum.1.i = phi ptr [ %bh_sum.0.i, %lor.rhs.i.while.end.i_crit_edge ], [ %call.i.i.i, %try_next_pseg.i.while.end.i_crit_edge ], [ %call.i.i.i, %strayed.i.while.end.i_crit_edge ]
  %125 = ptrtoint ptr %nsalvaged_blocks.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nsalvaged_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool68.not.i = icmp eq i32 %126, 0
  br i1 %tobool68.not.i, label %while.end.i.out.i_crit_edge, label %if.then69.i

while.end.i.out.i_crit_edge:                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then69.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12, i32 noundef %126) #9
  %127 = ptrtoint ptr %ri to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %ri, align 8
  br label %out.i

out.i:                                            ; preds = %failed.i, %if.then69.i, %while.end.i.out.i_crit_edge
  %bh_sum.2.i = phi ptr [ %call.i.i.i, %failed.i ], [ %bh_sum.1.i, %if.then69.i ], [ %bh_sum.1.i, %while.end.i.out.i_crit_edge ]
  %err.4.i = phi i32 [ %err.5.i, %failed.i ], [ 0, %if.then69.i ], [ 0, %while.end.i.out.i_crit_edge ]
  %tobool.not.i259.i = icmp eq ptr %bh_sum.2.i, null
  br i1 %tobool.not.i259.i, label %out.i.brelse.exit262.i_crit_edge, label %if.then.i260.i

out.i.brelse.exit262.i_crit_edge:                 ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit262.i

if.then.i260.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %bh_sum.2.i) #9
  br label %brelse.exit262.i

brelse.exit262.i:                                 ; preds = %if.then.i260.i, %out.i.brelse.exit262.i_crit_edge
  %128 = ptrtoint ptr %dsync_blocks.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %dsync_blocks.i, align 4
  %cmp.i.not3.i.i = icmp eq ptr %129, %dsync_blocks.i
  br i1 %cmp.i.not3.i.i, label %brelse.exit262.i.nilfs_do_roll_forward.exit_crit_edge, label %brelse.exit262.i.while.body.i264.i_crit_edge

brelse.exit262.i.while.body.i264.i_crit_edge:     ; preds = %brelse.exit262.i
  br label %while.body.i264.i

brelse.exit262.i.nilfs_do_roll_forward.exit_crit_edge: ; preds = %brelse.exit262.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_do_roll_forward.exit

while.body.i264.i:                                ; preds = %list_del.exit.i.i.while.body.i264.i_crit_edge, %brelse.exit262.i.while.body.i264.i_crit_edge
  %130 = phi ptr [ %140, %list_del.exit.i.i.while.body.i264.i_crit_edge ], [ %129, %brelse.exit262.i.while.body.i264.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %130, i32 -28
  %call.i.i.i263.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %130) #9
  br i1 %call.i.i.i263.i, label %if.end.i.i.i265.i, label %while.body.i264.i.list_del.exit.i.i_crit_edge

while.body.i264.i.list_del.exit.i.i_crit_edge:    ; preds = %while.body.i264.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i265.i:                                ; preds = %while.body.i264.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %prev.i.i.i.i, align 4
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %130, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %132, ptr %prev1.i.i.i.i.i, align 4
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %134, ptr %132, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i265.i, %while.body.i264.i.list_del.exit.i.i_crit_edge
  %137 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 256 to ptr), ptr %130, align 4
  %prev.i.i266.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i266.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i266.i, align 4
  call void @kfree(ptr noundef %add.ptr.i.i) #9
  %139 = ptrtoint ptr %dsync_blocks.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile ptr, ptr %dsync_blocks.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %140, %dsync_blocks.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.nilfs_do_roll_forward.exit_crit_edge, label %list_del.exit.i.i.while.body.i264.i_crit_edge

list_del.exit.i.i.while.body.i264.i_crit_edge:    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i264.i

list_del.exit.i.i.nilfs_do_roll_forward.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_do_roll_forward.exit

failed.i:                                         ; preds = %if.then38.i.failed.i_crit_edge, %nilfs_scan_dsync_log.exit.i.failed.i_crit_edge, %nilfs_skip_summary_info.exit.i.i.failed.i_crit_edge, %brelse.exit.i124.i.i.failed.i_crit_edge, %brelse.exit.i.i.i.failed.i_crit_edge, %if.end.i.i.failed.i_crit_edge, %sw.bb25.i.failed.i_crit_edge, %if.end9.i.failed.i_crit_edge, %if.end.i.failed.i_crit_edge, %brelse.exit.i.failed.i_crit_edge
  %err.5.i = phi i32 [ -5, %brelse.exit.i124.i.i.failed.i_crit_edge ], [ -5, %brelse.exit.i.i.i.failed.i_crit_edge ], [ -5, %nilfs_skip_summary_info.exit.i.i.failed.i_crit_edge ], [ %call39.i, %if.then38.i.failed.i_crit_edge ], [ %retval.0.i.i, %nilfs_scan_dsync_log.exit.i.failed.i_crit_edge ], [ -5, %if.end.i.i.failed.i_crit_edge ], [ -22, %sw.bb25.i.failed.i_crit_edge ], [ -22, %if.end9.i.failed.i_crit_edge ], [ -5, %if.end.i.failed.i_crit_edge ], [ -5, %brelse.exit.i.failed.i_crit_edge ]
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.13, i32 noundef %err.5.i, i64 noundef %pseg_start.0.i) #9
  br label %out.i

nilfs_do_roll_forward.exit:                       ; preds = %list_del.exit.i.i.nilfs_do_roll_forward.exit_crit_edge, %brelse.exit262.i.nilfs_do_roll_forward.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsync_blocks.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsalvaged_blocks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4.i)
  %tobool7.not = icmp eq i32 %err.4.i, 0
  br i1 %tobool7.not, label %if.end15, label %nilfs_do_roll_forward.exit.failed_crit_edge, !prof !47

nilfs_do_roll_forward.exit.failed_crit_edge:      ; preds = %nilfs_do_roll_forward.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end15:                                         ; preds = %nilfs_do_roll_forward.exit
  %141 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ri, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %cmp16 = icmp eq i32 %142, 2
  br i1 %cmp16, label %if.then17, label %if.end15.failed_crit_edge

if.end15.failed_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.then17:                                        ; preds = %if.end15
  %ri_used_segments.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 6
  %ns_sufile.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %143 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ns_sufile.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %segnum.i) #9
  %145 = getelementptr inbounds [4 x i64], ptr %segnum.i, i32 0, i32 1
  %146 = getelementptr inbounds [4 x i64], ptr %segnum.i, i32 0, i32 2
  %147 = getelementptr inbounds [4 x i64], ptr %segnum.i, i32 0, i32 3
  %ns_segnum.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 14
  %148 = ptrtoint ptr %ns_segnum.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %ns_segnum.i, align 8
  %150 = ptrtoint ptr %segnum.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %segnum.i, align 8
  %ns_nextnum.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 15
  %151 = ptrtoint ptr %ns_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %ns_nextnum.i, align 8
  %153 = ptrtoint ptr %145 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %145, align 8
  %154 = ptrtoint ptr %ri_segnum.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %ri_segnum.i, align 8
  %156 = ptrtoint ptr %146 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %146, align 8
  %ri_nextnum.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 10
  %157 = ptrtoint ptr %ri_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ri_nextnum.i, align 8
  %159 = ptrtoint ptr %147 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %147, align 8
  %call.i.i = call i32 @nilfs_sufile_update(ptr noundef %144, i64 noundef %152, i32 noundef 0, ptr noundef nonnull @nilfs_sufile_do_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then17.if.then26_crit_edge, !prof !47

if.then17.if.then26_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

for.cond.preheader.i:                             ; preds = %if.then17
  %prev.i9.i.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 6, i32 1
  %160 = ptrtoint ptr %145 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %145, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %162 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i77 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %162, i32 noundef 3136, i32 noundef 16) #14
  %tobool.not.i.i78 = icmp eq ptr %call7.i.i.i77, null
  br i1 %tobool.not.i.i78, label %for.cond.preheader.i.if.then26_crit_edge, label %if.end.i.i80, !prof !44

for.cond.preheader.i.if.then26_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end.i.i80:                                     ; preds = %for.cond.preheader.i
  %segnum4.i.i = getelementptr inbounds %struct.nilfs_segment_entry, ptr %call7.i.i.i77, i32 0, i32 1
  %163 = ptrtoint ptr %segnum4.i.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %161, ptr %segnum4.i.i, align 8
  %164 = ptrtoint ptr %call7.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %call7.i.i.i77, ptr %call7.i.i.i77, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i77, i32 0, i32 1
  %165 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call7.i.i.i77, ptr %prev.i.i.i, align 4
  %166 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %prev.i9.i.i, align 4
  %call.i.i.i.i79 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i77, ptr noundef %167, ptr noundef %ri_used_segments.i) #9
  br i1 %call.i.i.i.i79, label %if.end.i.i.i.i81, label %if.end.i.i80.for.inc.i_crit_edge

if.end.i.i80.for.inc.i_crit_edge:                 ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i.i81:                                 ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call7.i.i.i77, ptr %prev.i9.i.i, align 4
  %169 = ptrtoint ptr %call7.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %ri_used_segments.i, ptr %call7.i.i.i77, align 8
  %170 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %167, ptr %prev.i.i.i, align 4
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %call7.i.i.i77, ptr %167, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i81, %if.end.i.i80.for.inc.i_crit_edge
  %172 = ptrtoint ptr %146 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %146, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %174 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %174, i32 noundef 3136, i32 noundef 16) #14
  %tobool.not.i.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.i.1.i, label %for.inc.i.if.then26_crit_edge, label %if.end.i.1.i, !prof !44

for.inc.i.if.then26_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end.i.1.i:                                     ; preds = %for.inc.i
  %segnum4.i.1.i = getelementptr inbounds %struct.nilfs_segment_entry, ptr %call7.i.i.1.i, i32 0, i32 1
  %175 = ptrtoint ptr %segnum4.i.1.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %173, ptr %segnum4.i.1.i, align 8
  %176 = ptrtoint ptr %call7.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %call7.i.i.1.i, ptr %call7.i.i.1.i, align 8
  %prev.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.1.i, i32 0, i32 1
  %177 = ptrtoint ptr %prev.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call7.i.i.1.i, ptr %prev.i.i.1.i, align 4
  %178 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %prev.i9.i.i, align 4
  %call.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.1.i, ptr noundef %179, ptr noundef %ri_used_segments.i) #9
  br i1 %call.i.i.i.1.i, label %if.end.i.i.i.1.i, label %if.end.i.1.i.for.inc.1.i_crit_edge

if.end.i.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.i.i.i.1.i:                                 ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call7.i.i.1.i, ptr %prev.i9.i.i, align 4
  %181 = ptrtoint ptr %call7.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %ri_used_segments.i, ptr %call7.i.i.1.i, align 8
  %182 = ptrtoint ptr %prev.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %179, ptr %prev.i.i.1.i, align 4
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %call7.i.i.1.i, ptr %179, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.i.i.i.1.i, %if.end.i.1.i.for.inc.1.i_crit_edge
  %184 = ptrtoint ptr %147 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %147, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %186 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %186, i32 noundef 3136, i32 noundef 16) #14
  %tobool.not.i.2.i = icmp eq ptr %call7.i.i.2.i, null
  br i1 %tobool.not.i.2.i, label %for.inc.1.i.if.then26_crit_edge, label %if.end.i.2.i, !prof !44

for.inc.1.i.if.then26_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  %segnum4.i.2.i = getelementptr inbounds %struct.nilfs_segment_entry, ptr %call7.i.i.2.i, i32 0, i32 1
  %187 = ptrtoint ptr %segnum4.i.2.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %185, ptr %segnum4.i.2.i, align 8
  %188 = ptrtoint ptr %call7.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %call7.i.i.2.i, ptr %call7.i.i.2.i, align 8
  %prev.i.i.2.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.2.i, i32 0, i32 1
  %189 = ptrtoint ptr %prev.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call7.i.i.2.i, ptr %prev.i.i.2.i, align 4
  %190 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %prev.i9.i.i, align 4
  %call.i.i.i.2.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.2.i, ptr noundef %191, ptr noundef %ri_used_segments.i) #9
  br i1 %call.i.i.i.2.i, label %if.end.i.i.i.2.i, label %if.end.i.2.i.for.inc.2.i_crit_edge

if.end.i.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end.i.i.i.2.i:                                 ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call7.i.i.2.i, ptr %prev.i9.i.i, align 4
  %193 = ptrtoint ptr %call7.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %ri_used_segments.i, ptr %call7.i.i.2.i, align 8
  %194 = ptrtoint ptr %prev.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %191, ptr %prev.i.i.2.i, align 4
  %195 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %call7.i.i.2.i, ptr %191, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.i.i.i.2.i, %if.end.i.2.i.for.inc.2.i_crit_edge
  %196 = ptrtoint ptr %ri_used_segments.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ri_used_segments.i, align 4
  %cmp24.not8.i = icmp eq ptr %197, %ri_used_segments.i
  br i1 %cmp24.not8.i, label %for.inc.2.i.for.end51.i_crit_edge, label %for.inc.2.i.for.body27.i_crit_edge

for.inc.2.i.for.body27.i_crit_edge:               ; preds = %for.inc.2.i
  br label %for.body27.i

for.inc.2.i.for.end51.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51.i

for.body27.i:                                     ; preds = %list_del.exit.i.for.body27.i_crit_edge, %for.inc.2.i.for.body27.i_crit_edge
  %ent.09.i = phi ptr [ %n.011.i, %list_del.exit.i.for.body27.i_crit_edge ], [ %197, %for.inc.2.i.for.body27.i_crit_edge ]
  %198 = ptrtoint ptr %ent.09.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %n.011.i = load ptr, ptr %ent.09.i, align 8
  %segnum28.i = getelementptr inbounds %struct.nilfs_segment_entry, ptr %ent.09.i, i32 0, i32 1
  %199 = ptrtoint ptr %segnum28.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %segnum28.i, align 8
  %201 = ptrtoint ptr %segnum.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %segnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %200, i64 %202)
  %cmp30.not.i = icmp eq i64 %200, %202
  br i1 %cmp30.not.i, label %for.body27.i.if.end43.i_crit_edge, label %if.then31.i

for.body27.i.if.end43.i_crit_edge:                ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then31.i:                                      ; preds = %for.body27.i
  %call.i1.i = call i32 @nilfs_sufile_update(ptr noundef %144, i64 noundef %200, i32 noundef 1, ptr noundef nonnull @nilfs_sufile_do_scrap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool34.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool34.not.i, label %if.then31.i.if.end43.i_crit_edge, label %if.then31.i.if.then26_crit_edge, !prof !47

if.then31.i.if.then26_crit_edge:                  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then31.i.if.end43.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then31.i.if.end43.i_crit_edge, %for.body27.i.if.end43.i_crit_edge
  %call.i.i.i82 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.09.i) #9
  br i1 %call.i.i.i82, label %if.end.i.i.i, label %if.end43.i.list_del.exit.i_crit_edge

if.end43.i.list_del.exit.i_crit_edge:             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i2.i = getelementptr inbounds %struct.list_head, ptr %ent.09.i, i32 0, i32 1
  %203 = ptrtoint ptr %prev.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %prev.i.i2.i, align 4
  %205 = ptrtoint ptr %ent.09.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ent.09.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %204, ptr %prev1.i.i.i.i, align 4
  %208 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %206, ptr %204, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end43.i.list_del.exit.i_crit_edge
  %209 = ptrtoint ptr %ent.09.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr inttoptr (i32 256 to ptr), ptr %ent.09.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ent.09.i, i32 0, i32 1
  %210 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %ent.09.i) #9
  %cmp24.not.i = icmp eq ptr %n.011.i, %ri_used_segments.i
  br i1 %cmp24.not.i, label %list_del.exit.i.for.end51.i_crit_edge, label %list_del.exit.i.for.body27.i_crit_edge

list_del.exit.i.for.body27.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27.i

list_del.exit.i.for.end51.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51.i

for.end51.i:                                      ; preds = %list_del.exit.i.for.end51.i_crit_edge, %for.inc.2.i.for.end51.i_crit_edge
  %call53.i = call i32 @nilfs_sufile_alloc(ptr noundef %144, ptr noundef nonnull %segnum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end27, label %for.end51.i.if.then26_crit_edge, !prof !47

for.end51.i.if.then26_crit_edge:                  ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %for.end51.i.if.then26_crit_edge, %if.then31.i.if.then26_crit_edge, %for.inc.1.i.if.then26_crit_edge, %for.inc.i.if.then26_crit_edge, %for.cond.preheader.i.if.then26_crit_edge, %if.then17.if.then26_crit_edge
  %err.0.i.ph = phi i32 [ -12, %for.cond.preheader.i.if.then26_crit_edge ], [ -12, %for.inc.i.if.then26_crit_edge ], [ -12, %for.inc.1.i.if.then26_crit_edge ], [ %call53.i, %for.end51.i.if.then26_crit_edge ], [ %call.i.i, %if.then17.if.then26_crit_edge ], [ %call.i1.i, %if.then31.i.if.then26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %segnum.i) #9
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, i32 noundef %err.0.i.ph) #9
  br label %failed

if.end27:                                         ; preds = %for.end51.i
  %ns_pseg_offset.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 16
  %211 = ptrtoint ptr %ns_pseg_offset.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %ns_pseg_offset.i, align 8
  %ri_seq.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 8
  %212 = ptrtoint ptr %ri_seq.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %ri_seq.i, align 8
  %add.i83 = add i64 %213, 2
  %ns_seg_seq.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 13
  %214 = ptrtoint ptr %ns_seg_seq.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %add.i83, ptr %ns_seg_seq.i, align 8
  %215 = ptrtoint ptr %segnum.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %segnum.i, align 8
  %217 = ptrtoint ptr %ns_segnum.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %216, ptr %ns_segnum.i, align 8
  %218 = ptrtoint ptr %ns_nextnum.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %216, ptr %ns_nextnum.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %segnum.i) #9
  %219 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %root, align 4
  %call28 = call i32 @nilfs_attach_log_writer(ptr noundef %sb, ptr noundef %220) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end37, label %if.end27.failed_crit_edge, !prof !47

if.end27.failed_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end37:                                         ; preds = %if.end27
  call void @_set_bit(i32 noundef 1, ptr noundef %nilfs) #9
  %call38 = call i32 @nilfs_construct_segment(ptr noundef %sb) #9
  call void @nilfs_detach_log_writer(ptr noundef %sb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end47, label %if.then46, !prof !47

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.2, i32 noundef %call38) #9
  br label %failed

if.end47:                                         ; preds = %if.end37
  %221 = ptrtoint ptr %ri_lsegs_start to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %ri_lsegs_start, align 8
  %223 = ptrtoint ptr %ns_blocks_per_segment.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %ns_blocks_per_segment.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %222)
  %cmp164.i.i184 = icmp ult i64 %222, 4294967296
  br i1 %cmp164.i.i184, label %if.then168.i.i189, label %if.else174.i.i191, !prof !47

if.then168.i.i189:                                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i186 = trunc i64 %222 to i32
  %div172.i.i187 = udiv i32 %conv169.i.i186, %224
  %conv173.i.i188 = zext i32 %div172.i.i187 to i64
  br label %if.else162.i146.i

if.else174.i.i191:                                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %225 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %224, i64 %222) #13, !srcloc !48
  %asmresult1.i.i.i190 = extractvalue { i64, i64 } %225, 1
  br label %if.else162.i146.i

if.else162.i146.i:                                ; preds = %if.else174.i.i191, %if.then168.i.i189
  %segnum.0.i.ph.i = phi i64 [ %asmresult1.i.i.i190, %if.else174.i.i191 ], [ %conv173.i.i188, %if.then168.i.i189 ]
  %ri_super_root158.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 1
  %226 = ptrtoint ptr %ri_super_root158.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %ri_super_root158.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %227)
  %cmp164.i145.i = icmp ult i64 %227, 4294967296
  br i1 %cmp164.i145.i, label %if.then168.i150.i, label %if.else174.i152.i, !prof !47

if.then168.i150.i:                                ; preds = %if.else162.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i147.i = trunc i64 %227 to i32
  %div172.i148.i = udiv i32 %conv169.i147.i, %224
  %conv173.i149.i = zext i32 %div172.i148.i to i64
  br label %nilfs_get_segnum_of_block.exit154.i

if.else174.i152.i:                                ; preds = %if.else162.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  %228 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %224, i64 %227) #13, !srcloc !48
  %asmresult1.i.i151.i = extractvalue { i64, i64 } %228, 1
  br label %nilfs_get_segnum_of_block.exit154.i

nilfs_get_segnum_of_block.exit154.i:              ; preds = %if.else174.i152.i, %if.then168.i150.i
  %segnum.0.i153.i = phi i64 [ %conv173.i149.i, %if.then168.i150.i ], [ %asmresult1.i.i151.i, %if.else174.i152.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %segnum.0.i.ph.i, i64 %segnum.0.i153.i)
  %cmp.not.i198 = icmp eq i64 %segnum.0.i.ph.i, %segnum.0.i153.i
  br i1 %cmp.not.i198, label %if.end.i201, label %nilfs_get_segnum_of_block.exit154.i.failed_crit_edge

nilfs_get_segnum_of_block.exit154.i.failed_crit_edge: ; preds = %nilfs_get_segnum_of_block.exit154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end.i201:                                      ; preds = %nilfs_get_segnum_of_block.exit154.i
  %229 = ptrtoint ptr %ns_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ns_bdev.i.i, align 4
  %231 = ptrtoint ptr %ns_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %ns_blocksize.i.i, align 4
  %call.i.i199 = call ptr @__getblk_gfp(ptr noundef %230, i64 noundef %222, i32 noundef %232, i32 noundef 8) #9
  %tobool.not.i200 = icmp eq ptr %call.i.i199, null
  br i1 %tobool.not.i200, label %do.body8.i, label %do.end14.i, !prof !44

do.body8.i:                                       ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 700, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

do.end14.i:                                       ; preds = %if.end.i201
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i199, i32 0, i32 5
  %233 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i199, i32 0, i32 4
  %235 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %b_size.i, align 8
  %237 = call ptr @memset(ptr %234, i32 0, i32 %236)
  %238 = ptrtoint ptr %call.i.i199 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %call.i.i199, align 4
  %240 = and i32 %239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool.not.i.i202 = icmp eq i32 %240, 0
  br i1 %tobool.not.i.i202, label %if.then.i.i, label %do.end14.i.set_buffer_dirty.exit.i_crit_edge

do.end14.i.set_buffer_dirty.exit.i_crit_edge:     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_dirty.exit.i

if.then.i.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef nonnull %call.i.i199) #9
  br label %set_buffer_dirty.exit.i

set_buffer_dirty.exit.i:                          ; preds = %if.then.i.i, %do.end14.i.set_buffer_dirty.exit.i_crit_edge
  %call15.i = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i199) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %set_buffer_dirty.exit.i.brelse.exit.i203_crit_edge, label %if.then23.i, !prof !47

set_buffer_dirty.exit.i.brelse.exit.i203_crit_edge: ; preds = %set_buffer_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i203

if.then23.i:                                      ; preds = %set_buffer_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ns_sb.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %241 = ptrtoint ptr %ns_sb.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ns_sb.i, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %242, ptr noundef nonnull @.str.16) #9
  br label %brelse.exit.i203

brelse.exit.i203:                                 ; preds = %if.then23.i, %set_buffer_dirty.exit.i.brelse.exit.i203_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i.i199) #9
  br label %failed

failed:                                           ; preds = %brelse.exit.i203, %nilfs_get_segnum_of_block.exit154.i.failed_crit_edge, %if.then46, %if.end27.failed_crit_edge, %if.then26, %if.end15.failed_crit_edge, %nilfs_do_roll_forward.exit.failed_crit_edge
  %err.0 = phi i32 [ %err.4.i, %nilfs_do_roll_forward.exit.failed_crit_edge ], [ %err.0.i.ph, %if.then26 ], [ %call28, %if.end27.failed_crit_edge ], [ %call38, %if.then46 ], [ 0, %if.end15.failed_crit_edge ], [ 0, %nilfs_get_segnum_of_block.exit154.i.failed_crit_edge ], [ 0, %brelse.exit.i203 ]
  %243 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %root, align 4
  call void @nilfs_put_root(ptr noundef %244) #9
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ %err.0, %failed ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_attach_checkpoint(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_attach_log_writer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_segment(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_detach_log_writer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_put_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_search_super_root(ptr noundef %nilfs, ptr noundef %ri) local_unnamed_addr #0 align 64 {
entry:
  %segments = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %segments) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %segments, i32 0, i32 1
  %1 = ptrtoint ptr %segments to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %segments, ptr %segments, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %segments, ptr %0, align 4
  %ns_last_pseg = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 22
  %3 = ptrtoint ptr %ns_last_pseg to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ns_last_pseg, align 8
  %ns_last_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 23
  %5 = ptrtoint ptr %ns_last_seq to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ns_last_seq, align 8
  %ns_last_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 24
  %7 = ptrtoint ptr %ns_last_cno to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ns_last_cno, align 8
  %ns_blocks_per_segment.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %9 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ns_blocks_per_segment.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %4)
  %cmp164.i = icmp ult i64 %4, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !47

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i = trunc i64 %4 to i32
  %div172.i = udiv i32 %conv169.i, %10
  %conv173.i = zext i32 %div172.i to i64
  br label %nilfs_get_segnum_of_block.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %4) #13, !srcloc !48
  %asmresult1.i.i = extractvalue { i64, i64 } %11, 1
  br label %nilfs_get_segnum_of_block.exit

nilfs_get_segnum_of_block.exit:                   ; preds = %if.else174.i, %if.then168.i
  %segnum.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %conv.i = zext i32 %10 to i64
  %mul.i193 = mul i64 %segnum.0.i, %conv.i
  %add.i194 = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add.i194, %mul.i193
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %segnum.0.i)
  %cmp.i195 = icmp eq i64 %segnum.0.i, 0
  br i1 %cmp.i195, label %if.then.i, label %nilfs_get_segnum_of_block.exit.nilfs_get_segment_range.exit_crit_edge

nilfs_get_segnum_of_block.exit.nilfs_get_segment_range.exit_crit_edge: ; preds = %nilfs_get_segnum_of_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_get_segment_range.exit

if.then.i:                                        ; preds = %nilfs_get_segnum_of_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ns_first_data_block.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 50
  %12 = ptrtoint ptr %ns_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_first_data_block.i, align 8
  %conv4.i = zext i32 %13 to i64
  br label %nilfs_get_segment_range.exit

nilfs_get_segment_range.exit:                     ; preds = %if.then.i, %nilfs_get_segnum_of_block.exit.nilfs_get_segment_range.exit_crit_edge
  %seg_start.0 = phi i64 [ %conv4.i, %if.then.i ], [ %mul.i193, %nilfs_get_segnum_of_block.exit.nilfs_get_segment_range.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %seg_start.0, i64 %sub.i)
  %cmp.not418 = icmp ugt i64 %seg_start.0, %sub.i
  br i1 %cmp.not418, label %nilfs_get_segment_range.exit.for.cond.preheader_crit_edge, label %while.body.lr.ph

nilfs_get_segment_range.exit.for.cond.preheader_crit_edge: ; preds = %nilfs_get_segment_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

while.body.lr.ph:                                 ; preds = %nilfs_get_segment_range.exit
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  br label %while.body

for.cond.preheader:                               ; preds = %while.body.for.cond.preheader_crit_edge, %nilfs_get_segment_range.exit.for.cond.preheader_crit_edge
  %ns_bdev.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %ns_blocksize.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %ri_pseg_start = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 7
  %ri_seq = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 8
  %ri_segnum = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 9
  %ri_nextnum = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 10
  %ns_first_data_block.i324 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 50
  %ri_cno = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 2
  %ri_super_root = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 1
  %ri_lsegs_end49 = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 4
  %ri_lsegs_start50 = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 3
  %ns_pseg_offset = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 16
  %ns_seg_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 13
  %ns_segnum = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 14
  %ns_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 17
  %ns_ctime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 18
  %ns_nextnum = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 15
  %ns_mount_state = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 11
  %ri_lsegs_start_seq = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 5
  br label %for.cond.outer

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %b.0419 = phi i64 [ %seg_start.0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %14 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns_bdev, align 4
  %inc = add i64 %b.0419, 1
  %16 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ns_blocksize, align 4
  call void @__breadahead(ptr noundef %15, i64 noundef %b.0419, i32 noundef %17) #9
  %cmp.not = icmp ugt i64 %inc, %sub.i
  br i1 %cmp.not, label %while.body.for.cond.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.for.cond.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

for.cond:                                         ; preds = %for.cond.outer, %try_next_pseg.for.cond_crit_edge
  %bh_sum.0 = phi ptr [ %call.i.i, %try_next_pseg.for.cond_crit_edge ], [ %bh_sum.0.ph, %for.cond.outer ]
  %pseg_start.0 = phi i64 [ %add, %try_next_pseg.for.cond_crit_edge ], [ %pseg_start.0.ph, %for.cond.outer ]
  %sr_pseg_start.0 = phi i64 [ %sr_pseg_start.1, %try_next_pseg.for.cond_crit_edge ], [ %sr_pseg_start.0.ph, %for.cond.outer ]
  %nextnum.0 = phi i64 [ %segnum.0.i315, %try_next_pseg.for.cond_crit_edge ], [ %nextnum.0.ph, %for.cond.outer ]
  %cno.0 = phi i64 [ %cno.1, %try_next_pseg.for.cond_crit_edge ], [ %cno.0.ph, %for.cond.outer ]
  %tobool72.not = phi i1 [ true, %try_next_pseg.for.cond_crit_edge ], [ %tobool72.not.ph, %for.cond.outer ]
  %scan_newer.0 = phi i32 [ %scan_newer.1, %try_next_pseg.for.cond_crit_edge ], [ %scan_newer.0.ph, %for.cond.outer ]
  %tobool.not.i196 = icmp eq ptr %bh_sum.0, null
  br i1 %tobool.not.i196, label %for.cond.brelse.exit_crit_edge, label %if.then.i197

for.cond.brelse.exit_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i197:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %bh_sum.0) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i197, %for.cond.brelse.exit_crit_edge
  %18 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns_bdev.i, align 4
  %20 = ptrtoint ptr %ns_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ns_blocksize.i, align 4
  %call.i.i = call ptr @__bread_gfp(ptr noundef %19, i64 noundef %pseg_start.0, i32 noundef %21, i32 noundef 8) #9
  %tobool.not.i198 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i198, label %brelse.exit.brelse.exit354_crit_edge, label %if.end

brelse.exit.brelse.exit354_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit354

if.end:                                           ; preds = %brelse.exit
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i, align 4
  %call2 = call fastcc i32 @nilfs_validate_log(ptr noundef %nilfs, i64 noundef %seg_seq.0.ph, ptr noundef nonnull %call.i.i, ptr noundef %23)
  %24 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call2, label %if.end.strayed_crit_edge [
    i32 0, label %if.end8
    i32 2, label %if.end.if.then.i352_crit_edge
  ]

if.end.if.then.i352_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i352

if.end.strayed_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %strayed

if.end8:                                          ; preds = %if.end
  %ss_nblocks = getelementptr inbounds %struct.nilfs_segment_summary, ptr %23, i32 0, i32 8
  %25 = ptrtoint ptr %ss_nblocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ss_nblocks, align 8
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %conv = zext i32 %27 to i64
  %add = add i64 %pseg_start.0, %conv
  %sub = add i64 %add, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %seg_end.0.ph)
  %cmp9 = icmp ugt i64 %sub, %seg_end.0.ph
  br i1 %cmp9, label %if.end8.strayed_crit_edge, label %if.end14, !prof !44

if.end8.strayed_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %strayed

if.end14:                                         ; preds = %if.end8
  %28 = ptrtoint ptr %ri_pseg_start to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %pseg_start.0, ptr %ri_pseg_start, align 8
  %29 = ptrtoint ptr %ri_seq to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %seg_seq.0.ph, ptr %ri_seq, align 8
  %30 = ptrtoint ptr %ri_segnum to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %segnum.0.ph, ptr %ri_segnum, align 8
  %ss_next = getelementptr inbounds %struct.nilfs_segment_summary, ptr %23, i32 0, i32 7
  %31 = ptrtoint ptr %ss_next to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ss_next, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32)
  %34 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ns_blocks_per_segment.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %33)
  %cmp164.i307 = icmp ult i64 %33, 4294967296
  br i1 %cmp164.i307, label %if.then168.i312, label %if.else174.i314, !prof !47

if.then168.i312:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i309 = trunc i64 %33 to i32
  %div172.i310 = udiv i32 %conv169.i309, %35
  %conv173.i311 = zext i32 %div172.i310 to i64
  br label %nilfs_get_segnum_of_block.exit316

if.else174.i314:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %33) #13, !srcloc !48
  %asmresult1.i.i313 = extractvalue { i64, i64 } %36, 1
  br label %nilfs_get_segnum_of_block.exit316

nilfs_get_segnum_of_block.exit316:                ; preds = %if.else174.i314, %if.then168.i312
  %segnum.0.i315 = phi i64 [ %conv173.i311, %if.then168.i312 ], [ %asmresult1.i.i313, %if.else174.i314 ]
  %37 = ptrtoint ptr %ri_nextnum to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %segnum.0.i315, ptr %ri_nextnum, align 8
  %ss_flags = getelementptr inbounds %struct.nilfs_segment_summary, ptr %23, i32 0, i32 4
  %38 = ptrtoint ptr %ss_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ss_flags, align 2
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %conv16 = zext i16 %40 to i32
  %and = and i32 %conv16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scan_newer.0)
  %tobool18.not = icmp eq i32 %scan_newer.0, 0
  %or.cond = select i1 %tobool17.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %nilfs_get_segnum_of_block.exit316.if.then.i352_crit_edge, label %if.end20

nilfs_get_segnum_of_block.exit316.if.then.i352_crit_edge: ; preds = %nilfs_get_segnum_of_block.exit316
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i352

if.end20:                                         ; preds = %nilfs_get_segnum_of_block.exit316
  call void @__sanitizer_cov_trace_cmp8(i64 %pseg_start.0, i64 %seg_start.1.ph)
  %cmp21 = icmp eq i64 %pseg_start.0, %seg_start.1.ph
  br i1 %cmp21, label %if.then23, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then23:                                        ; preds = %if.end20
  %41 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ns_blocks_per_segment.i, align 4
  %conv.i318 = zext i32 %42 to i64
  %mul.i319 = mul i64 %segnum.0.i315, %conv.i318
  %add.i321 = add nsw i64 %conv.i318, -1
  %sub.i322 = add i64 %add.i321, %mul.i319
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %segnum.0.i315)
  %cmp.i323 = icmp eq i64 %segnum.0.i315, 0
  br i1 %cmp.i323, label %if.then.i326, label %if.then23.nilfs_get_segment_range.exit327_crit_edge

if.then23.nilfs_get_segment_range.exit327_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_get_segment_range.exit327

if.then.i326:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %ns_first_data_block.i324 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ns_first_data_block.i324, align 8
  %conv4.i325 = zext i32 %44 to i64
  br label %nilfs_get_segment_range.exit327

nilfs_get_segment_range.exit327:                  ; preds = %if.then.i326, %if.then23.nilfs_get_segment_range.exit327_crit_edge
  %b.1 = phi i64 [ %conv4.i325, %if.then.i326 ], [ %mul.i319, %if.then23.nilfs_get_segment_range.exit327_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %b.1, i64 %sub.i322)
  %cmp25.not420 = icmp ugt i64 %b.1, %sub.i322
  br i1 %cmp25.not420, label %nilfs_get_segment_range.exit327.if.end32_crit_edge, label %nilfs_get_segment_range.exit327.while.body27_crit_edge

nilfs_get_segment_range.exit327.while.body27_crit_edge: ; preds = %nilfs_get_segment_range.exit327
  br label %while.body27

nilfs_get_segment_range.exit327.if.end32_crit_edge: ; preds = %nilfs_get_segment_range.exit327
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body27:                                     ; preds = %while.body27.while.body27_crit_edge, %nilfs_get_segment_range.exit327.while.body27_crit_edge
  %b.2421 = phi i64 [ %inc29, %while.body27.while.body27_crit_edge ], [ %b.1, %nilfs_get_segment_range.exit327.while.body27_crit_edge ]
  %45 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ns_bdev.i, align 4
  %inc29 = add i64 %b.2421, 1
  %47 = ptrtoint ptr %ns_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ns_blocksize.i, align 4
  call void @__breadahead(ptr noundef %46, i64 noundef %b.2421, i32 noundef %48) #9
  %cmp25.not = icmp ugt i64 %inc29, %sub.i322
  br i1 %cmp25.not, label %while.body27.if.end32_crit_edge, label %while.body27.while.body27_crit_edge

while.body27.while.body27_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body27

while.body27.if.end32_crit_edge:                  ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end32:                                         ; preds = %while.body27.if.end32_crit_edge, %nilfs_get_segment_range.exit327.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  br i1 %tobool17.not, label %if.then35, label %if.end47

if.then35:                                        ; preds = %if.end32
  %49 = ptrtoint ptr %ri_lsegs_start50 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ri_lsegs_start50, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %tobool36.not = icmp ne i64 %50, 0
  %and38 = and i32 %conv16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond191 = select i1 %tobool36.not, i1 true, i1 %tobool39.not
  br i1 %or.cond191, label %if.then35.if.end42_crit_edge, label %if.then40

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %ri_lsegs_start50 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %pseg_start.0, ptr %ri_lsegs_start50, align 8
  %52 = ptrtoint ptr %ri_lsegs_start_seq to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %seg_seq.0.ph, ptr %ri_lsegs_start_seq, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then35.if.end42_crit_edge
  %and43 = and i32 %conv16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.try_next_pseg_crit_edge, label %if.then45

if.end42.try_next_pseg_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_next_pseg

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %ri_lsegs_end49 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %pseg_start.0, ptr %ri_lsegs_end49, align 8
  br label %try_next_pseg

if.end47:                                         ; preds = %if.end32
  %inc48 = add i64 %cno.0, 1
  %54 = ptrtoint ptr %ri_cno to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %cno.0, ptr %ri_cno, align 8
  %55 = ptrtoint ptr %ri_super_root to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %sub, ptr %ri_super_root, align 8
  %56 = call ptr @memset(ptr %ri_lsegs_start50, i32 0, i32 16)
  %57 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %segments, align 4
  %cmp.i.not3.i = icmp eq ptr %58, %segments
  br i1 %cmp.i.not3.i, label %if.end47.nilfs_dispose_segment_list.exit_crit_edge, label %if.end47.while.body.i_crit_edge

if.end47.while.body.i_crit_edge:                  ; preds = %if.end47
  br label %while.body.i

if.end47.nilfs_dispose_segment_list.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_dispose_segment_list.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end47.while.body.i_crit_edge
  %59 = phi ptr [ %69, %list_del.exit.i.while.body.i_crit_edge ], [ %58, %if.end47.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %59) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %59) #9
  %68 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %segments, align 4
  %cmp.i.not.i = icmp eq ptr %69, %segments
  br i1 %cmp.i.not.i, label %list_del.exit.i.nilfs_dispose_segment_list.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del.exit.i.nilfs_dispose_segment_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_dispose_segment_list.exit

nilfs_dispose_segment_list.exit:                  ; preds = %list_del.exit.i.nilfs_dispose_segment_list.exit_crit_edge, %if.end47.nilfs_dispose_segment_list.exit_crit_edge
  %sub53 = sub i64 %add, %seg_start.1.ph
  %conv54 = trunc i64 %sub53 to i32
  %70 = ptrtoint ptr %ns_pseg_offset to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv54, ptr %ns_pseg_offset, align 8
  %71 = ptrtoint ptr %ns_seg_seq to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %seg_seq.0.ph, ptr %ns_seg_seq, align 8
  %72 = ptrtoint ptr %ns_segnum to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %segnum.0.ph, ptr %ns_segnum, align 8
  %73 = ptrtoint ptr %ns_cno to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %inc48, ptr %ns_cno, align 8
  %ss_create = getelementptr inbounds %struct.nilfs_segment_summary, ptr %23, i32 0, i32 6
  %74 = ptrtoint ptr %ss_create to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %ss_create, align 8
  %76 = call i64 @llvm.bswap.i64(i64 %75)
  %77 = ptrtoint ptr %ns_ctime to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %ns_ctime, align 8
  %78 = ptrtoint ptr %ns_nextnum to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %segnum.0.i315, ptr %ns_nextnum, align 8
  br i1 %tobool18.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %nilfs_dispose_segment_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %ri to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %ri, align 8
  br label %try_next_pseg

if.else:                                          ; preds = %nilfs_dispose_segment_list.exit
  %80 = ptrtoint ptr %ns_mount_state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ns_mount_state, align 8
  %and57 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else.try_next_pseg_crit_edge, label %if.else.brelse.exit347_crit_edge

if.else.brelse.exit347_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit347

if.else.try_next_pseg_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_next_pseg

try_next_pseg:                                    ; preds = %if.else.try_next_pseg_crit_edge, %if.then56, %if.then45, %if.end42.try_next_pseg_crit_edge
  %sr_pseg_start.1 = phi i64 [ %pseg_start.0, %if.then56 ], [ %sr_pseg_start.0, %if.then45 ], [ %sr_pseg_start.0, %if.end42.try_next_pseg_crit_edge ], [ %pseg_start.0, %if.else.try_next_pseg_crit_edge ]
  %cno.1 = phi i64 [ %inc48, %if.then56 ], [ %cno.0, %if.then45 ], [ %cno.0, %if.end42.try_next_pseg_crit_edge ], [ %inc48, %if.else.try_next_pseg_crit_edge ]
  %scan_newer.1 = phi i32 [ 1, %if.then56 ], [ %scan_newer.0, %if.then45 ], [ %scan_newer.0, %if.end42.try_next_pseg_crit_edge ], [ 1, %if.else.try_next_pseg_crit_edge ]
  %cmp64 = icmp ult i64 %add, %seg_end.0.ph
  br i1 %cmp64, label %try_next_pseg.for.cond_crit_edge, label %if.end74

try_next_pseg.for.cond_crit_edge:                 ; preds = %try_next_pseg
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

strayed:                                          ; preds = %if.end8.strayed_crit_edge, %if.end.strayed_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.strayed_crit_edge ], [ 7, %if.end8.strayed_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scan_newer.0)
  %tobool68.not = icmp eq i32 %scan_newer.0, 0
  br i1 %tobool68.not, label %strayed.if.then.i352_crit_edge, label %feed_segment

strayed.if.then.i352_crit_edge:                   ; preds = %strayed
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i352

feed_segment:                                     ; preds = %strayed
  br i1 %tobool72.not, label %if.end74.thread, label %feed_segment.brelse.exit347_crit_edge

feed_segment.brelse.exit347_crit_edge:            ; preds = %feed_segment
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit347

if.end74:                                         ; preds = %try_next_pseg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3136, i32 noundef 16) #14
  %tobool.not.i328 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i328, label %if.end74.if.then.i352_crit_edge, label %if.end74.if.end.i_crit_edge, !prof !44

if.end74.if.end.i_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end74.if.then.i352_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i352

if.end74.thread:                                  ; preds = %feed_segment
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i401 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3136, i32 noundef 16) #14
  %tobool.not.i328402 = icmp eq ptr %call7.i.i401, null
  br i1 %tobool.not.i328402, label %if.end74.thread.if.then.i352_crit_edge, label %if.end74.thread.if.end.i_crit_edge, !prof !44

if.end74.thread.if.end.i_crit_edge:               ; preds = %if.end74.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end74.thread.if.then.i352_crit_edge:           ; preds = %if.end74.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i352

if.end.i:                                         ; preds = %if.end74.thread.if.end.i_crit_edge, %if.end74.if.end.i_crit_edge
  %call7.i.i408 = phi ptr [ %call7.i.i401, %if.end74.thread.if.end.i_crit_edge ], [ %call7.i.i, %if.end74.if.end.i_crit_edge ]
  %sr_pseg_start.2384407 = phi i64 [ %sr_pseg_start.0, %if.end74.thread.if.end.i_crit_edge ], [ %sr_pseg_start.1, %if.end74.if.end.i_crit_edge ]
  %nextnum.1385406 = phi i64 [ %nextnum.0, %if.end74.thread.if.end.i_crit_edge ], [ %segnum.0.i315, %if.end74.if.end.i_crit_edge ]
  %cno.2386405 = phi i64 [ %cno.0, %if.end74.thread.if.end.i_crit_edge ], [ %cno.1, %if.end74.if.end.i_crit_edge ]
  %scan_newer.2387404 = phi i32 [ 1, %if.end74.thread.if.end.i_crit_edge ], [ %scan_newer.1, %if.end74.if.end.i_crit_edge ]
  %segnum4.i = getelementptr inbounds %struct.nilfs_segment_entry, ptr %call7.i.i408, i32 0, i32 1
  %84 = ptrtoint ptr %segnum4.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %segnum.0.ph, ptr %segnum4.i, align 8
  %85 = ptrtoint ptr %call7.i.i408 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call7.i.i408, ptr %call7.i.i408, align 8
  %prev.i.i329 = getelementptr inbounds %struct.list_head, ptr %call7.i.i408, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i329 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i408, ptr %prev.i.i329, align 4
  %87 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %0, align 4
  %call.i.i.i330 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i408, ptr noundef %88, ptr noundef nonnull %segments) #9
  br i1 %call.i.i.i330, label %if.end.i.i.i331, label %if.end.i.if.end84_crit_edge

if.end.i.if.end84_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end.i.i.i331:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i408, ptr %0, align 4
  %90 = ptrtoint ptr %call7.i.i408 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %segments, ptr %call7.i.i408, align 8
  %91 = ptrtoint ptr %prev.i.i329 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev.i.i329, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call7.i.i408, ptr %88, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end.i.i.i331, %if.end.i.if.end84_crit_edge
  %inc85 = add i64 %seg_seq.0.ph, 1
  %93 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ns_blocks_per_segment.i, align 4
  %conv.i333 = zext i32 %94 to i64
  %mul.i334 = mul i64 %nextnum.1385406, %conv.i333
  %add.i336 = add nsw i64 %conv.i333, -1
  %sub.i337 = add i64 %add.i336, %mul.i334
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nextnum.1385406)
  %cmp.i338 = icmp eq i64 %nextnum.1385406, 0
  br i1 %cmp.i338, label %if.then.i341, label %if.end84.for.cond.outer.backedge_crit_edge

if.end84.for.cond.outer.backedge_crit_edge:       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.outer.backedge

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %for.cond.preheader
  %seg_start.1.ph = phi i64 [ %seg_start.0, %for.cond.preheader ], [ %pseg_start.0.ph.be, %for.cond.outer.backedge ]
  %seg_end.0.ph = phi i64 [ %sub.i, %for.cond.preheader ], [ %sub.i337, %for.cond.outer.backedge ]
  %bh_sum.0.ph = phi ptr [ null, %for.cond.preheader ], [ %call.i.i, %for.cond.outer.backedge ]
  %pseg_start.0.ph = phi i64 [ %4, %for.cond.preheader ], [ %pseg_start.0.ph.be, %for.cond.outer.backedge ]
  %sr_pseg_start.0.ph = phi i64 [ 0, %for.cond.preheader ], [ %sr_pseg_start.2384407, %for.cond.outer.backedge ]
  %seg_seq.0.ph = phi i64 [ %6, %for.cond.preheader ], [ %inc85, %for.cond.outer.backedge ]
  %segnum.0.ph = phi i64 [ %segnum.0.i, %for.cond.preheader ], [ %nextnum.0.ph.be, %for.cond.outer.backedge ]
  %nextnum.0.ph = phi i64 [ 0, %for.cond.preheader ], [ %nextnum.0.ph.be, %for.cond.outer.backedge ]
  %cno.0.ph = phi i64 [ %8, %for.cond.preheader ], [ %cno.2386405, %for.cond.outer.backedge ]
  %tobool72.not.ph = phi i1 [ true, %for.cond.preheader ], [ false, %for.cond.outer.backedge ]
  %scan_newer.0.ph = phi i32 [ 0, %for.cond.preheader ], [ %scan_newer.2387404, %for.cond.outer.backedge ]
  br label %for.cond

if.then.i341:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %ns_first_data_block.i324 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ns_first_data_block.i324, align 8
  %conv4.i340 = zext i32 %96 to i64
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %if.then.i341, %if.end84.for.cond.outer.backedge_crit_edge
  %pseg_start.0.ph.be = phi i64 [ %mul.i334, %if.end84.for.cond.outer.backedge_crit_edge ], [ %conv4.i340, %if.then.i341 ]
  %nextnum.0.ph.be = phi i64 [ %nextnum.1385406, %if.end84.for.cond.outer.backedge_crit_edge ], [ 0, %if.then.i341 ]
  br label %for.cond.outer

brelse.exit347:                                   ; preds = %feed_segment.brelse.exit347_crit_edge, %if.else.brelse.exit347_crit_edge
  %sr_pseg_start.3 = phi i64 [ %pseg_start.0, %if.else.brelse.exit347_crit_edge ], [ %sr_pseg_start.0, %feed_segment.brelse.exit347_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i.i) #9
  %97 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %segments, align 4
  %cmp.i.not.i348 = icmp eq ptr %98, %segments
  br i1 %cmp.i.not.i348, label %brelse.exit347.list_splice_tail.exit_crit_edge, label %if.then.i349

brelse.exit347.list_splice_tail.exit_crit_edge:   ; preds = %brelse.exit347
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail.exit

if.then.i349:                                     ; preds = %brelse.exit347
  call void @__sanitizer_cov_trace_pc() #11
  %ri_used_segments = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 6, i32 1
  %99 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i, align 4
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %98, ptr %100, align 4
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %ri_used_segments, ptr %102, align 4
  store ptr %102, ptr %prev.i, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i349, %brelse.exit347.list_splice_tail.exit_crit_edge
  %106 = ptrtoint ptr %ns_last_pseg to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %sr_pseg_start.3, ptr %ns_last_pseg, align 8
  %107 = ptrtoint ptr %ns_seg_seq to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %ns_seg_seq, align 8
  %109 = ptrtoint ptr %ns_last_seq to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %ns_last_seq, align 8
  %110 = ptrtoint ptr %ri_cno to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %ri_cno, align 8
  %112 = ptrtoint ptr %ns_last_cno to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %ns_last_cno, align 8
  br label %cleanup

if.then.i352:                                     ; preds = %if.end74.thread.if.then.i352_crit_edge, %if.end74.if.then.i352_crit_edge, %strayed.if.then.i352_crit_edge, %nilfs_get_segnum_of_block.exit316.if.then.i352_crit_edge, %if.end.if.then.i352_crit_edge
  %ret.1392 = phi i32 [ %call2, %if.end.if.then.i352_crit_edge ], [ 7, %nilfs_get_segnum_of_block.exit316.if.then.i352_crit_edge ], [ %ret.0, %strayed.if.then.i352_crit_edge ], [ -12, %if.end74.thread.if.then.i352_crit_edge ], [ -12, %if.end74.if.then.i352_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i.i) #9
  br label %brelse.exit354

brelse.exit354:                                   ; preds = %if.then.i352, %brelse.exit.brelse.exit354_crit_edge
  %ret.1393 = phi i32 [ %ret.1392, %if.then.i352 ], [ 2, %brelse.exit.brelse.exit354_crit_edge ]
  %113 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %segments, align 4
  %cmp.i.not3.i355 = icmp eq ptr %114, %segments
  br i1 %cmp.i.not3.i355, label %brelse.exit354.nilfs_dispose_segment_list.exit364_crit_edge, label %brelse.exit354.while.body.i357_crit_edge

brelse.exit354.while.body.i357_crit_edge:         ; preds = %brelse.exit354
  br label %while.body.i357

brelse.exit354.nilfs_dispose_segment_list.exit364_crit_edge: ; preds = %brelse.exit354
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_dispose_segment_list.exit364

while.body.i357:                                  ; preds = %list_del.exit.i363.while.body.i357_crit_edge, %brelse.exit354.while.body.i357_crit_edge
  %115 = phi ptr [ %125, %list_del.exit.i363.while.body.i357_crit_edge ], [ %114, %brelse.exit354.while.body.i357_crit_edge ]
  %call.i.i.i356 = call zeroext i1 @__list_del_entry_valid(ptr noundef %115) #9
  br i1 %call.i.i.i356, label %if.end.i.i.i360, label %while.body.i357.list_del.exit.i363_crit_edge

while.body.i357.list_del.exit.i363_crit_edge:     ; preds = %while.body.i357
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i363

if.end.i.i.i360:                                  ; preds = %while.body.i357
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i358 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i.i358 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i.i358, align 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %115, align 4
  %prev1.i.i.i.i359 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i.i359 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i.i359, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del.exit.i363

list_del.exit.i363:                               ; preds = %if.end.i.i.i360, %while.body.i357.list_del.exit.i363_crit_edge
  %122 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 256 to ptr), ptr %115, align 4
  %prev.i.i361 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i.i361 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i361, align 4
  call void @kfree(ptr noundef %115) #9
  %124 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %segments, align 4
  %cmp.i.not.i362 = icmp eq ptr %125, %segments
  br i1 %cmp.i.not.i362, label %list_del.exit.i363.nilfs_dispose_segment_list.exit364_crit_edge, label %list_del.exit.i363.while.body.i357_crit_edge

list_del.exit.i363.while.body.i357_crit_edge:     ; preds = %list_del.exit.i363
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i357

list_del.exit.i363.nilfs_dispose_segment_list.exit364_crit_edge: ; preds = %list_del.exit.i363
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_dispose_segment_list.exit364

nilfs_dispose_segment_list.exit364:               ; preds = %list_del.exit.i363.nilfs_dispose_segment_list.exit364_crit_edge, %brelse.exit354.nilfs_dispose_segment_list.exit364_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1393)
  %cmp91 = icmp slt i32 %ret.1393, 0
  br i1 %cmp91, label %nilfs_dispose_segment_list.exit364.cleanup_crit_edge, label %cond.false

nilfs_dispose_segment_list.exit364.cleanup_crit_edge: ; preds = %nilfs_dispose_segment_list.exit364
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false:                                       ; preds = %nilfs_dispose_segment_list.exit364
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %126 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ns_sb, align 8
  %128 = zext i32 %ret.1393 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %ret.1393, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %cond.false.sw.epilog.i_crit_edge
    i32 4, label %sw.bb2.i
    i32 5, label %sw.bb3.i
    i32 6, label %sw.bb4.i
    i32 7, label %sw.bb5.i
    i32 1, label %sw.bb6.i
  ]

cond.false.sw.epilog.i_crit_edge:                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %127, ptr noundef nonnull @.str.3) #9
  br label %cleanup

sw.bb2.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %127, ptr noundef nonnull @.str.10, i32 noundef %ret.1393) #9
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %cond.false.sw.epilog.i_crit_edge
  %msg.0.i = phi ptr [ @.str.9, %sw.bb6.i ], [ @.str.8, %sw.bb5.i ], [ @.str.7, %sw.bb4.i ], [ @.str.6, %sw.bb3.i ], [ @.str.5, %sw.bb2.i ], [ @.str.4, %cond.false.sw.epilog.i_crit_edge ]
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %127, ptr noundef nonnull @.str.11, ptr noundef nonnull %msg.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %sw.default.i, %sw.bb.i, %nilfs_dispose_segment_list.exit364.cleanup_crit_edge, %list_splice_tail.exit
  %retval.0 = phi i32 [ 0, %list_splice_tail.exit ], [ %ret.1393, %nilfs_dispose_segment_list.exit364.cleanup_crit_edge ], [ -22, %sw.default.i ], [ -22, %sw.epilog.i ], [ -5, %sw.bb.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %segments) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_validate_log(ptr nocapture noundef readonly %nilfs, i64 noundef %seg_seq, ptr nocapture noundef readonly %bh_sum, ptr nocapture noundef readonly %sum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ss_magic = getelementptr inbounds %struct.nilfs_segment_summary, ptr %sum, i32 0, i32 2
  %0 = ptrtoint ptr %ss_magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 301641502, i32 %1)
  %cmp.not = icmp eq i32 %1, 301641502
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %ss_seq = getelementptr inbounds %struct.nilfs_segment_summary, ptr %sum, i32 0, i32 5
  %2 = ptrtoint ptr %ss_seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ss_seq, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %seg_seq)
  %cmp1.not = icmp eq i64 %4, %seg_seq
  br i1 %cmp1.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %ss_nblocks = getelementptr inbounds %struct.nilfs_segment_summary, ptr %sum, i32 0, i32 8
  %5 = ptrtoint ptr %ss_nblocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ss_nblocks, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.end3.out_crit_edge, label %lor.rhs, !prof !44

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.rhs:                                          ; preds = %if.end3
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %8 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ns_blocks_per_segment, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp ugt i32 %7, %9
  br i1 %cmp5, label %lor.rhs.out_crit_edge, label %if.end8, !prof !44

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %lor.rhs
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh_sum, i32 0, i32 3
  %10 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %b_blocknr, align 8
  %ns_blocksize.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %12 = ptrtoint ptr %ns_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp.i = icmp ult i32 %13, 5
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !44

do.body2.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end7.i:                                        ; preds = %if.end8
  %conv = zext i32 %7 to i64
  %ns_blocksize_bits = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 44
  %14 = ptrtoint ptr %ns_blocksize_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ns_blocksize_bits, align 8
  %sh_prom = zext i32 %15 to i64
  %shl = shl i64 %conv, %sh_prom
  %sub.i = add i64 %shl, -4
  %sub8.i = add i32 %13, -4
  %conv9.i = zext i32 %sub8.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv9.i)
  %cmp10.i = icmp ult i64 %sub.i, %conv9.i
  %extract.t.i = trunc i64 %sub.i to i32
  %cond.off0.i = select i1 %cmp10.i, i32 %extract.t.i, i32 %sub8.i
  %ns_crc_seed.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 53
  %16 = ptrtoint ptr %ns_crc_seed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ns_crc_seed.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh_sum, i32 0, i32 5
  %18 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %call.i = tail call i32 @crc32_le(i32 noundef %17, ptr noundef %add.ptr.i, i32 noundef %cond.off0.i) #12
  %dec.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp13.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp13.not.i, label %do.end7.i.if.end11_crit_edge, label %do.body16.preheader.i

do.end7.i.if.end11_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body16.preheader.i:                            ; preds = %do.end7.i
  %ns_bdev.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %conv23.i = zext i32 %13 to i64
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %do.body16.preheader.i
  %start.addr.0.i = phi i64 [ %inc.i, %do.cond34.i.do.body16.i_crit_edge ], [ %11, %do.body16.preheader.i ]
  %nblock.addr.0.i = phi i32 [ %dec35.i, %do.cond34.i.do.body16.i_crit_edge ], [ %dec.i, %do.body16.preheader.i ]
  %size.0.i = phi i32 [ %cond30.off0.i, %do.cond34.i.do.body16.i_crit_edge ], [ %cond.off0.i, %do.body16.preheader.i ]
  %crc.0.i = phi i32 [ %call33.i, %do.cond34.i.do.body16.i_crit_edge ], [ %call.i, %do.body16.preheader.i ]
  %check_bytes.addr.0.i = phi i64 [ %sub22.i, %do.cond34.i.do.body16.i_crit_edge ], [ %sub.i, %do.body16.preheader.i ]
  %20 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ns_bdev.i, align 4
  %inc.i = add i64 %start.addr.0.i, 1
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %21, i64 noundef %inc.i, i32 noundef %13, i32 noundef 8) #9
  %tobool18.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i, label %do.body16.i.out_crit_edge, label %do.cond34.i

do.body16.i.out_crit_edge:                        ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.cond34.i:                                      ; preds = %do.body16.i
  %conv21.i = zext i32 %size.0.i to i64
  %sub22.i = sub i64 %check_bytes.addr.0.i, %conv21.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub22.i, i64 %conv23.i)
  %cmp25.i = icmp ult i64 %sub22.i, %conv23.i
  %extract.t2.i = trunc i64 %sub22.i to i32
  %cond30.off0.i = select i1 %cmp25.i, i32 %extract.t2.i, i32 %13
  %b_data32.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %b_data32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data32.i, align 4
  %call33.i = tail call i32 @crc32_le(i32 noundef %crc.0.i, ptr noundef %23, i32 noundef %cond30.off0.i) #12
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #9
  %dec35.i = add i32 %nblock.addr.0.i, -1
  %cmp36.not.i = icmp eq i32 %dec35.i, 0
  br i1 %cmp36.not.i, label %do.cond34.i.if.end11_crit_edge, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.i

do.cond34.i.if.end11_crit_edge:                   ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %do.cond34.i.if.end11_crit_edge, %do.end7.i.if.end11_crit_edge
  %crc.0.ph = phi i32 [ %call.i, %do.end7.i.if.end11_crit_edge ], [ %call33.i, %do.cond34.i.if.end11_crit_edge ]
  %24 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sum, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %crc.0.ph, i32 %26)
  %cmp12.not = icmp eq i32 %crc.0.ph, %26
  %spec.store.select = select i1 %cmp12.not, i32 0, i32 6
  br label %out

out:                                              ; preds = %if.end11, %do.body16.i.out_crit_edge, %lor.rhs.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 3, %entry.out_crit_edge ], [ 4, %if.end.out_crit_edge ], [ 7, %lor.rhs.out_crit_edge ], [ %spec.store.select, %if.end11 ], [ 7, %if.end3.out_crit_edge ], [ 2, %do.body16.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_recover_dsync_blocks(ptr nocapture noundef readonly %nilfs, ptr noundef %sb, ptr noundef %root, ptr noundef readonly %head, ptr nocapture noundef %nr_salvaged_blocks) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %0 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_blocksize, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !46
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head, align 4
  %cmp.not105 = icmp eq ptr %4, %head
  br i1 %cmp.not105, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv14 = zext i32 %1 to i64
  %ns_bdev.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in109 = phi ptr [ %4, %for.body.lr.ph ], [ %.pn114, %list_del_init.exit.for.body_crit_edge ]
  %err2.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %err2.1, %list_del_init.exit.for.body_crit_edge ]
  %rb.0113 = getelementptr i8, ptr %.pn.in109, i32 -28
  %5 = ptrtoint ptr %.pn.in109 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn114 = load ptr, ptr %.pn.in109, align 4
  %6 = ptrtoint ptr %rb.0113 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rb.0113, align 8
  %call = call ptr @nilfs_iget(ptr noundef %sb, ptr noundef %root, i32 noundef %7) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call to i32
  br label %failed_inode

if.end:                                           ; preds = %for.body
  %blkoff = getelementptr i8, ptr %.pn.in109, i32 -4
  %9 = ptrtoint ptr %blkoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blkoff, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %12 to i32
  %shl = shl i32 %10, %conv
  %conv8 = zext i32 %shl to i64
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping, align 8
  %call9 = call i32 @block_write_begin(ptr noundef %14, i64 noundef %conv8, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull @nilfs_get_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end22, label %if.then13, !prof !47

if.then13:                                        ; preds = %if.end
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  %add = add nuw nsw i64 %conv8, %conv14
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %16)
  %cmp15 = icmp sgt i64 %add, %16
  br i1 %cmp15, label %if.then17, label %if.then13.failed_inode_crit_edge

if.then13.failed_inode_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_inode

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  call void @nilfs_write_failed(ptr noundef %18, i64 noundef %add) #9
  br label %failed_inode

if.end22:                                         ; preds = %if.end
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %page, align 4
  %21 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ns_bdev.i, align 4
  %blocknr.i = getelementptr i8, ptr %.pn.in109, i32 -20
  %23 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %blocknr.i, align 8
  %25 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ns_blocksize, align 4
  %call.i.i = call ptr @__bread_gfp(ptr noundef %22, i64 noundef %24, i32 noundef %26, i32 noundef 8) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end22.failed_page_crit_edge, label %if.end32, !prof !44

if.end22.failed_page_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_page

if.end32:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %27 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %27, 512
  %28 = call i32 @llvm.read_register.i32(metadata !34) #9
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %32 = call i32 @llvm.read_register.i32(metadata !34) #9
  %and.i.i.i1.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %20, i32 noundef %or.i.i) #9
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i = and i32 %40, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %b_size.i, align 8
  %43 = call ptr @memcpy(ptr %add.ptr.i, ptr %39, i32 %42)
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  %44 = call i32 @llvm.read_register.i32(metadata !34) #9
  %and.i.i.i1.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %49, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  %50 = call i32 @llvm.read_register.i32(metadata !34) #9
  %and.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__brelse(ptr noundef nonnull %call.i.i) #9
  %call33 = call i32 @nilfs_set_file_dirty(ptr noundef %call, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end42, label %if.end32.failed_page_crit_edge, !prof !47

if.end32.failed_page_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_page

if.end42:                                         ; preds = %if.end32
  %54 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_mapping, align 8
  %56 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page, align 4
  %call44 = call i32 @block_write_end(ptr noundef null, ptr noundef %55, i64 noundef %conv8, i32 noundef %1, i32 noundef %1, ptr noundef %57, ptr noundef null) #9
  %58 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page, align 4
  call void @unlock_page(ptr noundef %59) #9
  %60 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %page, align 4
  %62 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %and.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %64, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %61 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %65, %if.end.i.i ]
  %66 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %67 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.i.i.i = icmp eq i32 %68, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !44

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.15) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %70 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %70, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_recover_dsync_blocks, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !59

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %66, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %66) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %71 = ptrtoint ptr %nr_salvaged_blocks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_salvaged_blocks, align 4
  %inc = add i32 %72, 1
  store i32 %inc, ptr %nr_salvaged_blocks, align 4
  br label %next51

failed_page:                                      ; preds = %if.end32.failed_page_crit_edge, %if.end22.failed_page_crit_edge
  %err.0 = phi i32 [ %call33, %if.end32.failed_page_crit_edge ], [ -5, %if.end22.failed_page_crit_edge ]
  %73 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %page, align 4
  call void @unlock_page(ptr noundef %74) #9
  %75 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %page, align 4
  call fastcc void @put_page(ptr noundef %76)
  br label %failed_inode

failed_inode:                                     ; preds = %failed_page, %if.then17, %if.then13.failed_inode_crit_edge, %if.then
  %err.1 = phi i32 [ %8, %if.then ], [ %err.0, %failed_page ], [ %call9, %if.then17 ], [ %call9, %if.then13.failed_inode_crit_edge ]
  %inode.0 = phi ptr [ null, %if.then ], [ %call, %failed_page ], [ %call, %if.then17 ], [ %call, %if.then13.failed_inode_crit_edge ]
  %77 = ptrtoint ptr %rb.0113 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rb.0113, align 8
  %blkoff46 = getelementptr i8, ptr %.pn.in109, i32 -4
  %79 = ptrtoint ptr %blkoff46 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blkoff46, align 8
  %conv47 = zext i32 %80 to i64
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.14, i32 noundef %err.1, i32 noundef %78, i64 noundef %conv47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err2.0106)
  %tobool48.not = icmp eq i32 %err2.0106, 0
  %spec.select = select i1 %tobool48.not, i32 %err.1, i32 %err2.0106
  br label %next51

next51:                                           ; preds = %failed_inode, %put_page.exit
  %err2.1 = phi i32 [ %err2.0106, %put_page.exit ], [ %spec.select, %failed_inode ]
  %inode.1 = phi ptr [ %call, %put_page.exit ], [ %inode.0, %failed_inode ]
  call void @iput(ptr noundef %inode.1) #9
  %call.i.i98 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in109) #9
  br i1 %call.i.i98, label %if.end.i.i99, label %next51.list_del_init.exit_crit_edge

next51.list_del_init.exit_crit_edge:              ; preds = %next51
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i99:                                     ; preds = %next51
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in109, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i, align 4
  %83 = ptrtoint ptr %.pn.in109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %.pn.in109, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i99, %next51.list_del_init.exit_crit_edge
  %87 = ptrtoint ptr %.pn.in109 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %.pn.in109, ptr %.pn.in109, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in109, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %.pn.in109, ptr %prev.i3.i, align 4
  call void @kfree(ptr noundef %rb.0113) #9
  %cmp.not = icmp eq ptr %.pn114, %head
  br i1 %cmp.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %err2.0.lcssa = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err2.1, %list_del_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  ret i32 %err2.0.lcssa
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_iget(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_write_failed(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_set_file_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !44

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.15) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !59

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %4) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_update(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sufile_do_free(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sufile_do_scrap(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/recovery.c", i32 741, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/recovery.c", i32 752, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/recovery.c", i32 766, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/recovery.c", i32 54, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nilfs2/recovery.c", i32 57, i32 9}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nilfs2/recovery.c", i32 60, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nilfs2/recovery.c", i32 63, i32 9}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nilfs2/recovery.c", i32 66, i32 9}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nilfs2/recovery.c", i32 69, i32 9}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nilfs2/recovery.c", i32 72, i32 9}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nilfs2/recovery.c", i32 75, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nilfs2/recovery.c", i32 78, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nilfs2/recovery.c", i32 672, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nilfs2/recovery.c", i32 683, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nilfs2/recovery.c", i32 546, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/mm.h", i32 717, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nilfs2/recovery.c", i32 705, i32 3}
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
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2155165430, i64 2155165915, i64 2155165467, i64 2155165523, i64 2155165557, i64 2155165581, i64 2155165622, i64 2155165643, i64 2155165671, i64 2155165705}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2148538005, i64 2148538285, i64 2148538619, i64 2148538953}
!49 = !{i64 2155171595, i64 2155172080, i64 2155171632, i64 2155171688, i64 2155171722, i64 2155171746, i64 2155171787, i64 2155171808, i64 2155171836, i64 2155171870}
!50 = !{i64 2155190929, i64 2155191414, i64 2155190966, i64 2155191022, i64 2155191056, i64 2155191080, i64 2155191121, i64 2155191142, i64 2155191170, i64 2155191204}
!51 = !{i64 2153709972}
!52 = !{i64 2152203516}
!53 = !{i64 2152203723}
!54 = !{i64 2153712743}
!55 = !{i64 2153186036, i64 2153186519, i64 2153186073, i64 2153186129, i64 2153186163, i64 2153186187, i64 2153186228, i64 2153186249, i64 2153186277, i64 2153186311}
!56 = !{i64 2148776696}
!57 = !{i64 2148691405, i64 2148691437, i64 2148691466, i64 2148691500, i64 2148691531, i64 2148691554}
!58 = !{i64 2148776925}
!59 = !{i64 2148512818, i64 2148512823, i64 2148512836, i64 2148512880, i64 2148512914, i64 2148512935}
