; ModuleID = '/llk/IR_all_yes/fs/ext2/balloc.c_pt.bc'
source_filename = "../fs/ext2/balloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.rb_root = type { ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext2_group_desc = type { i32, i32, i32, i16, i16, i16, i16, [3 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.64 = type { ptr }
%struct.ext2_block_alloc_info = type { %struct.ext2_reserve_window_node, i32, i32 }
%struct.ext2_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, [190 x i32] }
%struct.bgl_lock = type { %struct.spinlock, [84 x i8] }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.35 = type { %struct.callback_head }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ext2/balloc.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"block_group >= groups_count - block_group = %d, groups_count = %lu\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Group descriptor not loaded - block_group = %d, group_desc = %lu, desc = %lu\00", [51 x i8] zeroinitializer }, align 32
@__func__.ext2_rsv_window_add = private unnamed_addr constant [20 x i8] c"ext2_rsv_window_add\00", align 1
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ext2_free_blocks\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Freeing blocks not in datazone - block = %lu, count = %lu\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Freeing blocks in system zones - Block = %lu, count = %lu\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bit already cleared for block %lu\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext2_new_blocks\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Allocating block in system zone - blocks from %lu, length %lu\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"block(%lu) >= blocks count(%d) - block_group = %d, es == %p \00", [35 x i8] zeroinitializer }, align 32
@__rsv_window_dump._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 211, ptr null, ptr null }, align 1
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Block Allocation Reservation Windows Map (%s):\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__rsv_window_dump\00", [46 x i8] zeroinitializer }, align 32
@__rsv_window_dump._entry_ptr = internal global ptr @__rsv_window_dump._entry, section ".printk_index", align 4
@__rsv_window_dump._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 217, ptr null, ptr null }, align 1
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"reservation window 0x%p start: %lu, end: %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@__rsv_window_dump._entry_ptr.14 = internal global ptr @__rsv_window_dump._entry.12, section ".printk_index", align 4
@__rsv_window_dump._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str, i32 220, ptr null, ptr null }, align 1
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Bad reservation %p (start >= end)\0A\00", [61 x i8] zeroinitializer }, align 32
@__rsv_window_dump._entry_ptr.17 = internal global ptr @__rsv_window_dump._entry.15, section ".printk_index", align 4
@__rsv_window_dump._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str, i32 225, ptr null, ptr null }, align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Bad reservation %p (prev->end >= start)\0A\00", [55 x i8] zeroinitializer }, align 32
@__rsv_window_dump._entry_ptr.20 = internal global ptr @__rsv_window_dump._entry.18, section ".printk_index", align 4
@__rsv_window_dump._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str, i32 230, ptr null, ptr null }, align 1
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Restarting reservation walk in verbose mode\0A\00", [51 x i8] zeroinitializer }, align 32
@__rsv_window_dump._entry_ptr.23 = internal global ptr @__rsv_window_dump._entry.21, section ".printk_index", align 4
@__rsv_window_dump._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str, i32 238, ptr null, ptr null }, align 1
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Window map complete.\0A\00", [42 x i8] zeroinitializer }, align 32
@__rsv_window_dump._entry_ptr.26 = internal global ptr @__rsv_window_dump._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.read_block_bitmap = private unnamed_addr constant [18 x i8] c"read_block_bitmap\00", align 1
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Cannot read block bitmap - block_group = %d, block_bitmap = %u\00", [33 x i8] zeroinitializer }, align 32
@__func__.ext2_valid_block_bitmap = private unnamed_addr constant [24 x i8] c"ext2_valid_block_bitmap\00", align 1
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid block bitmap - block_group = %d, block = %lu\00", [43 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__func__.ext2_try_to_allocate_with_rsv = private unnamed_addr constant [30 x i8] c"ext2_try_to_allocate_with_rsv\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 51, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 61, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 492, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 493, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 530, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 540, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1380, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1381, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1397, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 211, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 215, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 219, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 224, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 230, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 238, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 137, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [20 x i8] c"../fs/ext2/balloc.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 111, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__rsv_window_dump._entry, ptr @__rsv_window_dump._entry.12, ptr @__rsv_window_dump._entry.15, ptr @__rsv_window_dump._entry.18, ptr @__rsv_window_dump._entry.21, ptr @__rsv_window_dump._entry.24, ptr @__rsv_window_dump._entry_ptr, ptr @__rsv_window_dump._entry_ptr.14, ptr @__rsv_window_dump._entry_ptr.17, ptr @__rsv_window_dump._entry_ptr.20, ptr @__rsv_window_dump._entry_ptr.23, ptr @__rsv_window_dump._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext2_get_group_desc(ptr nocapture noundef readonly %sb, i32 noundef %block_group, ptr noundef writeonly %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block_group)
  %cmp.not = icmp ugt i32 %3, %block_group
  br i1 %cmp.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %block_group, i32 noundef %3) #9
  br label %cleanup

if.end17:                                         ; preds = %entry
  %s_desc_per_block_bits = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %s_desc_per_block_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_desc_per_block_bits, align 4
  %shr = lshr i32 %block_group, %5
  %s_desc_per_block = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_desc_per_block, align 8
  %sub = add i32 %7, -1
  %and = and i32 %sub, %block_group
  %s_group_desc = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_group_desc, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %do.end34, label %if.end48

do.end34:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %block_group, i32 noundef %shr, i32 noundef %and) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end17
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %tobool51.not = icmp eq ptr %bh, null
  br i1 %tobool51.not, label %if.end48.if.end55_crit_edge, label %if.then52

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %bh, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end48.if.end55_crit_edge
  %add.ptr = getelementptr %struct.ext2_group_desc, ptr %13, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end34, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr, %if.end55 ], [ null, %do.end34 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_rsv_window_add(ptr nocapture noundef readonly %sb, ptr noundef %rsv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_rsv_window_root = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 34
  %rsv_window = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %rsv, i32 0, i32 3
  %2 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsv_window, align 4
  %4 = ptrtoint ptr %s_rsv_window_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rsv_window_root, align 4
  %tobool.not25 = icmp eq ptr %5, null
  br i1 %tobool.not25, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi ptr [ %12, %if.end10.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %rsv_window1 = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %rsv_window1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rsv_window1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %8)
  %cmp = icmp ult i32 %3, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %if.end10

if.else:                                          ; preds = %while.body
  %_rsv_end = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %6, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %_rsv_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_rsv_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %10)
  %cmp4 = icmp ugt i32 %3, %10
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  br label %if.end10

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__rsv_window_dump(ptr noundef %s_rsv_window_root, ptr noundef nonnull @__func__.ext2_rsv_window_add)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 351, 0\0A.popsection", ""() #9, !srcloc !68
  unreachable

if.end10:                                         ; preds = %if.then5, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then5 ]
  %11 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %6 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %s_rsv_window_root, %entry.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %13 = ptrtoint ptr %rsv to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parent.0.lcssa, ptr %rsv, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rsv, i32 0, i32 1
  %14 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rsv, i32 0, i32 2
  %15 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_left.i, align 4
  %16 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rsv, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rsv, ptr noundef %s_rsv_window_root) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rsv_window_dump(ptr noundef %root, ptr noundef %fn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rb_first(ptr noundef %root) #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %fn) #12
  %tobool.not1 = icmp eq ptr %call, null
  br i1 %tobool.not1, label %do.end52.thread, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  br label %do.end6

do.end52.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call546 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %do.end68

do.end6:                                          ; preds = %if.end37.do.end6_crit_edge, %entry.do.end6_crit_edge
  %n.04 = phi ptr [ %call49, %if.end37.do.end6_crit_edge ], [ %call, %entry.do.end6_crit_edge ]
  %prev.03 = phi ptr [ %n.04, %if.end37.do.end6_crit_edge ], [ null, %entry.do.end6_crit_edge ]
  %bad.02 = phi i32 [ %bad.2, %if.end37.do.end6_crit_edge ], [ 0, %entry.do.end6_crit_edge ]
  %rsv_window = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %n.04, i32 0, i32 3
  %0 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsv_window, align 4
  %_rsv_end = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %n.04, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %_rsv_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_rsv_end, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %n.04, i32 noundef %1, i32 noundef %3) #12
  %4 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsv_window, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %do.end6.if.end23_crit_edge, label %land.lhs.true

do.end6.if.end23_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %do.end6
  %6 = ptrtoint ptr %_rsv_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_rsv_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.end23_crit_edge, label %do.end20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end20:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %n.04) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %land.lhs.true.if.end23_crit_edge, %do.end6.if.end23_crit_edge
  %bad.1 = phi i32 [ 1, %do.end20 ], [ %bad.02, %land.lhs.true.if.end23_crit_edge ], [ %bad.02, %do.end6.if.end23_crit_edge ]
  %tobool24.not = icmp eq ptr %prev.03, null
  br i1 %tobool24.not, label %if.end23.if.end37_crit_edge, label %land.lhs.true25

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true25:                                  ; preds = %if.end23
  %_rsv_end27 = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %prev.03, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %_rsv_end27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_rsv_end27, align 4
  %10 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rsv_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp30.not = icmp ult i32 %9, %11
  br i1 %cmp30.not, label %land.lhs.true25.if.end37_crit_edge, label %do.end34

land.lhs.true25.if.end37_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end34:                                         ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %n.04) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %land.lhs.true25.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %bad.2 = phi i32 [ 1, %do.end34 ], [ %bad.1, %land.lhs.true25.if.end37_crit_edge ], [ %bad.1, %if.end23.if.end37_crit_edge ]
  %call49 = tail call ptr @rb_next(ptr noundef nonnull %n.04) #9
  %tobool.not = icmp eq ptr %call49, null
  br i1 %tobool.not, label %do.end52, label %if.end37.do.end6_crit_edge

if.end37.do.end6_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end52:                                         ; preds = %if.end37
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bad.2)
  %tobool56.not = icmp eq i32 %bad.2, 0
  br i1 %tobool56.not, label %do.end52.do.end68_crit_edge, label %do.body60, !prof !69

do.end52.do.end68_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

do.body60:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

do.end68:                                         ; preds = %do.end52.do.end68_crit_edge, %do.end52.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_init_block_alloc_info(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3136, i32 noundef 36) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rsv_window = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %rsv_window to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rsv_window, align 4
  %_rsv_end = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %call7.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %_rsv_end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %_rsv_end, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 4
  %and = lshr i32 %8, 16
  %9 = and i32 %and, 8
  %10 = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %10, align 4
  %rsv_alloc_hit = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %rsv_alloc_hit to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rsv_alloc_hit, align 8
  %last_alloc_logical_block = getelementptr inbounds %struct.ext2_block_alloc_info, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %last_alloc_logical_block to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %last_alloc_logical_block, align 4
  %last_alloc_physical_block = getelementptr inbounds %struct.ext2_block_alloc_info, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %last_alloc_physical_block to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %last_alloc_physical_block, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %i_block_alloc_info = getelementptr i8, ptr %inode, i32 -240
  %15 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %i_block_alloc_info, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_discard_reservation(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_block_alloc_info = getelementptr i8, ptr %inode, i32 -240
  %0 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_block_alloc_info, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_rsv_window_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 33
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsv_window = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %1, i32 0, i32 3
  %_rsv_end.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef %s_rsv_window_lock) #9
  %8 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i22.not = icmp eq i32 %9, 0
  br i1 %cmp.i22.not, label %if.then4.if.end10_crit_edge, label %if.then8

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %12 = ptrtoint ptr %rsv_window to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rsv_window, align 4
  %13 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %_rsv_end.i, align 4
  %rsv_alloc_hit.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %rsv_alloc_hit.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rsv_alloc_hit.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rsv_window_root.i = getelementptr inbounds %struct.ext2_sb_info, ptr %16, i32 0, i32 34
  tail call void @rb_erase(ptr noundef nonnull %1, ptr noundef %s_rsv_window_root.i) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then4.if.end10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_rsv_window_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_free_blocks(ptr noundef %inode, i32 noundef %block, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_first_data_block.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %block)
  %cmp.not.i = icmp ult i32 %8, %block
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.brelse.exit167.thread_crit_edge

entry.brelse.exit167.thread_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit167.thread

lor.lhs.false.i:                                  ; preds = %entry
  %add.i = add i32 %block, -1
  %sub.i = add i32 %add.i, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %block)
  %cmp1.i = icmp ult i32 %sub.i, %block
  br i1 %cmp1.i, label %lor.lhs.false.i.brelse.exit167.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.brelse.exit167.thread_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit167.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %s_blocks_count.i = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %s_blocks_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocks_count.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp6.not.i = icmp ult i32 %sub.i, %11
  br i1 %cmp6.not.i, label %ext2_data_block_valid.exit, label %lor.lhs.false2.i.brelse.exit167.thread_crit_edge

lor.lhs.false2.i.brelse.exit167.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit167.thread

ext2_data_block_valid.exit:                       ; preds = %lor.lhs.false2.i
  %s_sb_block.i = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %s_sb_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_sb_block.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %block)
  %cmp7.not.i = icmp uge i32 %13, %block
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp11.not.i = icmp uge i32 %sub.i, %13
  %tobool.not = and i1 %cmp7.not.i, %cmp11.not.i
  br i1 %tobool.not, label %ext2_data_block_valid.exit.brelse.exit167.thread_crit_edge, label %do_more.preheader

ext2_data_block_valid.exit.brelse.exit167.thread_crit_edge: ; preds = %ext2_data_block_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit167.thread

do_more.preheader:                                ; preds = %ext2_data_block_valid.exit
  %s_itb_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 6
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  br label %do_more

brelse.exit167.thread:                            ; preds = %ext2_data_block_valid.exit.brelse.exit167.thread_crit_edge, %lor.lhs.false2.i.brelse.exit167.thread_crit_edge, %lor.lhs.false.i.brelse.exit167.thread_crit_edge, %entry.brelse.exit167.thread_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %block, i32 noundef %count) #9
  br label %if.end77

do_more:                                          ; preds = %group_adjust_blocks.exit.do_more_crit_edge, %do_more.preheader
  %block.addr.0 = phi i32 [ %add43, %group_adjust_blocks.exit.do_more_crit_edge ], [ %block, %do_more.preheader ]
  %count.addr.0 = phi i32 [ %22, %group_adjust_blocks.exit.do_more_crit_edge ], [ %count, %do_more.preheader ]
  %bitmap_bh.0 = phi ptr [ %call16, %group_adjust_blocks.exit.do_more_crit_edge ], [ null, %do_more.preheader ]
  %freed.0 = phi i32 [ %add69, %group_adjust_blocks.exit.do_more_crit_edge ], [ 0, %do_more.preheader ]
  %14 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_first_data_block.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %sub = sub i32 %block.addr.0, %16
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocks_per_group, align 8
  %sub.frozen = freeze i32 %sub
  %.frozen = freeze i32 %20
  %div = udiv i32 %sub.frozen, %.frozen
  %21 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %sub.frozen, %21
  %add = add i32 %rem.decomposed, %count.addr.0
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %add, i32 %20)
  %count.addr.1 = sub i32 %count.addr.0, %22
  %tobool.not.i = icmp eq ptr %bitmap_bh.0, null
  br i1 %tobool.not.i, label %do_more.brelse.exit_crit_edge, label %if.then.i

do_more.brelse.exit_crit_edge:                    ; preds = %do_more
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %do_more
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bitmap_bh.0) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %do_more.brelse.exit_crit_edge
  %call16 = tail call fastcc ptr @read_block_bitmap(ptr noundef %1, i32 noundef %div)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %brelse.exit.brelse.exit167_crit_edge, label %if.end19

brelse.exit.brelse.exit167_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit167

if.end19:                                         ; preds = %brelse.exit
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext2_sb_info, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_groups_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %div)
  %cmp.not.i157 = icmp ugt i32 %26, %div
  br i1 %cmp.not.i157, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %div, i32 noundef %26) #9
  br label %if.then.i165

if.end17.i:                                       ; preds = %if.end19
  %s_desc_per_block_bits.i = getelementptr inbounds %struct.ext2_sb_info, ptr %24, i32 0, i32 22
  %27 = ptrtoint ptr %s_desc_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_desc_per_block_bits.i, align 4
  %shr.i = lshr i32 %div, %28
  %s_desc_per_block.i = getelementptr inbounds %struct.ext2_sb_info, ptr %24, i32 0, i32 8
  %29 = ptrtoint ptr %s_desc_per_block.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_desc_per_block.i, align 8
  %sub.i158 = add i32 %30, -1
  %and.i = and i32 %sub.i158, %div
  %s_group_desc.i = getelementptr inbounds %struct.ext2_sb_info, ptr %24, i32 0, i32 14
  %31 = ptrtoint ptr %s_group_desc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_group_desc.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %shr.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %tobool20.not.i = icmp eq ptr %34, null
  br i1 %tobool20.not.i, label %do.end34.i, label %ext2_get_group_desc.exit

do.end34.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %div, i32 noundef %shr.i, i32 noundef %and.i) #9
  br label %if.then.i165

ext2_get_group_desc.exit:                         ; preds = %if.end17.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr %struct.ext2_group_desc, ptr %36, i32 %and.i
  %tobool21.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool21.not, label %ext2_get_group_desc.exit.if.then.i165_crit_edge, label %if.end23

ext2_get_group_desc.exit.if.then.i165_crit_edge:  ; preds = %ext2_get_group_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i165

if.end23:                                         ; preds = %ext2_get_group_desc.exit
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %block.addr.0)
  %cmp24.not = icmp ult i32 %39, %block.addr.0
  br i1 %cmp24.not, label %if.end23.lor.lhs.false_crit_edge, label %land.lhs.true

if.end23.lor.lhs.false_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end23
  %add26 = add i32 %count.addr.1, %block.addr.0
  %sub27 = add i32 %add26, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub27)
  %cmp28.not = icmp ugt i32 %39, %sub27
  br i1 %cmp28.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then55_crit_edge

land.lhs.true.if.then55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end23.lor.lhs.false_crit_edge
  %bg_inode_bitmap = getelementptr %struct.ext2_group_desc, ptr %36, i32 %and.i, i32 1
  %40 = ptrtoint ptr %bg_inode_bitmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bg_inode_bitmap, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %block.addr.0)
  %cmp29.not = icmp ult i32 %42, %block.addr.0
  br i1 %cmp29.not, label %lor.lhs.false.lor.lhs.false35_crit_edge, label %land.lhs.true30

lor.lhs.false.lor.lhs.false35_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false35

land.lhs.true30:                                  ; preds = %lor.lhs.false
  %add32 = add i32 %count.addr.1, %block.addr.0
  %sub33 = add i32 %add32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %sub33)
  %cmp34.not = icmp ugt i32 %42, %sub33
  br i1 %cmp34.not, label %land.lhs.true30.lor.lhs.false35_crit_edge, label %land.lhs.true30.if.then55_crit_edge

land.lhs.true30.if.then55_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

land.lhs.true30.lor.lhs.false35_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.lhs.true30.lor.lhs.false35_crit_edge, %lor.lhs.false.lor.lhs.false35_crit_edge
  %bg_inode_table = getelementptr %struct.ext2_group_desc, ptr %36, i32 %and.i, i32 2
  %43 = ptrtoint ptr %bg_inode_table to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bg_inode_table, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  call void @__sanitizer_cov_trace_cmp4(i32 %block.addr.0, i32 %45)
  %cmp36.not = icmp ult i32 %block.addr.0, %45
  br i1 %cmp36.not, label %lor.lhs.false35.lor.lhs.false42_crit_edge, label %land.lhs.true37

lor.lhs.false35.lor.lhs.false42_crit_edge:        ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false42

land.lhs.true37:                                  ; preds = %lor.lhs.false35
  %46 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_itb_per_group, align 8
  %add39 = add i32 %45, -1
  %sub40 = add i32 %add39, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %block.addr.0, i32 %sub40)
  %cmp41.not = icmp ugt i32 %block.addr.0, %sub40
  br i1 %cmp41.not, label %land.lhs.true37.lor.lhs.false42_crit_edge, label %land.lhs.true37.if.then55_crit_edge

land.lhs.true37.if.then55_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

land.lhs.true37.lor.lhs.false42_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true37.lor.lhs.false42_crit_edge, %lor.lhs.false35.lor.lhs.false42_crit_edge
  %add43 = add i32 %count.addr.1, %block.addr.0
  %sub44 = add i32 %add43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44, i32 %45)
  %cmp46.not = icmp ult i32 %sub44, %45
  br i1 %cmp46.not, label %lor.lhs.false42.if.end56_crit_edge, label %land.lhs.true47

lor.lhs.false42.if.end56_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true47:                                  ; preds = %lor.lhs.false42
  %48 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_itb_per_group, align 8
  %add52 = add i32 %45, -1
  %sub53 = add i32 %add52, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44, i32 %sub53)
  %cmp54.not = icmp ugt i32 %sub44, %sub53
  br i1 %cmp54.not, label %land.lhs.true47.if.end56_crit_edge, label %land.lhs.true47.if.then55_crit_edge

land.lhs.true47.if.then55_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

land.lhs.true47.if.end56_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %land.lhs.true47.if.then55_crit_edge, %land.lhs.true37.if.then55_crit_edge, %land.lhs.true30.if.then55_crit_edge, %land.lhs.true.if.then55_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %block.addr.0, i32 noundef %count.addr.1) #9
  br label %if.then.i165

if.end56:                                         ; preds = %land.lhs.true47.if.end56_crit_edge, %lor.lhs.false42.if.end56_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0, i32 %22)
  %cmp57215.not = icmp eq i32 %count.addr.0, %22
  br i1 %cmp57215.not, label %if.end56.for.end_crit_edge, label %for.body.lr.ph

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end56
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call16, i32 0, i32 5
  %umax = call i32 @llvm.umax.i32(i32 %count.addr.1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %group_freed.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %group_freed.1, %for.inc.for.body_crit_edge ]
  %i.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %inc64, %for.inc.for.body_crit_edge ]
  %add58 = add i32 %i.0216, %rem.decomposed
  %50 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data, align 4
  %xor.i = xor i32 %add58, 24
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %xor.i, ptr noundef %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add62 = add i32 %i.0216, %block.addr.0
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %add62) #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %group_freed.0217, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then61
  %group_freed.1 = phi i32 [ %inc, %if.else ], [ %group_freed.0217, %if.then61 ]
  %inc64 = add nuw i32 %i.0216, 1
  %exitcond.not = icmp eq i32 %inc64, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end56.for.end_crit_edge
  %group_freed.0.lcssa = phi i32 [ 0, %if.end56.for.end_crit_edge ], [ %group_freed.1, %for.inc.for.end_crit_edge ]
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call16) #9
  %52 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_flags, align 4
  %and = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %for.end.if.end68_crit_edge, label %if.then66

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then66:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call16) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %for.end.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_freed.0.lcssa)
  %tobool.not.i160 = icmp eq i32 %group_freed.0.lcssa, 0
  br i1 %tobool.not.i160, label %if.end68.group_adjust_blocks.exit_crit_edge, label %if.then.i162

if.end68.group_adjust_blocks.exit_crit_edge:      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %group_adjust_blocks.exit

if.then.i162:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i = and i32 %div, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %57, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i.i) #9
  %bg_free_blocks_count.i = getelementptr %struct.ext2_group_desc, ptr %36, i32 %and.i, i32 3
  %58 = ptrtoint ptr %bg_free_blocks_count.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %bg_free_blocks_count.i, align 4
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #9
  %61 = trunc i32 %group_freed.0.lcssa to i16
  %conv2.i = add i16 %60, %61
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #9
  %63 = ptrtoint ptr %bg_free_blocks_count.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %bg_free_blocks_count.i, align 4
  %64 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %arrayidx.i.i11.i = getelementptr [16 x %struct.bgl_lock], ptr %65, i32 0, i32 %and.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i11.i) #9
  tail call void @mark_buffer_dirty(ptr noundef nonnull %34) #9
  br label %group_adjust_blocks.exit

group_adjust_blocks.exit:                         ; preds = %if.then.i162, %if.end68.group_adjust_blocks.exit_crit_edge
  %add69 = add i32 %group_freed.0.lcssa, %freed.0
  %tobool70.not.not = icmp ugt i32 %add, %20
  br i1 %tobool70.not.not, label %group_adjust_blocks.exit.do_more_crit_edge, label %group_adjust_blocks.exit.if.then.i165_crit_edge

group_adjust_blocks.exit.if.then.i165_crit_edge:  ; preds = %group_adjust_blocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i165

group_adjust_blocks.exit.do_more_crit_edge:       ; preds = %group_adjust_blocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_more

if.then.i165:                                     ; preds = %group_adjust_blocks.exit.if.then.i165_crit_edge, %if.then55, %ext2_get_group_desc.exit.if.then.i165_crit_edge, %do.end34.i, %do.end.i
  %freed.1178 = phi i32 [ %freed.0, %if.then55 ], [ %freed.0, %do.end.i ], [ %freed.0, %do.end34.i ], [ %add69, %group_adjust_blocks.exit.if.then.i165_crit_edge ], [ %freed.0, %ext2_get_group_desc.exit.if.then.i165_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call16) #9
  br label %brelse.exit167

brelse.exit167:                                   ; preds = %if.then.i165, %brelse.exit.brelse.exit167_crit_edge
  %freed.1179 = phi i32 [ %freed.1178, %if.then.i165 ], [ %freed.0, %brelse.exit.brelse.exit167_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freed.1179)
  %tobool74.not = icmp eq i32 %freed.1179, 0
  br i1 %tobool74.not, label %brelse.exit167.if.end77_crit_edge, label %if.then75

brelse.exit167.if.end77_crit_edge:                ; preds = %brelse.exit167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then75:                                        ; preds = %brelse.exit167
  call void @__sanitizer_cov_trace_pc() #11
  %s_freeblocks_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 29
  %conv = zext i32 %freed.1179 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %66 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %s_freeblocks_counter, i64 noundef %conv, i32 noundef %66) #9
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %67 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %68 to i64
  %shl.i = shl i64 %conv, %sh_prom.i
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 0) #9
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %brelse.exit167.if.end77_crit_edge, %brelse.exit167.thread
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ext2_data_block_valid(ptr nocapture noundef readonly %sbi, i32 noundef %start_blk, i32 noundef %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %sbi, i32 0, i32 13
  %0 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_es, align 4
  %s_first_data_block = getelementptr inbounds %struct.ext2_super_block, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_first_data_block, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %start_blk)
  %cmp.not = icmp ult i32 %4, %start_blk
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %start_blk, -1
  %sub = add i32 %add, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %start_blk)
  %cmp1 = icmp ult i32 %sub, %start_blk
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %s_blocks_count = getelementptr inbounds %struct.ext2_super_block, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %s_blocks_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocks_count, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp6.not = icmp ult i32 %sub, %7
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  %s_sb_block = getelementptr inbounds %struct.ext2_sb_info, ptr %sbi, i32 0, i32 16
  %8 = ptrtoint ptr %s_sb_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_sb_block, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %start_blk)
  %cmp7.not = icmp ult i32 %9, %start_blk
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp11.not = icmp ult i32 %sub, %9
  %or.cond = or i1 %cmp7.not, %cmp11.not
  %spec.select = zext i1 %or.cond to i32
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false2.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @read_block_bitmap(ptr noundef %sb, i32 noundef %block_group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block_group)
  %cmp.not.i = icmp ugt i32 %3, %block_group
  br i1 %cmp.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %block_group, i32 noundef %3) #9
  br label %cleanup

if.end17.i:                                       ; preds = %entry
  %s_desc_per_block_bits.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %s_desc_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_desc_per_block_bits.i, align 4
  %shr.i = lshr i32 %block_group, %5
  %s_desc_per_block.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %s_desc_per_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_desc_per_block.i, align 8
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %block_group
  %s_group_desc.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %s_group_desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_group_desc.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool20.not.i = icmp eq ptr %11, null
  br i1 %tobool20.not.i, label %do.end34.i, label %ext2_get_group_desc.exit

do.end34.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %block_group, i32 noundef %shr.i, i32 noundef %and.i) #9
  br label %cleanup

ext2_get_group_desc.exit:                         ; preds = %if.end17.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr %struct.ext2_group_desc, ptr %13, i32 %and.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %ext2_get_group_desc.exit.cleanup_crit_edge, label %if.end

ext2_get_group_desc.exit.cleanup_crit_edge:       ; preds = %ext2_get_group_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ext2_get_group_desc.exit
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %conv = zext i32 %16 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %18, i64 noundef %conv, i32 noundef %20, i32 noundef 8) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then6, label %if.end8, !prof !71

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @__func__.read_block_bitmap, ptr noundef nonnull @.str.27, i32 noundef %block_group, i32 noundef %23) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @bh_uptodate_or_lock(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %if.end8.cleanup_crit_edge, !prof !71

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %call19 = tail call i32 @bh_submit_read(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %brelse.exit, label %if.end23

brelse.exit:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @__func__.read_block_bitmap, ptr noundef nonnull @.str.27, i32 noundef %block_group, i32 noundef %26) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ext2_valid_block_bitmap(ptr noundef %sb, ptr noundef nonnull %add.ptr.i, i32 noundef %block_group, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %brelse.exit, %if.end8.cleanup_crit_edge, %if.then6, %ext2_get_group_desc.exit.cleanup_crit_edge, %do.end34.i, %do.end.i
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %brelse.exit ], [ %call.i, %if.end23 ], [ null, %ext2_get_group_desc.exit.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ null, %do.end.i ], [ null, %do.end34.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @group_adjust_blocks(ptr nocapture noundef readonly %sb, i32 noundef %group_no, ptr nocapture noundef %desc, ptr noundef %bh, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %s_blockgroup_lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_blockgroup_lock.i, align 8
  %and.i.i = and i32 %group_no, 15
  %arrayidx.i.i = getelementptr [16 x %struct.bgl_lock], ptr %3, i32 0, i32 %and.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #9
  %bg_free_blocks_count = getelementptr inbounds %struct.ext2_group_desc, ptr %desc, i32 0, i32 3
  %4 = ptrtoint ptr %bg_free_blocks_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bg_free_blocks_count, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = trunc i32 %count to i16
  %conv2 = add i16 %6, %7
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %9 = ptrtoint ptr %bg_free_blocks_count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %bg_free_blocks_count, align 4
  %10 = ptrtoint ptr %s_blockgroup_lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_blockgroup_lock.i, align 8
  %arrayidx.i.i11 = getelementptr [16 x %struct.bgl_lock], ptr %11, i32 0, i32 %and.i.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i11) #9
  tail call void @mark_buffer_dirty(ptr noundef %bh) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_new_blocks(ptr noundef %inode, i32 noundef %goal, ptr nocapture noundef %count, ptr nocapture noundef writeonly %errp) local_unnamed_addr #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #9
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %num, align 4
  %3 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -28, ptr %errp, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %conv = zext i32 %1 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %7 to i64
  %shl.i = shl i64 %conv, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i.i.i, ptr %errp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_es, align 4
  %i_block_alloc_info = getelementptr i8, ptr %inode, i32 -240
  %13 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_block_alloc_info, align 8
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rsv_goal_size = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %rsv_goal_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rsv_goal_size, align 4
  %conv6 = trunc i32 %16 to i16
  %conv7 = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7)
  %cmp.not = icmp eq i32 %conv7, 0
  %spec.select = select i1 %cmp.not, ptr null, ptr %14
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge
  %my_rsv.0 = phi ptr [ null, %if.end.if.end12_crit_edge ], [ %spec.select, %if.then5 ]
  %windowsz.0 = phi i16 [ 0, %if.end.if.end12_crit_edge ], [ %conv6, %if.then5 ]
  %count.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %10, i32 0, i32 29, i32 1
  %17 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load volatile i64, ptr %count.i.i, align 8
  %19 = tail call i64 @llvm.smax.i64(i64 %18, i64 0) #9
  %conv.i = trunc i64 %19 to i32
  %s_r_blocks_count.i = getelementptr inbounds %struct.ext2_super_block, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %s_r_blocks_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_r_blocks_count.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %add.i = add i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.i:                                  ; preds = %if.end12
  %call2.i = tail call zeroext i1 @capable(i32 noundef 24) #9
  br i1 %call2.i, label %land.lhs.true.i.if.end16_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %s_resuid.i = getelementptr inbounds %struct.ext2_sb_info, ptr %10, i32 0, i32 17
  %23 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %30 = ptrtoint ptr %s_resuid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack.i = load i32, ptr %s_resuid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %agg.tmp.sroa.0.0.copyload.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %agg.tmp.sroa.0.0.copyload.i
  br i1 %cmp.i.i, label %land.lhs.true3.i.if.end16_crit_edge, label %land.lhs.true7.i

land.lhs.true3.i.if.end16_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true7.i:                                 ; preds = %land.lhs.true3.i
  %s_resgid.i = getelementptr inbounds %struct.ext2_sb_info, ptr %10, i32 0, i32 18
  %31 = ptrtoint ptr %s_resgid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack21.i = load i32, ptr %s_resgid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack21.i)
  %cmp.i23.i = icmp eq i32 %.unpack21.i, 0
  br i1 %cmp.i23.i, label %land.lhs.true7.i.if.end169_crit_edge, label %lor.lhs.false.i

land.lhs.true7.i.if.end169_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

lor.lhs.false.i:                                  ; preds = %land.lhs.true7.i
  %32 = insertvalue [1 x i32] undef, i32 %.unpack21.i, 0
  %call14.i = tail call i32 @in_group_p([1 x i32] %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end169_crit_edge, label %lor.lhs.false.i.if.end16_crit_edge

lor.lhs.false.i.if.end16_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

lor.lhs.false.i.if.end169_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.end16:                                         ; preds = %lor.lhs.false.i.if.end16_crit_edge, %land.lhs.true3.i.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %s_first_data_block = getelementptr inbounds %struct.ext2_super_block, ptr %12, i32 0, i32 5
  %33 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_first_data_block, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %goal)
  %cmp17 = icmp ugt i32 %35, %goal
  br i1 %cmp17, label %if.end16.if.then21_crit_edge, label %lor.lhs.false

if.end16.if.then21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end16
  %s_blocks_count = getelementptr inbounds %struct.ext2_super_block, ptr %12, i32 0, i32 1
  %36 = ptrtoint ptr %s_blocks_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocks_count, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %goal)
  %cmp19.not = icmp ugt i32 %38, %goal
  br i1 %cmp19.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end16.if.then21_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %lor.lhs.false.if.end23_crit_edge
  %goal.addr.0 = phi i32 [ %35, %if.then21 ], [ %goal, %lor.lhs.false.if.end23_crit_edge ]
  %sub = sub i32 %goal.addr.0, %35
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocks_per_group, align 8
  %div = udiv i32 %sub, %42
  br label %retry_alloc.outer

retry_alloc.outer:                                ; preds = %for.end.retry_alloc.outer_crit_edge, %if.end23
  %bitmap_bh.0.ph = phi ptr [ %bitmap_bh.2.lcssa, %for.end.retry_alloc.outer_crit_edge ], [ null, %if.end23 ]
  %my_rsv.1.ph = phi ptr [ null, %for.end.retry_alloc.outer_crit_edge ], [ %my_rsv.0, %if.end23 ]
  %windowsz.1.ph = phi i16 [ 0, %for.end.retry_alloc.outer_crit_edge ], [ %windowsz.0, %if.end23 ]
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i442 = getelementptr inbounds %struct.ext2_sb_info, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %s_groups_count.i442 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_groups_count.i442, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %div)
  %cmp.not.i443 = icmp ugt i32 %46, %div
  br i1 %cmp.not.i443, label %if.end17.i.lr.ph, label %retry_alloc.outer.do.end.i_crit_edge

retry_alloc.outer.do.end.i_crit_edge:             ; preds = %retry_alloc.outer
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end17.i.lr.ph:                                 ; preds = %retry_alloc.outer
  %47 = lshr i16 %windowsz.1.ph, 1
  br label %if.end17.i

do.end.i:                                         ; preds = %if.then144.do.end.i_crit_edge, %retry_alloc.outer.do.end.i_crit_edge
  %bitmap_bh.0.lcssa = phi ptr [ %bitmap_bh.4, %if.then144.do.end.i_crit_edge ], [ %bitmap_bh.0.ph, %retry_alloc.outer.do.end.i_crit_edge ]
  %group_no.0.lcssa = phi i32 [ %group_no.2, %if.then144.do.end.i_crit_edge ], [ %div, %retry_alloc.outer.do.end.i_crit_edge ]
  %.lcssa400 = phi i32 [ %128, %if.then144.do.end.i_crit_edge ], [ %46, %retry_alloc.outer.do.end.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %group_no.0.lcssa, i32 noundef %.lcssa400) #9
  br label %if.end169

if.end17.i:                                       ; preds = %if.then144.if.end17.i_crit_edge, %if.end17.i.lr.ph
  %48 = phi ptr [ %44, %if.end17.i.lr.ph ], [ %126, %if.then144.if.end17.i_crit_edge ]
  %my_rsv.1446 = phi ptr [ %my_rsv.1.ph, %if.end17.i.lr.ph ], [ %my_rsv.2366, %if.then144.if.end17.i_crit_edge ]
  %group_no.0445 = phi i32 [ %div, %if.end17.i.lr.ph ], [ %group_no.2, %if.then144.if.end17.i_crit_edge ]
  %bitmap_bh.0444 = phi ptr [ %bitmap_bh.0.ph, %if.end17.i.lr.ph ], [ %bitmap_bh.4, %if.then144.if.end17.i_crit_edge ]
  %s_desc_per_block_bits.i = getelementptr inbounds %struct.ext2_sb_info, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %s_desc_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_desc_per_block_bits.i, align 4
  %shr.i = lshr i32 %group_no.0445, %50
  %s_desc_per_block.i = getelementptr inbounds %struct.ext2_sb_info, ptr %48, i32 0, i32 8
  %51 = ptrtoint ptr %s_desc_per_block.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_desc_per_block.i, align 8
  %sub.i = add i32 %52, -1
  %and.i = and i32 %sub.i, %group_no.0445
  %s_group_desc.i = getelementptr inbounds %struct.ext2_sb_info, ptr %48, i32 0, i32 14
  %53 = ptrtoint ptr %s_group_desc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_group_desc.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %54, i32 %shr.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %tobool20.not.i = icmp eq ptr %56, null
  br i1 %tobool20.not.i, label %do.end34.i, label %ext2_get_group_desc.exit

do.end34.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %group_no.0445, i32 noundef %shr.i, i32 noundef %and.i) #9
  br label %if.end169

ext2_get_group_desc.exit:                         ; preds = %if.end17.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i306 = getelementptr %struct.ext2_group_desc, ptr %58, i32 %and.i
  %tobool27.not = icmp eq ptr %add.ptr.i306, null
  br i1 %tobool27.not, label %ext2_get_group_desc.exit.if.end169_crit_edge, label %if.end29

ext2_get_group_desc.exit.if.end169_crit_edge:     ; preds = %ext2_get_group_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.end29:                                         ; preds = %ext2_get_group_desc.exit
  %bg_free_blocks_count = getelementptr %struct.ext2_group_desc, ptr %58, i32 %and.i, i32 3
  %59 = ptrtoint ptr %bg_free_blocks_count to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %bg_free_blocks_count, align 4
  %tobool31.not = icmp eq ptr %my_rsv.1446, null
  br i1 %tobool31.not, label %if.end29.if.end42_crit_edge, label %land.lhs.true

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end29
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %windowsz.1.ph)
  %cmp33 = icmp uge i16 %61, %windowsz.1.ph
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp36.not = icmp eq i16 %60, 0
  %or.cond = select i1 %cmp33, i1 true, i1 %cmp36.not
  br i1 %or.cond, label %land.lhs.true.if.end42_crit_edge, label %if.end42.thread

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %_rsv_end.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %my_rsv.1446, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i308.not = icmp eq i32 %63, 0
  %spec.select302 = select i1 %cmp.i308.not, ptr null, ptr %my_rsv.1446
  br label %if.then45

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end29.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp43.not = icmp eq i16 %60, 0
  br i1 %cmp43.not, label %if.end42.if.end59_crit_edge, label %if.end42.if.then45_crit_edge

if.end42.if.then45_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then45:                                        ; preds = %if.end42.if.then45_crit_edge, %if.end42.thread
  %my_rsv.2364 = phi ptr [ %spec.select302, %if.end42.thread ], [ %my_rsv.1446, %if.end42.if.then45_crit_edge ]
  %64 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_first_data_block, align 4
  %66 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group49 = getelementptr inbounds %struct.ext2_sb_info, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %s_blocks_per_group49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_blocks_per_group49, align 8
  %tobool.not.i311 = icmp eq ptr %bitmap_bh.0444, null
  br i1 %tobool.not.i311, label %if.then45.brelse.exit_crit_edge, label %if.then.i

if.then45.brelse.exit_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bitmap_bh.0444) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then45.brelse.exit_crit_edge
  %call50 = tail call fastcc ptr @read_block_bitmap(ptr noundef %5, i32 noundef %group_no.0445)
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %brelse.exit.if.end169_crit_edge, label %if.end53

brelse.exit.if.end169_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.end53:                                         ; preds = %brelse.exit
  %70 = tail call i32 @llvm.bswap.i32(i32 %65)
  %sub47 = sub i32 %goal.addr.0, %70
  %rem = urem i32 %sub47, %69
  %call54 = call fastcc i32 @ext2_try_to_allocate_with_rsv(ptr noundef %5, i32 noundef %group_no.0445, ptr noundef nonnull %call50, i32 noundef %rem, ptr noundef %my_rsv.2364, ptr noundef nonnull %num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, -1
  br i1 %cmp55, label %if.end53.allocated_crit_edge, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end53.allocated_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %allocated

if.end59:                                         ; preds = %if.end53.if.end59_crit_edge, %if.end42.if.end59_crit_edge
  %my_rsv.2365 = phi ptr [ %my_rsv.2364, %if.end53.if.end59_crit_edge ], [ %my_rsv.1446, %if.end42.if.end59_crit_edge ]
  %bitmap_bh.1 = phi ptr [ %call50, %if.end53.if.end59_crit_edge ], [ %bitmap_bh.0444, %if.end42.if.end59_crit_edge ]
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_groups_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp64435.not = icmp eq i32 %74, 0
  br i1 %cmp64435.not, label %if.end59.for.end_crit_edge, label %for.body.lr.ph

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end59
  %tobool79.not = icmp eq ptr %my_rsv.2365, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bgi.0438 = phi i32 [ 0, %for.body.lr.ph ], [ %inc96, %for.inc.for.body_crit_edge ]
  %group_no.1437 = phi i32 [ %group_no.0445, %for.body.lr.ph ], [ %spec.store.select, %for.inc.for.body_crit_edge ]
  %bitmap_bh.2436 = phi ptr [ %bitmap_bh.1, %for.body.lr.ph ], [ %bitmap_bh.3, %for.inc.for.body_crit_edge ]
  %inc = add i32 %group_no.1437, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %74)
  %cmp66.not = icmp ult i32 %inc, %74
  %spec.store.select = select i1 %cmp66.not, i32 %inc, i32 0
  %75 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i315 = getelementptr inbounds %struct.ext2_sb_info, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %s_groups_count.i315 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_groups_count.i315, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %spec.store.select)
  %cmp.not.i316 = icmp ugt i32 %78, %spec.store.select
  br i1 %cmp.not.i316, label %if.end17.i326, label %do.end.i317

do.end.i317:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %spec.store.select, i32 noundef %78) #9
  br label %if.end169

if.end17.i326:                                    ; preds = %for.body
  %s_desc_per_block_bits.i318 = getelementptr inbounds %struct.ext2_sb_info, ptr %76, i32 0, i32 22
  %79 = ptrtoint ptr %s_desc_per_block_bits.i318 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_desc_per_block_bits.i318, align 4
  %shr.i319 = lshr i32 %spec.store.select, %80
  %s_desc_per_block.i320 = getelementptr inbounds %struct.ext2_sb_info, ptr %76, i32 0, i32 8
  %81 = ptrtoint ptr %s_desc_per_block.i320 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_desc_per_block.i320, align 8
  %sub.i321 = add i32 %82, -1
  %and.i322 = and i32 %sub.i321, %spec.store.select
  %s_group_desc.i323 = getelementptr inbounds %struct.ext2_sb_info, ptr %76, i32 0, i32 14
  %83 = ptrtoint ptr %s_group_desc.i323 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_group_desc.i323, align 8
  %arrayidx.i324 = getelementptr ptr, ptr %84, i32 %shr.i319
  %85 = ptrtoint ptr %arrayidx.i324 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i324, align 4
  %tobool20.not.i325 = icmp eq ptr %86, null
  br i1 %tobool20.not.i325, label %do.end34.i327, label %ext2_get_group_desc.exit332

do.end34.i327:                                    ; preds = %if.end17.i326
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %spec.store.select, i32 noundef %shr.i319, i32 noundef %and.i322) #9
  br label %if.end169

ext2_get_group_desc.exit332:                      ; preds = %if.end17.i326
  %b_data.i328 = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %b_data.i328 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data.i328, align 4
  %add.ptr.i330 = getelementptr %struct.ext2_group_desc, ptr %88, i32 %and.i322
  %tobool71.not = icmp eq ptr %add.ptr.i330, null
  br i1 %tobool71.not, label %ext2_get_group_desc.exit332.if.end169_crit_edge, label %if.end73

ext2_get_group_desc.exit332.if.end169_crit_edge:  ; preds = %ext2_get_group_desc.exit332
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.end73:                                         ; preds = %ext2_get_group_desc.exit332
  %bg_free_blocks_count74 = getelementptr %struct.ext2_group_desc, ptr %88, i32 %and.i322, i32 3
  %89 = ptrtoint ptr %bg_free_blocks_count74 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %bg_free_blocks_count74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool76.not = icmp eq i16 %90, 0
  br i1 %tobool76.not, label %if.end73.for.inc_crit_edge, label %if.end78

if.end73.for.inc_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end78:                                         ; preds = %if.end73
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %47)
  %cmp83.not = icmp ugt i16 %91, %47
  %or.cond303 = select i1 %tobool79.not, i1 true, i1 %cmp83.not
  br i1 %or.cond303, label %if.end86, label %if.end78.for.inc_crit_edge

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end86:                                         ; preds = %if.end78
  %tobool.not.i333 = icmp eq ptr %bitmap_bh.2436, null
  br i1 %tobool.not.i333, label %if.end86.brelse.exit336_crit_edge, label %if.then.i334

if.end86.brelse.exit336_crit_edge:                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit336

if.then.i334:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bitmap_bh.2436) #9
  br label %brelse.exit336

brelse.exit336:                                   ; preds = %if.then.i334, %if.end86.brelse.exit336_crit_edge
  %call87 = tail call fastcc ptr @read_block_bitmap(ptr noundef %5, i32 noundef %spec.store.select)
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %brelse.exit336.if.end169_crit_edge, label %if.end90

brelse.exit336.if.end169_crit_edge:               ; preds = %brelse.exit336
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.end90:                                         ; preds = %brelse.exit336
  %call91 = call fastcc i32 @ext2_try_to_allocate_with_rsv(ptr noundef %5, i32 noundef %spec.store.select, ptr noundef nonnull %call87, i32 noundef -1, ptr noundef %my_rsv.2365, ptr noundef nonnull %num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call91)
  %cmp92 = icmp sgt i32 %call91, -1
  br i1 %cmp92, label %if.end90.allocated_crit_edge, label %if.end90.for.inc_crit_edge

if.end90.for.inc_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end90.allocated_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %allocated

for.inc:                                          ; preds = %if.end90.for.inc_crit_edge, %if.end78.for.inc_crit_edge, %if.end73.for.inc_crit_edge
  %bitmap_bh.3 = phi ptr [ %call87, %if.end90.for.inc_crit_edge ], [ %bitmap_bh.2436, %if.end73.for.inc_crit_edge ], [ %bitmap_bh.2436, %if.end78.for.inc_crit_edge ]
  %inc96 = add nuw i32 %bgi.0438, 1
  %exitcond.not = icmp eq i32 %inc96, %74
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end59.for.end_crit_edge
  %bitmap_bh.2.lcssa = phi ptr [ %bitmap_bh.3, %for.inc.for.end_crit_edge ], [ %bitmap_bh.1, %if.end59.for.end_crit_edge ]
  %tobool97.not = icmp eq ptr %my_rsv.2365, null
  br i1 %tobool97.not, label %for.end.if.end169_crit_edge, label %for.end.retry_alloc.outer_crit_edge

for.end.retry_alloc.outer_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry_alloc.outer

for.end.if.end169_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

allocated:                                        ; preds = %if.end90.allocated_crit_edge, %if.end53.allocated_crit_edge
  %my_rsv.2366 = phi ptr [ %my_rsv.2364, %if.end53.allocated_crit_edge ], [ %my_rsv.2365, %if.end90.allocated_crit_edge ]
  %gdp_bh.4 = phi ptr [ %56, %if.end53.allocated_crit_edge ], [ %86, %if.end90.allocated_crit_edge ]
  %bitmap_bh.4 = phi ptr [ %call50, %if.end53.allocated_crit_edge ], [ %call87, %if.end90.allocated_crit_edge ]
  %group_no.2 = phi i32 [ %group_no.0445, %if.end53.allocated_crit_edge ], [ %spec.store.select, %if.end90.allocated_crit_edge ]
  %grp_alloc_blk.0 = phi i32 [ %call54, %if.end53.allocated_crit_edge ], [ %call91, %if.end90.allocated_crit_edge ]
  %gdp.0 = phi ptr [ %add.ptr.i306, %if.end53.allocated_crit_edge ], [ %add.ptr.i330, %if.end90.allocated_crit_edge ]
  %92 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_blocks_per_group.i, align 8
  %mul.i = mul i32 %95, %group_no.2
  %s_es.i338 = getelementptr inbounds %struct.ext2_sb_info, ptr %93, i32 0, i32 13
  %96 = ptrtoint ptr %s_es.i338 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_es.i338, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_first_data_block.i, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #9
  %add.i339 = add i32 %mul.i, %grp_alloc_blk.0
  %add = add i32 %add.i339, %100
  %101 = ptrtoint ptr %gdp.0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %gdp.0, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add)
  %cmp101.not = icmp ult i32 %103, %add
  br i1 %cmp101.not, label %allocated.lor.lhs.false109_crit_edge, label %land.lhs.true103

allocated.lor.lhs.false109_crit_edge:             ; preds = %allocated
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false109

land.lhs.true103:                                 ; preds = %allocated
  %104 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num, align 4
  %add105 = add i32 %add, -1
  %sub106 = add i32 %add105, %105
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %sub106)
  %cmp107.not = icmp ugt i32 %103, %sub106
  br i1 %cmp107.not, label %land.lhs.true103.lor.lhs.false109_crit_edge, label %land.lhs.true103.if.then144_crit_edge

land.lhs.true103.if.then144_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

land.lhs.true103.lor.lhs.false109_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %land.lhs.true103.lor.lhs.false109_crit_edge, %allocated.lor.lhs.false109_crit_edge
  %bg_inode_bitmap = getelementptr inbounds %struct.ext2_group_desc, ptr %gdp.0, i32 0, i32 1
  %106 = ptrtoint ptr %bg_inode_bitmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bg_inode_bitmap, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %add)
  %cmp110.not = icmp ult i32 %108, %add
  br i1 %cmp110.not, label %lor.lhs.false109.lor.lhs.false118_crit_edge, label %land.lhs.true112

lor.lhs.false109.lor.lhs.false118_crit_edge:      ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false118

land.lhs.true112:                                 ; preds = %lor.lhs.false109
  %109 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num, align 4
  %add114 = add i32 %add, -1
  %sub115 = add i32 %add114, %110
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %sub115)
  %cmp116.not = icmp ugt i32 %108, %sub115
  br i1 %cmp116.not, label %land.lhs.true112.lor.lhs.false118_crit_edge, label %land.lhs.true112.if.then144_crit_edge

land.lhs.true112.if.then144_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

land.lhs.true112.lor.lhs.false118_crit_edge:      ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %land.lhs.true112.lor.lhs.false118_crit_edge, %lor.lhs.false109.lor.lhs.false118_crit_edge
  %bg_inode_table = getelementptr inbounds %struct.ext2_group_desc, ptr %gdp.0, i32 0, i32 2
  %111 = ptrtoint ptr %bg_inode_table to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bg_inode_table, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %113)
  %cmp119.not = icmp ult i32 %add, %113
  br i1 %cmp119.not, label %lor.lhs.false118.lor.lhs.false128_crit_edge, label %land.lhs.true121

lor.lhs.false118.lor.lhs.false128_crit_edge:      ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false128

land.lhs.true121:                                 ; preds = %lor.lhs.false118
  %s_itb_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %93, i32 0, i32 6
  %114 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_itb_per_group, align 8
  %add124 = add i32 %113, -1
  %sub125 = add i32 %add124, %115
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub125)
  %cmp126.not = icmp ugt i32 %add, %sub125
  br i1 %cmp126.not, label %land.lhs.true121.lor.lhs.false128_crit_edge, label %land.lhs.true121.if.then144_crit_edge

land.lhs.true121.if.then144_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

land.lhs.true121.lor.lhs.false128_crit_edge:      ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %land.lhs.true121.lor.lhs.false128_crit_edge, %lor.lhs.false118.lor.lhs.false128_crit_edge
  %116 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num, align 4
  %add129 = add i32 %add, -1
  %sub130 = add i32 %add129, %117
  call void @__sanitizer_cov_trace_cmp4(i32 %sub130, i32 %113)
  %cmp132.not = icmp ult i32 %sub130, %113
  br i1 %cmp132.not, label %lor.lhs.false128.if.end145_crit_edge, label %land.lhs.true134

lor.lhs.false128.if.end145_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

land.lhs.true134:                                 ; preds = %lor.lhs.false128
  %s_itb_per_group139 = getelementptr inbounds %struct.ext2_sb_info, ptr %93, i32 0, i32 6
  %118 = ptrtoint ptr %s_itb_per_group139 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_itb_per_group139, align 8
  %add140 = add i32 %113, -1
  %sub141 = add i32 %add140, %119
  call void @__sanitizer_cov_trace_cmp4(i32 %sub130, i32 %sub141)
  %cmp142.not = icmp ugt i32 %sub130, %sub141
  br i1 %cmp142.not, label %land.lhs.true134.if.end145_crit_edge, label %land.lhs.true134.if.then144_crit_edge

land.lhs.true134.if.then144_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

land.lhs.true134.if.end145_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then144:                                       ; preds = %land.lhs.true134.if.then144_crit_edge, %land.lhs.true121.if.then144_crit_edge, %land.lhs.true112.if.then144_crit_edge, %land.lhs.true103.if.then144_crit_edge
  %120 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num, align 4
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %add, i32 noundef %121) #9
  %122 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %count, align 4
  %124 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %num, align 4
  %125 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext2_sb_info, ptr %126, i32 0, i32 9
  %127 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_groups_count.i, align 4
  %cmp.not.i = icmp ugt i32 %128, %group_no.2
  br i1 %cmp.not.i, label %if.then144.if.end17.i_crit_edge, label %if.then144.do.end.i_crit_edge

if.then144.do.end.i_crit_edge:                    ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then144.if.end17.i_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end145:                                        ; preds = %land.lhs.true134.if.end145_crit_edge, %lor.lhs.false128.if.end145_crit_edge
  %s_blocks_count148 = getelementptr inbounds %struct.ext2_super_block, ptr %12, i32 0, i32 1
  %129 = ptrtoint ptr %s_blocks_count148 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %s_blocks_count148, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub130, i32 %131)
  %cmp149.not = icmp ult i32 %sub130, %131
  br i1 %cmp149.not, label %if.end153, label %if.end169.thread

if.end153:                                        ; preds = %if.end145
  %sub154 = sub i32 0, %117
  tail call fastcc void @group_adjust_blocks(ptr noundef %5, i32 noundef %group_no.2, ptr noundef nonnull %gdp.0, ptr noundef nonnull %gdp_bh.4, i32 noundef %sub154)
  %s_freeblocks_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %10, i32 0, i32 29
  %132 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num, align 4
  %conv155 = zext i32 %133 to i64
  %sub.i342 = sub nsw i64 0, %conv155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %134 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %s_freeblocks_counter, i64 noundef %sub.i342, i32 noundef %134) #9
  tail call void @mark_buffer_dirty(ptr noundef nonnull %bitmap_bh.4) #9
  %s_flags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %135 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_flags, align 4
  %and = and i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool156.not = icmp eq i32 %and, 0
  br i1 %tobool156.not, label %if.end153.brelse.exit346_crit_edge, label %if.then157

if.end153.brelse.exit346_crit_edge:               ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit346

if.then157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  %call158 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %bitmap_bh.4) #9
  br label %brelse.exit346

brelse.exit346:                                   ; preds = %if.then157, %if.end153.brelse.exit346_crit_edge
  %137 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %errp, align 4
  tail call void @__brelse(ptr noundef nonnull %bitmap_bh.4) #9
  %138 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %133)
  %cmp160 = icmp ugt i32 %139, %133
  br i1 %cmp160, label %if.then162, label %brelse.exit346.cleanup_crit_edge

brelse.exit346.cleanup_crit_edge:                 ; preds = %brelse.exit346
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then162:                                       ; preds = %brelse.exit346
  call void @__sanitizer_cov_trace_pc() #11
  %sub163 = sub i32 %139, %133
  %conv164 = zext i32 %sub163 to i64
  %140 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i348 = zext i8 %141 to i64
  %shl.i349 = shl i64 %conv164, %sh_prom.i348
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i349, i32 noundef 0) #9
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #9
  %142 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %133, ptr %count, align 4
  br label %cleanup

if.end169.thread:                                 ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %add, i32 noundef %131, i32 noundef %group_no.2, ptr noundef %12) #9
  br label %if.then.i354

if.end169:                                        ; preds = %for.end.if.end169_crit_edge, %brelse.exit336.if.end169_crit_edge, %ext2_get_group_desc.exit332.if.end169_crit_edge, %do.end34.i327, %do.end.i317, %brelse.exit.if.end169_crit_edge, %ext2_get_group_desc.exit.if.end169_crit_edge, %do.end34.i, %do.end.i, %lor.lhs.false.i.if.end169_crit_edge, %land.lhs.true7.i.if.end169_crit_edge
  %.sink = phi i32 [ -28, %lor.lhs.false.i.if.end169_crit_edge ], [ -28, %land.lhs.true7.i.if.end169_crit_edge ], [ -5, %do.end34.i327 ], [ -5, %do.end.i317 ], [ -5, %do.end34.i ], [ -5, %do.end.i ], [ -5, %brelse.exit336.if.end169_crit_edge ], [ -5, %ext2_get_group_desc.exit332.if.end169_crit_edge ], [ -5, %brelse.exit.if.end169_crit_edge ], [ -5, %ext2_get_group_desc.exit.if.end169_crit_edge ], [ -28, %for.end.if.end169_crit_edge ]
  %bitmap_bh.6.ph = phi ptr [ null, %lor.lhs.false.i.if.end169_crit_edge ], [ null, %land.lhs.true7.i.if.end169_crit_edge ], [ %bitmap_bh.2436, %do.end34.i327 ], [ %bitmap_bh.2436, %do.end.i317 ], [ %bitmap_bh.0444, %do.end34.i ], [ %bitmap_bh.0.lcssa, %do.end.i ], [ %bitmap_bh.2436, %ext2_get_group_desc.exit332.if.end169_crit_edge ], [ null, %brelse.exit336.if.end169_crit_edge ], [ %bitmap_bh.0444, %ext2_get_group_desc.exit.if.end169_crit_edge ], [ null, %brelse.exit.if.end169_crit_edge ], [ %bitmap_bh.2.lcssa, %for.end.if.end169_crit_edge ]
  %143 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %.sink, ptr %errp, align 4
  %144 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %count, align 4
  %conv168 = zext i32 %145 to i64
  %146 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i351 = zext i8 %147 to i64
  %shl.i352 = shl i64 %conv168, %sh_prom.i351
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i352, i32 noundef 0) #9
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #9
  %tobool.not.i353 = icmp eq ptr %bitmap_bh.6.ph, null
  br i1 %tobool.not.i353, label %if.end169.cleanup_crit_edge, label %if.end169.if.then.i354_crit_edge

if.end169.if.then.i354_crit_edge:                 ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i354

if.end169.cleanup_crit_edge:                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i354:                                     ; preds = %if.end169.if.then.i354_crit_edge, %if.end169.thread
  %bitmap_bh.6372376 = phi ptr [ %bitmap_bh.4, %if.end169.thread ], [ %bitmap_bh.6.ph, %if.end169.if.then.i354_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bitmap_bh.6372376) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i354, %if.end169.cleanup_crit_edge, %if.then162, %brelse.exit346.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.then162 ], [ %add, %brelse.exit346.cleanup_crit_edge ], [ 0, %if.end169.cleanup_crit_edge ], [ 0, %if.then.i354 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_try_to_allocate_with_rsv(ptr nocapture noundef readonly %sb, i32 noundef %group, ptr nocapture noundef readonly %bitmap_bh, i32 noundef %grp_goal, ptr noundef %my_rsv, ptr nocapture noundef %count) unnamed_addr #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #9
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %num, align 4
  %cmp = icmp eq ptr %my_rsv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @ext2_try_to_allocate(ptr noundef %sb, i32 noundef %group, ptr noundef %bitmap_bh, i32 noundef %grp_goal, ptr noundef %count, ptr noundef null)
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocks_per_group.i, align 8
  %mul.i = mul i32 %6, %group
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 13
  %7 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_first_data_block.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %add.i = add i32 %11, %mul.i
  %s_groups_count.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 9
  %12 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_groups_count.i, align 4
  %sub.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %group)
  %cmp.i = icmp eq i32 %sub.i, %group
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count.i = getelementptr inbounds %struct.ext2_super_block, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %s_blocks_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocks_count.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  br label %ext2_group_last_block_no.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i103 = add i32 %add.i, %6
  br label %ext2_group_last_block_no.exit

ext2_group_last_block_no.exit:                    ; preds = %if.else.i, %if.then.i
  %retval.0.in.i = phi i32 [ %16, %if.then.i ], [ %add.i103, %if.else.i ]
  %retval.0.i = add i32 %retval.0.in.i, -1
  %rsv_window = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %my_rsv, i32 0, i32 3
  %_rsv_end.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %my_rsv, i32 0, i32 3, i32 1
  %rsv_goal_size = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %my_rsv, i32 0, i32 1
  %rsv_alloc_hit.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %my_rsv, i32 0, i32 2
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %my_rsv, i32 0, i32 1
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %my_rsv, i32 0, i32 2
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %bitmap_bh, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end50, %ext2_group_last_block_no.exit
  %grp_goal.addr.0 = phi i32 [ %grp_goal, %ext2_group_last_block_no.exit ], [ %grp_goal.addr.1, %if.end50 ]
  %ret.0 = phi i32 [ 0, %ext2_group_last_block_no.exit ], [ %call46, %if.end50 ]
  %17 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i104 = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp4 = icmp slt i32 %ret.0, 0
  %or.cond = select i1 %cmp.i104, i1 true, i1 %cmp4
  br i1 %or.cond, label %while.cond.if.then9_crit_edge, label %lor.lhs.false5

while.cond.if.then9_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false5:                                   ; preds = %while.cond
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blocks_per_group.i.i105 = getelementptr inbounds %struct.ext2_sb_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %s_blocks_per_group.i.i105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocks_per_group.i.i105, align 8
  %mul.i.i106 = mul i32 %22, %group
  %s_es.i.i107 = getelementptr inbounds %struct.ext2_sb_info, ptr %20, i32 0, i32 13
  %23 = ptrtoint ptr %s_es.i.i107 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_es.i.i107, align 4
  %s_first_data_block.i.i108 = getelementptr inbounds %struct.ext2_super_block, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %s_first_data_block.i.i108 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_first_data_block.i.i108, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  %add.i.i109 = add i32 %27, %mul.i.i106
  %s_groups_count.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %20, i32 0, i32 9
  %28 = ptrtoint ptr %s_groups_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_groups_count.i.i, align 4
  %sub.i.i = add i32 %29, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %group)
  %cmp.i.i = icmp eq i32 %sub.i.i, %group
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count.i.i = getelementptr inbounds %struct.ext2_super_block, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %s_blocks_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocks_count.i.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  br label %ext2_group_last_block_no.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  %add.i25.i = add i32 %add.i.i109, %22
  br label %ext2_group_last_block_no.exit.i

ext2_group_last_block_no.exit.i:                  ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %32, %if.then.i.i ], [ %add.i25.i, %if.else.i.i ]
  %retval.0.i.i = add i32 %retval.0.in.i.i, -1
  %33 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rsv_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %retval.0.i.i)
  %cmp.i110 = icmp ugt i32 %34, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.i.i109)
  %cmp2.i = icmp ult i32 %18, %add.i.i109
  %or.cond179 = select i1 %cmp.i110, i1 true, i1 %cmp2.i
  br i1 %or.cond179, label %ext2_group_last_block_no.exit.i.if.then9_crit_edge, label %if.end.i

ext2_group_last_block_no.exit.i.if.then9_crit_edge: ; preds = %ext2_group_last_block_no.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.i:                                         ; preds = %ext2_group_last_block_no.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %grp_goal.addr.0)
  %cmp3.i = icmp sgt i32 %grp_goal.addr.0, -1
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i.if.end32_crit_edge

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.i112 = add i32 %add.i.i109, %grp_goal.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i112, i32 %34)
  %cmp5.i = icmp ult i32 %add.i112, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i112, i32 %18)
  %cmp9.i = icmp ugt i32 %add.i112, %18
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.then9_crit_edge, label %if.then24

land.lhs.true.i.if.then9_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true.i.if.then9_crit_edge, %ext2_group_last_block_no.exit.i.if.then9_crit_edge, %while.cond.if.then9_crit_edge
  %35 = ptrtoint ptr %rsv_goal_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rsv_goal_size, align 4
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp10 = icmp ult i32 %36, %38
  br i1 %cmp10, label %if.then11, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %rsv_goal_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rsv_goal_size, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9.if.end13_crit_edge
  %40 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rsv_window_root.i = getelementptr inbounds %struct.ext2_sb_info, ptr %41, i32 0, i32 34
  %s_rsv_window_lock.i = getelementptr inbounds %struct.ext2_sb_info, ptr %41, i32 0, i32 33
  %s_blocks_per_group.i.i115 = getelementptr inbounds %struct.ext2_sb_info, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %s_blocks_per_group.i.i115 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocks_per_group.i.i115, align 8
  %mul.i.i116 = mul i32 %43, %group
  %s_es.i.i117 = getelementptr inbounds %struct.ext2_sb_info, ptr %41, i32 0, i32 13
  %44 = ptrtoint ptr %s_es.i.i117 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_es.i.i117, align 4
  %s_first_data_block.i.i118 = getelementptr inbounds %struct.ext2_super_block, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %s_first_data_block.i.i118 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_first_data_block.i.i118, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %add.i.i119 = add i32 %48, %mul.i.i116
  %s_groups_count.i.i120 = getelementptr inbounds %struct.ext2_sb_info, ptr %41, i32 0, i32 9
  %49 = ptrtoint ptr %s_groups_count.i.i120 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_groups_count.i.i120, align 4
  %sub.i.i121 = add i32 %50, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i121, i32 %group)
  %cmp.i.i122 = icmp eq i32 %sub.i.i121, %group
  br i1 %cmp.i.i122, label %if.then.i.i124, label %if.else.i.i125

if.then.i.i124:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count.i.i123 = getelementptr inbounds %struct.ext2_super_block, ptr %45, i32 0, i32 1
  %51 = ptrtoint ptr %s_blocks_count.i.i123 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_blocks_count.i.i123, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  br label %ext2_group_last_block_no.exit.i128

if.else.i.i125:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %add.i119.i = add i32 %add.i.i119, %43
  br label %ext2_group_last_block_no.exit.i128

ext2_group_last_block_no.exit.i128:               ; preds = %if.else.i.i125, %if.then.i.i124
  %retval.0.in.i.i126 = phi i32 [ %53, %if.then.i.i124 ], [ %add.i119.i, %if.else.i.i125 ]
  %retval.0.i.i127 = add i32 %retval.0.in.i.i126, -1
  %54 = tail call i32 @llvm.smax.i32(i32 %grp_goal.addr.0, i32 0) #9
  %start_block.0.i = add i32 %add.i.i119, %54
  %55 = ptrtoint ptr %rsv_goal_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rsv_goal_size, align 4
  %57 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i120.not.i = icmp eq i32 %58, 0
  br i1 %cmp.i120.not.i, label %ext2_group_last_block_no.exit.i128.if.end28.i_crit_edge, label %if.then5.i

ext2_group_last_block_no.exit.i128.if.end28.i_crit_edge: ; preds = %ext2_group_last_block_no.exit.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then5.i:                                       ; preds = %ext2_group_last_block_no.exit.i128
  %59 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rsv_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %retval.0.i.i127)
  %cmp7.not.i = icmp ugt i32 %60, %retval.0.i.i127
  br i1 %cmp7.not.i, label %if.then5.i.if.end15.i_crit_edge, label %land.lhs.true.i131

if.then5.i.if.end15.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

land.lhs.true.i131:                               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %retval.0.i.i127)
  %cmp9.i129 = icmp ule i32 %58, %retval.0.i.i127
  call void @__sanitizer_cov_trace_cmp4(i32 %start_block.0.i, i32 %60)
  %cmp13.not.i = icmp ult i32 %start_block.0.i, %60
  %or.cond.i130 = select i1 %cmp9.i129, i1 true, i1 %cmp13.not.i
  br i1 %or.cond.i130, label %land.lhs.true.i131.if.end15.i_crit_edge, label %land.lhs.true.i131.cleanup_crit_edge

land.lhs.true.i131.cleanup_crit_edge:             ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i131.if.end15.i_crit_edge:          ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true.i131.if.end15.i_crit_edge, %if.then5.i.if.end15.i_crit_edge
  %61 = ptrtoint ptr %rsv_alloc_hit.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rsv_alloc_hit.i, align 4
  %sub.i132 = add i32 %58, 1
  %add20.i = sub i32 %sub.i132, %60
  %div115.i = lshr i32 %add20.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %div115.i)
  %cmp21.i = icmp ugt i32 %62, %div115.i
  br i1 %cmp21.i, label %if.then22.i, label %if.end15.i.if.end28.i_crit_edge

if.end15.i.if.end28.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i133 = shl i32 %56, 1
  %63 = tail call i32 @llvm.umin.i32(i32 %mul.i133, i32 1027) #9
  %64 = ptrtoint ptr %rsv_goal_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rsv_goal_size, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then22.i, %if.end15.i.if.end28.i_crit_edge, %ext2_group_last_block_no.exit.i128.if.end28.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %s_rsv_window_lock.i) #9
  %65 = ptrtoint ptr %s_rsv_window_root.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_rsv_window_root.i, align 4
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %if.end28.i.if.then32.i_crit_edge, label %if.end28.i.do.body.i.i_crit_edge

if.end28.i.do.body.i.i_crit_edge:                 ; preds = %if.end28.i
  br label %do.body.i.i

if.end28.i.if.then32.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %if.end28.i.do.body.i.i_crit_edge
  %n.0.i.i = phi ptr [ %n.0.i.i.be, %do.body.i.i.backedge ], [ %66, %if.end28.i.do.body.i.i_crit_edge ]
  %rsv_window.i.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %n.0.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %rsv_window.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rsv_window.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %start_block.0.i)
  %cmp.i121.i = icmp ugt i32 %68, %start_block.0.i
  br i1 %cmp.i121.i, label %do.cond.i.i, label %if.else.i123.i

if.else.i123.i:                                   ; preds = %do.body.i.i
  %_rsv_end.i122.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %n.0.i.i, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %_rsv_end.i122.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %_rsv_end.i122.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %start_block.0.i)
  %cmp3.i.i = icmp ult i32 %70, %start_block.0.i
  br i1 %cmp3.i.i, label %do.cond.thread.i.i, label %if.else.i123.i.while.cond.i.preheader.lr.ph.i_crit_edge

if.else.i123.i.while.cond.i.preheader.lr.ph.i_crit_edge: ; preds = %if.else.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.preheader.lr.ph.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %n.1.i.i = load ptr, ptr %rb_left.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %n.1.i.i, null
  br i1 %tobool8.not.i.i, label %search_reserve_window.exit.i, label %do.cond.i.i.do.body.i.i.backedge_crit_edge

do.cond.i.i.do.body.i.i.backedge_crit_edge:       ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.backedge

do.cond.thread.i.i:                               ; preds = %if.else.i123.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %n.131.i.i = load ptr, ptr %rb_right.i.i, align 4
  %tobool8.not32.i.i = icmp eq ptr %n.131.i.i, null
  br i1 %tobool8.not32.i.i, label %do.cond.thread.i.i.while.cond.i.preheader.lr.ph.i_crit_edge, label %do.cond.thread.i.i.do.body.i.i.backedge_crit_edge

do.cond.thread.i.i.do.body.i.i.backedge_crit_edge: ; preds = %do.cond.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.backedge

do.cond.thread.i.i.while.cond.i.preheader.lr.ph.i_crit_edge: ; preds = %do.cond.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.preheader.lr.ph.i

do.body.i.i.backedge:                             ; preds = %do.cond.thread.i.i.do.body.i.i.backedge_crit_edge, %do.cond.i.i.do.body.i.i.backedge_crit_edge
  %n.0.i.i.be = phi ptr [ %n.1.i.i, %do.cond.i.i.do.body.i.i.backedge_crit_edge ], [ %n.131.i.i, %do.cond.thread.i.i.do.body.i.i.backedge_crit_edge ]
  br label %do.body.i.i

search_reserve_window.exit.i:                     ; preds = %do.cond.i.i
  %call.i.i = tail call ptr @rb_prev(ptr noundef nonnull %n.0.i.i) #9
  %tobool.not.i125153.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i125153.i, label %search_reserve_window.exit.i.if.then32.i_crit_edge, label %search_reserve_window.exit.i.while.cond.i.preheader.lr.ph.i_crit_edge

search_reserve_window.exit.i.while.cond.i.preheader.lr.ph.i_crit_edge: ; preds = %search_reserve_window.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.preheader.lr.ph.i

search_reserve_window.exit.i.if.then32.i_crit_edge: ; preds = %search_reserve_window.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

while.cond.i.preheader.lr.ph.i:                   ; preds = %search_reserve_window.exit.i.while.cond.i.preheader.lr.ph.i_crit_edge, %do.cond.thread.i.i.while.cond.i.preheader.lr.ph.i_crit_edge, %if.else.i123.i.while.cond.i.preheader.lr.ph.i_crit_edge
  %retval.0.i124163.i = phi ptr [ %call.i.i, %search_reserve_window.exit.i.while.cond.i.preheader.lr.ph.i_crit_edge ], [ %n.0.i.i, %if.else.i123.i.while.cond.i.preheader.lr.ph.i_crit_edge ], [ %n.0.i.i, %do.cond.thread.i.i.while.cond.i.preheader.lr.ph.i_crit_edge ]
  %sub42.i = sub i32 %retval.0.i.i127, %add.i.i119
  %add43.i = add i32 %sub42.i, 1
  br label %while.cond.i.preheader.i

while.cond.i.preheader.i:                         ; preds = %if.end62.i, %while.cond.i.preheader.lr.ph.i
  %start_block.1155.i = phi i32 [ %start_block.0.i, %while.cond.i.preheader.lr.ph.i ], [ %add53.i, %if.end62.i ]
  %search_head.0154.i = phi ptr [ %retval.0.i124163.i, %while.cond.i.preheader.lr.ph.i ], [ %my_rsv, %if.end62.i ]
  %73 = ptrtoint ptr %rsv_goal_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rsv_goal_size, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end10.i.i.while.cond.i.i_crit_edge, %while.cond.i.preheader.i
  %rsv.0.i.i = phi ptr [ %call.i128.i, %if.end10.i.i.while.cond.i.i_crit_edge ], [ %search_head.0154.i, %while.cond.i.preheader.i ]
  %cur.0.i.i = phi i32 [ %spec.select.i.i, %if.end10.i.i.while.cond.i.i_crit_edge ], [ %start_block.1155.i, %while.cond.i.preheader.i ]
  %_rsv_end.i126.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %rsv.0.i.i, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %_rsv_end.i126.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %_rsv_end.i126.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cur.0.i.i, i32 %76)
  %cmp.not.i.i = icmp ugt i32 %cur.0.i.i, %76
  %add.i127.i = add i32 %76, 1
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 %cur.0.i.i, i32 %add.i127.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %retval.0.i.i127)
  %cmp5.i.i = icmp ugt i32 %spec.select.i.i, %retval.0.i.i127
  br i1 %cmp5.i.i, label %while.cond.i.i.if.then32.i_crit_edge, label %if.end7.i.i

while.cond.i.i.if.then32.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.end7.i.i:                                      ; preds = %while.cond.i.i
  %call.i128.i = tail call ptr @rb_next(ptr noundef nonnull %rsv.0.i.i) #9
  %tobool8.not.i129.i = icmp eq ptr %call.i128.i, null
  br i1 %tobool8.not.i129.i, label %if.end7.i.i.while.end.i.i_crit_edge, label %if.end10.i.i

if.end7.i.i.while.end.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %add11.i.i = add i32 %spec.select.i.i, %74
  %rsv_window12.i.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %call.i128.i, i32 0, i32 3
  %77 = ptrtoint ptr %rsv_window12.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rsv_window12.i.i, align 4
  %cmp13.not.i.i = icmp ugt i32 %add11.i.i, %78
  br i1 %cmp13.not.i.i, label %if.end10.i.i.while.cond.i.i_crit_edge, label %if.end10.i.i.while.end.i.i_crit_edge

if.end10.i.i.while.end.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.end10.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %if.end10.i.i.while.end.i.i_crit_edge, %if.end7.i.i.while.end.i.i_crit_edge
  %cmp16.not.i.i = icmp eq ptr %rsv.0.i.i, %my_rsv
  br i1 %cmp16.not.i.i, label %if.end29.critedge.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %79 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.not.i.i = icmp eq i32 %80, 0
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i.if.then28.i.i_crit_edge, label %if.then20.i.i

land.lhs.true.i.i.if.then28.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %rsv_window to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %rsv_window, align 4
  %82 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %_rsv_end.i, align 4
  %83 = ptrtoint ptr %rsv_alloc_hit.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %rsv_alloc_hit.i, align 4
  %84 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rsv_window_root.i.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %85, i32 0, i32 34
  tail call void @rb_erase(ptr noundef nonnull %my_rsv, ptr noundef %s_rsv_window_root.i.i.i) #9
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.then20.i.i, %land.lhs.true.i.i.if.then28.i.i_crit_edge
  %86 = ptrtoint ptr %rsv_window to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select.i.i, ptr %rsv_window, align 4
  %storemerge.in.i = add i32 %spec.select.i.i, %74
  %storemerge.i = add i32 %storemerge.in.i, -1
  %87 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %storemerge.i, ptr %_rsv_end.i, align 4
  %88 = ptrtoint ptr %rsv_alloc_hit.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %rsv_alloc_hit.i, align 4
  %89 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rsv_window_root.i68.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %90, i32 0, i32 34
  %91 = ptrtoint ptr %s_rsv_window_root.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_rsv_window_root.i68.i.i, align 4
  %tobool.not25.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not25.i.i.i, label %if.then28.i.i.ext2_rsv_window_add.exit.i.i_crit_edge, label %if.then28.i.i.while.body.i.i.i_crit_edge

if.then28.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.then28.i.i
  br label %while.body.i.i.i

if.then28.i.i.ext2_rsv_window_add.exit.i.i_crit_edge: ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext2_rsv_window_add.exit.i.i

while.body.i.i.i:                                 ; preds = %if.end10.i.i.i.while.body.i.i.i_crit_edge, %if.then28.i.i.while.body.i.i.i_crit_edge
  %93 = phi ptr [ %99, %if.end10.i.i.i.while.body.i.i.i_crit_edge ], [ %92, %if.then28.i.i.while.body.i.i.i_crit_edge ]
  %rsv_window1.i.i.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %rsv_window1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rsv_window1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %95)
  %cmp.i70.i.i = icmp ult i32 %spec.select.i.i, %95
  br i1 %cmp.i70.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 2
  br label %if.end10.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %_rsv_end.i71.i.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %93, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %_rsv_end.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %_rsv_end.i71.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %97)
  %cmp4.i.i.i = icmp ugt i32 %spec.select.i.i, %97
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.else6.i.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 1
  br label %if.end10.i.i.i

if.else6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__rsv_window_dump(ptr noundef %s_rsv_window_root.i68.i.i, ptr noundef nonnull @__func__.ext2_rsv_window_add) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 351, 0\0A.popsection", ""() #9, !srcloc !68
  unreachable

if.end10.i.i.i:                                   ; preds = %if.then5.i.i.i, %if.then.i.i.i
  %p.1.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then5.i.i.i ]
  %98 = ptrtoint ptr %p.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %p.1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i.i.i, label %while.cond.while.end_crit_edge.i.i.i, label %if.end10.i.i.i.while.body.i.i.i_crit_edge

if.end10.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i.i = ptrtoint ptr %93 to i32
  br label %ext2_rsv_window_add.exit.i.i

ext2_rsv_window_add.exit.i.i:                     ; preds = %while.cond.while.end_crit_edge.i.i.i, %if.then28.i.i.ext2_rsv_window_add.exit.i.i_crit_edge
  %p.0.lcssa.i.i.i = phi ptr [ %p.1.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ %s_rsv_window_root.i68.i.i, %if.then28.i.i.ext2_rsv_window_add.exit.i.i_crit_edge ]
  %parent.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %if.then28.i.i.ext2_rsv_window_add.exit.i.i_crit_edge ]
  %100 = ptrtoint ptr %my_rsv to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %parent.0.lcssa.i.i.i, ptr %my_rsv, align 4
  %101 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %102 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %rb_left.i.i.i.i, align 4
  %103 = ptrtoint ptr %p.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %my_rsv, ptr %p.0.lcssa.i.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %my_rsv, ptr noundef %s_rsv_window_root.i68.i.i) #9
  br label %if.end38.i

if.end29.critedge.i.i:                            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %rsv_window to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %spec.select.i.i, ptr %rsv_window, align 4
  %add24.c62.i.i = add i32 %spec.select.i.i, %74
  %sub.c63.i.i = add i32 %add24.c62.i.i, -1
  %105 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub.c63.i.i, ptr %_rsv_end.i, align 4
  %106 = ptrtoint ptr %rsv_alloc_hit.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %rsv_alloc_hit.i, align 4
  br label %if.end38.i

if.then32.i:                                      ; preds = %while.cond.i.i.if.then32.i_crit_edge, %search_reserve_window.exit.i.if.then32.i_crit_edge, %if.end28.i.if.then32.i_crit_edge
  %107 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i132.not.i = icmp eq i32 %108, 0
  br i1 %cmp.i132.not.i, label %if.then32.i.cleanup.sink.split.i_crit_edge, label %if.then32.i.cleanup.sink.split.sink.split.i_crit_edge

if.then32.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split.i

if.then32.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end38.i:                                       ; preds = %if.end29.critedge.i.i, %ext2_rsv_window_add.exit.i.i
  tail call void @_raw_spin_unlock(ptr noundef %s_rsv_window_lock.i) #9
  %109 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rsv_window, align 4
  %sub41.i = sub i32 %110, %add.i.i119
  %111 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %b_data.i.i, align 4
  %call.i.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %112, i32 noundef %add43.i, i32 noundef %sub41.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %add43.i)
  %cmp.not.i137.i = icmp slt i32 %call.i.i.i, %add43.i
  %call..i.i = select i1 %cmp.not.i137.i, i32 %call.i.i.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call..i.i)
  %cmp45.i = icmp slt i32 %call..i.i, 0
  br i1 %cmp45.i, label %if.then46.i, label %if.end52.i

if.then46.i:                                      ; preds = %if.end38.i
  tail call void @_raw_spin_lock(ptr noundef %s_rsv_window_lock.i) #9
  %113 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i139.not.i = icmp eq i32 %114, 0
  br i1 %cmp.i139.not.i, label %if.then46.i.cleanup.sink.split.i_crit_edge, label %if.then46.i.cleanup.sink.split.sink.split.i_crit_edge

if.then46.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split.i

if.then46.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end52.i:                                       ; preds = %if.end38.i
  %add53.i = add i32 %call..i.i, %add.i.i119
  %115 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rsv_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i, i32 %116)
  %cmp56.not.i = icmp ult i32 %add53.i, %116
  br i1 %cmp56.not.i, label %if.end52.i.if.end62.i_crit_edge, label %land.lhs.true57.i

if.end52.i.if.end62.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

land.lhs.true57.i:                                ; preds = %if.end52.i
  %117 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i, i32 %118)
  %cmp60.not.i = icmp ugt i32 %add53.i, %118
  br i1 %cmp60.not.i, label %land.lhs.true57.i.if.end62.i_crit_edge, label %if.end17

land.lhs.true57.i.if.end62.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.end62.i:                                       ; preds = %land.lhs.true57.i.if.end62.i_crit_edge, %if.end52.i.if.end62.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %s_rsv_window_lock.i) #9
  br label %while.cond.i.preheader.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.then46.i.cleanup.sink.split.sink.split.i_crit_edge, %if.then32.i.cleanup.sink.split.sink.split.i_crit_edge
  %119 = ptrtoint ptr %rsv_window to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %rsv_window, align 4
  %120 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %_rsv_end.i, align 4
  %121 = ptrtoint ptr %rsv_alloc_hit.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %rsv_alloc_hit.i, align 4
  %122 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rsv_window_root.i145.i = getelementptr inbounds %struct.ext2_sb_info, ptr %123, i32 0, i32 34
  tail call void @rb_erase(ptr noundef nonnull %my_rsv, ptr noundef %s_rsv_window_root.i145.i) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.then46.i.cleanup.sink.split.i_crit_edge, %if.then32.i.cleanup.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_rsv_window_lock.i) #9
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true57.i
  %124 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blocks_per_group.i.i136 = getelementptr inbounds %struct.ext2_sb_info, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %s_blocks_per_group.i.i136 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_blocks_per_group.i.i136, align 8
  %mul.i.i137 = mul i32 %127, %group
  %s_es.i.i138 = getelementptr inbounds %struct.ext2_sb_info, ptr %125, i32 0, i32 13
  %128 = ptrtoint ptr %s_es.i.i138 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_es.i.i138, align 4
  %s_first_data_block.i.i139 = getelementptr inbounds %struct.ext2_super_block, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %s_first_data_block.i.i139 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_first_data_block.i.i139, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #9
  %add.i.i140 = add i32 %132, %mul.i.i137
  %s_groups_count.i.i141 = getelementptr inbounds %struct.ext2_sb_info, ptr %125, i32 0, i32 9
  %133 = ptrtoint ptr %s_groups_count.i.i141 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_groups_count.i.i141, align 4
  %sub.i.i142 = add i32 %134, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i142, i32 %group)
  %cmp.i.i143 = icmp eq i32 %sub.i.i142, %group
  br i1 %cmp.i.i143, label %if.then.i.i145, label %if.else.i.i147

if.then.i.i145:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count.i.i144 = getelementptr inbounds %struct.ext2_super_block, ptr %129, i32 0, i32 1
  %135 = ptrtoint ptr %s_blocks_count.i.i144 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_blocks_count.i.i144, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #9
  br label %ext2_group_last_block_no.exit.i151

if.else.i.i147:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %add.i25.i146 = add i32 %add.i.i140, %127
  br label %ext2_group_last_block_no.exit.i151

ext2_group_last_block_no.exit.i151:               ; preds = %if.else.i.i147, %if.then.i.i145
  %retval.0.in.i.i148 = phi i32 [ %137, %if.then.i.i145 ], [ %add.i25.i146, %if.else.i.i147 ]
  %retval.0.i.i149 = add i32 %retval.0.in.i.i148, -1
  %138 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rsv_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %retval.0.i.i149)
  %cmp.i150 = icmp ugt i32 %139, %retval.0.i.i149
  br i1 %cmp.i150, label %ext2_group_last_block_no.exit.i151._crit_edge, label %lor.lhs.false.i154

ext2_group_last_block_no.exit.i151._crit_edge:    ; preds = %ext2_group_last_block_no.exit.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %142

lor.lhs.false.i154:                               ; preds = %ext2_group_last_block_no.exit.i151
  %140 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %add.i.i140)
  %cmp2.i153 = icmp ult i32 %141, %add.i.i140
  br i1 %cmp2.i153, label %lor.lhs.false.i154._crit_edge, label %if.end.i156

lor.lhs.false.i154._crit_edge:                    ; preds = %lor.lhs.false.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %142

if.end.i156:                                      ; preds = %lor.lhs.false.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %grp_goal.addr.0)
  %cmp3.i155 = icmp sgt i32 %grp_goal.addr.0, -1
  br i1 %cmp3.i155, label %land.lhs.true.i161, label %if.end.i156.if.end32_crit_edge

if.end.i156.if.end32_crit_edge:                   ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.i161:                               ; preds = %if.end.i156
  %add.i157 = add i32 %add.i.i140, %grp_goal.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i157, i32 %139)
  %cmp5.i158 = icmp ult i32 %add.i157, %139
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i157, i32 %141)
  %cmp9.i159 = icmp ugt i32 %add.i157, %141
  %or.cond.i160 = select i1 %cmp5.i158, i1 true, i1 %cmp9.i159
  br i1 %or.cond.i160, label %land.lhs.true.i161._crit_edge, label %land.lhs.true.i161.if.end32_crit_edge

land.lhs.true.i161.if.end32_crit_edge:            ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.i161._crit_edge:                    ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %142

142:                                              ; preds = %land.lhs.true.i161._crit_edge, %lor.lhs.false.i154._crit_edge, %ext2_group_last_block_no.exit.i151._crit_edge
  br label %if.end32

if.then24:                                        ; preds = %land.lhs.true.i
  %143 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %_rsv_end.i, align 4
  %145 = add i32 %add.i, %grp_goal.addr.0
  %sub = sub i32 1, %145
  %add26 = add i32 %sub, %144
  %146 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %add26)
  %cmp27 = icmp ugt i32 %147, %add26
  br i1 %cmp27, label %if.then28, label %if.then24.if.end32_crit_edge

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then28:                                        ; preds = %if.then24
  %sub29 = sub i32 %147, %add26
  %s_rsv_window_lock.i166 = getelementptr inbounds %struct.ext2_sb_info, ptr %20, i32 0, i32 33
  %call.i.i167 = tail call i32 @_raw_spin_trylock(ptr noundef %s_rsv_window_lock.i166) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %tobool.not.i = icmp eq i32 %call.i.i167, 0
  br i1 %tobool.not.i, label %if.then28.if.end32_crit_edge, label %if.end.i168

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end.i168:                                      ; preds = %if.then28
  %call2.i = tail call ptr @rb_next(ptr noundef nonnull %my_rsv) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i171

if.then4.i:                                       ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %_rsv_end.i, align 4
  %add.i170 = add i32 %149, %sub29
  br label %if.end20.i

if.else.i171:                                     ; preds = %if.end.i168
  %rsv_window5.i = getelementptr inbounds %struct.ext2_reserve_window_node, ptr %call2.i, i32 0, i32 3
  %150 = ptrtoint ptr %rsv_window5.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rsv_window5.i, align 4
  %152 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %_rsv_end.i, align 4
  %154 = xor i32 %153, -1
  %sub8.i = add i32 %151, %154
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %sub29)
  %cmp.not.i = icmp ult i32 %sub8.i, %sub29
  br i1 %cmp.not.i, label %if.else13.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i = add i32 %153, %sub29
  br label %if.end20.i

if.else13.i:                                      ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #11
  %sub16.i = add i32 %151, -1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else13.i, %if.then9.i, %if.then4.i
  %sub16.i.sink = phi i32 [ %sub16.i, %if.else13.i ], [ %add12.i, %if.then9.i ], [ %add.i170, %if.then4.i ]
  %155 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %sub16.i.sink, ptr %_rsv_end.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %s_rsv_window_lock.i166) #9
  br label %if.end32

if.end32:                                         ; preds = %if.end20.i, %if.then28.if.end32_crit_edge, %if.then24.if.end32_crit_edge, %142, %land.lhs.true.i161.if.end32_crit_edge, %if.end.i156.if.end32_crit_edge, %if.end.i.if.end32_crit_edge
  %grp_goal.addr.1 = phi i32 [ %grp_goal.addr.0, %if.then24.if.end32_crit_edge ], [ -1, %142 ], [ %grp_goal.addr.0, %if.end.i156.if.end32_crit_edge ], [ %grp_goal.addr.0, %land.lhs.true.i161.if.end32_crit_edge ], [ %grp_goal.addr.0, %if.end.i.if.end32_crit_edge ], [ %grp_goal.addr.0, %if.then28.if.end32_crit_edge ], [ %grp_goal.addr.0, %if.end20.i ]
  %156 = ptrtoint ptr %rsv_window to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rsv_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %retval.0.i)
  %cmp34 = icmp ugt i32 %157, %retval.0.i
  br i1 %cmp34, label %if.end32.if.then39_crit_edge, label %lor.lhs.false35

if.end32.if.then39_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false35:                                  ; preds = %if.end32
  %158 = ptrtoint ptr %_rsv_end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %_rsv_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %add.i)
  %cmp38 = icmp ult i32 %159, %add.i
  br i1 %cmp38, label %lor.lhs.false35.if.then39_crit_edge, label %if.end44

lor.lhs.false35.if.then39_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false35.if.then39_crit_edge, %if.end32.if.then39_crit_edge
  %160 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rsv_window_root = getelementptr inbounds %struct.ext2_sb_info, ptr %161, i32 0, i32 34
  tail call fastcc void @__rsv_window_dump(ptr noundef %s_rsv_window_root, ptr noundef nonnull @__func__.ext2_try_to_allocate_with_rsv)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1136, 0\0A.popsection", ""() #9, !srcloc !73
  unreachable

if.end44:                                         ; preds = %lor.lhs.false35
  %call46 = call fastcc i32 @ext2_try_to_allocate(ptr noundef %sb, i32 noundef %group, ptr noundef %bitmap_bh, i32 noundef %grp_goal.addr.1, ptr noundef nonnull %num, ptr noundef %rsv_window)
  %cmp47 = icmp sgt i32 %call46, -1
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num, align 4
  %164 = ptrtoint ptr %rsv_alloc_hit.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rsv_alloc_hit.i, align 4
  %add49 = add i32 %165, %163
  store i32 %add49, ptr %rsv_alloc_hit.i, align 4
  %166 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %163, ptr %count, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %count, align 4
  %169 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %num, align 4
  br label %while.cond

cleanup:                                          ; preds = %if.then48, %cleanup.sink.split.i, %land.lhs.true.i131.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call46, %if.then48 ], [ -1, %cleanup.sink.split.i ], [ -1, %land.lhs.true.i131.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_new_block(ptr noundef %inode, i32 noundef %goal, ptr nocapture noundef writeonly %errp) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #9
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %count, align 4
  %call = call i32 @ext2_new_blocks(ptr noundef %inode, i32 noundef %goal, ptr noundef nonnull %count, ptr noundef %errp)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_count_free_blocks(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count9 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_groups_count9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.if.end17.i_crit_edge

entry.if.end17.i_crit_edge:                       ; preds = %entry
  br label %if.end17.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end17.i:                                       ; preds = %for.inc.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %4 = phi ptr [ %19, %for.inc.if.end17.i_crit_edge ], [ %1, %entry.if.end17.i_crit_edge ]
  %i.012 = phi i32 [ %inc, %for.inc.if.end17.i_crit_edge ], [ 0, %entry.if.end17.i_crit_edge ]
  %desc_count.011 = phi i32 [ %desc_count.1, %for.inc.if.end17.i_crit_edge ], [ 0, %entry.if.end17.i_crit_edge ]
  %s_desc_per_block_bits.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %s_desc_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_desc_per_block_bits.i, align 4
  %shr.i = lshr i32 %i.012, %6
  %s_desc_per_block.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %s_desc_per_block.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_desc_per_block.i, align 8
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %i.012
  %s_group_desc.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 14
  %9 = ptrtoint ptr %s_group_desc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_group_desc.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %shr.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool20.not.i = icmp eq ptr %12, null
  br i1 %tobool20.not.i, label %ext2_get_group_desc.exit.thread, label %ext2_get_group_desc.exit

ext2_get_group_desc.exit.thread:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %i.012, i32 noundef %shr.i, i32 noundef %and.i) #9
  br label %for.inc

ext2_get_group_desc.exit:                         ; preds = %if.end17.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr %struct.ext2_group_desc, ptr %14, i32 %and.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %ext2_get_group_desc.exit.for.inc_crit_edge, label %if.end

ext2_get_group_desc.exit.for.inc_crit_edge:       ; preds = %ext2_get_group_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %ext2_get_group_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bg_free_blocks_count = getelementptr %struct.ext2_group_desc, ptr %14, i32 %and.i, i32 3
  %15 = ptrtoint ptr %bg_free_blocks_count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bg_free_blocks_count, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  %add = add i32 %desc_count.011, %conv
  br label %for.inc

for.inc:                                          ; preds = %if.end, %ext2_get_group_desc.exit.for.inc_crit_edge, %ext2_get_group_desc.exit.thread
  %desc_count.1 = phi i32 [ %add, %if.end ], [ %desc_count.011, %ext2_get_group_desc.exit.for.inc_crit_edge ], [ %desc_count.011, %ext2_get_group_desc.exit.thread ]
  %inc = add nuw i32 %i.012, 1
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_groups_count, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.if.end17.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.if.end17.i_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %desc_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %desc_count.1, %for.inc.for.end_crit_edge ]
  ret i32 %desc_count.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_bg_has_super(ptr nocapture noundef readonly %sb, i32 noundef %group) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_feature_ro_compat = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %s_feature_ro_compat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_ro_compat, align 4
  %and = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %group)
  %cmp.i = icmp slt i32 %group, 2
  %or.cond = or i1 %cmp.i, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %group)
  %cmp6.i.i = icmp ugt i32 %group, 3
  br i1 %cmp6.i.i, label %if.end.i.while.body.i.i_crit_edge, label %if.end.i.test_root.exit.i_crit_edge

if.end.i.test_root.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit.i

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %mul.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 3, %if.end.i.while.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %num.07.i.i, 3
  %cmp.i.i = icmp slt i32 %mul.i.i, %group
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.test_root.exit.i_crit_edge

while.body.i.i.test_root.exit.i_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

test_root.exit.i:                                 ; preds = %while.body.i.i.test_root.exit.i_crit_edge, %if.end.i.test_root.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 3, %if.end.i.test_root.exit.i_crit_edge ], [ %mul.i.i, %while.body.i.i.test_root.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i.i, i32 %group)
  %cmp1.i.not.i = icmp eq i32 %num.0.lcssa.i.i, %group
  br i1 %cmp1.i.not.i, label %test_root.exit.i.if.end_crit_edge, label %lor.lhs.false.i

test_root.exit.i.if.end_crit_edge:                ; preds = %test_root.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %test_root.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %group)
  %cmp6.i8.i = icmp sgt i32 %group, 5
  br i1 %cmp6.i8.i, label %lor.lhs.false.i.while.body.i12.i_crit_edge, label %lor.lhs.false.i.test_root.exit16.i_crit_edge

lor.lhs.false.i.test_root.exit16.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit16.i

lor.lhs.false.i.while.body.i12.i_crit_edge:       ; preds = %lor.lhs.false.i
  br label %while.body.i12.i

while.body.i12.i:                                 ; preds = %while.body.i12.i.while.body.i12.i_crit_edge, %lor.lhs.false.i.while.body.i12.i_crit_edge
  %num.07.i9.i = phi i32 [ %mul.i10.i, %while.body.i12.i.while.body.i12.i_crit_edge ], [ 5, %lor.lhs.false.i.while.body.i12.i_crit_edge ]
  %mul.i10.i = mul i32 %num.07.i9.i, 5
  %cmp.i11.i = icmp slt i32 %mul.i10.i, %group
  br i1 %cmp.i11.i, label %while.body.i12.i.while.body.i12.i_crit_edge, label %while.body.i12.i.test_root.exit16.i_crit_edge

while.body.i12.i.test_root.exit16.i_crit_edge:    ; preds = %while.body.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit16.i

while.body.i12.i.while.body.i12.i_crit_edge:      ; preds = %while.body.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i12.i

test_root.exit16.i:                               ; preds = %while.body.i12.i.test_root.exit16.i_crit_edge, %lor.lhs.false.i.test_root.exit16.i_crit_edge
  %num.0.lcssa.i13.i = phi i32 [ 5, %lor.lhs.false.i.test_root.exit16.i_crit_edge ], [ %mul.i10.i, %while.body.i12.i.test_root.exit16.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i13.i, i32 %group)
  %cmp1.i14.not.i = icmp eq i32 %num.0.lcssa.i13.i, %group
  br i1 %cmp1.i14.not.i, label %test_root.exit16.i.if.end_crit_edge, label %lor.rhs.i

test_root.exit16.i.if.end_crit_edge:              ; preds = %test_root.exit16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.rhs.i:                                        ; preds = %test_root.exit16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %group)
  %cmp6.i17.i = icmp sgt i32 %group, 7
  br i1 %cmp6.i17.i, label %lor.rhs.i.while.body.i21.i_crit_edge, label %lor.rhs.i.ext2_group_sparse.exit_crit_edge

lor.rhs.i.ext2_group_sparse.exit_crit_edge:       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext2_group_sparse.exit

lor.rhs.i.while.body.i21.i_crit_edge:             ; preds = %lor.rhs.i
  br label %while.body.i21.i

while.body.i21.i:                                 ; preds = %while.body.i21.i.while.body.i21.i_crit_edge, %lor.rhs.i.while.body.i21.i_crit_edge
  %num.07.i18.i = phi i32 [ %mul.i19.i, %while.body.i21.i.while.body.i21.i_crit_edge ], [ 7, %lor.rhs.i.while.body.i21.i_crit_edge ]
  %mul.i19.i = mul i32 %num.07.i18.i, 7
  %cmp.i20.i = icmp slt i32 %mul.i19.i, %group
  br i1 %cmp.i20.i, label %while.body.i21.i.while.body.i21.i_crit_edge, label %while.body.i21.i.ext2_group_sparse.exit_crit_edge

while.body.i21.i.ext2_group_sparse.exit_crit_edge: ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext2_group_sparse.exit

while.body.i21.i.while.body.i21.i_crit_edge:      ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i21.i

ext2_group_sparse.exit:                           ; preds = %while.body.i21.i.ext2_group_sparse.exit_crit_edge, %lor.rhs.i.ext2_group_sparse.exit_crit_edge
  %num.0.lcssa.i22.i = phi i32 [ 7, %lor.rhs.i.ext2_group_sparse.exit_crit_edge ], [ %mul.i19.i, %while.body.i21.i.ext2_group_sparse.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i22.i, i32 %group)
  %cmp1.i23.i.not = icmp eq i32 %num.0.lcssa.i22.i, %group
  br i1 %cmp1.i23.i.not, label %ext2_group_sparse.exit.if.end_crit_edge, label %ext2_group_sparse.exit.return_crit_edge

ext2_group_sparse.exit.return_crit_edge:          ; preds = %ext2_group_sparse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

ext2_group_sparse.exit.if.end_crit_edge:          ; preds = %ext2_group_sparse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %ext2_group_sparse.exit.if.end_crit_edge, %test_root.exit16.i.if.end_crit_edge, %test_root.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %ext2_group_sparse.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %ext2_group_sparse.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_bg_num_gdb(ptr nocapture noundef readonly %sb, i32 noundef %group) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es.i, align 4
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %group)
  %cmp.i.i = icmp slt i32 %group, 2
  %or.cond.i = or i1 %cmp.i.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.cond.true_crit_edge, label %if.end.i.i

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %group)
  %cmp6.i.i.i = icmp ugt i32 %group, 3
  br i1 %cmp6.i.i.i, label %if.end.i.i.while.body.i.i.i_crit_edge, label %if.end.i.i.test_root.exit.i.i_crit_edge

if.end.i.i.test_root.exit.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit.i.i

if.end.i.i.while.body.i.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.while.body.i.i.i_crit_edge
  %num.07.i.i.i = phi i32 [ %mul.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 3, %if.end.i.i.while.body.i.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %num.07.i.i.i, 3
  %cmp.i.i.i = icmp slt i32 %mul.i.i.i, %group
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %while.body.i.i.i.test_root.exit.i.i_crit_edge

while.body.i.i.i.test_root.exit.i.i_crit_edge:    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

test_root.exit.i.i:                               ; preds = %while.body.i.i.i.test_root.exit.i.i_crit_edge, %if.end.i.i.test_root.exit.i.i_crit_edge
  %num.0.lcssa.i.i.i = phi i32 [ 3, %if.end.i.i.test_root.exit.i.i_crit_edge ], [ %mul.i.i.i, %while.body.i.i.i.test_root.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i.i.i, i32 %group)
  %cmp1.i.not.i.i = icmp eq i32 %num.0.lcssa.i.i.i, %group
  br i1 %cmp1.i.not.i.i, label %test_root.exit.i.i.cond.true_crit_edge, label %lor.lhs.false.i.i

test_root.exit.i.i.cond.true_crit_edge:           ; preds = %test_root.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

lor.lhs.false.i.i:                                ; preds = %test_root.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %group)
  %cmp6.i8.i.i = icmp sgt i32 %group, 5
  br i1 %cmp6.i8.i.i, label %lor.lhs.false.i.i.while.body.i12.i.i_crit_edge, label %lor.lhs.false.i.i.test_root.exit16.i.i_crit_edge

lor.lhs.false.i.i.test_root.exit16.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit16.i.i

lor.lhs.false.i.i.while.body.i12.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  br label %while.body.i12.i.i

while.body.i12.i.i:                               ; preds = %while.body.i12.i.i.while.body.i12.i.i_crit_edge, %lor.lhs.false.i.i.while.body.i12.i.i_crit_edge
  %num.07.i9.i.i = phi i32 [ %mul.i10.i.i, %while.body.i12.i.i.while.body.i12.i.i_crit_edge ], [ 5, %lor.lhs.false.i.i.while.body.i12.i.i_crit_edge ]
  %mul.i10.i.i = mul i32 %num.07.i9.i.i, 5
  %cmp.i11.i.i = icmp slt i32 %mul.i10.i.i, %group
  br i1 %cmp.i11.i.i, label %while.body.i12.i.i.while.body.i12.i.i_crit_edge, label %while.body.i12.i.i.test_root.exit16.i.i_crit_edge

while.body.i12.i.i.test_root.exit16.i.i_crit_edge: ; preds = %while.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_root.exit16.i.i

while.body.i12.i.i.while.body.i12.i.i_crit_edge:  ; preds = %while.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i12.i.i

test_root.exit16.i.i:                             ; preds = %while.body.i12.i.i.test_root.exit16.i.i_crit_edge, %lor.lhs.false.i.i.test_root.exit16.i.i_crit_edge
  %num.0.lcssa.i13.i.i = phi i32 [ 5, %lor.lhs.false.i.i.test_root.exit16.i.i_crit_edge ], [ %mul.i10.i.i, %while.body.i12.i.i.test_root.exit16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i13.i.i, i32 %group)
  %cmp1.i14.not.i.i = icmp eq i32 %num.0.lcssa.i13.i.i, %group
  br i1 %cmp1.i14.not.i.i, label %test_root.exit16.i.i.cond.true_crit_edge, label %lor.rhs.i.i

test_root.exit16.i.i.cond.true_crit_edge:         ; preds = %test_root.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

lor.rhs.i.i:                                      ; preds = %test_root.exit16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %group)
  %cmp6.i17.i.i = icmp sgt i32 %group, 7
  br i1 %cmp6.i17.i.i, label %lor.rhs.i.i.while.body.i21.i.i_crit_edge, label %lor.rhs.i.i.ext2_group_sparse.exit.i_crit_edge

lor.rhs.i.i.ext2_group_sparse.exit.i_crit_edge:   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext2_group_sparse.exit.i

lor.rhs.i.i.while.body.i21.i.i_crit_edge:         ; preds = %lor.rhs.i.i
  br label %while.body.i21.i.i

while.body.i21.i.i:                               ; preds = %while.body.i21.i.i.while.body.i21.i.i_crit_edge, %lor.rhs.i.i.while.body.i21.i.i_crit_edge
  %num.07.i18.i.i = phi i32 [ %mul.i19.i.i, %while.body.i21.i.i.while.body.i21.i.i_crit_edge ], [ 7, %lor.rhs.i.i.while.body.i21.i.i_crit_edge ]
  %mul.i19.i.i = mul i32 %num.07.i18.i.i, 7
  %cmp.i20.i.i = icmp slt i32 %mul.i19.i.i, %group
  br i1 %cmp.i20.i.i, label %while.body.i21.i.i.while.body.i21.i.i_crit_edge, label %while.body.i21.i.i.ext2_group_sparse.exit.i_crit_edge

while.body.i21.i.i.ext2_group_sparse.exit.i_crit_edge: ; preds = %while.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext2_group_sparse.exit.i

while.body.i21.i.i.while.body.i21.i.i_crit_edge:  ; preds = %while.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i21.i.i

ext2_group_sparse.exit.i:                         ; preds = %while.body.i21.i.i.ext2_group_sparse.exit.i_crit_edge, %lor.rhs.i.i.ext2_group_sparse.exit.i_crit_edge
  %num.0.lcssa.i22.i.i = phi i32 [ 7, %lor.rhs.i.i.ext2_group_sparse.exit.i_crit_edge ], [ %mul.i19.i.i, %while.body.i21.i.i.ext2_group_sparse.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i22.i.i, i32 %group)
  %cmp1.i23.i.not.i = icmp eq i32 %num.0.lcssa.i22.i.i, %group
  br i1 %cmp1.i23.i.not.i, label %ext2_group_sparse.exit.i.cond.true_crit_edge, label %ext2_group_sparse.exit.i.cond.end_crit_edge

ext2_group_sparse.exit.i.cond.end_crit_edge:      ; preds = %ext2_group_sparse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

ext2_group_sparse.exit.i.cond.true_crit_edge:     ; preds = %ext2_group_sparse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

cond.true:                                        ; preds = %ext2_group_sparse.exit.i.cond.true_crit_edge, %test_root.exit16.i.i.cond.true_crit_edge, %test_root.exit.i.i.cond.true_crit_edge, %entry.cond.true_crit_edge
  %s_gdb_count = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %s_gdb_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_gdb_count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %ext2_group_sparse.exit.i.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %ext2_group_sparse.exit.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_submit_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_valid_block_bitmap(ptr noundef %sb, ptr nocapture noundef readonly %desc, i32 noundef %block_group, ptr nocapture noundef readonly %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocks_per_group.i, align 8
  %mul.i = mul i32 %3, %block_group
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_first_data_block.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %add.i = add i32 %8, %mul.i
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %sub = sub i32 %11, %add.i
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %div3.i.i = lshr i32 %sub, 5
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %sub, 31
  %and.i.i = xor i32 %xor.i, 24
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.err_out_crit_edge, label %if.end

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end:                                           ; preds = %entry
  %bg_inode_bitmap = getelementptr inbounds %struct.ext2_group_desc, ptr %desc, i32 0, i32 1
  %18 = ptrtoint ptr %bg_inode_bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bg_inode_bitmap, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %sub2 = sub i32 %20, %add.i
  %div3.i.i1 = lshr i32 %sub2, 5
  %arrayidx.i.i2 = getelementptr i32, ptr %13, i32 %div3.i.i1
  %21 = ptrtoint ptr %arrayidx.i.i2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i2, align 4
  %xor.i3 = and i32 %sub2, 31
  %and.i.i4 = xor i32 %xor.i3, 24
  %23 = shl nuw i32 1, %and.i.i4
  %24 = and i32 %23, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not = icmp eq i32 %24, 0
  br i1 %tobool5.not, label %if.end.err_out_crit_edge, label %if.end7

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end7:                                          ; preds = %if.end
  %bg_inode_table = getelementptr inbounds %struct.ext2_group_desc, ptr %desc, i32 0, i32 2
  %25 = ptrtoint ptr %bg_inode_table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bg_inode_table, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %sub8 = sub i32 %27, %add.i
  %s_itb_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_itb_per_group, align 8
  %add = add i32 %sub8, %29
  %call.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %13, i32 noundef %add, i32 noundef %sub8) #9
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_itb_per_group13 = getelementptr inbounds %struct.ext2_sb_info, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %s_itb_per_group13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_itb_per_group13, align 8
  %add14 = add i32 %33, %sub8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add14)
  %cmp.not = icmp ult i32 %call.i, %add14
  br i1 %cmp.not, label %if.end7.err_out_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.err_out_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

err_out:                                          ; preds = %if.end7.err_out_crit_edge, %if.end.err_out_crit_edge, %entry.err_out_crit_edge
  %bitmap_blk.0 = phi i32 [ %27, %if.end7.err_out_crit_edge ], [ %20, %if.end.err_out_crit_edge ], [ %11, %entry.err_out_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext2_valid_block_bitmap, ptr noundef nonnull @.str.28, i32 noundef %block_group, i32 noundef %bitmap_blk.0) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_try_to_allocate(ptr nocapture noundef readonly %sb, i32 noundef %group, ptr nocapture noundef readonly %bitmap_bh, i32 noundef %grp_goal, ptr nocapture noundef %count, ptr noundef readonly %my_rsv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocks_per_group.i, align 8
  %mul.i = mul i32 %3, %group
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_first_data_block.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %add.i = add i32 %8, %mul.i
  %s_groups_count.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_groups_count.i, align 4
  %sub.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %group)
  %cmp.i = icmp eq i32 %sub.i, %group
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count.i = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %s_blocks_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocks_count.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  br label %ext2_group_last_block_no.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i114 = add i32 %add.i, %3
  br label %ext2_group_last_block_no.exit

ext2_group_last_block_no.exit:                    ; preds = %if.else.i, %if.then.i
  %retval.0.in.i = phi i32 [ %13, %if.then.i ], [ %add.i114, %if.else.i ]
  %retval.0.i = add i32 %retval.0.in.i, -1
  %sub = sub i32 %retval.0.i, %add.i
  %add = add i32 %sub, 1
  %tobool.not = icmp eq ptr %my_rsv, null
  br i1 %tobool.not, label %do.end27.thread, label %do.body

do.body:                                          ; preds = %ext2_group_last_block_no.exit
  %14 = ptrtoint ptr %my_rsv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %my_rsv, align 4
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %add.i)
  %_rsv_end = getelementptr inbounds %struct.ext2_reserve_window, ptr %my_rsv, i32 0, i32 1
  %17 = ptrtoint ptr %_rsv_end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_rsv_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %retval.0.i)
  %cmp5 = icmp ult i32 %18, %retval.0.i
  %sub8 = sub i32 1, %add.i
  %add9 = add i32 %sub8, %18
  %end.0 = select i1 %cmp5, i32 %add9, i32 %add
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp17 = icmp ugt i32 %16, %3
  br i1 %cmp17, label %do.body21, label %do.end27, !prof !71

do.body21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 683, 0\0A.popsection", ""() #9, !srcloc !74
  unreachable

do.end27:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %grp_goal)
  %cmp11 = icmp sgt i32 %16, %grp_goal
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %grp_goal)
  %cmp12.not = icmp sle i32 %end.0, %grp_goal
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %grp_goal)
  %cmp28156 = icmp slt i32 %grp_goal, 0
  %cmp28 = or i1 %cmp28156, %or.cond
  br i1 %cmp28, label %if.then29, label %do.end27.if.end44_crit_edge

do.end27.if.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end27.thread:                                  ; preds = %ext2_group_last_block_no.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %grp_goal)
  %cmp28130 = icmp slt i32 %grp_goal, 0
  br i1 %cmp28130, label %do.end27.thread.if.end6.i_crit_edge, label %do.end27.thread.if.end44_crit_edge

do.end27.thread.if.end44_crit_edge:               ; preds = %do.end27.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end27.thread.if.end6.i_crit_edge:              ; preds = %do.end27.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then29:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i115 = icmp sgt i32 %16, 0
  br i1 %cmp.i115, label %if.then.i117, label %if.then29.if.end6.i_crit_edge

if.then29.if.end6.i_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i117:                                     ; preds = %if.then29
  %add.i116 = add nuw i32 %16, 63
  %and.i = and i32 %add.i116, -64
  %19 = tail call i32 @llvm.smin.i32(i32 %and.i, i32 %end.0) #9
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bitmap_bh, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i, align 4
  %call.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %21, i32 noundef %19, i32 noundef %16) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %19)
  %cmp3.i = icmp slt i32 %call.i.i, %19
  br i1 %cmp3.i, label %find_next_usable_block.exit.thread145, label %if.then.i117.if.end6.i_crit_edge

if.then.i117.if.end6.i_crit_edge:                 ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i117.if.end6.i_crit_edge, %if.then29.if.end6.i_crit_edge, %do.end27.thread.if.end6.i_crit_edge
  %end.1126132140 = phi i32 [ %end.0, %if.then.i117.if.end6.i_crit_edge ], [ %end.0, %if.then29.if.end6.i_crit_edge ], [ %add, %do.end27.thread.if.end6.i_crit_edge ]
  %start.1125133138 = phi i32 [ %16, %if.then.i117.if.end6.i_crit_edge ], [ %16, %if.then29.if.end6.i_crit_edge ], [ 0, %do.end27.thread.if.end6.i_crit_edge ]
  %22 = tail call i32 @llvm.smax.i32(i32 %start.1125133138, i32 0) #9
  %b_data10.i = getelementptr inbounds %struct.buffer_head, ptr %bitmap_bh, i32 0, i32 5
  %23 = ptrtoint ptr %b_data10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data10.i, align 4
  %25 = lshr i32 %22, 3
  %add.ptr.i = getelementptr i8, ptr %24, i32 %25
  %add11.i = add i32 %end.1126132140, 7
  %shr12.i = ashr i32 %add11.i, 3
  %sub.i118 = sub nsw i32 %shr12.i, %25
  %call14.i = tail call ptr @memscan(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %sub.i118) #9
  %26 = ptrtoint ptr %b_data10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data10.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call14.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shl.i = shl i32 %sub.ptr.sub.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %end.1126132140)
  %cmp16.i = icmp sge i32 %shl.i, %end.1126132140
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %22)
  %cmp17.not.i = icmp slt i32 %shl.i, %22
  %or.cond.i = select i1 %cmp16.i, i1 true, i1 %cmp17.not.i
  br i1 %or.cond.i, label %if.end19.i, label %if.end6.i.find_next_usable_block.exit_crit_edge

if.end6.i.find_next_usable_block.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_next_usable_block.exit

if.end19.i:                                       ; preds = %if.end6.i
  %call.i.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %27, i32 noundef %end.1126132140, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %end.1126132140)
  %cmp.not.i.i = icmp slt i32 %call.i.i.i, %end.1126132140
  br i1 %cmp.not.i.i, label %if.end19.i.find_next_usable_block.exit_crit_edge, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19.i.find_next_usable_block.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_next_usable_block.exit

find_next_usable_block.exit:                      ; preds = %if.end19.i.find_next_usable_block.exit_crit_edge, %if.end6.i.find_next_usable_block.exit_crit_edge
  %retval.1.i = phi i32 [ %shl.i, %if.end6.i.find_next_usable_block.exit_crit_edge ], [ %call.i.i.i, %if.end19.i.find_next_usable_block.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp31 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp31, label %find_next_usable_block.exit.cleanup_crit_edge, label %if.end33

find_next_usable_block.exit.cleanup_crit_edge:    ; preds = %find_next_usable_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

find_next_usable_block.exit.thread145:            ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp31149 = icmp slt i32 %call.i.i, 0
  br i1 %cmp31149, label %find_next_usable_block.exit.thread145.cleanup_crit_edge, label %find_next_usable_block.exit.thread145.if.end44_crit_edge

find_next_usable_block.exit.thread145.if.end44_crit_edge: ; preds = %find_next_usable_block.exit.thread145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

find_next_usable_block.exit.thread145.cleanup_crit_edge: ; preds = %find_next_usable_block.exit.thread145
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %find_next_usable_block.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i, i32 %start.1125133138)
  %cmp37161 = icmp sgt i32 %retval.1.i, %start.1125133138
  %or.cond173 = select i1 %tobool.not, i1 %cmp37161, i1 false
  br i1 %or.cond173, label %land.rhs.lr.ph, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.rhs.lr.ph:                                   ; preds = %if.end33
  %28 = ptrtoint ptr %b_data10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data10.i, align 4
  %sub38 = add nsw i32 %retval.1.i, -1
  %div3.i.i = lshr i32 %sub38, 5
  %arrayidx.i.i = getelementptr i32, ptr %29, i32 %div3.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %sub38, 31
  %and.i.i = xor i32 %xor.i, 24
  %32 = shl nuw i32 1, %and.i.i
  %33 = and i32 %31, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %for.cond, label %land.rhs.lr.ph.if.end44_crit_edge

land.rhs.lr.ph.if.end44_crit_edge:                ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.cond:                                         ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38, i32 %start.1125133138)
  %cmp37 = icmp sgt i32 %sub38, %start.1125133138
  br i1 %cmp37, label %land.rhs.1, label %for.cond.if.end44_crit_edge

for.cond.if.end44_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.rhs.1:                                       ; preds = %for.cond
  %sub38.1 = add nsw i32 %retval.1.i, -2
  %div3.i.i.1 = lshr i32 %sub38.1, 5
  %arrayidx.i.i.1 = getelementptr i32, ptr %29, i32 %div3.i.i.1
  %34 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i.1, align 4
  %xor.i.1 = and i32 %sub38.1, 31
  %and.i.i.1 = xor i32 %xor.i.1, 24
  %36 = shl nuw i32 1, %and.i.i.1
  %37 = and i32 %35, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool40.not.1 = icmp eq i32 %37, 0
  br i1 %tobool40.not.1, label %for.cond.1, label %land.rhs.1.if.end44_crit_edge

land.rhs.1.if.end44_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.cond.1:                                       ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.1, i32 %start.1125133138)
  %cmp37.1 = icmp sgt i32 %sub38.1, %start.1125133138
  br i1 %cmp37.1, label %land.rhs.2, label %for.cond.1.if.end44_crit_edge

for.cond.1.if.end44_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.rhs.2:                                       ; preds = %for.cond.1
  %sub38.2 = add nsw i32 %retval.1.i, -3
  %div3.i.i.2 = lshr i32 %sub38.2, 5
  %arrayidx.i.i.2 = getelementptr i32, ptr %29, i32 %div3.i.i.2
  %38 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i.i.2, align 4
  %xor.i.2 = and i32 %sub38.2, 31
  %and.i.i.2 = xor i32 %xor.i.2, 24
  %40 = shl nuw i32 1, %and.i.i.2
  %41 = and i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool40.not.2 = icmp eq i32 %41, 0
  br i1 %tobool40.not.2, label %for.cond.2, label %land.rhs.2.if.end44_crit_edge

land.rhs.2.if.end44_crit_edge:                    ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.cond.2:                                       ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.2, i32 %start.1125133138)
  %cmp37.2 = icmp sgt i32 %sub38.2, %start.1125133138
  br i1 %cmp37.2, label %land.rhs.3, label %for.cond.2.if.end44_crit_edge

for.cond.2.if.end44_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.rhs.3:                                       ; preds = %for.cond.2
  %sub38.3 = add nsw i32 %retval.1.i, -4
  %div3.i.i.3 = lshr i32 %sub38.3, 5
  %arrayidx.i.i.3 = getelementptr i32, ptr %29, i32 %div3.i.i.3
  %42 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i.i.3, align 4
  %xor.i.3 = and i32 %sub38.3, 31
  %and.i.i.3 = xor i32 %xor.i.3, 24
  %44 = shl nuw i32 1, %and.i.i.3
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool40.not.3 = icmp eq i32 %45, 0
  br i1 %tobool40.not.3, label %for.cond.3, label %land.rhs.3.if.end44_crit_edge

land.rhs.3.if.end44_crit_edge:                    ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.cond.3:                                       ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.3, i32 %start.1125133138)
  %cmp37.3 = icmp sgt i32 %sub38.3, %start.1125133138
  br i1 %cmp37.3, label %land.rhs.4, label %for.cond.3.if.end44_crit_edge

for.cond.3.if.end44_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.rhs.4:                                       ; preds = %for.cond.3
  %sub38.4 = add nsw i32 %retval.1.i, -5
  %div3.i.i.4 = lshr i32 %sub38.4, 5
  %arrayidx.i.i.4 = getelementptr i32, ptr %29, i32 %div3.i.i.4
  %46 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i.4, align 4
  %xor.i.4 = and i32 %sub38.4, 31
  %and.i.i.4 = xor i32 %xor.i.4, 24
  %48 = shl nuw i32 1, %and.i.i.4
  %49 = and i32 %47, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool40.not.4 = icmp eq i32 %49, 0
  br i1 %tobool40.not.4, label %for.cond.4, label %land.rhs.4.if.end44_crit_edge

land.rhs.4.if.end44_crit_edge:                    ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.cond.4:                                       ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.4, i32 %start.1125133138)
  %cmp37.4 = icmp sgt i32 %sub38.4, %start.1125133138
  br i1 %cmp37.4, label %land.rhs.5, label %for.cond.4.if.end44_crit_edge

for.cond.4.if.end44_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.rhs.5:                                       ; preds = %for.cond.4
  %sub38.5 = add nsw i32 %retval.1.i, -6
  %div3.i.i.5 = lshr i32 %sub38.5, 5
  %arrayidx.i.i.5 = getelementptr i32, ptr %29, i32 %div3.i.i.5
  %50 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i.i.5, align 4
  %xor.i.5 = and i32 %sub38.5, 31
  %and.i.i.5 = xor i32 %xor.i.5, 24
  %52 = shl nuw i32 1, %and.i.i.5
  %53 = and i32 %51, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool40.not.5 = icmp eq i32 %53, 0
  br i1 %tobool40.not.5, label %for.cond.5, label %land.rhs.5.if.end44_crit_edge

land.rhs.5.if.end44_crit_edge:                    ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.cond.5:                                       ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.5, i32 %start.1125133138)
  %cmp37.5 = icmp sgt i32 %sub38.5, %start.1125133138
  br i1 %cmp37.5, label %land.rhs.6, label %for.cond.5.if.end44_crit_edge

for.cond.5.if.end44_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.rhs.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  %sub38.6 = add nsw i32 %retval.1.i, -7
  %div3.i.i.6 = lshr i32 %sub38.6, 5
  %arrayidx.i.i.6 = getelementptr i32, ptr %29, i32 %div3.i.i.6
  %54 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i.i.6, align 4
  %xor.i.6 = and i32 %sub38.6, 31
  %and.i.i.6 = xor i32 %xor.i.6, 24
  %56 = shl nuw i32 1, %and.i.i.6
  %57 = and i32 %55, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool40.not.6 = icmp eq i32 %57, 0
  %spec.select = select i1 %tobool40.not.6, i32 %sub38.6, i32 %sub38.5
  br label %if.end44

if.end44:                                         ; preds = %land.rhs.6, %for.cond.5.if.end44_crit_edge, %land.rhs.5.if.end44_crit_edge, %for.cond.4.if.end44_crit_edge, %land.rhs.4.if.end44_crit_edge, %for.cond.3.if.end44_crit_edge, %land.rhs.3.if.end44_crit_edge, %for.cond.2.if.end44_crit_edge, %land.rhs.2.if.end44_crit_edge, %for.cond.1.if.end44_crit_edge, %land.rhs.1.if.end44_crit_edge, %for.cond.if.end44_crit_edge, %land.rhs.lr.ph.if.end44_crit_edge, %if.end33.if.end44_crit_edge, %find_next_usable_block.exit.thread145.if.end44_crit_edge, %do.end27.thread.if.end44_crit_edge, %do.end27.if.end44_crit_edge
  %end.1126131 = phi i32 [ %end.1126132140, %if.end33.if.end44_crit_edge ], [ %end.0, %do.end27.if.end44_crit_edge ], [ %add, %do.end27.thread.if.end44_crit_edge ], [ %end.0, %find_next_usable_block.exit.thread145.if.end44_crit_edge ], [ %end.1126132140, %land.rhs.6 ], [ %end.1126132140, %for.cond.5.if.end44_crit_edge ], [ %end.1126132140, %land.rhs.5.if.end44_crit_edge ], [ %end.1126132140, %for.cond.4.if.end44_crit_edge ], [ %end.1126132140, %land.rhs.4.if.end44_crit_edge ], [ %end.1126132140, %for.cond.3.if.end44_crit_edge ], [ %end.1126132140, %land.rhs.3.if.end44_crit_edge ], [ %end.1126132140, %for.cond.2.if.end44_crit_edge ], [ %end.1126132140, %land.rhs.2.if.end44_crit_edge ], [ %end.1126132140, %for.cond.1.if.end44_crit_edge ], [ %end.1126132140, %land.rhs.1.if.end44_crit_edge ], [ %end.1126132140, %land.rhs.lr.ph.if.end44_crit_edge ], [ %end.1126132140, %for.cond.if.end44_crit_edge ]
  %grp_goal.addr.2 = phi i32 [ %retval.1.i, %if.end33.if.end44_crit_edge ], [ %grp_goal, %do.end27.if.end44_crit_edge ], [ %grp_goal, %do.end27.thread.if.end44_crit_edge ], [ %call.i.i, %find_next_usable_block.exit.thread145.if.end44_crit_edge ], [ %sub38, %for.cond.if.end44_crit_edge ], [ %retval.1.i, %land.rhs.lr.ph.if.end44_crit_edge ], [ %sub38, %land.rhs.1.if.end44_crit_edge ], [ %sub38.1, %for.cond.1.if.end44_crit_edge ], [ %sub38.1, %land.rhs.2.if.end44_crit_edge ], [ %sub38.2, %for.cond.2.if.end44_crit_edge ], [ %sub38.2, %land.rhs.3.if.end44_crit_edge ], [ %sub38.3, %for.cond.3.if.end44_crit_edge ], [ %sub38.3, %land.rhs.4.if.end44_crit_edge ], [ %sub38.4, %for.cond.4.if.end44_crit_edge ], [ %sub38.4, %land.rhs.5.if.end44_crit_edge ], [ %sub38.5, %for.cond.5.if.end44_crit_edge ], [ %spec.select, %land.rhs.6 ]
  %58 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp46165 = icmp ne i32 %59, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %grp_goal.addr.2, i32 %end.1126131)
  %cmp48166 = icmp slt i32 %grp_goal.addr.2, %end.1126131
  %or.cond110167 = select i1 %cmp46165, i1 %cmp48166, i1 false
  br i1 %or.cond110167, label %for.body50.lr.ph, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body50.lr.ph:                                 ; preds = %if.end44
  %b_data51 = getelementptr inbounds %struct.buffer_head, ptr %bitmap_bh, i32 0, i32 5
  br label %for.body50

for.body50:                                       ; preds = %for.inc60.for.body50_crit_edge, %for.body50.lr.ph
  %num.0170 = phi i32 [ 0, %for.body50.lr.ph ], [ %num.1, %for.inc60.for.body50_crit_edge ]
  %grp_goal.addr.3168 = phi i32 [ %grp_goal.addr.2, %for.body50.lr.ph ], [ %inc61, %for.inc60.for.body50_crit_edge ]
  %60 = ptrtoint ptr %b_data51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data51, align 4
  %xor.i119 = xor i32 %grp_goal.addr.3168, 24
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %xor.i119, ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool53.not = icmp eq i32 %call.i, 0
  br i1 %tobool53.not, label %if.end58, label %if.then54

if.then54:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0170)
  %cond = icmp eq i32 %num.0170, 0
  br i1 %cond, label %if.then54.for.inc60_crit_edge, label %if.then54.if.end65_crit_edge

if.then54.if.end65_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then54.for.inc60_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60

if.end58:                                         ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  %inc59 = add i32 %num.0170, 1
  br label %for.inc60

for.inc60:                                        ; preds = %if.end58, %if.then54.for.inc60_crit_edge
  %num.1 = phi i32 [ 0, %if.then54.for.inc60_crit_edge ], [ %inc59, %if.end58 ]
  %inc61 = add nsw i32 %grp_goal.addr.3168, 1
  %62 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1, i32 %63)
  %cmp46 = icmp ult i32 %num.1, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %inc61, i32 %end.1126131)
  %cmp48 = icmp slt i32 %inc61, %end.1126131
  %or.cond110 = select i1 %cmp46, i1 %cmp48, i1 false
  br i1 %or.cond110, label %for.inc60.for.body50_crit_edge, label %for.end62

for.inc60.for.body50_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.end62:                                        ; preds = %for.inc60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %cmp63 = icmp eq i32 %num.1, 0
  br i1 %cmp63, label %for.end62.cleanup_crit_edge, label %for.end62.if.end65_crit_edge

for.end62.if.end65_crit_edge:                     ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

for.end62.cleanup_crit_edge:                      ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %for.end62.if.end65_crit_edge, %if.then54.if.end65_crit_edge
  %grp_goal.addr.3160 = phi i32 [ %inc61, %for.end62.if.end65_crit_edge ], [ %grp_goal.addr.3168, %if.then54.if.end65_crit_edge ]
  %num.0158 = phi i32 [ %num.1, %for.end62.if.end65_crit_edge ], [ %num.0170, %if.then54.if.end65_crit_edge ]
  %64 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %num.0158, ptr %count, align 4
  %sub66 = sub i32 %grp_goal.addr.3160, %num.0158
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %for.end62.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %find_next_usable_block.exit.thread145.cleanup_crit_edge, %find_next_usable_block.exit.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub66, %if.end65 ], [ -1, %for.end62.cleanup_crit_edge ], [ -1, %find_next_usable_block.exit.cleanup_crit_edge ], [ -1, %find_next_usable_block.exit.thread145.cleanup_crit_edge ], [ -1, %if.end19.i.cleanup_crit_edge ], [ -1, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memscan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext2/balloc.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ext2/balloc.c", i32 61, i32 3}
!5 = !{ptr @__func__.ext2_rsv_window_add, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext2/balloc.c", i32 350, i32 4}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext2/balloc.c", i32 492, i32 19}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext2/balloc.c", i32 493, i32 8}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext2/balloc.c", i32 530, i32 8}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ext2/balloc.c", i32 540, i32 5}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext2/balloc.c", i32 1380, i32 18}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ext2/balloc.c", i32 1381, i32 8}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ext2/balloc.c", i32 1397, i32 8}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext2/balloc.c", i32 211, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__rsv_window_dump._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @__rsv_window_dump._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ext2/balloc.c", i32 215, i32 4}
!28 = !{ptr @__rsv_window_dump._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @__rsv_window_dump._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ext2/balloc.c", i32 219, i32 4}
!32 = !{ptr @__rsv_window_dump._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @__rsv_window_dump._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ext2/balloc.c", i32 224, i32 4}
!36 = !{ptr @__rsv_window_dump._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @__rsv_window_dump._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ext2/balloc.c", i32 230, i32 5}
!40 = !{ptr @__rsv_window_dump._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @__rsv_window_dump._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ext2/balloc.c", i32 238, i32 2}
!44 = !{ptr @__rsv_window_dump._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @__rsv_window_dump._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__func__.read_block_bitmap, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ext2/balloc.c", i32 136, i32 18}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ext2/balloc.c", i32 137, i32 8}
!50 = !{ptr @__func__.ext2_valid_block_bitmap, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ext2/balloc.c", i32 110, i32 17}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ext2/balloc.c", i32 111, i32 4}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../fs/ext2/balloc.c", i32 1163, i32 26}
!56 = !{ptr @__func__.ext2_try_to_allocate_with_rsv, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ext2/balloc.c", i32 1135, i32 4}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2153926704, i64 2153927185, i64 2153926741, i64 2153926797, i64 2153926831, i64 2153926855, i64 2153926896, i64 2153926917, i64 2153926945, i64 2153926979}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2153920898, i64 2153921379, i64 2153920935, i64 2153920991, i64 2153921025, i64 2153921049, i64 2153921090, i64 2153921111, i64 2153921139, i64 2153921173}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2153939984}
!73 = !{i64 2153936034, i64 2153936516, i64 2153936071, i64 2153936127, i64 2153936161, i64 2153936185, i64 2153936226, i64 2153936247, i64 2153936275, i64 2153936309}
!74 = !{i64 2153931133, i64 2153931614, i64 2153931170, i64 2153931226, i64 2153931260, i64 2153931284, i64 2153931325, i64 2153931346, i64 2153931374, i64 2153931408}
