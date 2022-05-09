; ModuleID = '/llk/IR_all_yes/fs/jffs2/nodemgmt.c_pt.bc'
source_filename = "../fs/jffs2/nodemgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.jffs2_raw_node_ref = type { ptr, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/jffs2/nodemgmt.c\00", [44 x i8] zeroinitializer }, align 32
@jffs2_add_physical_node_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014jffs2: argh. node added in wrong place at 0x%08x(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"jffs2_add_physical_node_ref\00", [36 x i8] zeroinitializer }, align 32
@jffs2_add_physical_node_ref._entry_ptr = internal global ptr @jffs2_add_physical_node_ref._entry, section ".printk_index", align 4
@jffs2_add_physical_node_ref._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014jffs2: nextblock 0x%08x\00", [38 x i8] zeroinitializer }, align 32
@jffs2_add_physical_node_ref._entry_ptr.5 = internal global ptr @jffs2_add_physical_node_ref._entry.3, section ".printk_index", align 4
@jffs2_add_physical_node_ref._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014jffs2: No nextblock\00", [42 x i8] zeroinitializer }, align 32
@jffs2_add_physical_node_ref._entry_ptr.8 = internal global ptr @jffs2_add_physical_node_ref._entry.6, section ".printk_index", align 4
@jffs2_add_physical_node_ref._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\01c, expected at %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@jffs2_add_physical_node_ref._entry_ptr.11 = internal global ptr @jffs2_add_physical_node_ref._entry.9, section ".printk_index", align 4
@jffs2_mark_node_obsolete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015jffs2: EEEEEK. jffs2_mark_node_obsolete called with NULL node\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"jffs2_mark_node_obsolete\00", [39 x i8] zeroinitializer }, align 32
@jffs2_mark_node_obsolete._entry_ptr = internal global ptr @jffs2_mark_node_obsolete._entry, section ".printk_index", align 4
@jffs2_mark_node_obsolete._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015jffs2: raw node at 0x%08x is off the end of device!\0A\00", [41 x i8] zeroinitializer }, align 32
@jffs2_mark_node_obsolete._entry_ptr.16 = internal global ptr @jffs2_mark_node_obsolete._entry.14, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@jffs2_do_reserve_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014jffs2: Eep. Block 0x%08x taken from free_list had free_size of 0x%08x!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jffs2_do_reserve_space\00", [41 x i8] zeroinitializer }, align 32
@jffs2_do_reserve_space._entry_ptr = internal global ptr @jffs2_do_reserve_space._entry, section ".printk_index", align 4
@jffs2_find_nextblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"\012jffs2: Argh. No free space left for GC. nr_erasing_blocks is %d. nr_free_blocks is %d. (erasableempty: %s, erasingempty: %s, erasependingempty: %s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jffs2_find_nextblock\00", [43 x i8] zeroinitializer }, align 32
@jffs2_find_nextblock._entry_ptr = internal global ptr @jffs2_find_nextblock._entry, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 175, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 517, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 520, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 522, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 523, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 589, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 599, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 460, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [23 x i8] c"../fs/jffs2/nodemgmt.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 315, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @jffs2_add_physical_node_ref._entry, ptr @jffs2_add_physical_node_ref._entry.3, ptr @jffs2_add_physical_node_ref._entry.6, ptr @jffs2_add_physical_node_ref._entry.9, ptr @jffs2_add_physical_node_ref._entry_ptr, ptr @jffs2_add_physical_node_ref._entry_ptr.11, ptr @jffs2_add_physical_node_ref._entry_ptr.5, ptr @jffs2_add_physical_node_ref._entry_ptr.8, ptr @jffs2_do_reserve_space._entry, ptr @jffs2_do_reserve_space._entry_ptr, ptr @jffs2_find_nextblock._entry, ptr @jffs2_find_nextblock._entry_ptr, ptr @jffs2_mark_node_obsolete._entry, ptr @jffs2_mark_node_obsolete._entry.14, ptr @jffs2_mark_node_obsolete._entry_ptr, ptr @jffs2_mark_node_obsolete._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_add_physical_node_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_add_physical_node_ref._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_add_physical_node_ref._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_add_physical_node_ref._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_mark_node_obsolete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_mark_node_obsolete._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_reserve_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_find_nextblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef %minsize, ptr nocapture noundef writeonly %len, i32 noundef %prio, i32 noundef %sumsize) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resv_blocks_write = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 20
  %0 = ptrtoint ptr %resv_blocks_write to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %resv_blocks_write, align 4
  %conv = zext i8 %1 to i32
  %add = add i32 %minsize, 3
  %and = and i32 %add, -4
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #6
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prio)
  %cmp.not = icmp eq i32 %prio, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dirty_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %2 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_size.i, align 4
  %free_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %4 = ptrtoint ptr %free_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_size.i, align 4
  %unchecked_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %6 = ptrtoint ptr %unchecked_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unchecked_size.i, align 4
  %erasing_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 14
  %8 = ptrtoint ptr %erasing_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasing_size.i, align 4
  %10 = ptrtoint ptr %resv_blocks_write to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %resv_blocks_write, align 4
  %conv.i = zext i8 %11 to i32
  %sector_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %12 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sector_size.i, align 4
  %mul.i = mul i32 %13, %conv.i
  %nospc_dirty_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 26
  %14 = ptrtoint ptr %nospc_dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nospc_dirty_size.i, align 4
  %.neg278 = add i32 %5, %3
  %.neg26.i = add i32 %.neg278, %7
  %add.i = add i32 %.neg26.i, %9
  %16 = add i32 %15, %mul.i
  %sub3.i = sub i32 %add.i, %16
  %rp_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 61, i32 3
  %17 = ptrtoint ptr %rp_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rp_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %18)
  %cmp7.i = icmp ugt i32 %sub3.i, %18
  br i1 %cmp7.i, label %land.lhs.true.if.end_crit_edge, label %jffs2_rp_can_write.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

jffs2_rp_can_write.exit:                          ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 @capable(i32 noundef 24) #6
  br i1 %call.i, label %jffs2_rp_can_write.exit.if.end_crit_edge, label %if.end193.thread

jffs2_rp_can_write.exit.if.end_crit_edge:         ; preds = %jffs2_rp_can_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end193.thread:                                 ; preds = %jffs2_rp_can_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br label %cleanup198.sink.split

if.end:                                           ; preds = %jffs2_rp_can_write.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nr_free_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %erasing_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 14
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %nospc_dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 26
  %free_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %erase_complete_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 39
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %erase_wait = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 44
  %resv_blocks_deletion54 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 21
  %23 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %while.cond7.preheader

while.cond7.preheader:                            ; preds = %while.end.while.cond7.preheader_crit_edge, %if.end
  %24 = ptrtoint ptr %nr_free_blocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_free_blocks, align 4
  %26 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_erasing_blocks, align 4
  %add8285 = add i32 %27, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add8285, i32 %conv)
  %cmp9286 = icmp ult i32 %add8285, %conv
  br i1 %cmp9286, label %while.cond7.preheader.while.body11_crit_edge, label %while.cond7.preheader.while.end_crit_edge

while.cond7.preheader.while.end_crit_edge:        ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond7.preheader.while.body11_crit_edge:     ; preds = %while.cond7.preheader
  br label %while.body11

while.body11:                                     ; preds = %cleanup.while.body11_crit_edge, %while.cond7.preheader.while.body11_crit_edge
  %add8287 = phi i32 [ %add8, %cleanup.while.body11_crit_edge ], [ %add8285, %while.cond7.preheader.while.body11_crit_edge ]
  %28 = phi i32 [ %81, %cleanup.while.body11_crit_edge ], [ %27, %while.cond7.preheader.while.body11_crit_edge ]
  %29 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty_size, align 4
  %31 = ptrtoint ptr %erasing_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %erasing_size, align 4
  %add12 = add i32 %32, %30
  %33 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sector_size, align 4
  %mul = mul i32 %34, %28
  %35 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %unchecked_size, align 4
  %sub = add i32 %add12, %36
  %add14 = sub i32 %sub, %mul
  %37 = ptrtoint ptr %nospc_dirty_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nospc_dirty_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %38)
  %cmp15 = icmp ult i32 %add14, %38
  br i1 %cmp15, label %if.then17, label %if.end37

if.then17:                                        ; preds = %while.body11
  br i1 %cmp.not, label %land.lhs.true20, label %if.then17.do.end34_crit_edge

if.then17.do.end34_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

land.lhs.true20:                                  ; preds = %if.then17
  %39 = ptrtoint ptr %resv_blocks_deletion54 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %resv_blocks_deletion54, align 1
  %conv24 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add8287, i32 %conv24)
  %cmp25.not = icmp ult i32 %add8287, %conv24
  br i1 %cmp25.not, label %land.lhs.true20.do.end34_crit_edge, label %land.lhs.true20.while.end_crit_edge

land.lhs.true20.while.end_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.lhs.true20.do.end34_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34:                                         ; preds = %land.lhs.true20.do.end34_crit_edge, %if.then17.do.end34_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br label %cleanup198.sink.split

if.end37:                                         ; preds = %while.body11
  %41 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %free_size, align 4
  %add43 = add i32 %sub, %42
  %div = udiv i32 %add43, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv)
  %cmp45.not = icmp ugt i32 %div, %conv
  br i1 %cmp45.not, label %if.end68, label %if.then47

if.then47:                                        ; preds = %if.end37
  br i1 %cmp.not, label %land.lhs.true50, label %if.then47.do.end65_crit_edge

if.then47.do.end65_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

land.lhs.true50:                                  ; preds = %if.then47
  %43 = ptrtoint ptr %resv_blocks_deletion54 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %resv_blocks_deletion54, align 1
  %conv55 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add8287, i32 %conv55)
  %cmp56.not = icmp ult i32 %add8287, %conv55
  br i1 %cmp56.not, label %land.lhs.true50.do.end65_crit_edge, label %land.lhs.true50.while.end_crit_edge

land.lhs.true50.while.end_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.lhs.true50.do.end65_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

do.end65:                                         ; preds = %land.lhs.true50.do.end65_crit_edge, %if.then47.do.end65_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br label %cleanup198.sink.split

if.end68:                                         ; preds = %if.end37
  call void @mutex_unlock(ptr noundef %alloc_sem) #6
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  %call74 = call i32 @jffs2_garbage_collect_pass(ptr noundef %c) #6
  %45 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call74, label %if.end68.cleanup198_crit_edge [
    i32 -11, label %if.then77
    i32 0, label %if.end68.if.end169_crit_edge
  ]

if.end68.if.end169_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.end68.cleanup198_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

if.then77:                                        ; preds = %if.end68
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  %46 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_erasing_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool80.not = icmp eq i32 %47, 0
  br i1 %tobool80.not, label %if.then77.if.else_crit_edge, label %land.lhs.true81

if.then77.if.else_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true81:                                  ; preds = %if.then77
  %48 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %erase_pending_list, align 4
  %cmp.i.not = icmp eq ptr %49, %erase_pending_list
  br i1 %cmp.i.not, label %land.lhs.true84, label %land.lhs.true81.if.else_crit_edge

land.lhs.true81.if.else_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true84:                                  ; preds = %land.lhs.true81
  %50 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %erase_complete_list, align 4
  %cmp.i258.not = icmp eq ptr %51, %erase_complete_list
  br i1 %cmp.i258.not, label %if.then87, label %land.lhs.true84.if.else_crit_edge

land.lhs.true84.if.else_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then87:                                        ; preds = %land.lhs.true84
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %52 = call ptr @memset(ptr %23, i32 255, i32 16)
  %53 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %wait, align 4
  %54 = call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %58 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %19, align 4
  %59 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @default_wake_function, ptr %20, align 4
  %60 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %21, align 4
  %61 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %22, align 4
  br label %__here

__here:                                           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 212
  %64 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 ptrtoint (ptr blockaddress(@jffs2_reserve_space, %__here) to i32), ptr %task_state_change, align 4
  %65 = load ptr, ptr %task, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 2, ptr %65, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @add_wait_queue(ptr noundef %erase_wait, ptr noundef nonnull %wait) #6
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  call void @schedule() #6
  call void @remove_wait_queue(ptr noundef %erase_wait, ptr noundef nonnull %wait) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  br label %if.end169

if.else:                                          ; preds = %land.lhs.true84.if.else_crit_edge, %land.lhs.true81.if.else_crit_edge, %if.then77.if.else_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br label %if.end169

if.end169:                                        ; preds = %if.else, %__here, %if.end68.if.end169_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 0) #6
  %call.i260 = call i32 @__cond_resched() #6
  %67 = call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i261 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i261 to ptr
  %task173 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task173 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task173, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stack.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %75 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end169.cleanup198_crit_edge, !prof !52

if.end169.cleanup198_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

signal_pending.exit:                              ; preds = %if.end169
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %72, align 4
  %and1.i.i.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool175.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool175.not, label %cleanup, label %signal_pending.exit.cleanup198_crit_edge

signal_pending.exit.cleanup198_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

cleanup:                                          ; preds = %signal_pending.exit
  call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #6
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  %78 = ptrtoint ptr %nr_free_blocks to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_free_blocks, align 4
  %80 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_erasing_blocks, align 4
  %add8 = add i32 %81, %79
  %cmp9 = icmp ult i32 %add8, %conv
  br i1 %cmp9, label %cleanup.while.body11_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cleanup.while.body11_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body11

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.lhs.true50.while.end_crit_edge, %land.lhs.true20.while.end_crit_edge, %while.cond7.preheader.while.end_crit_edge
  %call181 = call fastcc i32 @jffs2_do_reserve_space(ptr noundef %c, i32 noundef %and, ptr noundef %len, i32 noundef %sumsize)
  %cmp5 = icmp eq i32 %call181, -11
  br i1 %cmp5, label %while.end.while.cond7.preheader_crit_edge, label %out

while.end.while.cond7.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond7.preheader

out:                                              ; preds = %while.end
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool190.not = icmp eq i32 %call181, 0
  br i1 %tobool190.not, label %if.then191, label %out.if.end193_crit_edge

out.if.end193_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

if.then191:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %82 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nextblock, align 4
  %call192 = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %83, i32 noundef 1) #6
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %out.if.end193_crit_edge
  %ret.2 = phi i32 [ %call181, %out.if.end193_crit_edge ], [ %call192, %if.then191 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool194.not = icmp eq i32 %ret.2, 0
  br i1 %tobool194.not, label %if.end193.cleanup198_crit_edge, label %if.end193.cleanup198.sink.split_crit_edge

if.end193.cleanup198.sink.split_crit_edge:        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198.sink.split

if.end193.cleanup198_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup198

cleanup198.sink.split:                            ; preds = %if.end193.cleanup198.sink.split_crit_edge, %do.end65, %do.end34, %if.end193.thread
  %retval.4.ph = phi i32 [ -28, %do.end34 ], [ -28, %do.end65 ], [ -28, %if.end193.thread ], [ %ret.2, %if.end193.cleanup198.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %alloc_sem) #6
  br label %cleanup198

cleanup198:                                       ; preds = %cleanup198.sink.split, %if.end193.cleanup198_crit_edge, %signal_pending.exit.cleanup198_crit_edge, %if.end169.cleanup198_crit_edge, %if.end68.cleanup198_crit_edge
  %retval.4 = phi i32 [ 0, %if.end193.cleanup198_crit_edge ], [ %retval.4.ph, %cleanup198.sink.split ], [ -4, %if.end169.cleanup198_crit_edge ], [ %call74, %if.end68.cleanup198_crit_edge ], [ -4, %signal_pending.exit.cleanup198_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_garbage_collect_pass(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_do_reserve_space(ptr noundef %c, i32 noundef %minsize, ptr nocapture noundef writeonly %len, i32 noundef %sumsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %0 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nextblock, align 4
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %add5 = add i32 %minsize, 3
  %and6 = and i32 %add5, -4
  %wbuf_len = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %dirty_size58 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %wasted_size61 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %free_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40
  %nr_free_blocks49.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %wbuf_ofs.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  br label %restart.outer

restart.outer:                                    ; preds = %restart.outer.backedge, %entry
  %jeb.0.ph = phi ptr [ %1, %entry ], [ %jeb.0.ph.be, %restart.outer.backedge ]
  %sumsize.addr.0.ph = phi i32 [ %sumsize, %entry ], [ %sumsize.addr.0.ph.be, %restart.outer.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sumsize.addr.0.ph)
  %cmp.not202 = icmp eq i32 %sumsize.addr.0.ph, -1
  %tobool37.not = icmp eq ptr %jeb.0.ph, null
  br i1 %cmp.not202, label %if.else, label %if.then.lr.ph

if.then.lr.ph:                                    ; preds = %restart.outer
  br i1 %tobool37.not, label %if.then.lr.ph.if.then66_crit_edge, label %land.lhs.true

if.then.lr.ph.if.then66_crit_edge:                ; preds = %if.then.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66

land.lhs.true:                                    ; preds = %if.then.lr.ph
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0.ph, i32 0, i32 7
  %2 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %summary, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add9 = add i32 %sumsize.addr.0.ph, 43
  %add11 = add i32 %add9, %5
  %and12 = and i32 %add11, -4
  %add13 = add i32 %and12, %and6
  %6 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %7)
  %cmp14 = icmp ugt i32 %add13, %7
  br i1 %cmp14, label %if.then15, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then15:                                        ; preds = %land.lhs.true
  %call = tail call i32 @jffs2_sum_is_disabled(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.land.lhs.true38_crit_edge

if.then15.land.lhs.true38_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true38

if.end19:                                         ; preds = %if.then15
  %call21 = tail call i32 @jffs2_sum_write_sumnode(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup103_crit_edge

if.end19.cleanup103_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end24:                                         ; preds = %if.end19
  %8 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %summary, align 4
  %call26 = tail call i32 @jffs2_sum_is_disabled(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.land.lhs.true38_crit_edge

if.end24.land.lhs.true38_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true38

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @jffs2_close_nextblock(ptr noundef %c, ptr noundef nonnull %jeb.0.ph)
  %10 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %summary, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add34 = add i32 %add9, %13
  %and35 = and i32 %add34, -4
  br label %if.then66

if.else:                                          ; preds = %restart.outer
  br i1 %tobool37.not, label %if.else.if.then66_crit_edge, label %if.else.land.lhs.true38_crit_edge

if.else.land.lhs.true38_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true38

if.else.if.then66_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66

land.lhs.true38:                                  ; preds = %if.else.land.lhs.true38_crit_edge, %if.end24.land.lhs.true38_crit_edge, %if.then15.land.lhs.true38_crit_edge
  %free_size39 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0.ph, i32 0, i32 7
  %14 = ptrtoint ptr %free_size39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_size39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %minsize)
  %cmp40 = icmp ult i32 %15, %minsize
  br i1 %cmp40, label %if.then41, label %land.lhs.true38.if.end85_crit_edge

land.lhs.true38.if.end85_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then41:                                        ; preds = %land.lhs.true38
  %16 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool42.not = icmp eq i32 %17, 0
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br i1 %tobool42.not, label %if.end47, label %cleanup

if.end47:                                         ; preds = %if.then41
  %call49 = tail call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef nonnull %jeb.0.ph, i32 noundef 1) #6
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool51.not = icmp eq i32 %call49, 0
  br i1 %tobool51.not, label %cleanup.thread174, label %if.end47.cleanup103_crit_edge

if.end47.cleanup103_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

cleanup.thread174:                                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %free_size39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free_size39, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0.ph, i32 0, i32 2
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %22 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sector_size, align 4
  %add55 = sub i32 %21, %19
  %sub = add i32 %add55, %23
  %or = or i32 %sub, 1
  %call56 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef nonnull %jeb.0.ph, i32 noundef %or, i32 noundef %19, ptr noundef null) #6
  %dirty_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0.ph, i32 0, i32 5
  %24 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dirty_size, align 4
  %sub57 = sub i32 %25, %19
  store i32 %sub57, ptr %dirty_size, align 4
  %26 = ptrtoint ptr %dirty_size58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dirty_size58, align 4
  %sub59 = sub i32 %27, %19
  store i32 %sub59, ptr %dirty_size58, align 4
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0.ph, i32 0, i32 6
  %28 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wasted_size, align 4
  %add60 = add i32 %29, %19
  store i32 %add60, ptr %wasted_size, align 4
  %30 = ptrtoint ptr %wasted_size61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wasted_size61, align 4
  %add62 = add i32 %31, %19
  store i32 %add62, ptr %wasted_size61, align 4
  tail call fastcc void @jffs2_close_nextblock(ptr noundef %c, ptr noundef nonnull %jeb.0.ph)
  br label %if.then66

cleanup:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = tail call i32 @jffs2_flush_wbuf_pad(ptr noundef %c) #6
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  %32 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nextblock, align 4
  br label %restart.outer.backedge

if.then66:                                        ; preds = %cleanup.thread174, %if.else.if.then66_crit_edge, %if.end29, %if.then.lr.ph.if.then66_crit_edge
  %sumsize.addr.0191 = phi i32 [ -1, %cleanup.thread174 ], [ -1, %if.else.if.then66_crit_edge ], [ %sumsize.addr.0.ph, %if.end29 ], [ %sumsize.addr.0.ph, %if.then.lr.ph.if.then66_crit_edge ]
  %reserved_size.1.ph = phi i32 [ 0, %cleanup.thread174 ], [ 0, %if.else.if.then66_crit_edge ], [ %and35, %if.end29 ], [ 0, %if.then.lr.ph.if.then66_crit_edge ]
  %34 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %free_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %35, %free_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end43.i

if.then.i:                                        ; preds = %if.then66
  %nr_erasing_blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %36 = ptrtoint ptr %nr_erasing_blocks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_erasing_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool1.not.i = icmp eq i32 %37, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.then.i.if.end39.i_crit_edge

if.then.i.if.end39.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %erasable_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34
  %38 = ptrtoint ptr %erasable_list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %erasable_list.i, align 4
  %cmp.i88.not.i = icmp eq ptr %39, %erasable_list.i
  br i1 %cmp.i88.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  %erase_pending_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.__list_del_entry.exit.i.i_crit_edge

if.then4.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then4.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38, i32 1
  %46 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %39, ptr noundef %47, ptr noundef %erase_pending_list.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %39, ptr %prev.i2.i.i, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %erase_pending_list.i, ptr %39, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %39, ptr %47, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %52 = ptrtoint ptr %nr_erasing_blocks.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_erasing_blocks.i, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %nr_erasing_blocks.i, align 4
  tail call void @jffs2_garbage_collect_trigger(ptr noundef %c) #6
  br label %if.end.i

if.end.i:                                         ; preds = %list_move_tail.exit.i, %land.lhs.true.i.if.end.i_crit_edge
  %54 = ptrtoint ptr %nr_erasing_blocks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr.i = load i32, ptr %nr_erasing_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool9.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true10.i, label %if.end.i.if.end39.i_crit_edge

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

land.lhs.true10.i:                                ; preds = %if.end.i
  %erasable_pending_wbuf_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 35
  %55 = ptrtoint ptr %erasable_pending_wbuf_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %erasable_pending_wbuf_list.i, align 4
  %cmp.i90.not.i = icmp eq ptr %56, %erasable_pending_wbuf_list.i
  br i1 %cmp.i90.not.i, label %do.end25.i, label %do.end16.i

do.end16.i:                                       ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  %call17.i = tail call i32 @jffs2_flush_wbuf_pad(ptr noundef %c) #6
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  br label %cleanup103

do.end25.i:                                       ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %nr_free_blocks49.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_free_blocks49.i, align 4
  %59 = ptrtoint ptr %erasable_list.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %erasable_list.i, align 4
  %cmp.i92.not.i = icmp eq ptr %60, %erasable_list.i
  %cond.i = select i1 %cmp.i92.not.i, ptr @.str.21, ptr @.str.22
  %erasing_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 36
  %61 = ptrtoint ptr %erasing_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %erasing_list.i, align 4
  %cmp.i94.not.i = icmp eq ptr %62, %erasing_list.i
  %cond33.i = select i1 %cmp.i94.not.i, ptr @.str.21, ptr @.str.22
  %erase_pending_list34.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %63 = ptrtoint ptr %erase_pending_list34.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %erase_pending_list34.i, align 4
  %cmp.i96.not.i = icmp eq ptr %64, %erase_pending_list34.i
  %cond37.i = select i1 %cmp.i96.not.i, ptr @.str.21, ptr @.str.22
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %58, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond37.i) #9
  br label %cleanup103

if.end39.i:                                       ; preds = %if.end.i.if.end39.i_crit_edge, %if.then.i.if.end39.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  %call41.i = tail call i32 @jffs2_erase_pending_blocks(ptr noundef %c, i32 noundef 1) #6
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  br label %cleanup103

if.end43.i:                                       ; preds = %if.then66
  %call.i.i98.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #6
  br i1 %call.i.i98.i, label %if.end.i.i101.i, label %if.end43.i.list_del.exit.i_crit_edge

if.end43.i.list_del.exit.i_crit_edge:             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i101.i:                                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i99.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i99.i, align 4
  %67 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %35, align 4
  %prev1.i.i.i100.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i100.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i101.i, %if.end43.i.list_del.exit.i_crit_edge
  %71 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %nextblock to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %35, ptr %nextblock, align 4
  %74 = ptrtoint ptr %nr_free_blocks49.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_free_blocks49.i, align 4
  %dec.i = add i32 %75, -1
  store i32 %dec.i, ptr %nr_free_blocks49.i, align 4
  %76 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %summary, align 4
  tail call void @jffs2_sum_reset_collected(ptr noundef %77) #6
  %78 = ptrtoint ptr %wbuf_ofs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wbuf_ofs.i, align 4
  %80 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sector_size, align 4
  %rem.i = urem i32 %79, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool50.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool50.not.i, label %land.lhs.true51.i, label %list_del.exit.i.if.end70_crit_edge

list_del.exit.i.if.end70_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true51.i:                                ; preds = %list_del.exit.i
  %82 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool52.not.i = icmp eq i32 %83, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %land.lhs.true51.i.if.end70_crit_edge

land.lhs.true51.i.if.end70_crit_edge:             ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then53.i:                                      ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %wbuf_ofs.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %wbuf_ofs.i, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then53.i, %land.lhs.true51.i.if.end70_crit_edge, %list_del.exit.i.if.end70_crit_edge
  %85 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nextblock, align 4
  %free_size72 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %free_size72 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %free_size72, align 4
  %89 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sector_size, align 4
  %91 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cleanmarker_size, align 4
  %sub74 = sub i32 %90, %92
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %sub74)
  %cmp75.not = icmp eq i32 %88, %sub74
  br i1 %cmp75.not, label %if.end70.if.end85_crit_edge, label %do.end79

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %offset81 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %86, i32 0, i32 2
  %93 = ptrtoint ptr %offset81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset81, align 4
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %94, i32 noundef %88) #9
  br label %restart.outer.backedge

restart.outer.backedge:                           ; preds = %do.end79, %cleanup
  %jeb.0.ph.be = phi ptr [ %33, %cleanup ], [ %86, %do.end79 ]
  %sumsize.addr.0.ph.be = phi i32 [ -1, %cleanup ], [ %sumsize.addr.0191, %do.end79 ]
  br label %restart.outer

if.end85:                                         ; preds = %if.end70.if.end85_crit_edge, %land.lhs.true38.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge
  %reserved_size.1181 = phi i32 [ %and12, %land.lhs.true.if.end85_crit_edge ], [ %reserved_size.1.ph, %if.end70.if.end85_crit_edge ], [ 0, %land.lhs.true38.if.end85_crit_edge ]
  %jeb.3 = phi ptr [ %jeb.0.ph, %land.lhs.true.if.end85_crit_edge ], [ %86, %if.end70.if.end85_crit_edge ], [ %jeb.0.ph, %land.lhs.true38.if.end85_crit_edge ]
  %free_size86 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.3, i32 0, i32 7
  %95 = ptrtoint ptr %free_size86 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %free_size86, align 4
  %sub87 = sub i32 %96, %reserved_size.1181
  %97 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub87, ptr %len, align 4
  %98 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cleanmarker_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool89.not = icmp eq i32 %99, 0
  br i1 %tobool89.not, label %if.end85.cleanup103_crit_edge, label %land.lhs.true90

if.end85.cleanup103_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

land.lhs.true90:                                  ; preds = %if.end85
  %used_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.3, i32 0, i32 4
  %100 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %used_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %99)
  %cmp92 = icmp eq i32 %101, %99
  br i1 %cmp92, label %land.lhs.true93, label %land.lhs.true90.cleanup103_crit_edge

land.lhs.true90.cleanup103_crit_edge:             ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

land.lhs.true93:                                  ; preds = %land.lhs.true90
  %first_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.3, i32 0, i32 9
  %102 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %first_node, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %tobool94.not = icmp eq ptr %105, null
  br i1 %tobool94.not, label %if.then95, label %land.lhs.true93.cleanup103_crit_edge

land.lhs.true93.cleanup103_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.then95:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  %106 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %first_node, align 4
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %107)
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  br label %cleanup103

cleanup103:                                       ; preds = %if.then95, %land.lhs.true93.cleanup103_crit_edge, %land.lhs.true90.cleanup103_crit_edge, %if.end85.cleanup103_crit_edge, %if.end39.i, %do.end25.i, %do.end16.i, %if.end47.cleanup103_crit_edge, %if.end19.cleanup103_crit_edge
  %retval.3 = phi i32 [ 0, %if.end85.cleanup103_crit_edge ], [ 0, %land.lhs.true90.cleanup103_crit_edge ], [ 0, %land.lhs.true93.cleanup103_crit_edge ], [ 0, %if.then95 ], [ -11, %if.end39.i ], [ -28, %do.end25.i ], [ -11, %do.end16.i ], [ %call21, %if.end19.cleanup103_crit_edge ], [ %call49, %if.end47.cleanup103_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_prealloc_raw_node_refs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %minsize, ptr nocapture noundef writeonly %len, i32 noundef %sumsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %minsize, 3
  %and = and i32 %add, -4
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  br label %while.cond

while.cond:                                       ; preds = %if.then5, %entry
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  %call = tail call fastcc i32 @jffs2_do_reserve_space(ptr noundef %c, i32 noundef %and, ptr noundef %len, i32 noundef %sumsize)
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call, label %while.cond.if.end11_crit_edge [
    i32 -11, label %if.then5
    i32 0, label %if.then9
  ]

while.cond.if.end11_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  br label %while.cond

if.then9:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %1 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nextblock, align 4
  %call10 = tail call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %2, i32 noundef 1) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %while.cond.if.end11_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9 ], [ %call, %while.cond.if.end11_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %ofs, i32 noundef %len, ptr noundef %ic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %0 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blocks, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %2 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %ofs, %3
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %4 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nextblock, align 4
  %tobool.not = icmp eq ptr %5, null
  %and = and i32 %ofs, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.if.end38_crit_edge, label %land.lhs.true

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %cmp2.not = icmp eq ptr %arrayidx, %5
  %and4 = and i32 %ofs, -4
  br i1 %cmp2.not, label %lor.lhs.false3, label %land.lhs.true.do.end9_crit_edge

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

lor.lhs.false3:                                   ; preds = %land.lhs.true
  %offset = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %free_size = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div, i32 7
  %8 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %free_size, align 4
  %sub = add i32 %7, %3
  %add = sub i32 %sub, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %add)
  %cmp6.not = icmp eq i32 %and4, %add
  br i1 %cmp6.not, label %lor.lhs.false3.if.end38_crit_edge, label %lor.lhs.false3.do.end9_crit_edge

lor.lhs.false3.do.end9_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

lor.lhs.false3.if.end38_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end9:                                          ; preds = %lor.lhs.false3.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and4, i32 noundef %and) #9
  %10 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nextblock, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %do.end24, label %do.end17

do.end17:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %offset20 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %offset20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %13) #9
  br label %do.end29

do.end24:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.end17
  %offset31 = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div, i32 2
  %14 = ptrtoint ptr %offset31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset31, align 4
  %16 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sector_size, align 4
  %free_size33 = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div, i32 7
  %18 = ptrtoint ptr %free_size33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free_size33, align 4
  %sub34 = add i32 %17, %15
  %add35 = sub i32 %sub34, %19
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %add35) #9
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false3.if.end38_crit_edge, %entry.if.end38_crit_edge
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  %call39 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %ofs, i32 noundef %len, ptr noundef %ic) #6
  %free_size40 = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div, i32 7
  %20 = ptrtoint ptr %free_size40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %free_size40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool41.not = icmp eq i32 %21, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.end38.if.end57_crit_edge

if.end38.if.end57_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true42:                                  ; preds = %if.end38
  %dirty_size = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div, i32 5
  %22 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dirty_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool43.not = icmp eq i32 %23, 0
  br i1 %tobool43.not, label %land.lhs.true44, label %land.lhs.true42.if.end57_crit_edge

land.lhs.true42.if.end57_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true44:                                  ; preds = %land.lhs.true42
  %wasted_size = getelementptr %struct.jffs2_eraseblock, ptr %1, i32 %div, i32 6
  %24 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wasted_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %25)
  %cmp45 = icmp ugt i32 %25, 196
  br i1 %cmp45, label %land.lhs.true44.if.end57_crit_edge, label %do.end49

land.lhs.true44.if.end57_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.end49:                                         ; preds = %land.lhs.true44
  %wbuf_len = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %26 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool50.not = icmp eq i32 %27, 0
  br i1 %tobool50.not, label %do.end49.if.end55_crit_edge, label %if.then51

do.end49.if.end55_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then51:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  %call53 = tail call i32 @jffs2_flush_wbuf_pad(ptr noundef %c) #6
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.end49.if.end55_crit_edge
  %clean_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31
  %prev.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %29, ptr noundef %clean_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end55.list_add_tail.exit_crit_edge

if.end55.list_add_tail.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx, ptr %prev.i, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %clean_list, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end55.list_add_tail.exit_crit_edge
  %34 = ptrtoint ptr %nextblock to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %nextblock, align 4
  br label %if.end57

if.end57:                                         ; preds = %list_add_tail.exit, %land.lhs.true44.if.end57_crit_edge, %land.lhs.true42.if.end57_crit_edge, %if.end38.if.end57_crit_edge
  tail call void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef %c, ptr noundef %arrayidx) #6
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end29
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end29 ], [ %call39, %if.end57 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_link_node_ref(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flush_wbuf_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_complete_reservation(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  tail call void @jffs2_garbage_collect_trigger(ptr noundef %c) #6
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_garbage_collect_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ref, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !53

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_offset, align 4
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %2 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %1, %3
  %nr_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 27
  %4 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp10.not = icmp ult i32 %div, %5
  br i1 %cmp10.not, label %if.end24, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/nodemgmt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 601, 0\0A.popsection", ""() #6, !srcloc !54
  unreachable

if.end24:                                         ; preds = %if.end8
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blocks, align 4
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #6
  %call25 = tail call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx, ptr noundef nonnull %ref) #6
  %8 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flash_offset, align 4
  %and27 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %do.end32, label %do.end37

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %unchecked_size = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 3
  %10 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unchecked_size, align 4
  %sub = sub i32 %11, %call25
  store i32 %sub, ptr %unchecked_size, align 4
  %unchecked_size33 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  br label %if.end41

do.end37:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %used_size = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 4
  %12 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used_size, align 4
  %sub38 = sub i32 %13, %call25
  store i32 %sub38, ptr %used_size, align 4
  %used_size39 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  br label %if.end41

if.end41:                                         ; preds = %do.end37, %do.end32
  %used_size39.sink327 = phi ptr [ %used_size39, %do.end37 ], [ %unchecked_size33, %do.end32 ]
  %14 = ptrtoint ptr %used_size39.sink327 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used_size39.sink327, align 4
  %sub40 = sub i32 %15, %call25
  store i32 %sub40, ptr %used_size39.sink327, align 4
  %dirty_size = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 5
  %16 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool42.not = icmp eq i32 %17, 0
  br i1 %tobool42.not, label %lor.lhs.false, label %if.end41.land.lhs.true_crit_edge

if.end41.land.lhs.true_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end41
  %wasted_size = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 6
  %18 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wasted_size, align 4
  %add = add i32 %19, %call25
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %add)
  %cmp43 = icmp ugt i32 %add, 196
  br i1 %cmp43, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.do.end83_crit_edge

lor.lhs.false.do.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end41.land.lhs.true_crit_edge
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %20 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nextblock, align 4
  %cmp44.not = icmp eq ptr %arrayidx, %21
  br i1 %cmp44.not, label %land.lhs.true.do.end83_crit_edge, label %do.end48

land.lhs.true.do.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

do.end48:                                         ; preds = %land.lhs.true
  %add50 = add i32 %17, %call25
  %22 = ptrtoint ptr %dirty_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add50, ptr %dirty_size, align 4
  %dirty_size51 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %23 = ptrtoint ptr %dirty_size51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty_size51, align 4
  %add52 = add i32 %24, %call25
  store i32 %add52, ptr %dirty_size51, align 4
  %wasted_size53 = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 6
  %25 = ptrtoint ptr %wasted_size53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wasted_size53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp eq i32 %26, 0
  br i1 %tobool54.not, label %do.end48.if.end88_crit_edge, label %if.then55

do.end48.if.end88_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then55:                                        ; preds = %do.end48
  %bad_used_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 42
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then55
  %this.0.in.i = phi ptr [ %bad_used_list, %if.then55 ], [ %this.0.i, %for.body.i.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %this.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %this.0.i = load ptr, ptr %this.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %this.0.i, %bad_used_list
  br i1 %cmp.i.not.i, label %do.end65, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %cmp.i = icmp eq ptr %this.0.i, %arrayidx
  br i1 %cmp.i, label %for.body.i.if.end88_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.if.end88_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

do.end65:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %add67 = add i32 %26, %call25
  %28 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dirty_size, align 4
  %add70 = add i32 %29, %26
  store i32 %add70, ptr %dirty_size, align 4
  %30 = ptrtoint ptr %dirty_size51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dirty_size51, align 4
  %add73 = add i32 %31, %26
  store i32 %add73, ptr %dirty_size51, align 4
  %32 = ptrtoint ptr %wasted_size53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wasted_size53, align 4
  %wasted_size75 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %34 = ptrtoint ptr %wasted_size75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wasted_size75, align 4
  %sub76 = sub i32 %35, %33
  store i32 %sub76, ptr %wasted_size75, align 4
  store i32 0, ptr %wasted_size53, align 4
  br label %if.end88

do.end83:                                         ; preds = %land.lhs.true.do.end83_crit_edge, %lor.lhs.false.do.end83_crit_edge
  %wasted_size84 = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 6
  %36 = ptrtoint ptr %wasted_size84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wasted_size84, align 4
  %add85 = add i32 %37, %call25
  store i32 %add85, ptr %wasted_size84, align 4
  %wasted_size86 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %38 = ptrtoint ptr %wasted_size86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wasted_size86, align 4
  %add87 = add i32 %39, %call25
  store i32 %add87, ptr %wasted_size86, align 4
  br label %if.end88

if.end88:                                         ; preds = %do.end83, %do.end65, %for.body.i.if.end88_crit_edge, %do.end48.if.end88_crit_edge
  %addedsize.0 = phi i32 [ %add67, %do.end65 ], [ %call25, %do.end48.if.end88_crit_edge ], [ 0, %do.end83 ], [ 0, %for.body.i.if.end88_crit_edge ]
  %40 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flash_offset, align 4
  %and90 = and i32 %41, -4
  %or = or i32 %and90, 1
  store i32 %or, ptr %flash_offset, align 4
  tail call void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef %c, ptr noundef %arrayidx) #6
  %flags = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 3
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and92 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br label %cleanup

if.end96:                                         ; preds = %if.end88
  %nextblock97 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %44 = ptrtoint ptr %nextblock97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nextblock97, align 4
  %cmp98 = icmp eq ptr %arrayidx, %45
  br i1 %cmp98, label %if.end96.if.end197_crit_edge, label %if.else103

if.end96.if.end197_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.else103:                                       ; preds = %if.end96
  %used_size104 = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 4
  %46 = ptrtoint ptr %used_size104 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %used_size104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool105.not = icmp eq i32 %47, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %if.else103.if.else146_crit_edge

if.else103.if.else146_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else146

land.lhs.true106:                                 ; preds = %if.else103
  %unchecked_size107 = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 3
  %48 = ptrtoint ptr %unchecked_size107 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %unchecked_size107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool108.not = icmp eq i32 %49, 0
  br i1 %tobool108.not, label %if.then109, label %land.lhs.true106.if.else146_crit_edge

land.lhs.true106.if.else146_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else146

if.then109:                                       ; preds = %land.lhs.true106
  %gcblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %50 = ptrtoint ptr %gcblock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gcblock, align 4
  %cmp110 = icmp eq ptr %arrayidx, %51
  br i1 %cmp110, label %do.end114, label %do.end119

do.end114:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %gcblock to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %gcblock, align 4
  br label %if.end121

do.end119:                                        ; preds = %if.then109
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end119.list_del.exit_crit_edge

do.end119.list_del.exit_crit_edge:                ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end119.list_del.exit_crit_edge
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end121

if.end121:                                        ; preds = %list_del.exit, %do.end114
  %wbuf_len = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %61 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool122.not = icmp eq i32 %62, 0
  br i1 %tobool122.not, label %if.else128, label %do.end126

do.end126:                                        ; preds = %if.end121
  %erasable_pending_wbuf_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 35
  %prev.i290 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 35, i32 1
  %63 = ptrtoint ptr %prev.i290 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i290, align 4
  %call.i.i291 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %64, ptr noundef %erasable_pending_wbuf_list) #6
  br i1 %call.i.i291, label %if.end.i.i292, label %do.end126.if.end197_crit_edge

do.end126.if.end197_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.end.i.i292:                                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %prev.i290 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx, ptr %prev.i290, align 4
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %erasable_pending_wbuf_list, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %arrayidx, ptr %64, align 4
  br label %if.end197

if.else128:                                       ; preds = %if.end121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %and129 = and i32 %69, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.end139, label %do.end134

do.end134:                                        ; preds = %if.else128
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %prev.i293 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38, i32 1
  %70 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i293, align 4
  %call.i.i294 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %71, ptr noundef %erase_pending_list) #6
  br i1 %call.i.i294, label %if.end.i.i296, label %do.end134.list_add_tail.exit297_crit_edge

do.end134.list_add_tail.exit297_crit_edge:        ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit297

if.end.i.i296:                                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx, ptr %prev.i293, align 4
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %erase_pending_list, ptr %arrayidx, align 4
  %prev3.i.i295 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i295 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i295, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %arrayidx, ptr %71, align 4
  br label %list_add_tail.exit297

list_add_tail.exit297:                            ; preds = %if.end.i.i296, %do.end134.list_add_tail.exit297_crit_edge
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %76 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr_erasing_blocks, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %nr_erasing_blocks, align 4
  tail call void @jffs2_garbage_collect_trigger(ptr noundef %c) #6
  br label %if.end197

do.end139:                                        ; preds = %if.else128
  %erasable_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34
  %prev.i298 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34, i32 1
  %78 = ptrtoint ptr %prev.i298 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i298, align 4
  %call.i.i299 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %79, ptr noundef %erasable_list) #6
  br i1 %call.i.i299, label %if.end.i.i301, label %do.end139.if.end197_crit_edge

do.end139.if.end197_crit_edge:                    ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.end.i.i301:                                    ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %prev.i298 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx, ptr %prev.i298, align 4
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %erasable_list, ptr %arrayidx, align 4
  %prev3.i.i300 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i300 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i300, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %arrayidx, ptr %79, align 4
  br label %if.end197

if.else146:                                       ; preds = %land.lhs.true106.if.else146_crit_edge, %if.else103.if.else146_crit_edge
  %gcblock147 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %84 = ptrtoint ptr %gcblock147 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gcblock147, align 4
  %cmp148 = icmp eq ptr %arrayidx, %85
  br i1 %cmp148, label %if.else146.if.end197_crit_edge, label %if.else153

if.else146.if.end197_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.else153:                                       ; preds = %if.else146
  %86 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dirty_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 197, i32 %87)
  %cmp155 = icmp ult i32 %87, 197
  %sub158 = sub i32 %87, %addedsize.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %sub158)
  %cmp159 = icmp ugt i32 %sub158, 196
  %or.cond = select i1 %cmp155, i1 true, i1 %cmp159
  br i1 %or.cond, label %if.else169, label %do.end163

do.end163:                                        ; preds = %if.else153
  %call.i.i303 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx) #6
  br i1 %call.i.i303, label %if.end.i.i306, label %do.end163.list_del.exit308_crit_edge

do.end163.list_del.exit308_crit_edge:             ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit308

if.end.i.i306:                                    ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i304 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i304 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i304, align 4
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx, align 4
  %prev1.i.i.i305 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i305 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i305, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %list_del.exit308

list_del.exit308:                                 ; preds = %if.end.i.i306, %do.end163.list_del.exit308_crit_edge
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx, align 4
  %prev.i307 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i307 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i307, align 4
  %dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33
  %prev.i309 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33, i32 1
  %96 = ptrtoint ptr %prev.i309 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i309, align 4
  %call.i.i310 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %97, ptr noundef %dirty_list) #6
  br i1 %call.i.i310, label %if.end.i.i312, label %list_del.exit308.if.end197_crit_edge

list_del.exit308.if.end197_crit_edge:             ; preds = %list_del.exit308
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.end.i.i312:                                    ; preds = %list_del.exit308
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %prev.i309 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx, ptr %prev.i309, align 4
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %dirty_list, ptr %arrayidx, align 4
  %100 = ptrtoint ptr %prev.i307 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev.i307, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %arrayidx, ptr %97, align 4
  br label %if.end197

if.else169:                                       ; preds = %if.else153
  %102 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sector_size, align 4
  %div172288 = lshr i32 %103, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %div172288)
  %cmp173.not = icmp uge i32 %87, %div172288
  call void @__sanitizer_cov_trace_cmp4(i32 %sub158, i32 %div172288)
  %cmp179.not = icmp ult i32 %sub158, %div172288
  %or.cond289 = select i1 %cmp173.not, i1 %cmp179.not, i1 false
  br i1 %or.cond289, label %do.end183, label %if.else169.if.end197_crit_edge

if.else169.if.end197_crit_edge:                   ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

do.end183:                                        ; preds = %if.else169
  %call.i.i314 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx) #6
  br i1 %call.i.i314, label %if.end.i.i317, label %do.end183.list_del.exit319_crit_edge

do.end183.list_del.exit319_crit_edge:             ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit319

if.end.i.i317:                                    ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i315 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i315 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i315, align 4
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx, align 4
  %prev1.i.i.i316 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i316 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i316, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del.exit319

list_del.exit319:                                 ; preds = %if.end.i.i317, %do.end183.list_del.exit319_crit_edge
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx, align 4
  %prev.i318 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i318 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i318, align 4
  %very_dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32
  %prev.i320 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32, i32 1
  %112 = ptrtoint ptr %prev.i320 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i320, align 4
  %call.i.i321 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %113, ptr noundef %very_dirty_list) #6
  br i1 %call.i.i321, label %if.end.i.i323, label %list_del.exit319.if.end197_crit_edge

list_del.exit319.if.end197_crit_edge:             ; preds = %list_del.exit319
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.end.i.i323:                                    ; preds = %list_del.exit319
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %prev.i320 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %arrayidx, ptr %prev.i320, align 4
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %very_dirty_list, ptr %arrayidx, align 4
  %116 = ptrtoint ptr %prev.i318 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev.i318, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %arrayidx, ptr %113, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.end.i.i323, %list_del.exit319.if.end197_crit_edge, %if.else169.if.end197_crit_edge, %if.end.i.i312, %list_del.exit308.if.end197_crit_edge, %if.else146.if.end197_crit_edge, %if.end.i.i301, %do.end139.if.end197_crit_edge, %list_add_tail.exit297, %if.end.i.i292, %do.end126.if.end197_crit_edge, %if.end96.if.end197_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end197, %if.then94, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jffs2_ref_totlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_thread_should_wake(ptr noundef %c) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_complete_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 39
  %0 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %erase_complete_list, align 4
  %cmp.i.not = icmp eq ptr %1, %erase_complete_list
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %2 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %erase_pending_list, align 4
  %cmp.i47.not = icmp eq ptr %3, %erase_pending_list
  br i1 %cmp.i47.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %4 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unchecked_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %6 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_erasing_blocks, align 4
  %nr_free_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %8 = ptrtoint ptr %nr_free_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_free_blocks, align 4
  %add7 = add i32 %9, %7
  %resv_blocks_gctrigger = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 22
  %10 = ptrtoint ptr %resv_blocks_gctrigger to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %resv_blocks_gctrigger, align 2
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %conv)
  %cmp = icmp ult i32 %add7, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %12 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty_size, align 4
  %erasing_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 14
  %14 = ptrtoint ptr %erasing_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erasing_size, align 4
  %add = add i32 %15, %13
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %16 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sector_size, align 4
  %mul = mul i32 %17, %7
  %sub = sub i32 %add, %mul
  %nospc_dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 26
  %18 = ptrtoint ptr %nospc_dirty_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nospc_dirty_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %19)
  %cmp9 = icmp ugt i32 %sub, %19
  %spec.select = zext i1 %cmp9 to i32
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end5.if.end12_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5.if.end12_crit_edge ], [ %spec.select, %land.lhs.true ]
  %very_dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32
  %vdirty_blocks_gctrigger = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end12
  %jeb.0.in = phi ptr [ %very_dirty_list, %if.end12 ], [ %jeb.0, %for.body.for.cond_crit_edge ]
  %nr_very_dirty.0 = phi i32 [ 0, %if.end12 ], [ %inc, %for.body.for.cond_crit_edge ]
  %20 = ptrtoint ptr %jeb.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %jeb.0 = load ptr, ptr %jeb.0.in, align 4
  %cmp14.not = icmp eq ptr %jeb.0, %very_dirty_list
  br i1 %cmp14.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %inc = add i32 %nr_very_dirty.0, 1
  %21 = ptrtoint ptr %vdirty_blocks_gctrigger to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vdirty_blocks_gctrigger, align 1
  %conv16 = zext i8 %22 to i32
  %cmp17 = icmp eq i32 %inc, %conv16
  br i1 %cmp17, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ %ret.0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_is_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_write_sumnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jffs2_close_nextblock(ptr noundef %c, ptr noundef %jeb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %0 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nextblock, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %2 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wasted_size, align 4
  %dirty_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %4 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dirty_size, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %add)
  %cmp1 = icmp ugt i32 %add, 196
  br i1 %cmp1, label %if.then2, label %do.end23

if.then2:                                         ; preds = %if.end
  %dirty_size4 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %6 = ptrtoint ptr %dirty_size4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty_size4, align 4
  %add5 = add i32 %7, %3
  store i32 %add5, ptr %dirty_size4, align 4
  %8 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wasted_size, align 4
  %wasted_size7 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %10 = ptrtoint ptr %wasted_size7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wasted_size7, align 4
  %sub = sub i32 %11, %9
  store i32 %sub, ptr %wasted_size7, align 4
  %12 = load i32, ptr %wasted_size, align 4
  %13 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_size, align 4
  %add10 = add i32 %14, %12
  store i32 %add10, ptr %dirty_size, align 4
  store i32 0, ptr %wasted_size, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %15 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sector_size, align 4
  %div44 = lshr i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %div44)
  %cmp13.not = icmp ult i32 %add10, %div44
  br i1 %cmp13.not, label %do.end18, label %do.end16

do.end16:                                         ; preds = %if.then2
  %very_dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32
  %prev.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %18, ptr noundef %very_dirty_list) #6
  br i1 %call.i.i, label %do.end16.if.end25.sink.split_crit_edge, label %do.end16.if.end25_crit_edge

do.end16.if.end25_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end16.if.end25.sink.split_crit_edge:           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

do.end18:                                         ; preds = %if.then2
  %dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33
  %prev.i45 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33, i32 1
  %19 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i45, align 4
  %call.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %20, ptr noundef %dirty_list) #6
  br i1 %call.i.i46, label %do.end18.if.end25.sink.split_crit_edge, label %do.end18.if.end25_crit_edge

do.end18.if.end25_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end18.if.end25.sink.split_crit_edge:           ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

do.end23:                                         ; preds = %if.end
  %clean_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31
  %prev.i50 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31, i32 1
  %21 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i50, align 4
  %call.i.i51 = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %22, ptr noundef %clean_list) #6
  br i1 %call.i.i51, label %do.end23.if.end25.sink.split_crit_edge, label %do.end23.if.end25_crit_edge

do.end23.if.end25_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end23.if.end25.sink.split_crit_edge:           ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %do.end23.if.end25.sink.split_crit_edge, %do.end18.if.end25.sink.split_crit_edge, %do.end16.if.end25.sink.split_crit_edge
  %prev.i50.sink = phi ptr [ %prev.i, %do.end16.if.end25.sink.split_crit_edge ], [ %prev.i45, %do.end18.if.end25.sink.split_crit_edge ], [ %prev.i50, %do.end23.if.end25.sink.split_crit_edge ]
  %clean_list.sink = phi ptr [ %very_dirty_list, %do.end16.if.end25.sink.split_crit_edge ], [ %dirty_list, %do.end18.if.end25.sink.split_crit_edge ], [ %clean_list, %do.end23.if.end25.sink.split_crit_edge ]
  %.sink55 = phi ptr [ %18, %do.end16.if.end25.sink.split_crit_edge ], [ %20, %do.end18.if.end25.sink.split_crit_edge ], [ %22, %do.end23.if.end25.sink.split_crit_edge ]
  %23 = ptrtoint ptr %prev.i50.sink to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %jeb, ptr %prev.i50.sink, align 4
  %24 = ptrtoint ptr %jeb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %clean_list.sink, ptr %jeb, align 4
  %prev3.i.i52 = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.sink55, ptr %prev3.i.i52, align 4
  %26 = ptrtoint ptr %.sink55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %jeb, ptr %.sink55, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %do.end23.if.end25_crit_edge, %do.end18.if.end25_crit_edge, %do.end16.if.end25_crit_edge
  %27 = ptrtoint ptr %nextblock to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %nextblock, align 4
  br label %return

return:                                           ; preds = %if.end25, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_erase_pending_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_sum_reset_collected(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/jffs2/nodemgmt.c", i32 175, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/jffs2/nodemgmt.c", i32 517, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jffs2_add_physical_node_ref._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @jffs2_add_physical_node_ref._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jffs2/nodemgmt.c", i32 520, i32 4}
!10 = !{ptr @jffs2_add_physical_node_ref._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @jffs2_add_physical_node_ref._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jffs2/nodemgmt.c", i32 522, i32 4}
!14 = !{ptr @jffs2_add_physical_node_ref._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @jffs2_add_physical_node_ref._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jffs2/nodemgmt.c", i32 523, i32 3}
!18 = !{ptr @jffs2_add_physical_node_ref._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @jffs2_add_physical_node_ref._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jffs2/nodemgmt.c", i32 589, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @jffs2_mark_node_obsolete._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @jffs2_mark_node_obsolete._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jffs2/nodemgmt.c", i32 599, i32 3}
!27 = !{ptr @jffs2_mark_node_obsolete._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @jffs2_mark_node_obsolete._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jffs2/nodemgmt.c", i32 460, i32 4}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jffs2_do_reserve_space._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @jffs2_do_reserve_space._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/nodemgmt.c", i32 315, i32 4}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jffs2_find_nextblock._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @jffs2_find_nextblock._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2154087738}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2154165106, i64 2154165590, i64 2154165143, i64 2154165199, i64 2154165233, i64 2154165257, i64 2154165298, i64 2154165319, i64 2154165347, i64 2154165381}
