; ModuleID = '/llk/IR_all_yes/fs/reiserfs/tail_conversion.c_pt.bc'
source_filename = "../fs/reiserfs/tail_conversion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_key = type { %struct.in_core_key, i32, i32 }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.71, i16, i16, i16 }
%struct.reiserfs_key = type { i32, i32, %union.anon.70 }
%union.anon.70 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%union.anon.71 = type { i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.72, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.72 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.offset_v1 = type { i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.58, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_list_bitmap = type { ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-14030\00", [22 x i8] zeroinitializer }, align 32
@__func__.direct2indirect = private unnamed_addr constant [16 x i8] c"direct2indirect\00", align 1
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"pasted or inserted byte exists in the tree %K. Use fsck to repair.\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-14050\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"direct item (%K) not found\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"(!(!is_direct_le_ih(p_le_ih))) at fs/reiserfs/tail_conversion.c:%i:%s: vs-14055: direct item expected(%K), found %h\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5520\00", [23 x i8] zeroinitializer }, align 32
@__func__.indirect2direct = private unnamed_addr constant [16 x i8] c"indirect2direct\00", align 1
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"item to be converted %K does not exist\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5530\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tail position changed while we were reading it\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 67, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 117, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 120, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 251, i32 4 }
@___asan_gen_.44 = private constant [33 x i8] c"../fs/reiserfs/tail_conversion.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 260, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 260, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 366, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 44, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @direct2indirect(ptr noundef %th, ptr noundef %inode, ptr noundef %path, ptr noundef %unbh, i64 noundef %tail_offset) local_unnamed_addr #0 align 64 {
entry:
  %end_key = alloca %struct.cpu_key, align 8
  %ind_ih = alloca %struct.item_head, align 4
  %unfm_ptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %3, i32 1
  %6 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %end_key) #7
  %10 = call ptr @memset(ptr %end_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ind_ih) #7
  %11 = getelementptr inbounds %struct.reiserfs_key, ptr %ind_ih, i32 0, i32 2
  %12 = getelementptr inbounds %struct.item_head, ptr %ind_ih, i32 0, i32 1
  %13 = getelementptr inbounds %struct.item_head, ptr %ind_ih, i32 0, i32 2
  %14 = call ptr @memset(ptr %ind_ih, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unfm_ptr) #7
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %15 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !35

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/tail_conversion.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.end10:                                         ; preds = %entry
  %17 = getelementptr inbounds %struct.item_head, ptr %ind_ih, i32 0, i32 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %7
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_direct2indirect = getelementptr inbounds %struct.reiserfs_sb_info, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %s_direct2indirect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_direct2indirect, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %s_direct2indirect, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  call void @copy_item_head(ptr noundef nonnull %ind_ih, ptr noundef %arrayidx.i.i) #7
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.i = icmp eq i16 %25, 0
  br i1 %cmp.i.i, label %if.then.i.i149, label %if.else.i.i152

if.then.i.i149:                                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = trunc i64 %tail_offset to i32
  %26 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #7
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %11, align 4
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -16777217, ptr %k_uniqueness.i.i, align 4
  br label %set_le_ih_k_type.exit

if.else.i.i152:                                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i = and i64 %tail_offset, 1152921504606846975
  %29 = or i64 %and.i.i.i, 1152921504606846976
  %30 = call i64 @llvm.bswap.i64(i64 %29)
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %11, align 4
  br label %set_le_ih_k_type.exit

set_le_ih_k_type.exit:                            ; preds = %if.else.i.i152, %if.then.i.i149
  call void @make_cpu_key(ptr noundef nonnull %end_key, ptr noundef %inode, i64 noundef %tail_offset, i32 noundef 1, i32 noundef 4) #7
  %call12 = call i32 @search_for_position_by_key(ptr noundef %1, ptr noundef nonnull %end_key, ptr noundef %path) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp = icmp eq i32 %call12, 1
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %set_le_ih_k_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.direct2indirect, ptr noundef nonnull @.str.1, ptr noundef nonnull %end_key) #7
  call void @pathrelse(ptr noundef %path) #7
  br label %cleanup91

if.end14:                                         ; preds = %set_le_ih_k_type.exit
  %32 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %path, align 4
  %add.ptr.i154 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %33
  %34 = ptrtoint ptr %add.ptr.i154 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i154, align 4
  %pe_position.i155 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %33, i32 1
  %36 = ptrtoint ptr %pe_position.i155 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pe_position.i155, align 4
  %b_data.i.i.i156 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %38 = ptrtoint ptr %b_data.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data.i.i.i156, align 4
  %add.ptr.i.i.i157 = getelementptr i8, ptr %39, i32 24
  %arrayidx.i.i158 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i157, i32 %37
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %unbh, i32 0, i32 3
  %40 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %41 to i32
  %42 = call i32 @llvm.bswap.i32(i32 %conv)
  %43 = ptrtoint ptr %unfm_ptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %unfm_ptr, align 4
  %ih_version.i159 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i158, i32 0, i32 4
  %44 = ptrtoint ptr %ih_version.i159 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %ih_version.i159, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp.i.i.i = icmp eq i16 %45, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i158, i32 0, i32 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %is_statdata_le_ih.exit

if.then.i.i.i:                                    ; preds = %if.end14
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cond = icmp eq i32 %47, 0
  br i1 %cond, label %if.then.i.i.i.do.body19_crit_edge, label %if.then.i.i.i.if.else_crit_edge

if.then.i.i.i.if.else_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.i.i.i.do.body19_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

is_statdata_le_ih.exit:                           ; preds = %if.end14
  %48 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %u.i.i.i, align 1
  %50 = and i64 %49, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %phi.cmp1.i.i.not = icmp eq i64 %50, 0
  br i1 %phi.cmp1.i.i.not, label %is_statdata_le_ih.exit.do.body19_crit_edge, label %is_statdata_le_ih.exit.if.else_crit_edge

is_statdata_le_ih.exit.if.else_crit_edge:         ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

is_statdata_le_ih.exit.do.body19_crit_edge:       ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.body19:                                        ; preds = %is_statdata_le_ih.exit.do.body19_crit_edge, %if.then.i.i.i.do.body19_crit_edge
  %51 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %12, align 4
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1024, ptr %13, align 2
  %inc29 = add i32 %37, 1
  %53 = ptrtoint ptr %pe_position.i155 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc29, ptr %pe_position.i155, align 4
  %call30 = call i32 @reiserfs_insert_item(ptr noundef %th, ptr noundef %path, ptr noundef nonnull %end_key, ptr noundef nonnull %ind_ih, ptr noundef %inode, ptr noundef nonnull %unfm_ptr) #7
  br label %if.end32

if.else:                                          ; preds = %is_statdata_le_ih.exit.if.else_crit_edge, %if.then.i.i.i.if.else_crit_edge
  %call31 = call i32 @reiserfs_paste_into_item(ptr noundef %th, ptr noundef %path, ptr noundef nonnull %end_key, ptr noundef %inode, ptr noundef nonnull %unfm_ptr, i32 noundef 4) #7
  br label %if.end32

if.end32:                                         ; preds = %if.else, %do.body19
  %retval1.0 = phi i32 [ %call30, %do.body19 ], [ %call31, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool33.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool33.not, label %if.end35, label %if.end32.cleanup91_crit_edge

if.end32.cleanup91_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

if.end35:                                         ; preds = %if.end32
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %54 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %..i = select i1 %cmp.i, i64 4294967295, i64 1152921504606846975
  call void @make_cpu_key(ptr noundef nonnull %end_key, ptr noundef %inode, i64 noundef %..i, i32 noundef 2, i32 noundef 4) #7
  %sub = add i32 %23, -1
  %conv51145 = zext i32 %sub to i64
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %unbh, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end65.while.cond_crit_edge, %if.end35
  %total_tail.0 = phi i32 [ 0, %if.end35 ], [ %add67, %if.end65.while.cond_crit_edge ]
  %call37 = call i32 @search_for_position_by_key(ptr noundef %1, ptr noundef nonnull %end_key, ptr noundef %path) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 1
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.direct2indirect, ptr noundef nonnull @.str.3, ptr noundef nonnull %end_key) #10
  unreachable

if.end41:                                         ; preds = %while.cond
  %56 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %path, align 4
  %add.ptr.i161 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %57
  %58 = ptrtoint ptr %add.ptr.i161 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i161, align 4
  %pe_position.i162 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %57, i32 1
  %60 = ptrtoint ptr %pe_position.i162 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pe_position.i162, align 4
  %b_data.i.i.i163 = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %62 = ptrtoint ptr %b_data.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data.i.i.i163, align 4
  %add.ptr.i.i.i164 = getelementptr i8, ptr %63, i32 24
  %arrayidx.i.i165 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i164, i32 %61
  %ih_version.i166 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i165, i32 0, i32 4
  %64 = ptrtoint ptr %ih_version.i166 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %ih_version.i166, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp.i.i.i167 = icmp eq i16 %65, 0
  %u.i.i.i168 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i165, i32 0, i32 2
  br i1 %cmp.i.i.i167, label %is_direct_le_ih.exit, label %is_direct_le_ih.exit.thread

is_direct_le_ih.exit:                             ; preds = %if.end41
  %k_uniqueness.i.i.i169 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i168, i32 0, i32 1
  %66 = ptrtoint ptr %k_uniqueness.i.i.i169 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %k_uniqueness.i.i.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cond.i.i.not = icmp eq i32 %67, -1
  br i1 %cond.i.i.not, label %cond.true.i.i, label %is_direct_le_ih.exit.if.then46_crit_edge

is_direct_le_ih.exit.if.then46_crit_edge:         ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

is_direct_le_ih.exit.thread:                      ; preds = %if.end41
  %68 = ptrtoint ptr %u.i.i.i168 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %u.i.i.i168, align 1
  %70 = and i64 %69, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %70)
  %phi.cmp1.i.i171.not = icmp eq i64 %70, 32
  br i1 %phi.cmp1.i.i171.not, label %cond.false.i.i, label %is_direct_le_ih.exit.thread.if.then46_crit_edge

is_direct_le_ih.exit.thread.if.then46_crit_edge:  ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.then46:                                        ; preds = %is_direct_le_ih.exit.thread.if.then46_crit_edge, %is_direct_le_ih.exit.if.then46_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.direct2indirect, ptr noundef nonnull @.str.5, i32 noundef 122, ptr noundef nonnull @__func__.direct2indirect, ptr noundef nonnull %end_key, ptr noundef %arrayidx.i.i165) #10
  unreachable

cond.true.i.i:                                    ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %u.i.i.i168 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %u.i.i.i168, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72) #7
  %conv.i.i177 = zext i32 %73 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %u.i.i.i168 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %u.i.i.i168, align 1
  %76 = and i64 %75, -241
  %77 = call i64 @llvm.bswap.i64(i64 %76) #7
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i178 = phi i64 [ %conv.i.i177, %cond.true.i.i ], [ %77, %cond.false.i.i ]
  %and = and i64 %cond.i.i178, %conv51145
  %ih_item_len52 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i165, i32 0, i32 2
  %78 = ptrtoint ptr %ih_item_len52 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %ih_item_len52, align 1
  %80 = call i16 @llvm.bswap.i16(i16 %79)
  %conv53 = zext i16 %80 to i64
  %add = add nuw nsw i64 %and, %conv53
  %81 = trunc i64 %add to i32
  %conv55 = add i32 %81, -1
  %82 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_page, align 8
  %tobool56.not = icmp eq ptr %83, null
  br i1 %tobool56.not, label %le_ih_k_offset.exit.if.end65_crit_edge, label %lor.lhs.false

le_ih_k_offset.exit.if.end65_crit_edge:           ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

lor.lhs.false:                                    ; preds = %le_ih_k_offset.exit
  %84 = ptrtoint ptr %unbh to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %unbh, align 4
  %and1.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool58.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %lor.lhs.false.if.end65_crit_edge

lor.lhs.false.if.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

lor.lhs.false59:                                  ; preds = %lor.lhs.false
  %86 = getelementptr inbounds %struct.page, ptr %83, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %and.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i179, !prof !37

if.then.i.i179:                                   ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %88, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %83 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i179
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i179 ], [ %89, %if.end.i.i ]
  %90 = inttoptr i32 %retval.0.i.i to ptr
  %91 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %and.i.i.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i180, !prof !37

if.then.i.i.i180:                                 ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %94, ptr noundef nonnull @.str.10) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %95 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %90, align 4
  %97 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i.not.i = icmp eq i32 %97, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.if.end65_crit_edge, label %do.end.i.i

folio_flags.exit.i.i.if.end65_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end.i.i:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %if.end65

if.end65:                                         ; preds = %do.end.i.i, %folio_flags.exit.i.i.if.end65_crit_edge, %lor.lhs.false.if.end65_crit_edge, %le_ih_k_offset.exit.if.end65_crit_edge
  %up_to_date_bh.0 = phi ptr [ null, %lor.lhs.false.if.end65_crit_edge ], [ null, %le_ih_k_offset.exit.if.end65_crit_edge ], [ %unbh, %folio_flags.exit.i.i.if.end65_crit_edge ], [ null, %do.end.i.i ]
  %call66 = call i32 @reiserfs_delete_item(ptr noundef %th, ptr noundef %path, ptr noundef nonnull %end_key, ptr noundef %inode, ptr noundef %up_to_date_bh.0) #7
  %add67 = add i32 %call66, %total_tail.0
  %cmp68 = icmp eq i32 %conv55, %call66
  br i1 %cmp68, label %while.end, label %if.end65.while.cond_crit_edge

if.end65.while.cond_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %if.end65
  %tobool72.not = icmp eq ptr %up_to_date_bh.0, null
  br i1 %tobool72.not, label %while.end.if.end89_crit_edge, label %if.then73

while.end.if.end89_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then73:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %98 = trunc i64 %tail_offset to i32
  %99 = add i32 %98, 4095
  %100 = add i32 %99, %add67
  %conv78 = and i32 %100, 4095
  %b_page79 = getelementptr inbounds %struct.buffer_head, ptr %up_to_date_bh.0, i32 0, i32 2
  %101 = ptrtoint ptr %b_page79 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %b_page79, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %103 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %103, 512
  %104 = call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i.i.i.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %107, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %108 = call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i.i.i1.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 213
  %112 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %113, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %102, i32 noundef %or.i) #7
  %add.ptr81 = getelementptr i8, ptr %call.i.i, i32 %conv78
  %sub82 = sub i32 %23, %add67
  %114 = call ptr @memset(ptr %add.ptr81, i32 0, i32 %sub82)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %115 = call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i.i.i1.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 213
  %119 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %120, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %121 = call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i.i.i.i181 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i181 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i182 = add i32 %124, -1
  store volatile i32 %sub.i.i182, ptr %preempt_count.i.i.i, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then73, %while.end.if.end89_crit_edge
  %i_first_direct_byte = getelementptr i8, ptr %inode, i32 -244
  %125 = ptrtoint ptr %i_first_direct_byte to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %i_first_direct_byte, align 4
  br label %cleanup91

cleanup91:                                        ; preds = %if.end89, %if.end32.cleanup91_crit_edge, %if.then13
  %retval.0 = phi i32 [ -5, %if.then13 ], [ 0, %if.end89 ], [ %retval1.0, %if.end32.cleanup91_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unfm_ptr) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ind_ih) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %end_key) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_item_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_cpu_key(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_for_position_by_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pathrelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_insert_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_paste_into_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_delete_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_unmap_buffer(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 366) #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #7
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #7, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  %3 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #7
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %lock_buffer.exit.do.body_crit_edge

lock_buffer.exit.do.body_crit_edge:               ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %lock_buffer.exit
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %bh, align 4
  %9 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %lock_buffer.exit.do.body_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/tail_conversion.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 171, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #7
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 9
  %10 = ptrtoint ptr %b_assoc_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %b_assoc_buffers, align 4
  %cmp.i.not = icmp eq ptr %11, %b_assoc_buffers
  br i1 %cmp.i.not, label %lor.lhs.false7, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false7:                                   ; preds = %if.end
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %12 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_private, align 8
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %lor.lhs.false7.if.end15_crit_edge, label %lor.lhs.false7.land.lhs.true_crit_edge

lor.lhs.false7.land.lhs.true_crit_edge:           ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false7.if.end15_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false7.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %14 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_page, align 8
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %land.lhs.true.if.end15_crit_edge, label %if.then10

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %land.lhs.true
  %mapping = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_journal, align 4
  %j_dirty_buffers_lock = getelementptr inbounds %struct.reiserfs_journal, ptr %25, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %j_dirty_buffers_lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %b_assoc_buffers) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.list_del_init.exit_crit_edge

if.then10.list_del_init.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %b_assoc_buffers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_assoc_buffers, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then10.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %b_assoc_buffers to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %b_assoc_buffers, ptr %b_assoc_buffers, align 4
  %prev.i3.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b_assoc_buffers, ptr %prev.i3.i, align 4
  tail call void @reiserfs_free_jh(ptr noundef %bh) #7
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock) #7
  br label %if.end15

if.end15:                                         ; preds = %list_del_init.exit, %land.lhs.true.if.end15_crit_edge, %lor.lhs.false7.if.end15_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh) #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %bh) #7
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh) #7
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %34 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %b_bdev, align 8
  tail call void @unlock_buffer(ptr noundef %bh) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_free_jh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indirect2direct(ptr noundef %th, ptr noundef %inode, ptr noundef %page, ptr noundef %path, ptr noundef %item_key, i64 noundef %n_new_file_size, ptr nocapture noundef writeonly %mode) local_unnamed_addr #0 align 64 {
entry:
  %s_ih = alloca %struct.item_head, align 4
  %key = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s_ih) #7
  %2 = getelementptr inbounds %struct.reiserfs_key, ptr %s_ih, i32 0, i32 2
  %3 = getelementptr inbounds %struct.item_head, ptr %s_ih, i32 0, i32 2
  %4 = getelementptr inbounds %struct.item_head, ptr %s_ih, i32 0, i32 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %5 = call ptr @memset(ptr %s_ih, i32 255, i32 24)
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #7
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %8 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !35

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/tail_conversion.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

do.end9:                                          ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_indirect2direct = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %s_indirect2direct to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_indirect2direct, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %s_indirect2direct, align 4
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 115, ptr %mode, align 1
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %15 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %path, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %16
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %16, i32 1
  %19 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %20
  call void @copy_item_head(ptr noundef nonnull %s_ih, ptr noundef %arrayidx.i.i) #7
  %sub = add i32 %7, -1
  %23 = trunc i64 %n_new_file_size to i32
  %conv11 = and i32 %sub, %23
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags, align 8
  %and13 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %sub18 = add i32 %conv11, 7
  %and19 = and i32 %sub18, -8
  %round_tail_len.0 = select i1 %tobool14.not, i32 %conv11, i32 %and19
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i.i = icmp eq i16 %27, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29) #7
  %conv.i.i = zext i32 %30 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %2, align 4
  %33 = and i64 %32, -241
  %34 = call i64 @llvm.bswap.i64(i64 %33) #7
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %conv.i.i, %cond.true.i.i ], [ %34, %cond.false.i.i ]
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %3, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %38 = lshr i16 %37, 2
  %div = zext i16 %38 to i32
  %sub25 = add nsw i32 %div, -1
  %39 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize, align 16
  %mul = mul i32 %sub25, %40
  %conv27 = zext i32 %mul to i64
  %sub23 = add nsw i64 %cond.i.i, %conv27
  %add28 = add nsw i64 %sub23, -1
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 44) #7
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %42, 30
  %43 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %le_ih_k_offset.exit.if.then.i_crit_edge [
    i32 2, label %le_ih_k_offset.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

le_ih_k_offset.exit.if.else.i_crit_edge:          ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

le_ih_k_offset.exit.if.then.i_crit_edge:          ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %le_ih_k_offset.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %44 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i.not.i = icmp eq i32 %44, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %le_ih_k_offset.exit.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %page) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %le_ih_k_offset.exit.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %page) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %call30 = call i32 @comp_items(ptr noundef nonnull %s_ih, ptr noundef %path) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %extract.t118 = trunc i64 %add28 to i32
  br i1 %tobool31.not, label %kmap.exit.if.end53_crit_edge, label %if.then32

kmap.exit.if.end53_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then32:                                        ; preds = %kmap.exit
  %call33 = call i32 @search_for_position_by_key(ptr noundef %1, ptr noundef %item_key, ptr noundef %path) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.indirect2direct, ptr noundef nonnull @.str.7, ptr noundef %item_key) #10
  unreachable

if.end37:                                         ; preds = %if.then32
  %45 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %path, align 4
  %add.ptr.i121 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %46
  %47 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i121, align 4
  %pe_position.i122 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %46, i32 1
  %49 = ptrtoint ptr %pe_position.i122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pe_position.i122, align 4
  %b_data.i.i.i123 = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %b_data.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i.i.i123, align 4
  %add.ptr.i.i.i124 = getelementptr i8, ptr %52, i32 24
  %arrayidx.i.i125 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i124, i32 %50
  call void @copy_item_head(ptr noundef nonnull %s_ih, ptr noundef %arrayidx.i.i125) #7
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.i.i127 = icmp eq i16 %54, 0
  br i1 %cmp.i.i127, label %cond.true.i.i130, label %cond.false.i.i131

cond.true.i.i130:                                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #7
  %conv.i.i129 = zext i32 %57 to i64
  br label %le_ih_k_offset.exit133

cond.false.i.i131:                                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %2, align 4
  %60 = and i64 %59, -241
  %61 = call i64 @llvm.bswap.i64(i64 %60) #7
  br label %le_ih_k_offset.exit133

le_ih_k_offset.exit133:                           ; preds = %cond.false.i.i131, %cond.true.i.i130
  %cond.i.i132 = phi i64 [ %conv.i.i129, %cond.true.i.i130 ], [ %61, %cond.false.i.i131 ]
  %sub40 = add nsw i64 %cond.i.i132, -1
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %3, align 2
  %64 = call i16 @llvm.bswap.i16(i16 %63)
  %65 = lshr i16 %64, 2
  %div43 = zext i16 %65 to i32
  %sub44 = add nsw i32 %div43, -1
  %66 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_blocksize, align 16
  %mul46 = mul i32 %sub44, %67
  %conv47 = zext i32 %mul46 to i64
  %add48 = add nsw i64 %sub40, %conv47
  call void @__sanitizer_cov_trace_cmp8(i64 %add48, i64 %add28)
  %cmp49.not = icmp eq i64 %add48, %add28
  %extract.t = trunc i64 %add48 to i32
  br i1 %cmp49.not, label %le_ih_k_offset.exit133.if.end53_crit_edge, label %if.then51

le_ih_k_offset.exit133.if.end53_crit_edge:        ; preds = %le_ih_k_offset.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then51:                                        ; preds = %le_ih_k_offset.exit133
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.indirect2direct, ptr noundef nonnull @.str.9) #10
  unreachable

if.end53:                                         ; preds = %le_ih_k_offset.exit133.if.end53_crit_edge, %kmap.exit.if.end53_crit_edge
  %pos.0.off0 = phi i32 [ %extract.t, %le_ih_k_offset.exit133.if.end53_crit_edge ], [ %extract.t118, %kmap.exit.if.end53_crit_edge ]
  %68 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_flags, align 8
  %and56 = and i32 %69, 1
  call void @make_le_item_head(ptr noundef nonnull %s_ih, ptr noundef null, i32 noundef %and56, i64 noundef %sub23, i32 noundef 2, i32 noundef %round_tail_len.0, i32 noundef 65535) #7
  %idx.ext = and i32 %pos.0.off0, 4095
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %idx.ext
  %70 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %path, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements.i, i32 %71, i32 1
  %72 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pe_position, align 4
  %inc62 = add i32 %73, 1
  store i32 %inc62, ptr %pe_position, align 4
  %74 = call ptr @memcpy(ptr %key, ptr %item_key, i32 32)
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %75 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %k_type.i, align 8
  %key_length = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %76 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %key_length, align 4
  %call65 = call i32 @reiserfs_insert_item(ptr noundef %th, ptr noundef %path, ptr noundef nonnull %key, ptr noundef nonnull %s_ih, ptr noundef %inode, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 55) #7
  %77 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %page, align 4
  %shr.i.i135 = lshr i32 %78, 30
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end53
  %79 = zext i32 %shr.i.i135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i135, label %if.then68.cleanup_crit_edge [
    i32 2, label %if.then68.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i137
  ]

if.then68.if.end.i_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_highmem_idx.exit.i137:                         ; preds = %if.then68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %80 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp2.i.not.i136 = icmp eq i32 %80, 2
  br i1 %cmp2.i.not.i136, label %is_highmem_idx.exit.i137.if.end.i_crit_edge, label %is_highmem_idx.exit.i137.cleanup_crit_edge

is_highmem_idx.exit.i137.cleanup_crit_edge:       ; preds = %is_highmem_idx.exit.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_highmem_idx.exit.i137.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i137.if.end.i_crit_edge, %if.then68.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %page) #7
  br label %cleanup

if.end70:                                         ; preds = %if.end53
  %81 = zext i32 %shr.i.i135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i135, label %if.end70.kunmap.exit142_crit_edge [
    i32 2, label %if.end70.if.end.i141_crit_edge
    i32 3, label %is_highmem_idx.exit.i140
  ]

if.end70.if.end.i141_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i141

if.end70.kunmap.exit142_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit142

is_highmem_idx.exit.i140:                         ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %82 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp2.i.not.i139 = icmp eq i32 %82, 2
  br i1 %cmp2.i.not.i139, label %is_highmem_idx.exit.i140.if.end.i141_crit_edge, label %is_highmem_idx.exit.i140.kunmap.exit142_crit_edge

is_highmem_idx.exit.i140.kunmap.exit142_crit_edge: ; preds = %is_highmem_idx.exit.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit142

is_highmem_idx.exit.i140.if.end.i141_crit_edge:   ; preds = %is_highmem_idx.exit.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i141

if.end.i141:                                      ; preds = %is_highmem_idx.exit.i140.if.end.i141_crit_edge, %if.end70.if.end.i141_crit_edge
  call void @kunmap_high(ptr noundef %page) #7
  br label %kunmap.exit142

kunmap.exit142:                                   ; preds = %if.end.i141, %is_highmem_idx.exit.i140.kunmap.exit142_crit_edge, %if.end70.kunmap.exit142_crit_edge
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %83 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %inode, i64 noundef %84) #7
  %85 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 99, ptr %mode, align 1
  %conv72 = trunc i64 %sub23 to i32
  %i_first_direct_byte = getelementptr i8, ptr %inode, i32 -244
  %86 = ptrtoint ptr %i_first_direct_byte to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv72, ptr %i_first_direct_byte, align 4
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit142, %if.end.i, %is_highmem_idx.exit.i137.cleanup_crit_edge, %if.then68.cleanup_crit_edge
  %retval.0 = sub i32 %7, %round_tail_len.0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %s_ih) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_items(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_le_item_head(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_sd_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !12, !13, !14, !16, !17, !19, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/tail_conversion.c", i32 67, i32 3}
!2 = !{ptr @__func__.direct2indirect, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/tail_conversion.c", i32 117, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/reiserfs/tail_conversion.c", i32 120, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/tail_conversion.c", i32 251, i32 4}
!12 = !{ptr @__func__.indirect2direct, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/tail_conversion.c", i32 260, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2154093198, i64 2154093691, i64 2154093235, i64 2154093291, i64 2154093325, i64 2154093349, i64 2154093390, i64 2154093411, i64 2154093439, i64 2154093473}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2150266460, i64 2150266951, i64 2150266497, i64 2150266553, i64 2150266587, i64 2150266611, i64 2150266652, i64 2150266673, i64 2150266701, i64 2150266735}
!39 = !{i64 2151016352}
!40 = !{i64 2153681394}
!41 = !{i64 2152774509}
!42 = !{i64 2152774716}
!43 = !{i64 2153684165}
!44 = !{i64 2148216320, i64 2148216352, i64 2148216381, i64 2148216415, i64 2148216446, i64 2148216469}
!45 = !{i64 2148305401}
!46 = !{i64 2154099132, i64 2154099626, i64 2154099169, i64 2154099225, i64 2154099259, i64 2154099283, i64 2154099324, i64 2154099345, i64 2154099373, i64 2154099407}
!47 = !{i64 2154100800, i64 2154101294, i64 2154100837, i64 2154100893, i64 2154100927, i64 2154100951, i64 2154100992, i64 2154101013, i64 2154101041, i64 2154101075}
