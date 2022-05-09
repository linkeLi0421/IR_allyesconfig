; ModuleID = '/llk/IR_all_yes/fs/jffs2/nodelist.c_pt.bc'
source_filename = "../fs/jffs2/nodelist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_full_dirent = type { %union.anon.75, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.75 = type { ptr }
%struct.jffs2_node_frag = type { %struct.rb_node, ptr, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.jffs2_full_dnode = type { ptr, i32, i32, i32 }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.82 = type { ptr }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/jffs2/nodelist.c\00", [44 x i8] zeroinitializer }, align 32
@jffs2_link_node_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\013jffs2: error: (%d) %s: Adding new ref %p at (0x%08x-0x%08x) not immediately after previous (0x%08x-0x%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jffs2_link_node_ref\00", [44 x i8] zeroinitializer }, align 32
@jffs2_link_node_ref._entry_ptr = internal global ptr @jffs2_link_node_ref._entry, section ".printk_index", align 4
@jffs2_scan_dirty_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\012jffs2: Dirty space 0x%x larger then free_size 0x%x (wasted 0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jffs2_scan_dirty_space\00", [41 x i8] zeroinitializer }, align 32
@jffs2_scan_dirty_space._entry_ptr = internal global ptr @jffs2_scan_dirty_space._entry, section ".printk_index", align 4
@new_fragment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013jffs2: error: (%d) %s: cannot allocate a jffs2_node_frag object\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"new_fragment\00", [19 x i8] zeroinitializer }, align 32
@new_fragment._entry_ptr = internal global ptr @new_fragment._entry, section ".printk_index", align 4
@jffs2_fragtree_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013jffs2: error: (%d) %s: duplicate frag at %08x (%p,%p)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_fragtree_insert\00", [42 x i8] zeroinitializer }, align 32
@jffs2_fragtree_insert._entry_ptr = internal global ptr @jffs2_fragtree_insert._entry, section ".printk_index", align 4
@__ref_totlen._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 710, ptr null, ptr null }, align 1
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\012jffs2: ref %p @0x%08x is not jeb->last_node (%p @0x%08x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__ref_totlen\00", [19 x i8] zeroinitializer }, align 32
@__ref_totlen._entry_ptr = internal global ptr @__ref_totlen._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 581, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 618, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 668, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 159, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 138, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [23 x i8] c"../fs/jffs2/nodelist.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 707, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ref_totlen._entry, ptr @__ref_totlen._entry_ptr, ptr @jffs2_fragtree_insert._entry, ptr @jffs2_fragtree_insert._entry_ptr, ptr @jffs2_link_node_ref._entry, ptr @jffs2_link_node_ref._entry_ptr, ptr @jffs2_scan_dirty_space._entry, ptr @jffs2_scan_dirty_space._entry_ptr, ptr @new_fragment._entry, ptr @new_fragment._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_link_node_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_dirty_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_fragment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fragtree_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef %new, ptr nocapture noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %tobool.not47 = icmp eq ptr %1, null
  br i1 %tobool.not47, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %nhash1 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %new, i32 0, i32 4
  %2 = ptrtoint ptr %nhash1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nhash1, align 4
  %name5 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %new, i32 0, i32 6
  br label %land.rhs

land.rhs:                                         ; preds = %if.end17.land.rhs_crit_edge, %land.rhs.lr.ph
  %4 = phi ptr [ %1, %land.rhs.lr.ph ], [ %24, %if.end17.land.rhs_crit_edge ]
  %prev.048 = phi ptr [ %list, %land.rhs.lr.ph ], [ %next18, %if.end17.land.rhs_crit_edge ]
  %nhash = getelementptr inbounds %struct.jffs2_full_dirent, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %nhash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nhash, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.not = icmp ugt i32 %6, %3
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp4 = icmp eq i32 %6, %3
  br i1 %cmp4, label %land.lhs.true, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %while.body
  %name = getelementptr inbounds %struct.jffs2_full_dirent, ptr %4, i32 0, i32 6
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %name5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.jffs2_full_dirent, ptr %new, i32 0, i32 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %version8 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %version8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp9 = icmp ult i32 %8, %10
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new, align 4
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %12) #6
  tail call void @jffs2_free_full_dirent(ptr noundef %new) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 4
  %next13 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %new, i32 0, i32 1
  %15 = ptrtoint ptr %next13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %next13, align 4
  %16 = ptrtoint ptr %prev.048 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.048, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.else.if.end_crit_edge, label %if.then15

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %19) #6
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else.if.end_crit_edge
  %20 = ptrtoint ptr %prev.048 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.048, align 4
  tail call void @jffs2_free_full_dirent(ptr noundef %21) #6
  %22 = ptrtoint ptr %prev.048 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %new, ptr %prev.048, align 4
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %while.body.if.end17_crit_edge
  %next18 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %next18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next18, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %if.end17.while.end_crit_edge, label %if.end17.land.rhs_crit_edge

if.end17.land.rhs_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %prev.0.lcssa = phi ptr [ %list, %entry.while.end_crit_edge ], [ %next18, %if.end17.while.end_crit_edge ], [ %prev.048, %land.rhs.while.end_crit_edge ]
  %.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ null, %if.end17.while.end_crit_edge ], [ %4, %land.rhs.while.end_crit_edge ]
  %next19 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %new, i32 0, i32 1
  %25 = ptrtoint ptr %next19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.lcssa, ptr %next19, align 4
  %26 = ptrtoint ptr %prev.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %new, ptr %prev.0.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end, %if.then10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dirent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_truncate_fragtree(ptr noundef %c, ptr noundef %list, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %next.034.i = load ptr, ptr %list, align 4
  %tobool.not35.i = icmp eq ptr %next.034.i, null
  br i1 %tobool.not35.i, label %entry.while.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %next.037.i = phi ptr [ %next.0.i, %if.end13.i.while.body.i_crit_edge ], [ %next.034.i, %entry.while.body.i_crit_edge ]
  %prev.036.i = phi ptr [ %prev.2.i, %if.end13.i.while.body.i_crit_edge ], [ null, %entry.while.body.i_crit_edge ]
  %ofs.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %next.037.i, i32 0, i32 3
  %1 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ofs.i, align 4
  %size.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %next.037.i, i32 0, i32 2
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i, align 4
  %add.i = add i32 %4, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %size)
  %cmp.not.i = icmp ugt i32 %add.i, %size
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %tobool2.not.i = icmp eq ptr %prev.036.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %ofs4.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %prev.036.i, i32 0, i32 3
  %5 = ptrtoint ptr %ofs4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ofs4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp5.i = icmp ugt i32 %2, %6
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %lor.lhs.false.i.if.end.i_crit_edge
  %prev.1.i = phi ptr [ %next.037.i, %if.then6.i ], [ %prev.036.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %next.037.i, i32 0, i32 1
  br label %if.end13.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %size)
  %cmp8.i = icmp ugt i32 %2, %size
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.land.lhs.true_crit_edge

if.else.i.land.lhs.true_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %next.037.i, i32 0, i32 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end.i
  %prev.2.i = phi ptr [ %prev.1.i, %if.end.i ], [ %prev.036.i, %if.then9.i ]
  %next.1.in.i = phi ptr [ %rb_right.i, %if.end.i ], [ %rb_left.i, %if.then9.i ]
  %7 = ptrtoint ptr %next.1.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %next.0.i = load ptr, ptr %next.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %next.0.i, null
  br i1 %tobool.not.i, label %jffs2_lookup_node_frag.exit, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

jffs2_lookup_node_frag.exit:                      ; preds = %if.end13.i
  %tobool.not = icmp eq ptr %prev.2.i, null
  br i1 %tobool.not, label %jffs2_lookup_node_frag.exit.while.end_crit_edge, label %jffs2_lookup_node_frag.exit.land.lhs.true_crit_edge

jffs2_lookup_node_frag.exit.land.lhs.true_crit_edge: ; preds = %jffs2_lookup_node_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

jffs2_lookup_node_frag.exit.while.end_crit_edge:  ; preds = %jffs2_lookup_node_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.lhs.true:                                    ; preds = %jffs2_lookup_node_frag.exit.land.lhs.true_crit_edge, %if.else.i.land.lhs.true_crit_edge
  %retval.0.i85 = phi ptr [ %prev.2.i, %jffs2_lookup_node_frag.exit.land.lhs.true_crit_edge ], [ %next.037.i, %if.else.i.land.lhs.true_crit_edge ]
  %ofs = getelementptr inbounds %struct.jffs2_node_frag, ptr %retval.0.i85, i32 0, i32 3
  %8 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %size)
  %cmp.not = icmp eq i32 %9, %size
  br i1 %cmp.not, label %land.lhs.true.land.rhs.preheader_crit_edge, label %if.then

land.lhs.true.land.rhs.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

if.then:                                          ; preds = %land.lhs.true
  %size2 = getelementptr inbounds %struct.jffs2_node_frag, ptr %retval.0.i85, i32 0, i32 2
  %10 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size2, align 4
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp3 = icmp ugt i32 %add, %size
  br i1 %cmp3, label %if.then4, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %size, %9
  %12 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %size2, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then.if.end9_crit_edge
  %call7 = tail call ptr @rb_next(ptr noundef nonnull %retval.0.i85) #6
  %tobool10.not88 = icmp eq ptr %call7, null
  br i1 %tobool10.not88, label %if.end9.while.end_crit_edge, label %if.end9.land.rhs.preheader_crit_edge

if.end9.land.rhs.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.preheader:                               ; preds = %if.end9.land.rhs.preheader_crit_edge, %land.lhs.true.land.rhs.preheader_crit_edge
  %frag.189.ph = phi ptr [ %retval.0.i85, %land.lhs.true.land.rhs.preheader_crit_edge ], [ %call7, %if.end9.land.rhs.preheader_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %jffs2_obsolete_node_frag.exit.land.rhs_crit_edge, %land.rhs.preheader
  %frag.189 = phi ptr [ %call15, %jffs2_obsolete_node_frag.exit.land.rhs_crit_edge ], [ %frag.189.ph, %land.rhs.preheader ]
  %ofs11 = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.189, i32 0, i32 3
  %13 = ptrtoint ptr %ofs11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ofs11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %size)
  %cmp12.not = icmp ult i32 %14, %size
  br i1 %cmp12.not, label %land.rhs.if.end21_crit_edge, label %while.body

land.rhs.if.end21_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

while.body:                                       ; preds = %land.rhs
  %call15 = tail call ptr @rb_next(ptr noundef nonnull %frag.189) #6
  tail call void @rb_erase(ptr noundef nonnull %frag.189, ptr noundef %list) #6
  %node.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.189, i32 0, i32 1
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.i, align 4
  %tobool.not.i77 = icmp eq ptr %16, null
  br i1 %tobool.not.i77, label %while.body.jffs2_obsolete_node_frag.exit_crit_edge, label %if.then.i78

while.body.jffs2_obsolete_node_frag.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_obsolete_node_frag.exit

if.then.i78:                                      ; preds = %while.body
  %frags.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frags.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %frags.i, align 4
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node.i, align 4
  %frags3.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %frags3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frags3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i = icmp eq i32 %22, 0
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i79

if.then5.i:                                       ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %24) #6
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node.i, align 4
  tail call void @jffs2_free_full_dnode(ptr noundef %26) #6
  br label %jffs2_obsolete_node_frag.exit

if.else.i79:                                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #8
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flash_offset.i, align 4
  %or.i = or i32 %28, 3
  store i32 %or.i, ptr %flash_offset.i, align 4
  br label %jffs2_obsolete_node_frag.exit

jffs2_obsolete_node_frag.exit:                    ; preds = %if.else.i79, %if.then5.i, %while.body.jffs2_obsolete_node_frag.exit_crit_edge
  tail call void @jffs2_free_node_frag(ptr noundef nonnull %frag.189) #6
  %tobool10.not = icmp eq ptr %call15, null
  br i1 %tobool10.not, label %jffs2_obsolete_node_frag.exit.while.end_crit_edge, label %jffs2_obsolete_node_frag.exit.land.rhs_crit_edge

jffs2_obsolete_node_frag.exit.land.rhs_crit_edge: ; preds = %jffs2_obsolete_node_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

jffs2_obsolete_node_frag.exit.while.end_crit_edge: ; preds = %jffs2_obsolete_node_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %jffs2_obsolete_node_frag.exit.while.end_crit_edge, %if.end9.while.end_crit_edge, %jffs2_lookup_node_frag.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp19 = icmp eq i32 %size, 0
  br i1 %cmp19, label %while.end.cleanup_crit_edge, label %while.end.if.end21_crit_edge

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %while.end.if.end21_crit_edge, %land.rhs.if.end21_crit_edge
  %call.i = tail call ptr @rb_last(ptr noundef %list) #6
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %ofs26 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %ofs26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ofs26, align 4
  %size27 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %size27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size27, align 4
  %add28 = add i32 %32, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %size)
  %cmp29 = icmp ult i32 %add28, %size
  br i1 %cmp29, label %if.end25.cleanup_crit_edge, label %if.end34

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  %node = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %node, align 4
  %tobool35.not = icmp ne ptr %34, null
  %and = and i32 %30, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp38 = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool35.not, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flash_offset, align 4
  %and42 = and i32 %38, -4
  %or = or i32 %and42, 2
  store i32 %or, ptr %flash_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end34.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %add28, %if.end25.cleanup_crit_edge ], [ %size, %if.then39 ], [ %size, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_lookup_node_frag(ptr nocapture noundef readonly %fragtree, i32 noundef %offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fragtree to i32
  call void @__asan_load4_noabort(i32 %0)
  %next.034 = load ptr, ptr %fragtree, align 4
  %tobool.not35 = icmp eq ptr %next.034, null
  br i1 %tobool.not35, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %entry.while.body_crit_edge
  %next.037 = phi ptr [ %next.0, %if.end13.while.body_crit_edge ], [ %next.034, %entry.while.body_crit_edge ]
  %prev.036 = phi ptr [ %prev.2, %if.end13.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %ofs = getelementptr inbounds %struct.jffs2_node_frag, ptr %next.037, i32 0, i32 3
  %1 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ofs, align 4
  %size = getelementptr inbounds %struct.jffs2_node_frag, ptr %next.037, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %add = add i32 %4, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp.not = icmp ugt i32 %add, %offset
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %tobool2.not = icmp eq ptr %prev.036, null
  br i1 %tobool2.not, label %if.then.if.then6_crit_edge, label %lor.lhs.false

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %ofs4 = getelementptr inbounds %struct.jffs2_node_frag, ptr %prev.036, i32 0, i32 3
  %5 = ptrtoint ptr %ofs4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ofs4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp5 = icmp ugt i32 %2, %6
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.then.if.then6_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then6, %lor.lhs.false.if.end_crit_edge
  %prev.1 = phi ptr [ %next.037, %if.then6 ], [ %prev.036, %lor.lhs.false.if.end_crit_edge ]
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %next.037, i32 0, i32 1
  br label %if.end13

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %offset)
  %cmp8 = icmp ugt i32 %2, %offset
  br i1 %cmp8, label %if.then9, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %next.037, i32 0, i32 2
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end
  %prev.2 = phi ptr [ %prev.1, %if.end ], [ %prev.036, %if.then9 ]
  %next.1.in = phi ptr [ %rb_right, %if.end ], [ %rb_left, %if.then9 ]
  %7 = ptrtoint ptr %next.1.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %next.0 = load ptr, ptr %next.1.in, align 4
  %tobool.not = icmp eq ptr %next.0, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %prev.2, %if.end13.cleanup_crit_edge ], [ %next.037, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_add_full_dnode_to_inode(ptr noundef %c, ptr noundef %f, ptr noundef %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.jffs2_full_dnode, ptr %fn, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !37

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ofs = getelementptr inbounds %struct.jffs2_full_dnode, ptr %fn, i32 0, i32 1
  %2 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ofs, align 4
  %call.i = tail call ptr @jffs2_alloc_node_frag() #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %new_fragment.exit.thread, label %if.end15, !prof !37

new_fragment.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i.i, align 8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %9, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %ofs3.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %ofs3.i, align 4
  %size4.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %size4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %size4.i, align 4
  %node.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fn, ptr %node.i, align 4
  %frags = getelementptr inbounds %struct.jffs2_full_dnode, ptr %fn, i32 0, i32 3
  %13 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %frags, align 4
  %fragtree = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  %14 = load ptr, ptr %node.i, align 4
  %ofs.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ofs.i, align 4
  %17 = ptrtoint ptr %fragtree to i32
  call void @__asan_load4_noabort(i32 %17)
  %next.034.i.i = load ptr, ptr %fragtree, align 4
  %tobool.not35.i.i = icmp eq ptr %next.034.i.i, null
  br i1 %tobool.not35.i.i, label %if.end29.thread.i, label %if.end15.while.body.i.i_crit_edge

if.end15.while.body.i.i_crit_edge:                ; preds = %if.end15
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end13.i.i.while.body.i.i_crit_edge, %if.end15.while.body.i.i_crit_edge
  %next.037.i.i = phi ptr [ %next.0.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ %next.034.i.i, %if.end15.while.body.i.i_crit_edge ]
  %prev.036.i.i = phi ptr [ %prev.2.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ null, %if.end15.while.body.i.i_crit_edge ]
  %ofs.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %next.037.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ofs.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %next.037.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %16)
  %cmp.not.i.i = icmp ugt i32 %add.i.i, %16
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %tobool2.not.i.i = icmp eq ptr %prev.036.i.i, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.then6.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.if.then6.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %ofs4.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %prev.036.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %ofs4.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ofs4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp5.i.i = icmp ugt i32 %19, %23
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then6.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

lor.lhs.false.i.i.if.then6.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then6.i.i_crit_edge, %if.then.i.i.if.then6.i.i_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %prev.1.i.i = phi ptr [ %next.037.i.i, %if.then6.i.i ], [ %prev.036.i.i, %lor.lhs.false.i.i.if.end.i.i_crit_edge ]
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %next.037.i.i, i32 0, i32 1
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %16)
  %cmp8.i.i = icmp ugt i32 %19, %16
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else.i.i.if.end.i_crit_edge

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %next.037.i.i, i32 0, i32 2
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i
  %prev.2.i.i = phi ptr [ %prev.1.i.i, %if.end.i.i ], [ %prev.036.i.i, %if.then9.i.i ]
  %next.1.in.i.i = phi ptr [ %rb_right.i.i, %if.end.i.i ], [ %rb_left.i.i, %if.then9.i.i ]
  %24 = ptrtoint ptr %next.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %next.0.i.i = load ptr, ptr %next.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %next.0.i.i, null
  br i1 %tobool.not.i.i, label %jffs2_lookup_node_frag.exit.i, label %if.end13.i.i.while.body.i.i_crit_edge

if.end13.i.i.while.body.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

jffs2_lookup_node_frag.exit.i:                    ; preds = %if.end13.i.i
  %tobool.not.i111 = icmp eq ptr %prev.2.i.i, null
  br i1 %tobool.not.i111, label %if.end29.thread486.i, label %jffs2_lookup_node_frag.exit.i.if.end.i_crit_edge

jffs2_lookup_node_frag.exit.i.if.end.i_crit_edge: ; preds = %jffs2_lookup_node_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %jffs2_lookup_node_frag.exit.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge
  %retval.0.i430.i = phi ptr [ %prev.2.i.i, %jffs2_lookup_node_frag.exit.i.if.end.i_crit_edge ], [ %next.037.i.i, %if.else.i.i.if.end.i_crit_edge ]
  %ofs1.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %retval.0.i430.i, i32 0, i32 3
  %25 = ptrtoint ptr %ofs1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ofs1.i, align 4
  %size.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %retval.0.i430.i, i32 0, i32 2
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %add.i = add i32 %28, %26
  %29 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ofs3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %30)
  %cmp.not.i = icmp ugt i32 %add.i, %30
  br i1 %cmp.not.i, label %if.end31.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool5.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool5.not.i, label %if.then4.i.if.end29.i_crit_edge, label %land.lhs.true.i

if.then4.i.if.end29.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.then4.i
  %sub.i = add i32 %add.i, -1
  %cmp8.unshifted.i = xor i32 %sub.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cmp8.unshifted.i)
  %cmp8.i = icmp ult i32 %cmp8.unshifted.i, 4096
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true.i.if.end29.i_crit_edge

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %node10.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %retval.0.i430.i, i32 0, i32 1
  %31 = ptrtoint ptr %node10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %node10.i, align 4
  %tobool11.not.i = icmp eq ptr %32, null
  br i1 %tobool11.not.i, label %if.then9.i.do.body18.i_crit_edge, label %do.body.i

if.then9.i.do.body18.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18.i

do.body.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flash_offset.i, align 4
  %or.i = or i32 %36, 3
  store i32 %or.i, ptr %flash_offset.i, align 4
  br label %do.body18.i

do.body18.i:                                      ; preds = %do.body.i, %if.then9.i.do.body18.i_crit_edge
  %37 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %node.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %flash_offset21.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %flash_offset21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flash_offset21.i, align 4
  %or23.i = or i32 %42, 3
  store i32 %or23.i, ptr %flash_offset21.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body18.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.then4.i.if.end29.i_crit_edge
  %43 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %node.i, align 4
  %ofs.i305.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ofs.i305.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ofs.i305.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %46, %add.i
  br i1 %cmp.i.i, label %if.end29.i.if.then.i306.i_crit_edge, label %if.end29.i.if.then17.i.i_crit_edge

if.end29.i.if.then17.i.i_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i.i

if.end29.i.if.then.i306.i_crit_edge:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i306.i

if.end29.thread486.i:                             ; preds = %jffs2_lookup_node_frag.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i491.not.i = icmp eq i32 %16, 0
  br i1 %cmp.i491.not.i, label %if.end29.thread486.i.if.end27.i.i_crit_edge, label %if.end29.thread486.i.if.then.i306.i_crit_edge

if.end29.thread486.i.if.then.i306.i_crit_edge:    ; preds = %if.end29.thread486.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i306.i

if.end29.thread486.i.if.end27.i.i_crit_edge:      ; preds = %if.end29.thread486.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.end29.thread.i:                                ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i451.not.i = icmp eq i32 %16, 0
  br i1 %cmp.i451.not.i, label %if.end29.thread.i.if.end27.i.i_crit_edge, label %if.end29.thread.i.if.then.i306.i_crit_edge

if.end29.thread.i.if.then.i306.i_crit_edge:       ; preds = %if.end29.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i306.i

if.end29.thread.i.if.end27.i.i_crit_edge:         ; preds = %if.end29.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.then.i306.i:                                   ; preds = %if.end29.thread.i.if.then.i306.i_crit_edge, %if.end29.thread486.i.if.then.i306.i_crit_edge, %if.end29.i.if.then.i306.i_crit_edge
  %47 = phi i32 [ %16, %if.end29.thread.i.if.then.i306.i_crit_edge ], [ %46, %if.end29.i.if.then.i306.i_crit_edge ], [ %16, %if.end29.thread486.i.if.then.i306.i_crit_edge ]
  %retval.0.i425455.i = phi ptr [ null, %if.end29.thread.i.if.then.i306.i_crit_edge ], [ %retval.0.i430.i, %if.end29.i.if.then.i306.i_crit_edge ], [ null, %if.end29.thread486.i.if.then.i306.i_crit_edge ]
  %lastend.0440454.i = phi i32 [ 0, %if.end29.thread.i.if.then.i306.i_crit_edge ], [ %add.i, %if.end29.i.if.then.i306.i_crit_edge ], [ 0, %if.end29.thread486.i.if.then.i306.i_crit_edge ]
  %tobool.not426437446452.i = phi i1 [ true, %if.end29.thread.i.if.then.i306.i_crit_edge ], [ false, %if.end29.i.if.then.i306.i_crit_edge ], [ true, %if.end29.thread486.i.if.then.i306.i_crit_edge ]
  %call.i.i.i = tail call ptr @jffs2_alloc_node_frag() #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i, label %if.end.i308.i, !prof !37

if.end.i308.i:                                    ; preds = %if.then.i306.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %47, %lastend.0440454.i
  %ofs3.i.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %ofs3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %lastend.0440454.i, ptr %ofs3.i.i.i, align 4
  %size4.i.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %size4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i.i, ptr %size4.i.i.i, align 4
  %node.i.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %node.i.i.i, align 4
  %rb_right.i307.i = getelementptr inbounds %struct.rb_node, ptr %retval.0.i425455.i, i32 0, i32 1
  %51 = ptrtoint ptr %retval.0.i425455.i to i32
  %root.sink.i.i = select i1 %tobool.not426437446452.i, ptr %fragtree, ptr %rb_right.i307.i
  %52 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %call.i.i.i, align 4
  %rb_right.i1.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %rb_right.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rb_right.i1.i.i, align 4
  %rb_left.i2.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %rb_left.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_left.i2.i.i, align 4
  %55 = ptrtoint ptr %root.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i.i, ptr %root.sink.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call.i.i.i, ptr noundef %fragtree) #6
  br label %if.then17.i.i

cleanup.i.i:                                      ; preds = %if.then.i306.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i.i, align 8
  %pid.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid.i.i.i.i, align 8
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %61, ptr noundef nonnull @.str.6) #10
  tail call void @jffs2_free_node_frag(ptr noundef %call.i) #6
  br label %cleanup

if.then17.i.i:                                    ; preds = %if.end.i308.i, %if.end29.i.if.then17.i.i_crit_edge
  %this.addr.111.i.i = phi ptr [ %call.i.i.i, %if.end.i308.i ], [ %retval.0.i430.i, %if.end29.i.if.then17.i.i_crit_edge ]
  %rb_right22.i.i = getelementptr inbounds %struct.rb_node, ptr %this.addr.111.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %this.addr.111.i.i to i32
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then17.i.i, %if.end29.thread.i.if.end27.i.i_crit_edge, %if.end29.thread486.i.if.end27.i.i_crit_edge
  %.sink13.i.i = phi i32 [ %62, %if.then17.i.i ], [ 0, %if.end29.thread.i.if.end27.i.i_crit_edge ], [ 0, %if.end29.thread486.i.if.end27.i.i_crit_edge ]
  %root.sink12.i.i = phi ptr [ %rb_right22.i.i, %if.then17.i.i ], [ %fragtree, %if.end29.thread.i.if.end27.i.i_crit_edge ], [ %fragtree, %if.end29.thread486.i.if.end27.i.i_crit_edge ]
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink13.i.i, ptr %call.i, align 4
  %rb_right.i5.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 1
  %64 = ptrtoint ptr %rb_right.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %rb_right.i5.i.i, align 4
  %rb_left.i6.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 2
  %65 = ptrtoint ptr %rb_left.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rb_left.i6.i.i, align 4
  %66 = ptrtoint ptr %root.sink12.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %root.sink12.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %call.i, ptr noundef %fragtree) #6
  br label %if.end25

if.end31.i:                                       ; preds = %if.end.i
  %node32.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %retval.0.i430.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %26)
  %cmp41.i = icmp ugt i32 %30, %26
  br i1 %cmp41.i, label %do.body43.i, label %if.else118.i

do.body43.i:                                      ; preds = %if.end31.i
  %67 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %14, align 4
  %flash_offset46.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %flash_offset46.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flash_offset46.i, align 4
  %or48.i = or i32 %70, 3
  store i32 %or48.i, ptr %flash_offset46.i, align 4
  %71 = ptrtoint ptr %node32.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %node32.i, align 4
  %tobool55.not.i = icmp eq ptr %72, null
  br i1 %tobool55.not.i, label %do.body43.i.if.end68.i_crit_edge, label %do.body57.i

do.body43.i.if.end68.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

do.body57.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %flash_offset60.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %flash_offset60.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flash_offset60.i, align 4
  %or62.i = or i32 %76, 3
  store i32 %or62.i, ptr %flash_offset60.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.body57.i, %do.body43.i.if.end68.i_crit_edge
  %77 = ptrtoint ptr %ofs1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ofs1.i, align 4
  %79 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i, align 4
  %add71.i = add i32 %80, %78
  %81 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ofs3.i, align 4
  %83 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size4.i, align 4
  %add74.i = add i32 %84, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %add71.i, i32 %add74.i)
  %cmp75.i = icmp ugt i32 %add71.i, %add74.i
  br i1 %cmp75.i, label %if.end83.i, label %if.end112.i

if.end83.i:                                       ; preds = %if.end68.i
  %85 = ptrtoint ptr %node32.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %node32.i, align 4
  %call.i.i = tail call ptr @jffs2_alloc_node_frag() #6
  %tobool.not.i309.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i309.i, label %new_fragment.exit.thread.i, label %if.end101.i, !prof !37

new_fragment.exit.thread.i:                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i.i, align 8
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 68
  %91 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pid.i.i.i, align 8
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %92, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end101.i:                                      ; preds = %if.end83.i
  %sub94.i = sub i32 %add71.i, %add74.i
  %ofs3.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i, i32 0, i32 3
  %93 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add74.i, ptr %ofs3.i.i, align 4
  %size4.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub94.i, ptr %size4.i.i, align 4
  %node.i310.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %node.i310.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %86, ptr %node.i310.i, align 4
  %96 = ptrtoint ptr %node32.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %node32.i, align 4
  %tobool103.not.i = icmp eq ptr %97, null
  br i1 %tobool103.not.i, label %if.end101.i.if.end106.i_crit_edge, label %if.then104.i

if.end101.i.if.end106.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.i

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  %frags.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %frags.i, align 4
  %inc.i = add i32 %99, 1
  store i32 %inc.i, ptr %frags.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i, %if.end101.i.if.end106.i_crit_edge
  %100 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ofs3.i, align 4
  %102 = ptrtoint ptr %ofs1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ofs1.i, align 4
  %sub109.i = sub i32 %101, %103
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub109.i, ptr %size.i, align 4
  %105 = load i32, ptr %ofs3.i, align 4
  br label %while.body.i315.i

while.body.i315.i:                                ; preds = %if.end20.i.i.while.body.i315.i_crit_edge, %if.end106.i
  %106 = phi ptr [ %retval.0.i430.i, %if.end106.i ], [ %.pr.i.i, %if.end20.i.i.while.body.i315.i_crit_edge ]
  %ofs2.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %ofs2.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ofs2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %108)
  %cmp.i314.i = icmp ugt i32 %105, %108
  br i1 %cmp.i314.i, label %if.then.i317.i, label %if.else.i318.i

if.then.i317.i:                                   ; preds = %while.body.i315.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i316.i = getelementptr inbounds %struct.rb_node, ptr %106, i32 0, i32 1
  br label %if.end20.i.i

if.else.i318.i:                                   ; preds = %while.body.i315.i
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %108)
  %cmp6.i.i = icmp ult i32 %105, %108
  br i1 %cmp6.i.i, label %if.then7.i.i, label %do.end.i323.i

if.then7.i.i:                                     ; preds = %if.else.i318.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i319.i = getelementptr inbounds %struct.rb_node, ptr %106, i32 0, i32 2
  br label %if.end20.i.i

do.end.i323.i:                                    ; preds = %if.else.i318.i
  call void @__sanitizer_cov_trace_pc() #8
  %109 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i320.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i320.i to ptr
  %task.i321.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task.i321.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task.i321.i, align 8
  %pid.i.i322.i = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 68
  %113 = ptrtoint ptr %pid.i.i322.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pid.i.i322.i, align 8
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %114, ptr noundef nonnull @.str.8, i32 noundef %105, ptr noundef %call.i, ptr noundef nonnull %106) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

if.end20.i.i:                                     ; preds = %if.then7.i.i, %if.then.i317.i
  %link.1.i.i = phi ptr [ %rb_right.i316.i, %if.then.i317.i ], [ %rb_left.i319.i, %if.then7.i.i ]
  %115 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr.i.i = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i324.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not.i324.i, label %while.body.lr.ph.i328.i, label %if.end20.i.i.while.body.i315.i_crit_edge

if.end20.i.i.while.body.i315.i_crit_edge:         ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i315.i

while.body.lr.ph.i328.i:                          ; preds = %if.end20.i.i
  %116 = ptrtoint ptr %106 to i32
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %call.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 1
  %118 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 2
  %119 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %120 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i, ptr %link.1.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %call.i, ptr noundef %fragtree) #6
  %121 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ofs3.i.i, align 4
  br label %while.body.i331.i

while.body.i331.i:                                ; preds = %if.end20.i346.i.while.body.i331.i_crit_edge, %while.body.lr.ph.i328.i
  %123 = phi ptr [ %call.i, %while.body.lr.ph.i328.i ], [ %.pr.i344.i, %if.end20.i346.i.while.body.i331.i_crit_edge ]
  %ofs2.i329.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %ofs2.i329.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ofs2.i329.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %125)
  %cmp.i330.i = icmp ugt i32 %122, %125
  br i1 %cmp.i330.i, label %if.then.i333.i, label %if.else.i335.i

if.then.i333.i:                                   ; preds = %while.body.i331.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i332.i = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 1
  br label %if.end20.i346.i

if.else.i335.i:                                   ; preds = %while.body.i331.i
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %125)
  %cmp6.i334.i = icmp ult i32 %122, %125
  br i1 %cmp6.i334.i, label %if.then7.i337.i, label %do.end.i342.i

if.then7.i337.i:                                  ; preds = %if.else.i335.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i336.i = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 2
  br label %if.end20.i346.i

do.end.i342.i:                                    ; preds = %if.else.i335.i
  call void @__sanitizer_cov_trace_pc() #8
  %126 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i338.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i338.i to ptr
  %task.i339.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task.i339.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task.i339.i, align 8
  %pid.i.i340.i = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 68
  %130 = ptrtoint ptr %pid.i.i340.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pid.i.i340.i, align 8
  %call13.i341.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %131, ptr noundef nonnull @.str.8, i32 noundef %122, ptr noundef nonnull %call.i.i, ptr noundef nonnull %123) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

if.end20.i346.i:                                  ; preds = %if.then7.i337.i, %if.then.i333.i
  %link.1.i343.i = phi ptr [ %rb_right.i332.i, %if.then.i333.i ], [ %rb_left.i336.i, %if.then7.i337.i ]
  %132 = ptrtoint ptr %link.1.i343.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pr.i344.i = load ptr, ptr %link.1.i343.i, align 4
  %tobool.not.i345.i = icmp eq ptr %.pr.i344.i, null
  br i1 %tobool.not.i345.i, label %jffs2_fragtree_insert.exit351.i, label %if.end20.i346.i.while.body.i331.i_crit_edge

if.end20.i346.i.while.body.i331.i_crit_edge:      ; preds = %if.end20.i346.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i331.i

jffs2_fragtree_insert.exit351.i:                  ; preds = %if.end20.i346.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %123 to i32
  %134 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %call.i.i, align 4
  %rb_right.i.i349.i = getelementptr inbounds %struct.rb_node, ptr %call.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %rb_right.i.i349.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %rb_right.i.i349.i, align 4
  %rb_left.i.i350.i = getelementptr inbounds %struct.rb_node, ptr %call.i.i, i32 0, i32 2
  %136 = ptrtoint ptr %rb_left.i.i350.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %rb_left.i.i350.i, align 4
  %137 = ptrtoint ptr %link.1.i343.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i.i, ptr %link.1.i343.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call.i.i, ptr noundef %fragtree) #6
  br label %if.end25

if.end112.i:                                      ; preds = %if.end68.i
  %sub115.i = sub i32 %82, %78
  %138 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub115.i, ptr %size.i, align 4
  %139 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ofs3.i, align 4
  br label %while.body.i358.i

while.body.i358.i:                                ; preds = %if.end20.i373.i.while.body.i358.i_crit_edge, %if.end112.i
  %141 = phi ptr [ %retval.0.i430.i, %if.end112.i ], [ %.pr.i371.i, %if.end20.i373.i.while.body.i358.i_crit_edge ]
  %ofs2.i356.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %ofs2.i356.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ofs2.i356.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %143)
  %cmp.i357.i = icmp ugt i32 %140, %143
  br i1 %cmp.i357.i, label %if.then.i360.i, label %if.else.i362.i

if.then.i360.i:                                   ; preds = %while.body.i358.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i359.i = getelementptr inbounds %struct.rb_node, ptr %141, i32 0, i32 1
  br label %if.end20.i373.i

if.else.i362.i:                                   ; preds = %while.body.i358.i
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %143)
  %cmp6.i361.i = icmp ult i32 %140, %143
  br i1 %cmp6.i361.i, label %if.then7.i364.i, label %do.end.i369.i

if.then7.i364.i:                                  ; preds = %if.else.i362.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i363.i = getelementptr inbounds %struct.rb_node, ptr %141, i32 0, i32 2
  br label %if.end20.i373.i

do.end.i369.i:                                    ; preds = %if.else.i362.i
  call void @__sanitizer_cov_trace_pc() #8
  %144 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i365.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i365.i to ptr
  %task.i366.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task.i366.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task.i366.i, align 8
  %pid.i.i367.i = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 68
  %148 = ptrtoint ptr %pid.i.i367.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pid.i.i367.i, align 8
  %call13.i368.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %149, ptr noundef nonnull @.str.8, i32 noundef %140, ptr noundef %call.i, ptr noundef nonnull %141) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

if.end20.i373.i:                                  ; preds = %if.then7.i364.i, %if.then.i360.i
  %link.1.i370.i = phi ptr [ %rb_right.i359.i, %if.then.i360.i ], [ %rb_left.i363.i, %if.then7.i364.i ]
  %150 = ptrtoint ptr %link.1.i370.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pr.i371.i = load ptr, ptr %link.1.i370.i, align 4
  %tobool.not.i372.i = icmp eq ptr %.pr.i371.i, null
  br i1 %tobool.not.i372.i, label %jffs2_fragtree_insert.exit378.i, label %if.end20.i373.i.while.body.i358.i_crit_edge

if.end20.i373.i.while.body.i358.i_crit_edge:      ; preds = %if.end20.i373.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i358.i

jffs2_fragtree_insert.exit378.i:                  ; preds = %if.end20.i373.i
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %141 to i32
  %152 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %call.i, align 4
  %rb_right.i.i376.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 1
  %153 = ptrtoint ptr %rb_right.i.i376.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %rb_right.i.i376.i, align 4
  %rb_left.i.i377.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 2
  %154 = ptrtoint ptr %rb_left.i.i377.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %rb_left.i.i377.i, align 4
  %155 = ptrtoint ptr %link.1.i370.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i, ptr %link.1.i370.i, align 4
  tail call void @rb_insert_color(ptr noundef %call.i, ptr noundef %fragtree) #6
  br label %if.end140.i

if.else118.i:                                     ; preds = %if.end31.i
  tail call void @rb_replace_node(ptr noundef nonnull %retval.0.i430.i, ptr noundef %call.i, ptr noundef %fragtree) #6
  %156 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ofs3.i, align 4
  %158 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %size4.i, align 4
  %add124.i = add i32 %159, %157
  %160 = ptrtoint ptr %ofs1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ofs1.i, align 4
  %162 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %size.i, align 4
  %add127.i = add i32 %163, %161
  call void @__sanitizer_cov_trace_cmp4(i32 %add124.i, i32 %add127.i)
  %cmp128.not.i = icmp ult i32 %add124.i, %add127.i
  br i1 %cmp128.not.i, label %if.else131.i, label %if.then129.i

if.then129.i:                                     ; preds = %if.else118.i
  %164 = ptrtoint ptr %node32.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %node32.i, align 4
  %tobool.not.i380.i = icmp eq ptr %165, null
  br i1 %tobool.not.i380.i, label %if.then129.i.jffs2_obsolete_node_frag.exit.i_crit_edge, label %if.then.i381.i

if.then129.i.jffs2_obsolete_node_frag.exit.i_crit_edge: ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_obsolete_node_frag.exit.i

if.then.i381.i:                                   ; preds = %if.then129.i
  %frags.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %frags.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %frags.i.i, align 4
  %dec.i.i = add i32 %167, -1
  store i32 %dec.i.i, ptr %frags.i.i, align 4
  %168 = ptrtoint ptr %node32.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %node32.i, align 4
  %frags3.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %frags3.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %frags3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool4.not.i.i = icmp eq i32 %171, 0
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %169, align 4
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.else.i382.i

if.then5.i.i:                                     ; preds = %if.then.i381.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %173) #6
  %174 = ptrtoint ptr %node32.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %node32.i, align 4
  tail call void @jffs2_free_full_dnode(ptr noundef %175) #6
  br label %jffs2_obsolete_node_frag.exit.i

if.else.i382.i:                                   ; preds = %if.then.i381.i
  call void @__sanitizer_cov_trace_pc() #8
  %flash_offset.i.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %173, i32 0, i32 1
  %176 = ptrtoint ptr %flash_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %flash_offset.i.i, align 4
  %or.i.i = or i32 %177, 3
  store i32 %or.i.i, ptr %flash_offset.i.i, align 4
  br label %jffs2_obsolete_node_frag.exit.i

jffs2_obsolete_node_frag.exit.i:                  ; preds = %if.else.i382.i, %if.then5.i.i, %if.then129.i.jffs2_obsolete_node_frag.exit.i_crit_edge
  tail call void @jffs2_free_node_frag(ptr noundef nonnull %retval.0.i430.i) #6
  br label %if.end140.i

if.else131.i:                                     ; preds = %if.else118.i
  %add134.i = add i32 %161, %159
  %178 = ptrtoint ptr %ofs1.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add134.i, ptr %ofs1.i, align 4
  %179 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %size4.i, align 4
  %sub137.i = sub i32 %163, %180
  %181 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %sub137.i, ptr %size.i, align 4
  br label %while.body.i389.i

while.body.i389.i:                                ; preds = %if.end20.i404.i.while.body.i389.i_crit_edge, %if.else131.i
  %182 = phi ptr [ %.pr.i402.i, %if.end20.i404.i.while.body.i389.i_crit_edge ], [ %call.i, %if.else131.i ]
  %ofs2.i387.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %ofs2.i387.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ofs2.i387.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add134.i, i32 %184)
  %cmp.i388.i = icmp ugt i32 %add134.i, %184
  br i1 %cmp.i388.i, label %if.then.i391.i, label %if.else.i393.i

if.then.i391.i:                                   ; preds = %while.body.i389.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i390.i = getelementptr inbounds %struct.rb_node, ptr %182, i32 0, i32 1
  br label %if.end20.i404.i

if.else.i393.i:                                   ; preds = %while.body.i389.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add134.i, i32 %184)
  %cmp6.i392.i = icmp ult i32 %add134.i, %184
  br i1 %cmp6.i392.i, label %if.then7.i395.i, label %do.end.i400.i

if.then7.i395.i:                                  ; preds = %if.else.i393.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i394.i = getelementptr inbounds %struct.rb_node, ptr %182, i32 0, i32 2
  br label %if.end20.i404.i

do.end.i400.i:                                    ; preds = %if.else.i393.i
  call void @__sanitizer_cov_trace_pc() #8
  %185 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i396.i = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i396.i to ptr
  %task.i397.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %task.i397.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %task.i397.i, align 8
  %pid.i.i398.i = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 68
  %189 = ptrtoint ptr %pid.i.i398.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pid.i.i398.i, align 8
  %call13.i399.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %190, ptr noundef nonnull @.str.8, i32 noundef %add134.i, ptr noundef %retval.0.i430.i, ptr noundef nonnull %182) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

if.end20.i404.i:                                  ; preds = %if.then7.i395.i, %if.then.i391.i
  %link.1.i401.i = phi ptr [ %rb_right.i390.i, %if.then.i391.i ], [ %rb_left.i394.i, %if.then7.i395.i ]
  %191 = ptrtoint ptr %link.1.i401.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr.i402.i = load ptr, ptr %link.1.i401.i, align 4
  %tobool.not.i403.i = icmp eq ptr %.pr.i402.i, null
  br i1 %tobool.not.i403.i, label %jffs2_fragtree_insert.exit409.i, label %if.end20.i404.i.while.body.i389.i_crit_edge

if.end20.i404.i.while.body.i389.i_crit_edge:      ; preds = %if.end20.i404.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i389.i

jffs2_fragtree_insert.exit409.i:                  ; preds = %if.end20.i404.i
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %182 to i32
  %193 = ptrtoint ptr %retval.0.i430.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %retval.0.i430.i, align 4
  %rb_right.i.i407.i = getelementptr inbounds %struct.rb_node, ptr %retval.0.i430.i, i32 0, i32 1
  %194 = ptrtoint ptr %rb_right.i.i407.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %rb_right.i.i407.i, align 4
  %rb_left.i.i408.i = getelementptr inbounds %struct.rb_node, ptr %retval.0.i430.i, i32 0, i32 2
  %195 = ptrtoint ptr %rb_left.i.i408.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %rb_left.i.i408.i, align 4
  %196 = ptrtoint ptr %link.1.i401.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %retval.0.i430.i, ptr %link.1.i401.i, align 4
  tail call void @rb_insert_color(ptr noundef %retval.0.i430.i, ptr noundef %fragtree) #6
  br label %if.end25

if.end140.i:                                      ; preds = %jffs2_obsolete_node_frag.exit.i, %jffs2_fragtree_insert.exit378.i
  %call142470.i = tail call ptr @rb_next(ptr noundef %call.i) #6
  %tobool144.not471.i = icmp eq ptr %call142470.i, null
  br i1 %tobool144.not471.i, label %if.end140.i.if.end25_crit_edge, label %if.end140.i.land.rhs.i_crit_edge

if.end140.i.land.rhs.i_crit_edge:                 ; preds = %if.end140.i
  br label %land.rhs.i

if.end140.i.if.end25_crit_edge:                   ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.rhs.i:                                       ; preds = %jffs2_obsolete_node_frag.exit421.i.land.rhs.i_crit_edge, %if.end140.i.land.rhs.i_crit_edge
  %call142472.i = phi ptr [ %call142.i, %jffs2_obsolete_node_frag.exit421.i.land.rhs.i_crit_edge ], [ %call142470.i, %if.end140.i.land.rhs.i_crit_edge ]
  %197 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ofs3.i, align 4
  %199 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %size4.i, align 4
  %add147.i = add i32 %200, %198
  %ofs148.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call142472.i, i32 0, i32 3
  %201 = ptrtoint ptr %ofs148.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %ofs148.i, align 4
  %size149.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call142472.i, i32 0, i32 2
  %203 = ptrtoint ptr %size149.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %size149.i, align 4
  %add150.i = add i32 %204, %202
  call void @__sanitizer_cov_trace_cmp4(i32 %add150.i, i32 %add147.i)
  %cmp151.not.i = icmp ugt i32 %add150.i, %add147.i
  br i1 %cmp151.not.i, label %lor.lhs.false.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @rb_erase(ptr noundef nonnull %call142472.i, ptr noundef %fragtree) #6
  %node.i410.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call142472.i, i32 0, i32 1
  %205 = ptrtoint ptr %node.i410.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %node.i410.i, align 4
  %tobool.not.i411.i = icmp eq ptr %206, null
  br i1 %tobool.not.i411.i, label %while.body.i.jffs2_obsolete_node_frag.exit421.i_crit_edge, label %if.then.i416.i

while.body.i.jffs2_obsolete_node_frag.exit421.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_obsolete_node_frag.exit421.i

if.then.i416.i:                                   ; preds = %while.body.i
  %frags.i412.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %frags.i412.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %frags.i412.i, align 4
  %dec.i413.i = add i32 %208, -1
  store i32 %dec.i413.i, ptr %frags.i412.i, align 4
  %209 = ptrtoint ptr %node.i410.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %node.i410.i, align 4
  %frags3.i414.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %frags3.i414.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %frags3.i414.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool4.not.i415.i = icmp eq i32 %212, 0
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %210, align 4
  br i1 %tobool4.not.i415.i, label %if.then5.i417.i, label %if.else.i420.i

if.then5.i417.i:                                  ; preds = %if.then.i416.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %214) #6
  %215 = ptrtoint ptr %node.i410.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %node.i410.i, align 4
  tail call void @jffs2_free_full_dnode(ptr noundef %216) #6
  br label %jffs2_obsolete_node_frag.exit421.i

if.else.i420.i:                                   ; preds = %if.then.i416.i
  call void @__sanitizer_cov_trace_pc() #8
  %flash_offset.i418.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %214, i32 0, i32 1
  %217 = ptrtoint ptr %flash_offset.i418.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flash_offset.i418.i, align 4
  %or.i419.i = or i32 %218, 3
  store i32 %or.i419.i, ptr %flash_offset.i418.i, align 4
  br label %jffs2_obsolete_node_frag.exit421.i

jffs2_obsolete_node_frag.exit421.i:               ; preds = %if.else.i420.i, %if.then5.i417.i, %while.body.i.jffs2_obsolete_node_frag.exit421.i_crit_edge
  tail call void @jffs2_free_node_frag(ptr noundef nonnull %call142472.i) #6
  %call142.i = tail call ptr @rb_next(ptr noundef %call.i) #6
  %tobool144.not.i = icmp eq ptr %call142.i, null
  br i1 %tobool144.not.i, label %jffs2_obsolete_node_frag.exit421.i.if.end25_crit_edge, label %jffs2_obsolete_node_frag.exit421.i.land.rhs.i_crit_edge

jffs2_obsolete_node_frag.exit421.i.land.rhs.i_crit_edge: ; preds = %jffs2_obsolete_node_frag.exit421.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

jffs2_obsolete_node_frag.exit421.i.if.end25_crit_edge: ; preds = %jffs2_obsolete_node_frag.exit421.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

lor.lhs.false.critedge.i:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add147.i, i32 %202)
  %cmp159.i = icmp eq i32 %add147.i, %202
  br i1 %cmp159.i, label %lor.lhs.false.critedge.i.if.end25_crit_edge, label %if.end161.i

lor.lhs.false.critedge.i.if.end25_crit_edge:      ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end161.i:                                      ; preds = %lor.lhs.false.critedge.i
  %size149.i.le = getelementptr inbounds %struct.jffs2_node_frag, ptr %call142472.i, i32 0, i32 2
  %ofs148.i.le = getelementptr inbounds %struct.jffs2_node_frag, ptr %call142472.i, i32 0, i32 3
  %sub168.i = sub i32 %add150.i, %add147.i
  %219 = ptrtoint ptr %size149.i.le to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %sub168.i, ptr %size149.i.le, align 4
  %220 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ofs3.i, align 4
  %222 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %size4.i, align 4
  %add172.i = add i32 %223, %221
  %224 = ptrtoint ptr %ofs148.i.le to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %add172.i, ptr %ofs148.i.le, align 4
  %node174.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call142472.i, i32 0, i32 1
  %225 = ptrtoint ptr %node174.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %node174.i, align 4
  %tobool175.not.i = icmp eq ptr %226, null
  br i1 %tobool175.not.i, label %if.end161.i.do.body189.i_crit_edge, label %do.body177.i

if.end161.i.do.body189.i_crit_edge:               ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body189.i

do.body177.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %flash_offset180.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %flash_offset180.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %flash_offset180.i, align 4
  %or182.i = or i32 %230, 3
  store i32 %or182.i, ptr %flash_offset180.i, align 4
  br label %do.body189.i

do.body189.i:                                     ; preds = %do.body177.i, %if.end161.i.do.body189.i_crit_edge
  %231 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %node.i, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 4
  %flash_offset192.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %flash_offset192.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flash_offset192.i, align 4
  %or194.i = or i32 %236, 3
  store i32 %or194.i, ptr %flash_offset192.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.body189.i, %lor.lhs.false.critedge.i.if.end25_crit_edge, %jffs2_obsolete_node_frag.exit421.i.if.end25_crit_edge, %if.end140.i.if.end25_crit_edge, %jffs2_fragtree_insert.exit409.i, %jffs2_fragtree_insert.exit351.i, %if.end27.i.i
  %237 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ofs3.i, align 4
  %and = and i32 %238, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end25.if.end49_crit_edge, label %if.then28

if.end25.if.end49_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then28:                                        ; preds = %if.end25
  %call29 = tail call ptr @rb_prev(ptr noundef nonnull %call.i) #6
  %239 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %fn, align 4
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %flash_offset, align 4
  %or = or i32 %242, 3
  store i32 %or, ptr %flash_offset, align 4
  %node34 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call29, i32 0, i32 1
  %243 = ptrtoint ptr %node34 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %node34, align 4
  %tobool35.not = icmp eq ptr %244, null
  br i1 %tobool35.not, label %if.then28.if.end49_crit_edge, label %do.body37

if.then28.if.end49_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.body37:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  %flash_offset40 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %flash_offset40 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %flash_offset40, align 4
  %or42 = or i32 %248, 3
  store i32 %or42, ptr %flash_offset40, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.body37, %if.then28.if.end49_crit_edge, %if.end25.if.end49_crit_edge
  %249 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %ofs3.i, align 4
  %251 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %size4.i, align 4
  %add = add i32 %252, %250
  %and52 = and i32 %add, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.cleanup_crit_edge, label %if.then54

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %if.end49
  %call57 = tail call ptr @rb_next(ptr noundef nonnull %call.i) #6
  %tobool60.not = icmp eq ptr %call57, null
  br i1 %tobool60.not, label %if.then54.cleanup_crit_edge, label %do.body62

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body62:                                        ; preds = %if.then54
  %253 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %fn, align 4
  %flash_offset64 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %flash_offset64 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %flash_offset64, align 4
  %or66 = or i32 %256, 3
  store i32 %or66, ptr %flash_offset64, align 4
  %node71 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call57, i32 0, i32 1
  %257 = ptrtoint ptr %node71 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %node71, align 4
  %tobool72.not = icmp eq ptr %258, null
  br i1 %tobool72.not, label %do.body62.cleanup_crit_edge, label %do.body74

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  %flash_offset77 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %flash_offset77 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flash_offset77, align 4
  %or79 = or i32 %262, 3
  store i32 %or79, ptr %flash_offset77, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body74, %do.body62.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %new_fragment.exit.thread.i, %cleanup.i.i, %new_fragment.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then54.cleanup_crit_edge ], [ 0, %do.body74 ], [ 0, %do.body62.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ -12, %new_fragment.exit.thread ], [ -12, %cleanup.i.i ], [ -12, %new_fragment.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_set_inocache_state(ptr noundef %c, ptr nocapture noundef writeonly %ic, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inocache_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %inocache_lock) #6
  %conv = trunc i32 %state to i16
  %state1 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 4
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %state1, align 2
  %inocache_wq = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 45
  tail call void @__wake_up(ptr noundef %inocache_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_get_ino_cache(ptr nocapture noundef readonly %c, i32 noundef %ino) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inocache_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 47
  %0 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inocache_list, align 4
  %inocache_hashsize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 46
  %2 = ptrtoint ptr %inocache_hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inocache_hashsize, align 4
  %rem = urem i32 %ino, %3
  %arrayidx = getelementptr ptr, ptr %1, i32 %rem
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %ret.014 = load ptr, ptr %arrayidx, align 4
  %tobool.not15 = icmp eq ptr %ret.014, null
  br i1 %tobool.not15, label %entry.if.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %ret.016 = phi ptr [ %ret.0, %while.body.land.rhs_crit_edge ], [ %ret.014, %entry.land.rhs_crit_edge ]
  %ino1 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ret.016, i32 0, i32 5
  %5 = ptrtoint ptr %ino1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ino1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ino)
  %cmp = icmp ult i32 %6, %ino
  br i1 %cmp, label %while.body, label %land.lhs.true.critedge

while.body:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ret.016, i32 0, i32 6
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %ret.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %ret.0, null
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.critedge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ino)
  %cmp4.not = icmp eq i32 %6, %ino
  %spec.store.select = select i1 %cmp4.not, ptr %ret.016, ptr null
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.critedge, %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.1 = phi ptr [ %spec.store.select, %land.lhs.true.critedge ], [ null, %entry.if.end_crit_edge ], [ null, %while.body.if.end_crit_edge ]
  ret ptr %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_add_ino_cache(ptr noundef %c, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inocache_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %inocache_lock) #6
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %new, i32 0, i32 5
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %highest_ino = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %highest_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %highest_ino, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %highest_ino, align 4
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %ino, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inocache_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 47
  %5 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inocache_list, align 4
  %7 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ino, align 4
  %inocache_hashsize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 46
  %9 = ptrtoint ptr %inocache_hashsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inocache_hashsize, align 4
  %rem = urem i32 %8, %10
  %arrayidx = getelementptr ptr, ptr %6, i32 %rem
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool3.not21 = icmp eq ptr %12, null
  br i1 %tobool3.not21, label %if.end.while.end_crit_edge, label %land.rhs.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.preheader:                               ; preds = %if.end
  %ino426 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %ino426 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ino426, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp27 = icmp ult i32 %14, %8
  br i1 %cmp27, label %land.rhs.preheader.while.body_crit_edge, label %land.rhs.preheader.while.end_crit_edge

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs:                                         ; preds = %while.body
  %ino4 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %19, i32 0, i32 5
  %15 = ptrtoint ptr %ino4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ino4, align 4
  %cmp = icmp ult i32 %16, %8
  br i1 %cmp, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end.loopexit_crit_edge

land.rhs.while.end.loopexit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %17 = phi ptr [ %19, %land.rhs.while.body_crit_edge ], [ %12, %land.rhs.preheader.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_inode_cache, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %19, null
  br i1 %tobool3.not, label %while.body.while.end.loopexit_crit_edge, label %land.rhs

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.while.end.loopexit_crit_edge, %land.rhs.while.end.loopexit_crit_edge
  %.lcssa.ph = phi ptr [ %19, %land.rhs.while.end.loopexit_crit_edge ], [ null, %while.body.while.end.loopexit_crit_edge ]
  %next.le = getelementptr inbounds %struct.jffs2_inode_cache, ptr %17, i32 0, i32 6
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.rhs.preheader.while.end_crit_edge, %if.end.while.end_crit_edge
  %prev.0.lcssa = phi ptr [ %arrayidx, %if.end.while.end_crit_edge ], [ %arrayidx, %land.rhs.preheader.while.end_crit_edge ], [ %next.le, %while.end.loopexit ]
  %.lcssa = phi ptr [ null, %if.end.while.end_crit_edge ], [ %12, %land.rhs.preheader.while.end_crit_edge ], [ %.lcssa.ph, %while.end.loopexit ]
  %next6 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %new, i32 0, i32 6
  %20 = ptrtoint ptr %next6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.lcssa, ptr %next6, align 4
  %21 = ptrtoint ptr %prev.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %new, ptr %prev.0.lcssa, align 4
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_del_ino_cache(ptr noundef %c, ptr noundef %old) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %old, i32 0, i32 7
  %0 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xref, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !39

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

do.end8:                                          ; preds = %entry
  %inocache_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %inocache_lock) #6
  %inocache_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 47
  %2 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inocache_list, align 4
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %old, i32 0, i32 5
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %inocache_hashsize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 46
  %6 = ptrtoint ptr %inocache_hashsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inocache_hashsize, align 4
  %rem = urem i32 %5, %7
  %arrayidx = getelementptr ptr, ptr %3, i32 %rem
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool9.not39 = icmp eq ptr %9, null
  br i1 %tobool9.not39, label %do.end8.while.end_crit_edge, label %land.rhs.preheader

do.end8.while.end_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.preheader:                               ; preds = %do.end8
  %ino1044 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ino1044 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ino1044, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp45 = icmp ult i32 %11, %5
  br i1 %cmp45, label %land.rhs.preheader.while.body_crit_edge, label %land.rhs.preheader.while.end_crit_edge

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs:                                         ; preds = %while.body
  %ino10 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %16, i32 0, i32 5
  %12 = ptrtoint ptr %ino10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ino10, align 4
  %cmp = icmp ult i32 %13, %5
  br i1 %cmp, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end.loopexit_crit_edge

land.rhs.while.end.loopexit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %14 = phi ptr [ %16, %land.rhs.while.body_crit_edge ], [ %9, %land.rhs.preheader.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_inode_cache, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %while.body.while.end.loopexit_crit_edge, label %land.rhs

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.while.end.loopexit_crit_edge, %land.rhs.while.end.loopexit_crit_edge
  %.lcssa.ph = phi ptr [ %16, %land.rhs.while.end.loopexit_crit_edge ], [ null, %while.body.while.end.loopexit_crit_edge ]
  %next.le = getelementptr inbounds %struct.jffs2_inode_cache, ptr %14, i32 0, i32 6
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.rhs.preheader.while.end_crit_edge, %do.end8.while.end_crit_edge
  %prev.0.lcssa = phi ptr [ %arrayidx, %do.end8.while.end_crit_edge ], [ %arrayidx, %land.rhs.preheader.while.end_crit_edge ], [ %next.le, %while.end.loopexit ]
  %.lcssa = phi ptr [ null, %do.end8.while.end_crit_edge ], [ %9, %land.rhs.preheader.while.end_crit_edge ], [ %.lcssa.ph, %while.end.loopexit ]
  %cmp12 = icmp eq ptr %.lcssa, %old
  br i1 %cmp12, label %if.then13, label %while.end.if.end15_crit_edge

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %next14 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %old, i32 0, i32 6
  %17 = ptrtoint ptr %next14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next14, align 4
  %19 = ptrtoint ptr %prev.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %prev.0.lcssa, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %while.end.if.end15_crit_edge
  %state = getelementptr inbounds %struct.jffs2_inode_cache, ptr %old, i32 0, i32 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %state, align 2
  %.off = add i16 %21, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end15.if.end23_crit_edge, label %if.then22

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_free_inode_cache(ptr noundef %old) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end15.if.end23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_inode_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_ino_caches(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inocache_hashsize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 46
  %0 = ptrtoint ptr %inocache_hashsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inocache_hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %inocache_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 47
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inocache_list, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not13 = icmp eq ptr %5, null
  br i1 %tobool.not13, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %this.014 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %next1 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %this.014, i32 0, i32 6
  %6 = ptrtoint ptr %next1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next1, align 4
  tail call void @jffs2_xattr_free_inode(ptr noundef %c, ptr noundef nonnull %this.014) #6
  tail call void @jffs2_free_inode_cache(ptr noundef nonnull %this.014) #6
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %8 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inocache_list, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 %i.016
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %i.016, 1
  %11 = ptrtoint ptr %inocache_hashsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inocache_hashsize, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_xattr_free_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_raw_node_refs(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 27
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.not = icmp eq i32 %1, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blocks, align 4
  %first_node = getelementptr %struct.jffs2_eraseblock, ptr %3, i32 %i.023, i32 9
  %4 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %first_node, align 4
  %tobool.not19 = icmp eq ptr %5, null
  br i1 %tobool.not19, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %for.body.while.body_crit_edge
  %this.020 = phi ptr [ %9, %if.end.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %flash_offset = getelementptr %struct.jffs2_raw_node_ref, ptr %this.020, i32 30, i32 1
  %6 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flash_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp2 = icmp eq i32 %7, -1
  br i1 %cmp2, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_free_refblock(ptr noundef nonnull %this.020) #6
  br label %while.end

if.end:                                           ; preds = %while.body
  %arrayidx1 = getelementptr %struct.jffs2_raw_node_ref, ptr %this.020, i32 30
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  tail call void @jffs2_free_refblock(ptr noundef nonnull %this.020) #6
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.end.thread, %for.body.while.end_crit_edge
  %10 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blocks, align 4
  %last_node = getelementptr %struct.jffs2_eraseblock, ptr %11, i32 %i.023, i32 10
  %12 = ptrtoint ptr %last_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %last_node, align 4
  %13 = load ptr, ptr %blocks, align 4
  %first_node8 = getelementptr %struct.jffs2_eraseblock, ptr %13, i32 %i.023, i32 9
  %14 = ptrtoint ptr %first_node8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %first_node8, align 4
  %inc = add nuw i32 %i.023, 1
  %15 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_blocks, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_refblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_kill_fragtree(ptr noundef %root, ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rb_first_postorder(ptr noundef %root) #6
  %tobool3.not37 = icmp eq ptr %call, null
  br i1 %tobool3.not37, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %tobool20.not = icmp eq ptr %c, null
  br label %land.rhs

land.rhs:                                         ; preds = %if.end24.land.rhs_crit_edge, %land.rhs.lr.ph
  %frag.038 = phi ptr [ %call, %land.rhs.lr.ph ], [ %call5, %if.end24.land.rhs_crit_edge ]
  %call5 = tail call ptr @rb_next_postorder(ptr noundef nonnull %frag.038) #6
  %node = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.038, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %land.rhs.if.end24_crit_edge, label %land.lhs.true

land.rhs.if.end24_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %land.rhs
  %frags = getelementptr inbounds %struct.jffs2_full_dnode, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frags, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %if.then, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then:                                          ; preds = %land.lhs.true
  br i1 %tobool20.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @jffs2_mark_node_obsolete(ptr noundef nonnull %c, ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  tail call void @jffs2_free_full_dnode(ptr noundef %9) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end, %land.lhs.true.if.end24_crit_edge, %land.rhs.if.end24_crit_edge
  tail call void @jffs2_free_node_frag(ptr noundef nonnull %frag.038) #6
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 581, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  %tobool3.not = icmp eq ptr %call5, null
  br i1 %tobool3.not, label %if.end24.for.end_crit_edge, label %if.end24.land.rhs_crit_edge

if.end24.land.rhs_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_node_frag(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_link_node_ref(ptr nocapture noundef %c, ptr noundef %jeb, i32 noundef %ofs, i32 noundef %len, ptr noundef %ic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %allocated_refs = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 8
  %0 = ptrtoint ptr %allocated_refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %allocated_refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !37

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

do.end9:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %allocated_refs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %allocated_refs, align 4
  %last_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 10
  %3 = ptrtoint ptr %last_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %last_node, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %do.end9
  %ref.0 = phi ptr [ %4, %do.end9 ], [ %ref.0.be, %while.cond.backedge ]
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.0, i32 0, i32 1
  %5 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flash_offset, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.else [
    i32 -2, label %while.end
    i32 -1, label %if.then13
  ]

if.then13:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ref.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ref.0, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr %struct.jffs2_raw_node_ref, ptr %ref.0, i32 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then13
  %ref.0.be = phi ptr [ %9, %if.then13 ], [ %incdec.ptr, %if.else ]
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %flash_offset.le = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.0, i32 0, i32 1
  %10 = ptrtoint ptr %flash_offset.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ofs, ptr %flash_offset.le, align 4
  %first_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 9
  %11 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %first_node, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.then18, label %if.else39

if.then18:                                        ; preds = %while.end
  %13 = ptrtoint ptr %first_node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ref.0, ptr %first_node, align 4
  %14 = ptrtoint ptr %flash_offset.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flash_offset.le, align 4
  %and = and i32 %15, -4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp22.not = icmp eq i32 %and, %17
  br i1 %cmp22.not, label %if.then18.if.end78_crit_edge, label %do.body30, !prof !39

if.then18.if.end78_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

do.body30:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 614, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

if.else39:                                        ; preds = %while.end
  %and41 = and i32 %ofs, -4
  %offset42 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %18 = ptrtoint ptr %offset42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset42, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %20 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sector_size, align 4
  %add = add i32 %21, %19
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %22 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %free_size, align 4
  %sub = sub i32 %add, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %and41, i32 %sub)
  %cmp43.not = icmp eq i32 %and41, %sub
  br i1 %cmp43.not, label %if.else39.if.end78_crit_edge, label %if.then50, !prof !39

if.else39.if.end78_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then50:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %last_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %last_node, align 4
  %call = tail call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %jeb, ptr noundef %25)
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i, align 8
  %32 = ptrtoint ptr %flash_offset.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flash_offset.le, align 4
  %and59 = and i32 %33, -4
  %add62 = add i32 %and59, %len
  %34 = ptrtoint ptr %last_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %last_node, align 4
  %flash_offset64 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %flash_offset64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flash_offset64, align 4
  %and65 = and i32 %37, -4
  %add69 = add i32 %and65, %call
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %31, ptr noundef nonnull @.str.2, ptr noundef %ref.0, i32 noundef %and59, i32 noundef %add62, i32 noundef %and65, i32 noundef %add69) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 622, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

if.end78:                                         ; preds = %if.else39.if.end78_crit_edge, %if.then18.if.end78_crit_edge
  %38 = ptrtoint ptr %last_node to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ref.0, ptr %last_node, align 4
  %tobool80.not = icmp eq ptr %ic, null
  br i1 %tobool80.not, label %if.else84, label %if.then81

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 1
  %39 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nodes, align 4
  %41 = ptrtoint ptr %ref.0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ref.0, align 4
  store ptr %ref.0, ptr %nodes, align 4
  br label %if.end86

if.else84:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ref.0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %ref.0, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then81
  %43 = ptrtoint ptr %flash_offset.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flash_offset.le, align 4
  %and88 = and i32 %44, 3
  %45 = zext i32 %and88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and88, label %if.end86.unreachabledefault [
    i32 0, label %sw.bb
    i32 3, label %if.end86.sw.bb92_crit_edge
    i32 2, label %if.end86.sw.bb92_crit_edge154
    i32 1, label %sw.bb96
  ]

if.end86.sw.bb92_crit_edge154:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb92

if.end86.sw.bb92_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb92

sw.bb:                                            ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %46 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %unchecked_size, align 4
  %add89 = add i32 %47, %len
  store i32 %add89, ptr %unchecked_size, align 4
  %unchecked_size90 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 3
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end86.sw.bb92_crit_edge, %if.end86.sw.bb92_crit_edge154
  %used_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %48 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used_size, align 4
  %add93 = add i32 %49, %len
  store i32 %add93, ptr %used_size, align 4
  %used_size94 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 4
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %50 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dirty_size, align 4
  %add97 = add i32 %51, %len
  store i32 %add97, ptr %dirty_size, align 4
  %dirty_size98 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  br label %sw.epilog

if.end86.unreachabledefault:                      ; preds = %if.end86
  unreachable

sw.epilog:                                        ; preds = %sw.bb96, %sw.bb92, %sw.bb
  %dirty_size98.sink153 = phi ptr [ %dirty_size98, %sw.bb96 ], [ %used_size94, %sw.bb92 ], [ %unchecked_size90, %sw.bb ]
  %52 = ptrtoint ptr %dirty_size98.sink153 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dirty_size98.sink153, align 4
  %add99 = add i32 %53, %len
  store i32 %add99, ptr %dirty_size98.sink153, align 4
  %free_size100 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %54 = ptrtoint ptr %free_size100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %free_size100, align 4
  %sub101 = sub i32 %55, %len
  store i32 %sub101, ptr %free_size100, align 4
  %free_size102 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %56 = ptrtoint ptr %free_size102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %free_size102, align 4
  %sub103 = sub i32 %57, %len
  store i32 %sub103, ptr %free_size102, align 4
  ret ptr %ref.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__jffs2_ref_totlen(ptr nocapture noundef readonly %c, ptr noundef readonly %jeb, ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %ref, i32 1
  %flash_offset.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %ref, i32 1, i32 1
  %0 = ptrtoint ptr %flash_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end2.i.i_crit_edge

entry.if.end2.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

if.then.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.i.if.else.i_crit_edge, label %if.then.i.i.if.end2.i.i_crit_edge

if.then.i.i.if.end2.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

if.then.i.i.if.else.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end2.i.i:                                      ; preds = %if.then.i.i.if.end2.i.i_crit_edge, %entry.if.end2.i.i_crit_edge
  %ref.addr.0.i.i = phi ptr [ %3, %if.then.i.i.if.end2.i.i_crit_edge ], [ %incdec.ptr.i.i, %entry.if.end2.i.i_crit_edge ]
  %flash_offset3.i.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %flash_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flash_offset3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %cmp4.i.i = icmp eq i32 %5, -2
  %tobool.not.i = icmp eq ptr %ref.addr.0.i.i, null
  %or.cond.i = select i1 %cmp4.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end2.i.i.if.else.i_crit_edge, label %if.then.i

if.end2.i.i.if.else.i_crit_edge:                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %5, -4
  br label %__ref_totlen.exit

if.else.i:                                        ; preds = %if.end2.i.i.if.else.i_crit_edge, %if.then.i.i.if.else.i_crit_edge
  %tobool1.not.i = icmp eq ptr %jeb, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %6 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blocks.i, align 4
  %flash_offset3.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref, i32 0, i32 1
  %8 = ptrtoint ptr %flash_offset3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flash_offset3.i, align 4
  %sector_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %10 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size.i, align 4
  %div.i = udiv i32 %9, %11
  %arrayidx.i = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.else.i.if.end.i_crit_edge
  %jeb.addr.0.i = phi ptr [ %jeb, %if.else.i.if.end.i_crit_edge ], [ %arrayidx.i, %if.then2.i ]
  %last_node.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.addr.0.i, i32 0, i32 10
  %12 = ptrtoint ptr %last_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %last_node.i, align 4
  %cmp.not.i = icmp eq ptr %13, %ref
  br i1 %cmp.not.i, label %if.end22.i, label %do.end.i, !prof !39

do.end.i:                                         ; preds = %if.end.i
  %flash_offset7.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref, i32 0, i32 1
  %14 = ptrtoint ptr %flash_offset7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flash_offset7.i, align 4
  %tobool11.not.i = icmp eq ptr %13, null
  br i1 %tobool11.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %flash_offset13.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %flash_offset13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flash_offset13.i, align 4
  %and14.i = and i32 %17, -4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %and14.i, %cond.true.i ], [ 0, %do.end.i.cond.end.i_crit_edge ]
  %and8.i = and i32 %15, -4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %ref, i32 noundef %and8.i, ptr noundef %13, i32 noundef %cond.i) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 711, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %offset.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.addr.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %sector_size23.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %20 = ptrtoint ptr %sector_size23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sector_size23.i, align 4
  %add.i = add i32 %21, %19
  %free_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.addr.0.i, i32 0, i32 7
  %22 = ptrtoint ptr %free_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %free_size.i, align 4
  %sub.i = sub i32 %add.i, %23
  br label %__ref_totlen.exit

__ref_totlen.exit:                                ; preds = %if.end22.i, %if.then.i
  %ref_end.0.i = phi i32 [ %and.i, %if.then.i ], [ %sub.i, %if.end22.i ]
  %flash_offset25.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref, i32 0, i32 1
  %24 = ptrtoint ptr %flash_offset25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flash_offset25.i, align 4
  %and26.i = and i32 %25, -4
  %sub27.i = sub i32 %ref_end.0.i, %and26.i
  ret i32 %sub27.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_scan_dirty_space(ptr nocapture noundef %c, ptr noundef %jeb, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %0 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp ult i32 %1, %size
  br i1 %cmp, label %do.end, label %if.end9, !prof !37

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %2 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wasted_size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %size, i32 noundef %1, i32 noundef %3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodelist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 670, 0\0A.popsection", ""() #6, !srcloc !45
  unreachable

if.end9:                                          ; preds = %if.end
  %last_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 10
  %4 = ptrtoint ptr %last_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last_node, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.if.else_crit_edge, label %land.lhs.true

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end9
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flash_offset, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp12 = icmp eq i32 %and, 1
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %8 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty_size, align 4
  %add = add i32 %9, %size
  store i32 %add, ptr %dirty_size, align 4
  %free_size14 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %10 = ptrtoint ptr %free_size14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_size14, align 4
  %sub = sub i32 %11, %size
  store i32 %sub, ptr %free_size14, align 4
  %dirty_size15 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %12 = ptrtoint ptr %dirty_size15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty_size15, align 4
  %add16 = add i32 %13, %size
  store i32 %add16, ptr %dirty_size15, align 4
  %14 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_size, align 4
  %sub18 = sub i32 %15, %size
  store i32 %sub18, ptr %free_size, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end9.if.else_crit_edge
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %18 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sector_size, align 4
  %add19 = sub i32 %17, %1
  %sub21 = add i32 %add19, %19
  %or = or i32 %sub21, 1
  %call22 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %or, i32 noundef %size, ptr noundef null)
  br label %return

return:                                           ; preds = %if.else, %if.then13, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_node_frag() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/nodelist.c", i32 581, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jffs2/nodelist.c", i32 618, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @jffs2_link_node_ref._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @jffs2_link_node_ref._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/jffs2/nodelist.c", i32 668, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @jffs2_scan_dirty_space._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @jffs2_scan_dirty_space._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jffs2/nodelist.c", i32 159, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @new_fragment._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @new_fragment._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/jffs2/nodelist.c", i32 138, i32 4}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @jffs2_fragtree_insert._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @jffs2_fragtree_insert._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/jffs2/nodelist.c", i32 707, i32 4}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ref_totlen._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @__ref_totlen._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2154447679, i64 2154448163, i64 2154447716, i64 2154447772, i64 2154447806, i64 2154447830, i64 2154447871, i64 2154447892, i64 2154447920, i64 2154447954}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2154485145, i64 2154485629, i64 2154485182, i64 2154485238, i64 2154485272, i64 2154485296, i64 2154485337, i64 2154485358, i64 2154485386, i64 2154485420}
!41 = !{i64 2154499056, i64 2154499540, i64 2154499093, i64 2154499149, i64 2154499183, i64 2154499207, i64 2154499248, i64 2154499269, i64 2154499297, i64 2154499331}
!42 = !{i64 2154504363, i64 2154504847, i64 2154504400, i64 2154504456, i64 2154504490, i64 2154504514, i64 2154504555, i64 2154504576, i64 2154504604, i64 2154504638}
!43 = !{i64 2154509237, i64 2154509721, i64 2154509274, i64 2154509330, i64 2154509364, i64 2154509388, i64 2154509429, i64 2154509450, i64 2154509478, i64 2154509512}
!44 = !{i64 2154520876, i64 2154521360, i64 2154520913, i64 2154520969, i64 2154521003, i64 2154521027, i64 2154521068, i64 2154521089, i64 2154521117, i64 2154521151}
!45 = !{i64 2154512824, i64 2154513308, i64 2154512861, i64 2154512917, i64 2154512951, i64 2154512975, i64 2154513016, i64 2154513037, i64 2154513065, i64 2154513099}
