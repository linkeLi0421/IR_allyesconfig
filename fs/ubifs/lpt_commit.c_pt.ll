; ModuleID = '/llk/IR_all_yes/fs/ubifs/lpt_commit.c_pt.bc'
source_filename = "../fs/ubifs/lpt_commit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.list_head }
%struct.ubifs_nnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_nbranch] }
%struct.ubifs_nbranch = type { i32, i32, %union.anon.86 }
%union.anon.86 = type { ptr }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_cnode = type { ptr, ptr, i32, i32, i32, i32 }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }

@ubifs_lpt_start_commit.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_lpt_start_commit\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ubifs/lpt_commit.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UBIFS DBG lp (pid %d): \0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_lpt_start_commit.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG cmt (pid %d): no cnodes to commit\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cnt != 0\00", [23 x i8] zeroinitializer }, align 32
@ubifs_lpt_end_commit.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_lpt_end_commit\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed at LEB %d\00", [47 x i8] zeroinitializer }, align 32
@dbg_check_ltab.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 1, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dbg_check_ltab\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UBIFS DBG lp (pid %d): succeeded\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LPT space error: free %lld lpt_sz %lld\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dirty pnodes %d exceed max %d\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dirty nnodes %d exceed max %d\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LPT wrote %lld but space used was %lld\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LPT wrote %lld but lpt_sz is %lld\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LPT layout size %lld but wrote %lld\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LPT new nhead offs: expected %d was %d\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"LPT chk_lpt_sz %lld + waste %lld exceeds %lld\00", [50 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_lebs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013(pid %d) start dumping all LPT LEBs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_dump_lpt_lebs\00", [44 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_lebs._entry_ptr = internal global ptr @ubifs_dump_lpt_lebs._entry, section ".printk_index", align 4
@ubifs_dump_lpt_lebs._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013(pid %d) finish dumping all LPT LEBs\0A\00", [56 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_lebs._entry_ptr.22 = internal global ptr @ubifs_dump_lpt_lebs._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"!c->ltab[i].tgc\00", [16 x i8] zeroinitializer }, align 32
@lpt_gc_lnum.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpt_gc_lnum\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UBIFS DBG lp (pid %d): LEB %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"node_len != 0\00", [18 x i8] zeroinitializer }, align 32
@lpt_tgc_start.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.25, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpt_tgc_start\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"c->big_lpt\00", [21 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"!test_bit(COW_CNODE, &cnode->flags)\00", [60 x i8] zeroinitializer }, align 32
@get_cnodes_to_commit.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_cnodes_to_commit\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG cmt (pid %d): committing %d cnodes\0A\00", [50 x i8] zeroinitializer }, align 32
@get_cnodes_to_commit.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG lp (pid %d): committing %d cnodes\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cnt == c->dirty_nn_cnt + c->dirty_pn_cnt\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lnum >= c->lpt_first && lnum <= c->lpt_last\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"LPT out of space at LEB %d:%d needing %d, done_ltab %d, done_lsave %d\00", [58 x i8] zeroinitializer }, align 32
@upd_ltab.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"upd_ltab\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBIFS DBG lp (pid %d): LEB %d free %d dirty %d to %d +%d\0A\00", [38 x i8] zeroinitializer }, align 32
@write_cnodes.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_cnodes\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG lp (pid %d): LPT root is at %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@write_cnodes.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG lp (pid %d): LPT head is at %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@write_cnodes.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG lp (pid %d): LPT ltab is at %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@write_cnodes.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG lp (pid %d): LPT lsave is at %d:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"LPT out of space mismatch at LEB %d:%d needing %d, done_ltab %d, done_lsave %d\00", [49 x i8] zeroinitializer }, align 32
@lpt_tgc_end.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.25, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpt_tgc_end\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot allocate memory for ltab checking\00", [55 x i8] zeroinitializer }, align 32
@dbg_check_ltab_lnum.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.25, i8 1, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dbg_check_ltab_lnum\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid empty space in LEB %d at %d\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid free space in LEB %d (free %d, expected %d)\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid dirty space in LEB %d (dirty %d, expected %d)\00", [42 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013(pid %d) start dumping LEB %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dump_lpt_leb\00", [19 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr = internal global ptr @dump_lpt_leb._entry, section ".printk_index", align 4
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot allocate memory to dump LPT\00", [61 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.2, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013LEB %d:%d, pad %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.57 = internal global ptr @dump_lpt_leb._entry.55, section ".printk_index", align 4
@dump_lpt_leb._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.53, ptr @.str.2, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013LEB %d:%d, free %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.60 = internal global ptr @dump_lpt_leb._entry.58, section ".printk_index", align 4
@dump_lpt_leb._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.53, ptr @.str.2, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013LEB %d:%d, pnode num %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.63 = internal global ptr @dump_lpt_leb._entry.61, section ".printk_index", align 4
@dump_lpt_leb._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.2, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013LEB %d:%d, pnode\0A\00", [44 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.66 = internal global ptr @dump_lpt_leb._entry.64, section ".printk_index", align 4
@dump_lpt_leb._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.53, ptr @.str.2, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013LEB %d:%d, nnode num %d, \00", [36 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.69 = internal global ptr @dump_lpt_leb._entry.67, section ".printk_index", align 4
@dump_lpt_leb._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.53, ptr @.str.2, i32 1900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013LEB %d:%d, nnode, \00", [43 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.72 = internal global ptr @dump_lpt_leb._entry.70, section ".printk_index", align 4
@dump_lpt_leb._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.53, ptr @.str.2, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013failed to unpack_node, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.75 = internal global ptr @dump_lpt_leb._entry.73, section ".printk_index", align 4
@dump_lpt_leb._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.53, ptr @.str.2, i32 1909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c%d:%d\00", [24 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.78 = internal global ptr @dump_lpt_leb._entry.76, section ".printk_index", align 4
@dump_lpt_leb._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.53, ptr @.str.2, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c, \00", [27 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.81 = internal global ptr @dump_lpt_leb._entry.79, section ".printk_index", align 4
@dump_lpt_leb._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.53, ptr @.str.2, i32 1913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.84 = internal global ptr @dump_lpt_leb._entry.82, section ".printk_index", align 4
@dump_lpt_leb._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.53, ptr @.str.2, i32 1918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013LEB %d:%d, ltab\0A\00", [45 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.87 = internal global ptr @dump_lpt_leb._entry.85, section ".printk_index", align 4
@dump_lpt_leb._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.53, ptr @.str.2, i32 1922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013LEB %d:%d, lsave len\0A\00", [40 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.90 = internal global ptr @dump_lpt_leb._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LPT node type %d not recognized\00", [32 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.53, ptr @.str.2, i32 1933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(pid %d) finish dumping LEB %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dump_lpt_leb._entry_ptr.94 = internal global ptr @dump_lpt_leb._entry.92, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1185, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1215, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1232, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1287, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1688, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1693, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1720, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1760, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1765, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1783, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1788, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1793, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1798, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1808, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1950, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1953, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1156, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1110, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1131, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 720, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 767, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 105, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 116, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 117, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 118, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 230, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 311, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 131, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 526, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 527, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 528, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 530, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 535, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 744, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1601, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1605, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1623, i32 18 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1629, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1634, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1847, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1850, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1865, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1872, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1883, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1886, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1896, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1899, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1903, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1908, i32 5 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1911, i32 6 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1913, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1918, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1922, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1925, i32 17 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.341 = private constant [25 x i8] c"../fs/ubifs/lpt_commit.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1933, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @dump_lpt_leb._entry, ptr @dump_lpt_leb._entry.55, ptr @dump_lpt_leb._entry.58, ptr @dump_lpt_leb._entry.61, ptr @dump_lpt_leb._entry.64, ptr @dump_lpt_leb._entry.67, ptr @dump_lpt_leb._entry.70, ptr @dump_lpt_leb._entry.73, ptr @dump_lpt_leb._entry.76, ptr @dump_lpt_leb._entry.79, ptr @dump_lpt_leb._entry.82, ptr @dump_lpt_leb._entry.85, ptr @dump_lpt_leb._entry.88, ptr @dump_lpt_leb._entry.92, ptr @dump_lpt_leb._entry_ptr, ptr @dump_lpt_leb._entry_ptr.57, ptr @dump_lpt_leb._entry_ptr.60, ptr @dump_lpt_leb._entry_ptr.63, ptr @dump_lpt_leb._entry_ptr.66, ptr @dump_lpt_leb._entry_ptr.69, ptr @dump_lpt_leb._entry_ptr.72, ptr @dump_lpt_leb._entry_ptr.75, ptr @dump_lpt_leb._entry_ptr.78, ptr @dump_lpt_leb._entry_ptr.81, ptr @dump_lpt_leb._entry_ptr.84, ptr @dump_lpt_leb._entry_ptr.87, ptr @dump_lpt_leb._entry_ptr.90, ptr @dump_lpt_leb._entry_ptr.94, ptr @ubifs_dump_lpt_lebs._entry, ptr @ubifs_dump_lpt_lebs._entry.20, ptr @ubifs_dump_lpt_lebs._entry_ptr, ptr @ubifs_dump_lpt_lebs._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.93], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_lebs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_lebs._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_lpt_leb._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_start_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lpt_start_commit.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lpt_start_commit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lpt_start_commit.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.3, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #7
  %call4 = tail call i32 @dbg_chk_lpt_free_spc(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %do.end
  %call8 = tail call i32 @dbg_check_ltab(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end7
  %check_lpt_free = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 152
  %6 = ptrtoint ptr %check_lpt_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %check_lpt_free, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end11.if.end23_crit_edge, label %if.then13

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then13:                                        ; preds = %if.end11
  %8 = ptrtoint ptr %check_lpt_free to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %check_lpt_free, align 8
  %lpt_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %lpt_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %lpt_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %nhead_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %ltab.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %leb_size4.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %nhead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.then13
  %9 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lpt_lebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp53.i = icmp sgt i32 %10, 0
  br i1 %cmp53.i, label %for.body.lr.ph.i, label %while.cond.need_write_all.exit_crit_edge

while.cond.need_write_all.exit_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_write_all.exit

for.body.lr.ph.i:                                 ; preds = %while.cond
  %11 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lpt_first.i, align 8
  %13 = ptrtoint ptr %nhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nhead_lnum.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %free.054.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %free.1.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add i32 %i.055.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp1.i = icmp eq i32 %add.i, %14
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %leb_size4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leb_size4.i, align 8
  %17 = ptrtoint ptr %nhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nhead_offs.i, align 8
  %sub.i = sub i32 %16, %18
  %conv.i = sext i32 %sub.i to i64
  %add2.i = add i64 %free.054.i, %conv.i
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %19 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ltab.i, align 8
  %arrayidx.i = getelementptr %struct.ubifs_lpt_lprops, ptr %20, i32 %i.055.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %leb_size4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %leb_size4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp5.i = icmp eq i32 %22, %24
  br i1 %cmp5.i, label %if.then7.i, label %if.else11.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i = sext i32 %22 to i64
  %add10.i = add i64 %free.054.i, %conv9.i
  br label %for.inc.i

if.else11.i:                                      ; preds = %if.else.i
  %dirty.i = getelementptr %struct.ubifs_lpt_lprops, ptr %20, i32 %i.055.i, i32 1
  %25 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dirty.i, align 4
  %add17.i = add i32 %26, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %24)
  %cmp19.i = icmp eq i32 %add17.i, %24
  br i1 %cmp19.i, label %if.then21.i, label %if.else11.i.for.inc.i_crit_edge

if.else11.i.for.inc.i_crit_edge:                  ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.i = sext i32 %24 to i64
  %add24.i = add i64 %free.054.i, %conv23.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %if.else11.i.for.inc.i_crit_edge, %if.then7.i, %if.then.i
  %free.1.i = phi i64 [ %add2.i, %if.then.i ], [ %add10.i, %if.then7.i ], [ %add24.i, %if.then21.i ], [ %free.054.i, %if.else11.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.need_write_all.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.need_write_all.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_write_all.exit

need_write_all.exit:                              ; preds = %for.inc.i.need_write_all.exit_crit_edge, %while.cond.need_write_all.exit_crit_edge
  %free.0.lcssa.i = phi i64 [ 0, %while.cond.need_write_all.exit_crit_edge ], [ %free.1.i, %for.inc.i.need_write_all.exit_crit_edge ]
  %27 = ptrtoint ptr %lpt_sz.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lpt_sz.i, align 8
  %mul.i = shl i64 %28, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %free.0.lcssa.i, i64 %mul.i)
  %cmp27.not.i.not = icmp sgt i64 %free.0.lcssa.i, %mul.i
  br i1 %cmp27.not.i.not, label %need_write_all.exit.if.end23_crit_edge, label %while.body

need_write_all.exit.if.end23_crit_edge:           ; preds = %need_write_all.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

while.body:                                       ; preds = %need_write_all.exit
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #7
  %call18 = tail call fastcc i32 @lpt_gc(ptr noundef %c)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #7
  br label %while.cond

if.end23:                                         ; preds = %need_write_all.exit.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  tail call fastcc void @lpt_tgc_start(ptr noundef %c)
  %dirty_pn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %29 = ptrtoint ptr %dirty_pn_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty_pn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool24.not = icmp eq i32 %30, 0
  br i1 %tobool24.not, label %do.body26, label %if.end45

do.body26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lpt_start_commit.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lpt_start_commit, %if.then38)) #7
          to label %out [label %if.then38], !srcloc !181

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %31 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i122 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i122 to ptr
  %task40 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task40, align 8
  %pid41 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid41, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lpt_start_commit.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.4, i32 noundef %36) #7
  br label %out

if.end45:                                         ; preds = %if.end23
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %37 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool46.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool46.not, label %land.lhs.true, label %if.end45.if.then60_crit_edge

if.end45.if.then60_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

land.lhs.true:                                    ; preds = %if.end45
  %lpt_lebs.i123 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %38 = ptrtoint ptr %lpt_lebs.i123 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lpt_lebs.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp53.i124 = icmp sgt i32 %39, 0
  br i1 %cmp53.i124, label %for.body.lr.ph.i130, label %land.lhs.true.need_write_all.exit162_crit_edge

land.lhs.true.need_write_all.exit162_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_write_all.exit162

for.body.lr.ph.i130:                              ; preds = %land.lhs.true
  %lpt_first.i125 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %40 = ptrtoint ptr %lpt_first.i125 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lpt_first.i125, align 8
  %nhead_lnum.i126 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %42 = ptrtoint ptr %nhead_lnum.i126 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nhead_lnum.i126, align 4
  %ltab.i127 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %leb_size4.i128 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %nhead_offs.i129 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  br label %for.body.i135

for.body.i135:                                    ; preds = %for.inc.i156.for.body.i135_crit_edge, %for.body.lr.ph.i130
  %i.055.i131 = phi i32 [ 0, %for.body.lr.ph.i130 ], [ %inc.i154, %for.inc.i156.for.body.i135_crit_edge ]
  %free.054.i132 = phi i64 [ 0, %for.body.lr.ph.i130 ], [ %free.1.i153, %for.inc.i156.for.body.i135_crit_edge ]
  %add.i133 = add i32 %i.055.i131, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i133, i32 %43)
  %cmp1.i134 = icmp eq i32 %add.i133, %43
  br i1 %cmp1.i134, label %if.then.i139, label %if.else.i142

if.then.i139:                                     ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %leb_size4.i128 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %leb_size4.i128, align 8
  %46 = ptrtoint ptr %nhead_offs.i129 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nhead_offs.i129, align 8
  %sub.i136 = sub i32 %45, %47
  %conv.i137 = sext i32 %sub.i136 to i64
  %add2.i138 = add i64 %free.054.i132, %conv.i137
  br label %for.inc.i156

if.else.i142:                                     ; preds = %for.body.i135
  %48 = ptrtoint ptr %ltab.i127 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ltab.i127, align 8
  %arrayidx.i140 = getelementptr %struct.ubifs_lpt_lprops, ptr %49, i32 %i.055.i131
  %50 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i140, align 4
  %52 = ptrtoint ptr %leb_size4.i128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %leb_size4.i128, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp5.i141 = icmp eq i32 %51, %53
  br i1 %cmp5.i141, label %if.then7.i145, label %if.else11.i149

if.then7.i145:                                    ; preds = %if.else.i142
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i143 = sext i32 %51 to i64
  %add10.i144 = add i64 %free.054.i132, %conv9.i143
  br label %for.inc.i156

if.else11.i149:                                   ; preds = %if.else.i142
  %dirty.i146 = getelementptr %struct.ubifs_lpt_lprops, ptr %49, i32 %i.055.i131, i32 1
  %54 = ptrtoint ptr %dirty.i146 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dirty.i146, align 4
  %add17.i147 = add i32 %55, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i147, i32 %53)
  %cmp19.i148 = icmp eq i32 %add17.i147, %53
  br i1 %cmp19.i148, label %if.then21.i152, label %if.else11.i149.for.inc.i156_crit_edge

if.else11.i149.for.inc.i156_crit_edge:            ; preds = %if.else11.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i156

if.then21.i152:                                   ; preds = %if.else11.i149
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.i150 = sext i32 %53 to i64
  %add24.i151 = add i64 %free.054.i132, %conv23.i150
  br label %for.inc.i156

for.inc.i156:                                     ; preds = %if.then21.i152, %if.else11.i149.for.inc.i156_crit_edge, %if.then7.i145, %if.then.i139
  %free.1.i153 = phi i64 [ %add2.i138, %if.then.i139 ], [ %add10.i144, %if.then7.i145 ], [ %add24.i151, %if.then21.i152 ], [ %free.054.i132, %if.else11.i149.for.inc.i156_crit_edge ]
  %inc.i154 = add nuw nsw i32 %i.055.i131, 1
  %exitcond.not.i155 = icmp eq i32 %inc.i154, %39
  br i1 %exitcond.not.i155, label %for.inc.i156.need_write_all.exit162_crit_edge, label %for.inc.i156.for.body.i135_crit_edge

for.inc.i156.for.body.i135_crit_edge:             ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i135

for.inc.i156.need_write_all.exit162_crit_edge:    ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_write_all.exit162

need_write_all.exit162:                           ; preds = %for.inc.i156.need_write_all.exit162_crit_edge, %land.lhs.true.need_write_all.exit162_crit_edge
  %free.0.lcssa.i157 = phi i64 [ 0, %land.lhs.true.need_write_all.exit162_crit_edge ], [ %free.1.i153, %for.inc.i156.need_write_all.exit162_crit_edge ]
  %lpt_sz.i158 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %56 = ptrtoint ptr %lpt_sz.i158 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %lpt_sz.i158, align 8
  %mul.i159 = shl i64 %57, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %free.0.lcssa.i157, i64 %mul.i159)
  %cmp27.not.i160.not = icmp sgt i64 %free.0.lcssa.i157, %mul.i159
  br i1 %cmp27.not.i160.not, label %need_write_all.exit162.if.end54_crit_edge, label %if.then49

need_write_all.exit162.if.end54_crit_edge:        ; preds = %need_write_all.exit162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then49:                                        ; preds = %need_write_all.exit162
  %call.i = tail call ptr @ubifs_pnode_lookup(ptr noundef %c, i32 noundef 0) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then49.make_tree_dirty.exit_crit_edge, label %if.then49.while.cond.i_crit_edge

if.then49.while.cond.i_crit_edge:                 ; preds = %if.then49
  br label %while.cond.i

if.then49.make_tree_dirty.exit_crit_edge:         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_tree_dirty.exit

while.cond.i:                                     ; preds = %next_pnode_to_dirty.exit.i.while.cond.i_crit_edge, %if.then49.while.cond.i_crit_edge
  %pnode.0.i = phi ptr [ %retval.0.i.i, %next_pnode_to_dirty.exit.i.while.cond.i_crit_edge ], [ %call.i, %if.then49.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %pnode.0.i, null
  br i1 %tobool.not.i, label %if.end53, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  tail call fastcc void @do_make_pnode_dirty(ptr noundef %c, ptr noundef nonnull %pnode.0.i) #7
  %58 = ptrtoint ptr %pnode.0.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pnode.0.i, align 4
  %iip1.i.i = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode.0.i, i32 0, i32 3
  %60 = ptrtoint ptr %iip1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iip1.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %while.body.i
  %iip.0.in.i.i = phi i32 [ %61, %while.body.i ], [ %iip.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %iip.0.i.i = add i32 %iip.0.in.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iip.0.i.i)
  %cmp.i16.i = icmp slt i32 %iip.0.i.i, 4
  br i1 %cmp.i16.i, label %for.body.i.i, label %do.body.preheader.i.i

do.body.preheader.i.i:                            ; preds = %for.cond.i.i
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %tobool5.not109.i.i = icmp eq ptr %63, null
  br i1 %tobool5.not109.i.i, label %do.body.preheader.i.i.next_pnode_to_dirty.exit.i_crit_edge, label %do.body.preheader.i.i.for.cond8.preheader.i.i_crit_edge

do.body.preheader.i.i.for.cond8.preheader.i.i_crit_edge: ; preds = %do.body.preheader.i.i
  br label %for.cond8.preheader.i.i

do.body.preheader.i.i.next_pnode_to_dirty.exit.i_crit_edge: ; preds = %do.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_pnode_to_dirty.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr %struct.ubifs_nnode, ptr %59, i32 0, i32 6, i32 %iip.0.i.i
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef %59, i32 noundef %iip.0.i.i) #7
  br label %next_pnode_to_dirty.exit.i

do.body.loopexit.i.i:                             ; preds = %for.cond8.i.i
  %66 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %68, align 4
  %tobool5.not.i.i = icmp eq ptr %67, null
  br i1 %tobool5.not.i.i, label %do.body.loopexit.i.i.next_pnode_to_dirty.exit.i_crit_edge, label %do.body.loopexit.i.i.for.cond8.preheader.i.i_crit_edge

do.body.loopexit.i.i.for.cond8.preheader.i.i_crit_edge: ; preds = %do.body.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i.i

do.body.loopexit.i.i.next_pnode_to_dirty.exit.i_crit_edge: ; preds = %do.body.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_pnode_to_dirty.exit.i

for.cond8.preheader.i.i:                          ; preds = %do.body.loopexit.i.i.for.cond8.preheader.i.i_crit_edge, %do.body.preheader.i.i.for.cond8.preheader.i.i_crit_edge
  %68 = phi ptr [ %67, %do.body.loopexit.i.i.for.cond8.preheader.i.i_crit_edge ], [ %63, %do.body.preheader.i.i.for.cond8.preheader.i.i_crit_edge ]
  %.pn.i.i = phi ptr [ %68, %do.body.loopexit.i.i.for.cond8.preheader.i.i_crit_edge ], [ %59, %do.body.preheader.i.i.for.cond8.preheader.i.i_crit_edge ]
  %.in.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %.pn.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %.in.i.i, align 4
  br label %for.cond8.i.i

for.cond8.i.i:                                    ; preds = %for.body10.i.i.for.cond8.i.i_crit_edge, %for.cond8.preheader.i.i
  %iip.1.in.i.i = phi i32 [ %iip.1.i.i, %for.body10.i.i.for.cond8.i.i_crit_edge ], [ %70, %for.cond8.preheader.i.i ]
  %iip.1.i.i = add i32 %iip.1.in.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iip.1.i.i)
  %cmp9.i.i = icmp slt i32 %iip.1.i.i, 4
  br i1 %cmp9.i.i, label %for.body10.i.i, label %do.body.loopexit.i.i

for.body10.i.i:                                   ; preds = %for.cond8.i.i
  %arrayidx12.i.i = getelementptr %struct.ubifs_nnode, ptr %68, i32 0, i32 6, i32 %iip.1.i.i
  %71 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx12.i.i, align 4
  %tobool14.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool14.not.i.i, label %for.body10.i.i.for.cond8.i.i_crit_edge, label %do.end.i.i

for.body10.i.i.for.cond8.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.i.i

do.end.i.i:                                       ; preds = %for.body10.i.i
  %call21.i.i = tail call ptr @ubifs_get_nnode(ptr noundef %c, ptr noundef nonnull %68, i32 noundef %iip.1.i.i) #7
  %cmp.i.i.i = icmp ugt ptr %call21.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i.next_pnode_to_dirty.exit.i_crit_edge, label %do.end.i.i.while.cond.i.i_crit_edge

do.end.i.i.while.cond.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %while.cond.i.i

do.end.i.i.next_pnode_to_dirty.exit.i_crit_edge:  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_pnode_to_dirty.exit.i

while.cond.i.i:                                   ; preds = %for.end37.i.i.while.cond.i.i_crit_edge, %do.end.i.i.while.cond.i.i_crit_edge
  %nnode.1.i.i = phi ptr [ %call41.i.i, %for.end37.i.i.while.cond.i.i_crit_edge ], [ %call21.i.i, %do.end.i.i.while.cond.i.i_crit_edge ]
  %level.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp25.i.i = icmp sgt i32 %74, 1
  %arrayidx30.i.i = getelementptr %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 6, i32 0
  %75 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool32.not.i.i = icmp eq i32 %76, 0
  br i1 %cmp25.i.i, label %for.body28.preheader.i.i, label %for.cond45.preheader.i.i

for.body28.preheader.i.i:                         ; preds = %while.cond.i.i
  br i1 %tobool32.not.i.i, label %for.inc35.i.i, label %for.body28.preheader.i.i.for.end37.i.i_crit_edge

for.body28.preheader.i.i.for.end37.i.i_crit_edge: ; preds = %for.body28.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37.i.i

for.cond45.preheader.i.i:                         ; preds = %while.cond.i.i
  br i1 %tobool32.not.i.i, label %for.inc54.i.i, label %for.cond45.preheader.i.i.for.end56.i.i_crit_edge

for.cond45.preheader.i.i.for.end56.i.i_crit_edge: ; preds = %for.cond45.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56.i.i

for.inc35.i.i:                                    ; preds = %for.body28.preheader.i.i
  %arrayidx30.1.i.i = getelementptr %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 6, i32 1
  %77 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx30.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool32.not.1.i.i = icmp eq i32 %78, 0
  br i1 %tobool32.not.1.i.i, label %for.inc35.1.i.i, label %for.inc35.i.i.for.end37.i.i_crit_edge

for.inc35.i.i.for.end37.i.i_crit_edge:            ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37.i.i

for.inc35.1.i.i:                                  ; preds = %for.inc35.i.i
  %arrayidx30.2.i.i = getelementptr %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 6, i32 2
  %79 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx30.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool32.not.2.i.i = icmp eq i32 %80, 0
  br i1 %tobool32.not.2.i.i, label %for.inc35.2.i.i, label %for.inc35.1.i.i.for.end37.i.i_crit_edge

for.inc35.1.i.i.for.end37.i.i_crit_edge:          ; preds = %for.inc35.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37.i.i

for.inc35.2.i.i:                                  ; preds = %for.inc35.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx30.3.i.i = getelementptr %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 6, i32 3
  %81 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx30.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool32.not.3.i.i = icmp eq i32 %82, 0
  %spec.select.i.i = select i1 %tobool32.not.3.i.i, i32 0, i32 3
  br label %for.end37.i.i

for.end37.i.i:                                    ; preds = %for.inc35.2.i.i, %for.inc35.1.i.i.for.end37.i.i_crit_edge, %for.inc35.i.i.for.end37.i.i_crit_edge, %for.body28.preheader.i.i.for.end37.i.i_crit_edge
  %cmp38.i.i = phi i32 [ 2, %for.inc35.1.i.i.for.end37.i.i_crit_edge ], [ 1, %for.inc35.i.i.for.end37.i.i_crit_edge ], [ 0, %for.body28.preheader.i.i.for.end37.i.i_crit_edge ], [ %spec.select.i.i, %for.inc35.2.i.i ]
  %call41.i.i = tail call ptr @ubifs_get_nnode(ptr noundef %c, ptr noundef %nnode.1.i.i, i32 noundef %cmp38.i.i) #7
  %cmp.i100.i.i = icmp ugt ptr %call41.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100.i.i, label %for.end37.i.i.next_pnode_to_dirty.exit.i_crit_edge, label %for.end37.i.i.while.cond.i.i_crit_edge

for.end37.i.i.while.cond.i.i_crit_edge:           ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

for.end37.i.i.next_pnode_to_dirty.exit.i_crit_edge: ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_pnode_to_dirty.exit.i

for.inc54.i.i:                                    ; preds = %for.cond45.preheader.i.i
  %arrayidx49.1.i.i = getelementptr %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %arrayidx49.1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx49.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool51.not.1.i.i = icmp eq i32 %84, 0
  br i1 %tobool51.not.1.i.i, label %for.inc54.1.i.i, label %for.inc54.i.i.for.end56.i.i_crit_edge

for.inc54.i.i.for.end56.i.i_crit_edge:            ; preds = %for.inc54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56.i.i

for.inc54.1.i.i:                                  ; preds = %for.inc54.i.i
  %arrayidx49.2.i.i = getelementptr %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 6, i32 2
  %85 = ptrtoint ptr %arrayidx49.2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx49.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool51.not.2.i.i = icmp eq i32 %86, 0
  br i1 %tobool51.not.2.i.i, label %for.inc54.2.i.i, label %for.inc54.1.i.i.for.end56.i.i_crit_edge

for.inc54.1.i.i.for.end56.i.i_crit_edge:          ; preds = %for.inc54.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56.i.i

for.inc54.2.i.i:                                  ; preds = %for.inc54.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx49.3.i.i = getelementptr %struct.ubifs_nnode, ptr %nnode.1.i.i, i32 0, i32 6, i32 3
  %87 = ptrtoint ptr %arrayidx49.3.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx49.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool51.not.3.i.i = icmp eq i32 %88, 0
  %spec.select122.i.i = select i1 %tobool51.not.3.i.i, i32 0, i32 3
  br label %for.end56.i.i

for.end56.i.i:                                    ; preds = %for.inc54.2.i.i, %for.inc54.1.i.i.for.end56.i.i_crit_edge, %for.inc54.i.i.for.end56.i.i_crit_edge, %for.cond45.preheader.i.i.for.end56.i.i_crit_edge
  %cmp57.i.i = phi i32 [ 2, %for.inc54.1.i.i.for.end56.i.i_crit_edge ], [ 1, %for.inc54.i.i.for.end56.i.i_crit_edge ], [ 0, %for.cond45.preheader.i.i.for.end56.i.i_crit_edge ], [ %spec.select122.i.i, %for.inc54.2.i.i ]
  %call60.i.i = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef %nnode.1.i.i, i32 noundef %cmp57.i.i) #7
  br label %next_pnode_to_dirty.exit.i

next_pnode_to_dirty.exit.i:                       ; preds = %for.end56.i.i, %for.end37.i.i.next_pnode_to_dirty.exit.i_crit_edge, %do.end.i.i.next_pnode_to_dirty.exit.i_crit_edge, %do.body.loopexit.i.i.next_pnode_to_dirty.exit.i_crit_edge, %if.then.i.i, %do.body.preheader.i.i.next_pnode_to_dirty.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %call60.i.i, %for.end56.i.i ], [ %call21.i.i, %do.end.i.i.next_pnode_to_dirty.exit.i_crit_edge ], [ null, %do.body.preheader.i.i.next_pnode_to_dirty.exit.i_crit_edge ], [ %call41.i.i, %for.end37.i.i.next_pnode_to_dirty.exit.i_crit_edge ], [ null, %do.body.loopexit.i.i.next_pnode_to_dirty.exit.i_crit_edge ]
  %cmp.i17.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17.i, label %next_pnode_to_dirty.exit.i.make_tree_dirty.exit_crit_edge, label %next_pnode_to_dirty.exit.i.while.cond.i_crit_edge

next_pnode_to_dirty.exit.i.while.cond.i_crit_edge: ; preds = %next_pnode_to_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

next_pnode_to_dirty.exit.i.make_tree_dirty.exit_crit_edge: ; preds = %next_pnode_to_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_tree_dirty.exit

make_tree_dirty.exit:                             ; preds = %next_pnode_to_dirty.exit.i.make_tree_dirty.exit_crit_edge, %if.then49.make_tree_dirty.exit_crit_edge
  %retval.0.i164.in = phi ptr [ %call.i, %if.then49.make_tree_dirty.exit_crit_edge ], [ %retval.0.i.i, %next_pnode_to_dirty.exit.i.make_tree_dirty.exit_crit_edge ]
  %retval.0.i164 = ptrtoint ptr %retval.0.i164.in to i32
  br label %out

if.end53:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @lpt_tgc_start(ptr noundef %c)
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %need_write_all.exit162.if.end54_crit_edge
  %89 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load56.pr = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load56.pr)
  %tobool59.not = icmp sgt i16 %bf.load56.pr, -1
  br i1 %tobool59.not, label %if.end54.if.end61_crit_edge, label %if.end54.if.then60_crit_edge

if.end54.if.then60_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %if.end54.if.then60_crit_edge, %if.end45.if.then60_crit_edge
  tail call fastcc void @populate_lsave(ptr noundef %c)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end54.if.end61_crit_edge
  %call62 = tail call fastcc i32 @get_cnodes_to_commit(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp.not = icmp eq i32 %call62, 0
  br i1 %cmp.not, label %if.then72, label %if.end61.do.end75_crit_edge, !prof !182

if.end61.do.end75_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

if.then72:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 1232) #7
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %if.end61.do.end75_crit_edge
  %dbg.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %90 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i.i = load i8, ptr @ubifs_dbg, align 4
  %92 = and i8 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i.i.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i.i.i, label %dbg_is_chk_lprops.exit.i.i, label %do.end75.if.end.i.i_crit_edge

do.end75.if.end.i.i_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

dbg_is_chk_lprops.exit.i.i:                       ; preds = %do.end75
  %chk_lprops.i.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %91, i32 0, i32 19
  %93 = ptrtoint ptr %chk_lprops.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load1.i.i.i = load i8, ptr %chk_lprops.i.i.i, align 4
  %94 = and i8 %bf.load1.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i165 = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i165, label %dbg_is_chk_lprops.exit.i.i.if.end.i_crit_edge, label %dbg_is_chk_lprops.exit.i.i.if.end.i.i_crit_edge

dbg_is_chk_lprops.exit.i.i.if.end.i.i_crit_edge:  ; preds = %dbg_is_chk_lprops.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

dbg_is_chk_lprops.exit.i.i.if.end.i_crit_edge:    ; preds = %dbg_is_chk_lprops.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %dbg_is_chk_lprops.exit.i.i.if.end.i.i_crit_edge, %do.end75.if.end.i.i_crit_edge
  %chk_lpt_sz1.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %91, i32 0, i32 8
  %95 = call ptr @memset(ptr %chk_lpt_sz1.i.i, i32 0, i32 28)
  %96 = ptrtoint ptr %dirty_pn_cnt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dirty_pn_cnt, align 4
  %pnode_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %98 = ptrtoint ptr %pnode_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pnode_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp.i.i166 = icmp sgt i32 %97, %99
  br i1 %cmp.i.i166, label %if.end5.i.i, label %if.end5.i.thread.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.11, i32 noundef %97, i32 noundef %99) #7
  %dirty_nn_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %100 = ptrtoint ptr %dirty_nn_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dirty_nn_cnt.i.i, align 8
  %nnode_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 141
  %102 = ptrtoint ptr %nnode_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nnode_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp6.i.i = icmp sgt i32 %101, %103
  br i1 %cmp6.i.i, label %if.end5.i.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge, label %if.end5.i.i.out_crit_edge

if.end5.i.i.out_crit_edge:                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5.i.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit.thread626.i

if.end5.i.thread.i:                               ; preds = %if.end.i.i
  %dirty_nn_cnt.i749.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %104 = ptrtoint ptr %dirty_nn_cnt.i749.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dirty_nn_cnt.i749.i, align 8
  %nnode_cnt.i750.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 141
  %106 = ptrtoint ptr %nnode_cnt.i750.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nnode_cnt.i750.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp6.i751.i = icmp sgt i32 %105, %107
  br i1 %cmp6.i751.i, label %if.end5.i.thread.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge, label %if.end5.i.thread.i.if.end.i_crit_edge

if.end5.i.thread.i.if.end.i_crit_edge:            ; preds = %if.end5.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end5.i.thread.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge: ; preds = %if.end5.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit.thread626.i

dbg_chk_lpt_sz.exit.thread626.i:                  ; preds = %if.end5.i.thread.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge, %if.end5.i.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge
  %108 = phi i32 [ %107, %if.end5.i.thread.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge ], [ %103, %if.end5.i.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge ]
  %109 = phi i32 [ %105, %if.end5.i.thread.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge ], [ %101, %if.end5.i.i.dbg_chk_lpt_sz.exit.thread626.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.12, i32 noundef %109, i32 noundef %108) #7
  br label %out

if.end.i:                                         ; preds = %if.end5.i.thread.i.if.end.i_crit_edge, %dbg_is_chk_lprops.exit.i.i.if.end.i_crit_edge
  %lpt_cnext.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 157
  %110 = ptrtoint ptr %lpt_cnext.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lpt_cnext.i, align 4
  %tobool1.not.i = icmp eq ptr %111, null
  br i1 %tobool1.not.i, label %if.end.i.if.end79_crit_edge, label %if.end3.i

if.end.i.if.end79_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.end3.i:                                        ; preds = %if.end.i
  %nhead_lnum.i167 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %112 = ptrtoint ptr %nhead_lnum.i167 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nhead_lnum.i167, align 4
  %nhead_offs.i168 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %114 = ptrtoint ptr %nhead_offs.i168 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nhead_offs.i168, align 8
  %116 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool4.not.i = icmp sgt i16 %bf.load.i, -1
  %117 = xor i16 %bf.load.i, -1
  %118 = lshr i16 %117, 15
  br i1 %tobool4.not.i, label %if.end3.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %lsave_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %119 = ptrtoint ptr %lsave_sz.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %lsave_sz.i, align 4
  %add.i169 = add i32 %120, %115
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %121 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i169, i32 %122)
  %cmp.not.i = icmp sgt i32 %add.i169, %122
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %lsave_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %123 = ptrtoint ptr %lsave_lnum.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %113, ptr %lsave_lnum.i, align 4
  %lsave_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %124 = ptrtoint ptr %lsave_offs.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %115, ptr %lsave_offs.i, align 8
  %125 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dbg.i.i, align 4
  br i1 %tobool.not.i.i.i, label %dbg_is_chk_lprops.exit.i386.i, label %if.then6.i.if.end.i387.i_crit_edge

if.then6.i.if.end.i387.i_crit_edge:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i387.i

dbg_is_chk_lprops.exit.i386.i:                    ; preds = %if.then6.i
  %chk_lprops.i.i383.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %126, i32 0, i32 19
  %127 = ptrtoint ptr %chk_lprops.i.i383.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load1.i.i384.i = load i8, ptr %chk_lprops.i.i383.i, align 4
  %128 = and i8 %bf.load1.i.i384.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i385.i = icmp eq i8 %128, 0
  br i1 %tobool.not.i385.i, label %dbg_is_chk_lprops.exit.i386.i.if.end11.i_crit_edge, label %dbg_is_chk_lprops.exit.i386.i.if.end.i387.i_crit_edge

dbg_is_chk_lprops.exit.i386.i.if.end.i387.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i386.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i387.i

dbg_is_chk_lprops.exit.i386.i.if.end11.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i386.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end.i387.i:                                    ; preds = %dbg_is_chk_lprops.exit.i386.i.if.end.i387.i_crit_edge, %if.then6.i.if.end.i387.i_crit_edge
  %conv.i.i = sext i32 %120 to i64
  %chk_lpt_sz12.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %126, i32 0, i32 8
  %129 = ptrtoint ptr %chk_lpt_sz12.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %chk_lpt_sz12.i.i, align 8
  %add.i.i = add i64 %130, %conv.i.i
  store i64 %add.i.i, ptr %chk_lpt_sz12.i.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i387.i, %dbg_is_chk_lprops.exit.i386.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %if.end3.i.if.end11.i_crit_edge
  %offs.0.i = phi i32 [ %115, %if.end3.i.if.end11.i_crit_edge ], [ %115, %land.lhs.true.i.if.end11.i_crit_edge ], [ %add.i169, %dbg_is_chk_lprops.exit.i386.i.if.end11.i_crit_edge ], [ %add.i169, %if.end.i387.i ]
  %done_lsave.0.shrunk.i = phi i16 [ %118, %if.end3.i.if.end11.i_crit_edge ], [ %118, %land.lhs.true.i.if.end11.i_crit_edge ], [ 1, %dbg_is_chk_lprops.exit.i386.i.if.end11.i_crit_edge ], [ 1, %if.end.i387.i ]
  %done_lsave.0.i = zext i16 %done_lsave.0.shrunk.i to i32
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %131 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ltab_sz.i, align 8
  %add12.i = add i32 %132, %offs.0.i
  %leb_size13.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %133 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %134)
  %cmp14.not.i = icmp sgt i32 %add12.i, %134
  br i1 %cmp14.not.i, label %if.end11.i.if.end20.i_crit_edge, label %if.then15.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end11.i
  %ltab_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %135 = ptrtoint ptr %ltab_lnum.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %113, ptr %ltab_lnum.i, align 8
  %ltab_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %136 = ptrtoint ptr %ltab_offs.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %offs.0.i, ptr %ltab_offs.i, align 4
  %137 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dbg.i.i, align 4
  br i1 %tobool.not.i.i.i, label %dbg_is_chk_lprops.exit.i396.i, label %if.then15.i.if.end.i397.i_crit_edge

if.then15.i.if.end.i397.i_crit_edge:              ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i397.i

dbg_is_chk_lprops.exit.i396.i:                    ; preds = %if.then15.i
  %chk_lprops.i.i393.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %138, i32 0, i32 19
  %139 = ptrtoint ptr %chk_lprops.i.i393.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load1.i.i394.i = load i8, ptr %chk_lprops.i.i393.i, align 4
  %140 = and i8 %bf.load1.i.i394.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i395.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i395.i, label %dbg_is_chk_lprops.exit.i396.i.if.end20.i_crit_edge, label %dbg_is_chk_lprops.exit.i396.i.if.end.i397.i_crit_edge

dbg_is_chk_lprops.exit.i396.i.if.end.i397.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i396.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i397.i

dbg_is_chk_lprops.exit.i396.i.if.end20.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i396.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.end.i397.i:                                    ; preds = %dbg_is_chk_lprops.exit.i396.i.if.end.i397.i_crit_edge, %if.then15.i.if.end.i397.i_crit_edge
  %conv.i398.i = sext i32 %132 to i64
  %chk_lpt_sz12.i399.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %138, i32 0, i32 8
  %141 = ptrtoint ptr %chk_lpt_sz12.i399.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %chk_lpt_sz12.i399.i, align 8
  %add.i400.i = add i64 %142, %conv.i398.i
  store i64 %add.i400.i, ptr %chk_lpt_sz12.i399.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end.i397.i, %dbg_is_chk_lprops.exit.i396.i.if.end20.i_crit_edge, %if.end11.i.if.end20.i_crit_edge
  %offs.1.i = phi i32 [ %offs.0.i, %if.end11.i.if.end20.i_crit_edge ], [ %add12.i, %dbg_is_chk_lprops.exit.i396.i.if.end20.i_crit_edge ], [ %add12.i, %if.end.i397.i ]
  %done_ltab.0.i = phi i32 [ 0, %if.end11.i.if.end20.i_crit_edge ], [ 1, %dbg_is_chk_lprops.exit.i396.i.if.end20.i_crit_edge ], [ 1, %if.end.i397.i ]
  %nnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %dirty_nn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %pnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %lpt_first.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %lpt_lebs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %ltab.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %lpt_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %lsave_lnum56.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %lsave_offs57.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %lsave_sz58.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %ltab_lnum65.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %ltab_offs66.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %lpt_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %lpt_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs87.i.do.body.i_crit_edge, %if.end20.i
  %lnum.0.i = phi i32 [ %113, %if.end20.i ], [ %lnum.3.i, %land.rhs87.i.do.body.i_crit_edge ]
  %offs.2.i = phi i32 [ %offs.1.i, %if.end20.i ], [ %add83.i, %land.rhs87.i.do.body.i_crit_edge ]
  %done_lsave.1.i = phi i32 [ %done_lsave.0.i, %if.end20.i ], [ %done_lsave.2670.i, %land.rhs87.i.do.body.i_crit_edge ]
  %done_ltab.1.i = phi i32 [ %done_ltab.0.i, %if.end20.i ], [ %done_ltab.2.ph681.i, %land.rhs87.i.do.body.i_crit_edge ]
  %cnode.0.i = phi ptr [ %111, %if.end20.i ], [ %242, %land.rhs87.i.do.body.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0.i, i32 0, i32 4
  %143 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool21.not.i = icmp eq i32 %144, 0
  br i1 %tobool21.not.i, label %if.else.i171, label %if.then22.i

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %nnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nnode_sz.i, align 8
  %147 = ptrtoint ptr %dirty_nn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dirty_nn_cnt.i, align 8
  %sub.i170 = add i32 %148, -1
  store i32 %sub.i170, ptr %dirty_nn_cnt.i, align 8
  br label %if.end24.i

if.else.i171:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %pnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pnode_sz.i, align 4
  %151 = ptrtoint ptr %dirty_pn_cnt to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dirty_pn_cnt, align 4
  %sub23.i = add i32 %152, -1
  store i32 %sub23.i, ptr %dirty_pn_cnt, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i171, %if.then22.i
  %len.0.i = phi i32 [ %146, %if.then22.i ], [ %150, %if.else.i171 ]
  %add25685697.i = add i32 %len.0.i, %offs.2.i
  %153 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add25685697.i, i32 %154)
  %cmp27686698.i = icmp sgt i32 %add25685697.i, %154
  br i1 %cmp27686698.i, label %if.end24.i.while.body.lr.ph.i_crit_edge, label %if.end24.i.while.end.i_crit_edge

if.end24.i.while.end.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end24.i.while.body.lr.ph.i_crit_edge:          ; preds = %if.end24.i
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge, %if.end24.i.while.body.lr.ph.i_crit_edge
  %155 = phi i32 [ %222, %dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge ], [ %154, %if.end24.i.while.body.lr.ph.i_crit_edge ]
  %done_ltab.2.ph702.i = phi i32 [ 1, %dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge ], [ %done_ltab.1.i, %if.end24.i.while.body.lr.ph.i_crit_edge ]
  %done_lsave.2.ph701.i = phi i32 [ 1, %dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge ], [ %done_lsave.1.i, %if.end24.i.while.body.lr.ph.i_crit_edge ]
  %offs.3.ph700.i = phi i32 [ %213, %dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge ], [ %offs.2.i, %if.end24.i.while.body.lr.ph.i_crit_edge ]
  %lnum.1.ph699.i = phi i32 [ %add53.i.i, %dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge ], [ %lnum.0.i, %if.end24.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i173

while.body.i173:                                  ; preds = %dbg_chk_lpt_sz.exit428.i.while.body.i173_crit_edge, %while.body.lr.ph.i
  %156 = phi i32 [ %155, %while.body.lr.ph.i ], [ %209, %dbg_chk_lpt_sz.exit428.i.while.body.i173_crit_edge ]
  %done_lsave.2689.i = phi i32 [ %done_lsave.2.ph701.i, %while.body.lr.ph.i ], [ 1, %dbg_chk_lpt_sz.exit428.i.while.body.i173_crit_edge ]
  %offs.3688.i = phi i32 [ %offs.3.ph700.i, %while.body.lr.ph.i ], [ %200, %dbg_chk_lpt_sz.exit428.i.while.body.i173_crit_edge ]
  %lnum.1687.i = phi i32 [ %lnum.1.ph699.i, %while.body.lr.ph.i ], [ %add53.i.i, %dbg_chk_lpt_sz.exit428.i.while.body.i173_crit_edge ]
  %157 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %min_io_size.i, align 8
  %sub28.i = add i32 %offs.3688.i, -1
  %add29.i = add i32 %sub28.i, %158
  %neg.i = sub i32 0, %158
  %and.i172 = and i32 %add29.i, %neg.i
  %sub33.i = sub i32 %156, %and.i172
  %sub34.i = sub i32 %and.i172, %offs.3688.i
  tail call fastcc void @upd_ltab(ptr noundef %c, i32 noundef %lnum.1687.i, i32 noundef %sub33.i, i32 noundef %sub34.i) #7
  %159 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %leb_size13.i, align 8
  %sub36.i = sub i32 %160, %offs.3688.i
  %161 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i404.i = load i8, ptr @ubifs_dbg, align 4
  %163 = and i8 %bf.load.i.i404.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i.i405.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i.i405.i, label %dbg_is_chk_lprops.exit.i409.i, label %while.body.i173.if.end.i410.i_crit_edge

while.body.i173.if.end.i410.i_crit_edge:          ; preds = %while.body.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i410.i

dbg_is_chk_lprops.exit.i409.i:                    ; preds = %while.body.i173
  %chk_lprops.i.i406.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %162, i32 0, i32 19
  %164 = ptrtoint ptr %chk_lprops.i.i406.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %bf.load1.i.i407.i = load i8, ptr %chk_lprops.i.i406.i, align 4
  %165 = and i8 %bf.load1.i.i407.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i408.i = icmp eq i8 %165, 0
  br i1 %tobool.not.i408.i, label %dbg_is_chk_lprops.exit.i409.i.dbg_chk_lpt_sz.exit412.i_crit_edge, label %dbg_is_chk_lprops.exit.i409.i.if.end.i410.i_crit_edge

dbg_is_chk_lprops.exit.i409.i.if.end.i410.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i410.i

dbg_is_chk_lprops.exit.i409.i.dbg_chk_lpt_sz.exit412.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit412.i

if.end.i410.i:                                    ; preds = %dbg_is_chk_lprops.exit.i409.i.if.end.i410.i_crit_edge, %while.body.i173.if.end.i410.i_crit_edge
  %conv14.i.i = sext i32 %sub36.i to i64
  %chk_lpt_sz15.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %162, i32 0, i32 8
  %166 = ptrtoint ptr %chk_lpt_sz15.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %chk_lpt_sz15.i.i, align 8
  %add16.i.i = add i64 %167, %conv14.i.i
  store i64 %add16.i.i, ptr %chk_lpt_sz15.i.i, align 8
  %chk_lpt_wastage18.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %162, i32 0, i32 10
  %168 = ptrtoint ptr %chk_lpt_wastage18.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %chk_lpt_wastage18.i.i, align 8
  %add19.i.i = add i64 %169, %conv14.i.i
  store i64 %add19.i.i, ptr %chk_lpt_wastage18.i.i, align 8
  %chk_lpt_lebs20.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %162, i32 0, i32 11
  %170 = ptrtoint ptr %chk_lpt_lebs20.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %chk_lpt_lebs20.i.i, align 8
  %add21.i.i = add i32 %171, 1
  store i32 %add21.i.i, ptr %chk_lpt_lebs20.i.i, align 8
  br label %dbg_chk_lpt_sz.exit412.i

dbg_chk_lpt_sz.exit412.i:                         ; preds = %if.end.i410.i, %dbg_is_chk_lprops.exit.i409.i.dbg_chk_lpt_sz.exit412.i_crit_edge
  %172 = ptrtoint ptr %lpt_first.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %lpt_first.i.i, align 8
  %sub.i.i = sub i32 %lnum.1687.i, %173
  %add.i413.i = add i32 %sub.i.i, 1
  %174 = ptrtoint ptr %lpt_lebs.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %lpt_lebs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i413.i, i32 %175)
  %cmp91.i.i = icmp slt i32 %add.i413.i, %175
  br i1 %cmp91.i.i, label %for.body.lr.ph.i.i, label %dbg_chk_lpt_sz.exit412.i.for.cond19.preheader.i.i_crit_edge

dbg_chk_lpt_sz.exit412.i.for.cond19.preheader.i.i_crit_edge: ; preds = %dbg_chk_lpt_sz.exit412.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %dbg_chk_lpt_sz.exit412.i
  %176 = ptrtoint ptr %ltab.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ltab.i.i, align 8
  br label %for.body.i.i174

for.cond19.preheader.i.i:                         ; preds = %for.inc.i.i.for.cond19.preheader.i.i_crit_edge, %dbg_chk_lpt_sz.exit412.i.for.cond19.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub.i.i)
  %cmp2094.i.i = icmp ult i32 %sub.i.i, 2147483647
  br i1 %cmp2094.i.i, label %for.body21.lr.ph.i.i, label %for.cond19.preheader.i.i.no_space.i_crit_edge

for.cond19.preheader.i.i.no_space.i_crit_edge:    ; preds = %for.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space.i

for.body21.lr.ph.i.i:                             ; preds = %for.cond19.preheader.i.i
  %178 = ptrtoint ptr %ltab.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ltab.i.i, align 8
  br label %for.body21.i.i

for.body.i.i174:                                  ; preds = %for.inc.i.i.for.body.i.i174_crit_edge, %for.body.lr.ph.i.i
  %i.092.i.i = phi i32 [ %add.i413.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i174_crit_edge ]
  %tgc.i.i = getelementptr %struct.ubifs_lpt_lprops, ptr %177, i32 %i.092.i.i, i32 2
  %180 = ptrtoint ptr %tgc.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %bf.load.i.i = load i8, ptr %tgc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %181 = icmp ult i8 %bf.load.i.i, 64
  br i1 %181, label %if.end.i414.i, label %for.body.i.i174.for.inc.i.i_crit_edge

for.body.i.i174.for.inc.i.i_crit_edge:            ; preds = %for.body.i.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i414.i:                                    ; preds = %for.body.i.i174
  %arrayidx.i.i175 = getelementptr %struct.ubifs_lpt_lprops, ptr %177, i32 %i.092.i.i
  %182 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx.i.i175, align 4
  %184 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %185)
  %cmp9.i.i176 = icmp eq i32 %183, %185
  br i1 %cmp9.i.i176, label %if.end.i414.i.if.end41.i_crit_edge, label %if.end.i414.i.for.inc.i.i_crit_edge

if.end.i414.i.for.inc.i.i_crit_edge:              ; preds = %if.end.i414.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i414.i.if.end41.i_crit_edge:               ; preds = %if.end.i414.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

for.inc.i.i:                                      ; preds = %if.end.i414.i.for.inc.i.i_crit_edge, %for.body.i.i174.for.inc.i.i_crit_edge
  %inc.i.i = add i32 %i.092.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %175
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.cond19.preheader.i.i_crit_edge, label %for.inc.i.i.for.body.i.i174_crit_edge

for.inc.i.i.for.body.i.i174_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i174

for.inc.i.i.for.cond19.preheader.i.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i.i

for.body21.i.i:                                   ; preds = %for.inc55.i.i.for.body21.i.i_crit_edge, %for.body21.lr.ph.i.i
  %i.195.i.i = phi i32 [ 0, %for.body21.lr.ph.i.i ], [ %inc56.i.i, %for.inc55.i.i.for.body21.i.i_crit_edge ]
  %tgc24.i.i = getelementptr %struct.ubifs_lpt_lprops, ptr %179, i32 %i.195.i.i, i32 2
  %186 = ptrtoint ptr %tgc24.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load25.i.i = load i8, ptr %tgc24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load25.i.i)
  %187 = icmp ult i8 %bf.load25.i.i, 64
  br i1 %187, label %if.end39.i.i, label %for.body21.i.i.for.inc55.i.i_crit_edge

for.body21.i.i.for.inc55.i.i_crit_edge:           ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i.i

if.end39.i.i:                                     ; preds = %for.body21.i.i
  %arrayidx23.i.i = getelementptr %struct.ubifs_lpt_lprops, ptr %179, i32 %i.195.i.i
  %188 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx23.i.i, align 4
  %190 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %191)
  %cmp44.i.i = icmp eq i32 %189, %191
  br i1 %cmp44.i.i, label %if.end39.i.i.if.end41.i_crit_edge, label %if.end39.i.i.for.inc55.i.i_crit_edge

if.end39.i.i.for.inc55.i.i_crit_edge:             ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i.i

if.end39.i.i.if.end41.i_crit_edge:                ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

for.inc55.i.i:                                    ; preds = %if.end39.i.i.for.inc55.i.i_crit_edge, %for.body21.i.i.for.inc55.i.i_crit_edge
  %inc56.i.i = add nuw nsw i32 %i.195.i.i, 1
  %exitcond103.not.i.i = icmp eq i32 %i.195.i.i, %sub.i.i
  br i1 %exitcond103.not.i.i, label %for.inc55.i.i.no_space.i_crit_edge, label %for.inc55.i.i.for.body21.i.i_crit_edge

for.inc55.i.i.for.body21.i.i_crit_edge:           ; preds = %for.inc55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i.i

for.inc55.i.i.no_space.i_crit_edge:               ; preds = %for.inc55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space.i

if.end41.i:                                       ; preds = %if.end39.i.i.if.end41.i_crit_edge, %if.end.i414.i.if.end41.i_crit_edge
  %bf.load25.lcssa.sink.i.i = phi i8 [ %bf.load25.i.i, %if.end39.i.i.if.end41.i_crit_edge ], [ %bf.load.i.i, %if.end.i414.i.if.end41.i_crit_edge ]
  %tgc24.lcssa.sink.i.i = phi ptr [ %tgc24.i.i, %if.end39.i.i.if.end41.i_crit_edge ], [ %tgc.i.i, %if.end.i414.i.if.end41.i_crit_edge ]
  %i.195.lcssa.sink.i.i = phi i32 [ %i.195.i.i, %if.end39.i.i.if.end41.i_crit_edge ], [ %i.092.i.i, %if.end.i414.i.if.end41.i_crit_edge ]
  %bf.set51.i.i = or i8 %bf.load25.lcssa.sink.i.i, 64
  %192 = ptrtoint ptr %tgc24.lcssa.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %bf.set51.i.i, ptr %tgc24.lcssa.sink.i.i, align 4
  %193 = ptrtoint ptr %lpt_first.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %lpt_first.i.i, align 8
  %add53.i.i = add i32 %194, %i.195.lcssa.sink.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i.i, i32 %194)
  %cmp43.not.i = icmp slt i32 %add53.i.i, %194
  br i1 %cmp43.not.i, label %if.end41.i.if.then52.i_crit_edge, label %land.rhs.i, !prof !182

if.end41.i.if.then52.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i

land.rhs.i:                                       ; preds = %if.end41.i
  %195 = ptrtoint ptr %lpt_last.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %lpt_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i.i, i32 %196)
  %cmp44.not.i = icmp sgt i32 %add53.i.i, %196
  br i1 %cmp44.not.i, label %land.rhs.i.if.then52.i_crit_edge, label %land.rhs.i.do.end.i_crit_edge, !prof !182

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.rhs.i.if.then52.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i

if.then52.i:                                      ; preds = %land.rhs.i.if.then52.i_crit_edge, %if.end41.i.if.then52.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 231) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then52.i, %land.rhs.i.do.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_lsave.2689.i)
  %tobool54.not.i = icmp eq i32 %done_lsave.2689.i, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end62.i

if.then55.i:                                      ; preds = %do.end.i
  %197 = ptrtoint ptr %lsave_lnum56.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %add53.i.i, ptr %lsave_lnum56.i, align 4
  %198 = ptrtoint ptr %lsave_offs57.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %lsave_offs57.i, align 8
  %199 = ptrtoint ptr %lsave_sz58.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %lsave_sz58.i, align 4
  %201 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i417.i = load i8, ptr @ubifs_dbg, align 4
  %203 = and i8 %bf.load.i.i417.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i.i418.i = icmp eq i8 %203, 0
  br i1 %tobool.not.i.i418.i, label %dbg_is_chk_lprops.exit.i422.i, label %if.then55.i.if.end.i423.i_crit_edge

if.then55.i.if.end.i423.i_crit_edge:              ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i423.i

dbg_is_chk_lprops.exit.i422.i:                    ; preds = %if.then55.i
  %chk_lprops.i.i419.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %202, i32 0, i32 19
  %204 = ptrtoint ptr %chk_lprops.i.i419.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %bf.load1.i.i420.i = load i8, ptr %chk_lprops.i.i419.i, align 4
  %205 = and i8 %bf.load1.i.i420.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i421.i = icmp eq i8 %205, 0
  br i1 %tobool.not.i421.i, label %dbg_is_chk_lprops.exit.i422.i.dbg_chk_lpt_sz.exit428.i_crit_edge, label %dbg_is_chk_lprops.exit.i422.i.if.end.i423.i_crit_edge

dbg_is_chk_lprops.exit.i422.i.if.end.i423.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i422.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i423.i

dbg_is_chk_lprops.exit.i422.i.dbg_chk_lpt_sz.exit428.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i422.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit428.i

if.end.i423.i:                                    ; preds = %dbg_is_chk_lprops.exit.i422.i.if.end.i423.i_crit_edge, %if.then55.i.if.end.i423.i_crit_edge
  %conv.i424.i = sext i32 %200 to i64
  %chk_lpt_sz12.i425.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %202, i32 0, i32 8
  %206 = ptrtoint ptr %chk_lpt_sz12.i425.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %chk_lpt_sz12.i425.i, align 8
  %add.i426.i = add i64 %207, %conv.i424.i
  store i64 %add.i426.i, ptr %chk_lpt_sz12.i425.i, align 8
  br label %dbg_chk_lpt_sz.exit428.i

dbg_chk_lpt_sz.exit428.i:                         ; preds = %if.end.i423.i, %dbg_is_chk_lprops.exit.i422.i.dbg_chk_lpt_sz.exit428.i_crit_edge
  %add25.i = add i32 %200, %len.0.i
  %208 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %leb_size13.i, align 8
  %cmp27.i = icmp sgt i32 %add25.i, %209
  br i1 %cmp27.i, label %dbg_chk_lpt_sz.exit428.i.while.body.i173_crit_edge, label %dbg_chk_lpt_sz.exit428.i.while.end.i_crit_edge

dbg_chk_lpt_sz.exit428.i.while.end.i_crit_edge:   ; preds = %dbg_chk_lpt_sz.exit428.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

dbg_chk_lpt_sz.exit428.i.while.body.i173_crit_edge: ; preds = %dbg_chk_lpt_sz.exit428.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i173

if.end62.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_ltab.2.ph702.i)
  %tobool63.not.i = icmp eq i32 %done_ltab.2.ph702.i, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %if.end62.i.while.end.i_crit_edge

if.end62.i.while.end.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then64.i:                                      ; preds = %if.end62.i
  %210 = ptrtoint ptr %ltab_lnum65.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add53.i.i, ptr %ltab_lnum65.i, align 8
  %211 = ptrtoint ptr %ltab_offs66.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %ltab_offs66.i, align 4
  %212 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %ltab_sz.i, align 8
  %214 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i430.i = load i8, ptr @ubifs_dbg, align 4
  %216 = and i8 %bf.load.i.i430.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i.i431.i = icmp eq i8 %216, 0
  br i1 %tobool.not.i.i431.i, label %dbg_is_chk_lprops.exit.i435.i, label %if.then64.i.if.end.i436.i_crit_edge

if.then64.i.if.end.i436.i_crit_edge:              ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i436.i

dbg_is_chk_lprops.exit.i435.i:                    ; preds = %if.then64.i
  %chk_lprops.i.i432.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %215, i32 0, i32 19
  %217 = ptrtoint ptr %chk_lprops.i.i432.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %bf.load1.i.i433.i = load i8, ptr %chk_lprops.i.i432.i, align 4
  %218 = and i8 %bf.load1.i.i433.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i434.i = icmp eq i8 %218, 0
  br i1 %tobool.not.i434.i, label %dbg_is_chk_lprops.exit.i435.i.dbg_chk_lpt_sz.exit441.i_crit_edge, label %dbg_is_chk_lprops.exit.i435.i.if.end.i436.i_crit_edge

dbg_is_chk_lprops.exit.i435.i.if.end.i436.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i435.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i436.i

dbg_is_chk_lprops.exit.i435.i.dbg_chk_lpt_sz.exit441.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i435.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit441.i

if.end.i436.i:                                    ; preds = %dbg_is_chk_lprops.exit.i435.i.if.end.i436.i_crit_edge, %if.then64.i.if.end.i436.i_crit_edge
  %conv.i437.i = sext i32 %213 to i64
  %chk_lpt_sz12.i438.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %215, i32 0, i32 8
  %219 = ptrtoint ptr %chk_lpt_sz12.i438.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %chk_lpt_sz12.i438.i, align 8
  %add.i439.i = add i64 %220, %conv.i437.i
  store i64 %add.i439.i, ptr %chk_lpt_sz12.i438.i, align 8
  br label %dbg_chk_lpt_sz.exit441.i

dbg_chk_lpt_sz.exit441.i:                         ; preds = %if.end.i436.i, %dbg_is_chk_lprops.exit.i435.i.dbg_chk_lpt_sz.exit441.i_crit_edge
  %add25685.i = add i32 %213, %len.0.i
  %221 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %leb_size13.i, align 8
  %cmp27686.i = icmp sgt i32 %add25685.i, %222
  br i1 %cmp27686.i, label %dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge, label %dbg_chk_lpt_sz.exit441.i.while.end.i_crit_edge

dbg_chk_lpt_sz.exit441.i.while.end.i_crit_edge:   ; preds = %dbg_chk_lpt_sz.exit441.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

dbg_chk_lpt_sz.exit441.i.while.body.lr.ph.i_crit_edge: ; preds = %dbg_chk_lpt_sz.exit441.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

while.end.i:                                      ; preds = %dbg_chk_lpt_sz.exit441.i.while.end.i_crit_edge, %if.end62.i.while.end.i_crit_edge, %dbg_chk_lpt_sz.exit428.i.while.end.i_crit_edge, %if.end24.i.while.end.i_crit_edge
  %done_ltab.2.ph681.i = phi i32 [ %done_ltab.1.i, %if.end24.i.while.end.i_crit_edge ], [ %done_ltab.2.ph702.i, %dbg_chk_lpt_sz.exit428.i.while.end.i_crit_edge ], [ %done_ltab.2.ph702.i, %if.end62.i.while.end.i_crit_edge ], [ 1, %dbg_chk_lpt_sz.exit441.i.while.end.i_crit_edge ]
  %done_lsave.2670.i = phi i32 [ %done_lsave.1.i, %if.end24.i.while.end.i_crit_edge ], [ 1, %dbg_chk_lpt_sz.exit428.i.while.end.i_crit_edge ], [ %done_lsave.2689.i, %if.end62.i.while.end.i_crit_edge ], [ 1, %dbg_chk_lpt_sz.exit441.i.while.end.i_crit_edge ]
  %lnum.3.i = phi i32 [ %lnum.0.i, %if.end24.i.while.end.i_crit_edge ], [ %add53.i.i, %dbg_chk_lpt_sz.exit428.i.while.end.i_crit_edge ], [ %add53.i.i, %if.end62.i.while.end.i_crit_edge ], [ %add53.i.i, %dbg_chk_lpt_sz.exit441.i.while.end.i_crit_edge ]
  %offs.4.i = phi i32 [ %offs.2.i, %if.end24.i.while.end.i_crit_edge ], [ %200, %dbg_chk_lpt_sz.exit428.i.while.end.i_crit_edge ], [ 0, %if.end62.i.while.end.i_crit_edge ], [ %213, %dbg_chk_lpt_sz.exit441.i.while.end.i_crit_edge ]
  %223 = ptrtoint ptr %cnode.0.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cnode.0.i, align 4
  %tobool72.not.i = icmp eq ptr %224, null
  br i1 %tobool72.not.i, label %if.else81.i, label %if.then73.i

if.then73.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iip.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0.i, i32 0, i32 3
  %225 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %iip.i, align 4
  %arrayidx.i177 = getelementptr %struct.ubifs_nnode, ptr %224, i32 0, i32 6, i32 %226
  %227 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %lnum.3.i, ptr %arrayidx.i177, align 4
  %228 = ptrtoint ptr %cnode.0.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cnode.0.i, align 4
  %230 = load i32, ptr %iip.i, align 4
  %offs80.i = getelementptr %struct.ubifs_nnode, ptr %229, i32 0, i32 6, i32 %230, i32 1
  %231 = ptrtoint ptr %offs80.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %offs.4.i, ptr %offs80.i, align 4
  br label %if.end82.i

if.else81.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = ptrtoint ptr %lpt_lnum.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %lnum.3.i, ptr %lpt_lnum.i, align 4
  %233 = ptrtoint ptr %lpt_offs.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %offs.4.i, ptr %lpt_offs.i, align 8
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else81.i, %if.then73.i
  %add83.i = add i32 %offs.4.i, %len.0.i
  %234 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i443.i = load i8, ptr @ubifs_dbg, align 4
  %236 = and i8 %bf.load.i.i443.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool.not.i.i444.i = icmp eq i8 %236, 0
  br i1 %tobool.not.i.i444.i, label %dbg_is_chk_lprops.exit.i448.i, label %if.end82.i.if.end.i449.i_crit_edge

if.end82.i.if.end.i449.i_crit_edge:               ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i449.i

dbg_is_chk_lprops.exit.i448.i:                    ; preds = %if.end82.i
  %chk_lprops.i.i445.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %235, i32 0, i32 19
  %237 = ptrtoint ptr %chk_lprops.i.i445.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %bf.load1.i.i446.i = load i8, ptr %chk_lprops.i.i445.i, align 4
  %238 = and i8 %bf.load1.i.i446.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool.not.i447.i = icmp eq i8 %238, 0
  br i1 %tobool.not.i447.i, label %dbg_is_chk_lprops.exit.i448.i.dbg_chk_lpt_sz.exit454.i_crit_edge, label %dbg_is_chk_lprops.exit.i448.i.if.end.i449.i_crit_edge

dbg_is_chk_lprops.exit.i448.i.if.end.i449.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i449.i

dbg_is_chk_lprops.exit.i448.i.dbg_chk_lpt_sz.exit454.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit454.i

if.end.i449.i:                                    ; preds = %dbg_is_chk_lprops.exit.i448.i.if.end.i449.i_crit_edge, %if.end82.i.if.end.i449.i_crit_edge
  %conv.i450.i = sext i32 %len.0.i to i64
  %chk_lpt_sz12.i451.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %235, i32 0, i32 8
  %239 = ptrtoint ptr %chk_lpt_sz12.i451.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %chk_lpt_sz12.i451.i, align 8
  %add.i452.i = add i64 %240, %conv.i450.i
  store i64 %add.i452.i, ptr %chk_lpt_sz12.i451.i, align 8
  br label %dbg_chk_lpt_sz.exit454.i

dbg_chk_lpt_sz.exit454.i:                         ; preds = %if.end.i449.i, %dbg_is_chk_lprops.exit.i448.i.dbg_chk_lpt_sz.exit454.i_crit_edge
  %cnext.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0.i, i32 0, i32 1
  %241 = ptrtoint ptr %cnext.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cnext.i, align 4
  %tobool86.not.i = icmp eq ptr %242, null
  br i1 %tobool86.not.i, label %dbg_chk_lpt_sz.exit454.i.do.end91.i_crit_edge, label %land.rhs87.i

dbg_chk_lpt_sz.exit454.i.do.end91.i_crit_edge:    ; preds = %dbg_chk_lpt_sz.exit454.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91.i

land.rhs87.i:                                     ; preds = %dbg_chk_lpt_sz.exit454.i
  %243 = ptrtoint ptr %lpt_cnext.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %lpt_cnext.i, align 4
  %cmp89.not.i = icmp eq ptr %242, %244
  br i1 %cmp89.not.i, label %land.rhs87.i.do.end91.i_crit_edge, label %land.rhs87.i.do.body.i_crit_edge

land.rhs87.i.do.body.i_crit_edge:                 ; preds = %land.rhs87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

land.rhs87.i.do.end91.i_crit_edge:                ; preds = %land.rhs87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91.i

do.end91.i:                                       ; preds = %land.rhs87.i.do.end91.i_crit_edge, %dbg_chk_lpt_sz.exit454.i.do.end91.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_lsave.2670.i)
  %tobool92.not.i = icmp eq i32 %done_lsave.2670.i, 0
  br i1 %tobool92.not.i, label %if.then93.i, label %do.end91.i.if.end142.i_crit_edge

do.end91.i.if.end142.i_crit_edge:                 ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142.i

if.then93.i:                                      ; preds = %do.end91.i
  %245 = ptrtoint ptr %lsave_sz58.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %lsave_sz58.i, align 4
  %add95.i = add i32 %246, %add83.i
  %247 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add95.i, i32 %248)
  %cmp97.i = icmp sgt i32 %add95.i, %248
  br i1 %cmp97.i, label %if.then98.i, label %if.then93.i.if.end135.i_crit_edge

if.then93.i.if.end135.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.then98.i:                                      ; preds = %if.then93.i
  %249 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %min_io_size.i, align 8
  %sub100.i = add i32 %add83.i, -1
  %add101.i = add i32 %sub100.i, %250
  %neg104.i = sub i32 0, %250
  %and105.i = and i32 %add101.i, %neg104.i
  %sub107.i = sub i32 %248, %and105.i
  %sub108.i = sub i32 %and105.i, %add83.i
  tail call fastcc void @upd_ltab(ptr noundef %c, i32 noundef %lnum.3.i, i32 noundef %sub107.i, i32 noundef %sub108.i) #7
  %251 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %leb_size13.i, align 8
  %sub110.i = sub i32 %252, %add83.i
  %253 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i456.i = load i8, ptr @ubifs_dbg, align 4
  %255 = and i8 %bf.load.i.i456.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i.i457.i = icmp eq i8 %255, 0
  br i1 %tobool.not.i.i457.i, label %dbg_is_chk_lprops.exit.i461.i, label %if.then98.i.if.end.i462.i_crit_edge

if.then98.i.if.end.i462.i_crit_edge:              ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i462.i

dbg_is_chk_lprops.exit.i461.i:                    ; preds = %if.then98.i
  %chk_lprops.i.i458.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %254, i32 0, i32 19
  %256 = ptrtoint ptr %chk_lprops.i.i458.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load1.i.i459.i = load i8, ptr %chk_lprops.i.i458.i, align 4
  %257 = and i8 %bf.load1.i.i459.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool.not.i460.i = icmp eq i8 %257, 0
  br i1 %tobool.not.i460.i, label %dbg_is_chk_lprops.exit.i461.i.dbg_chk_lpt_sz.exit471.i_crit_edge, label %dbg_is_chk_lprops.exit.i461.i.if.end.i462.i_crit_edge

dbg_is_chk_lprops.exit.i461.i.if.end.i462.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i461.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i462.i

dbg_is_chk_lprops.exit.i461.i.dbg_chk_lpt_sz.exit471.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i461.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit471.i

if.end.i462.i:                                    ; preds = %dbg_is_chk_lprops.exit.i461.i.if.end.i462.i_crit_edge, %if.then98.i.if.end.i462.i_crit_edge
  %conv14.i463.i = sext i32 %sub110.i to i64
  %chk_lpt_sz15.i464.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %254, i32 0, i32 8
  %258 = ptrtoint ptr %chk_lpt_sz15.i464.i to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %chk_lpt_sz15.i464.i, align 8
  %add16.i465.i = add i64 %259, %conv14.i463.i
  store i64 %add16.i465.i, ptr %chk_lpt_sz15.i464.i, align 8
  %chk_lpt_wastage18.i466.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %254, i32 0, i32 10
  %260 = ptrtoint ptr %chk_lpt_wastage18.i466.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %chk_lpt_wastage18.i466.i, align 8
  %add19.i467.i = add i64 %261, %conv14.i463.i
  store i64 %add19.i467.i, ptr %chk_lpt_wastage18.i466.i, align 8
  %chk_lpt_lebs20.i468.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %254, i32 0, i32 11
  %262 = ptrtoint ptr %chk_lpt_lebs20.i468.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %chk_lpt_lebs20.i468.i, align 8
  %add21.i469.i = add i32 %263, 1
  store i32 %add21.i469.i, ptr %chk_lpt_lebs20.i468.i, align 8
  br label %dbg_chk_lpt_sz.exit471.i

dbg_chk_lpt_sz.exit471.i:                         ; preds = %if.end.i462.i, %dbg_is_chk_lprops.exit.i461.i.dbg_chk_lpt_sz.exit471.i_crit_edge
  %264 = ptrtoint ptr %lpt_first.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %lpt_first.i.i, align 8
  %sub.i473.i = sub i32 %lnum.3.i, %265
  %add.i474.i = add i32 %sub.i473.i, 1
  %266 = ptrtoint ptr %lpt_lebs.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %lpt_lebs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i474.i, i32 %267)
  %cmp91.i476.i = icmp slt i32 %add.i474.i, %267
  br i1 %cmp91.i476.i, label %for.body.lr.ph.i479.i, label %dbg_chk_lpt_sz.exit471.i.for.cond19.preheader.i481.i_crit_edge

dbg_chk_lpt_sz.exit471.i.for.cond19.preheader.i481.i_crit_edge: ; preds = %dbg_chk_lpt_sz.exit471.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i481.i

for.body.lr.ph.i479.i:                            ; preds = %dbg_chk_lpt_sz.exit471.i
  %268 = ptrtoint ptr %ltab.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ltab.i.i, align 8
  br label %for.body.i488.i

for.cond19.preheader.i481.i:                      ; preds = %for.inc.i494.i.for.cond19.preheader.i481.i_crit_edge, %dbg_chk_lpt_sz.exit471.i.for.cond19.preheader.i481.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub.i473.i)
  %cmp2094.i480.i = icmp ult i32 %sub.i473.i, 2147483647
  br i1 %cmp2094.i480.i, label %for.body21.lr.ph.i484.i, label %for.cond19.preheader.i481.i.no_space.i_crit_edge

for.cond19.preheader.i481.i.no_space.i_crit_edge: ; preds = %for.cond19.preheader.i481.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space.i

for.body21.lr.ph.i484.i:                          ; preds = %for.cond19.preheader.i481.i
  %270 = ptrtoint ptr %ltab.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ltab.i.i, align 8
  br label %for.body21.i498.i

for.body.i488.i:                                  ; preds = %for.inc.i494.i.for.body.i488.i_crit_edge, %for.body.lr.ph.i479.i
  %i.092.i485.i = phi i32 [ %add.i474.i, %for.body.lr.ph.i479.i ], [ %inc.i492.i, %for.inc.i494.i.for.body.i488.i_crit_edge ]
  %tgc.i486.i = getelementptr %struct.ubifs_lpt_lprops, ptr %269, i32 %i.092.i485.i, i32 2
  %272 = ptrtoint ptr %tgc.i486.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %bf.load.i487.i = load i8, ptr %tgc.i486.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i487.i)
  %273 = icmp ult i8 %bf.load.i487.i, 64
  br i1 %273, label %if.end.i491.i, label %for.body.i488.i.for.inc.i494.i_crit_edge

for.body.i488.i.for.inc.i494.i_crit_edge:         ; preds = %for.body.i488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i494.i

if.end.i491.i:                                    ; preds = %for.body.i488.i
  %arrayidx.i489.i = getelementptr %struct.ubifs_lpt_lprops, ptr %269, i32 %i.092.i485.i
  %274 = ptrtoint ptr %arrayidx.i489.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx.i489.i, align 4
  %276 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %277)
  %cmp9.i490.i = icmp eq i32 %275, %277
  br i1 %cmp9.i490.i, label %if.end.i491.i.if.end115.i_crit_edge, label %if.end.i491.i.for.inc.i494.i_crit_edge

if.end.i491.i.for.inc.i494.i_crit_edge:           ; preds = %if.end.i491.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i494.i

if.end.i491.i.if.end115.i_crit_edge:              ; preds = %if.end.i491.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.i

for.inc.i494.i:                                   ; preds = %if.end.i491.i.for.inc.i494.i_crit_edge, %for.body.i488.i.for.inc.i494.i_crit_edge
  %inc.i492.i = add i32 %i.092.i485.i, 1
  %exitcond.not.i493.i = icmp eq i32 %inc.i492.i, %267
  br i1 %exitcond.not.i493.i, label %for.inc.i494.i.for.cond19.preheader.i481.i_crit_edge, label %for.inc.i494.i.for.body.i488.i_crit_edge

for.inc.i494.i.for.body.i488.i_crit_edge:         ; preds = %for.inc.i494.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i488.i

for.inc.i494.i.for.cond19.preheader.i481.i_crit_edge: ; preds = %for.inc.i494.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i481.i

for.body21.i498.i:                                ; preds = %for.inc55.i504.i.for.body21.i498.i_crit_edge, %for.body21.lr.ph.i484.i
  %i.195.i495.i = phi i32 [ 0, %for.body21.lr.ph.i484.i ], [ %inc56.i502.i, %for.inc55.i504.i.for.body21.i498.i_crit_edge ]
  %tgc24.i496.i = getelementptr %struct.ubifs_lpt_lprops, ptr %271, i32 %i.195.i495.i, i32 2
  %278 = ptrtoint ptr %tgc24.i496.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %bf.load25.i497.i = load i8, ptr %tgc24.i496.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load25.i497.i)
  %279 = icmp ult i8 %bf.load25.i497.i, 64
  br i1 %279, label %if.end39.i501.i, label %for.body21.i498.i.for.inc55.i504.i_crit_edge

for.body21.i498.i.for.inc55.i504.i_crit_edge:     ; preds = %for.body21.i498.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i504.i

if.end39.i501.i:                                  ; preds = %for.body21.i498.i
  %arrayidx23.i499.i = getelementptr %struct.ubifs_lpt_lprops, ptr %271, i32 %i.195.i495.i
  %280 = ptrtoint ptr %arrayidx23.i499.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx23.i499.i, align 4
  %282 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %281, i32 %283)
  %cmp44.i500.i = icmp eq i32 %281, %283
  br i1 %cmp44.i500.i, label %if.end39.i501.i.if.end115.i_crit_edge, label %if.end39.i501.i.for.inc55.i504.i_crit_edge

if.end39.i501.i.for.inc55.i504.i_crit_edge:       ; preds = %if.end39.i501.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i504.i

if.end39.i501.i.if.end115.i_crit_edge:            ; preds = %if.end39.i501.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.i

for.inc55.i504.i:                                 ; preds = %if.end39.i501.i.for.inc55.i504.i_crit_edge, %for.body21.i498.i.for.inc55.i504.i_crit_edge
  %inc56.i502.i = add nuw nsw i32 %i.195.i495.i, 1
  %exitcond103.not.i503.i = icmp eq i32 %i.195.i495.i, %sub.i473.i
  br i1 %exitcond103.not.i503.i, label %for.inc55.i504.i.no_space.i_crit_edge, label %for.inc55.i504.i.for.body21.i498.i_crit_edge

for.inc55.i504.i.for.body21.i498.i_crit_edge:     ; preds = %for.inc55.i504.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i498.i

for.inc55.i504.i.no_space.i_crit_edge:            ; preds = %for.inc55.i504.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space.i

if.end115.i:                                      ; preds = %if.end39.i501.i.if.end115.i_crit_edge, %if.end.i491.i.if.end115.i_crit_edge
  %bf.load25.lcssa.sink.i505.i = phi i8 [ %bf.load25.i497.i, %if.end39.i501.i.if.end115.i_crit_edge ], [ %bf.load.i487.i, %if.end.i491.i.if.end115.i_crit_edge ]
  %tgc24.lcssa.sink.i506.i = phi ptr [ %tgc24.i496.i, %if.end39.i501.i.if.end115.i_crit_edge ], [ %tgc.i486.i, %if.end.i491.i.if.end115.i_crit_edge ]
  %i.195.lcssa.sink.i507.i = phi i32 [ %i.195.i495.i, %if.end39.i501.i.if.end115.i_crit_edge ], [ %i.092.i485.i, %if.end.i491.i.if.end115.i_crit_edge ]
  %bf.set51.i508.i = or i8 %bf.load25.lcssa.sink.i505.i, 64
  %284 = ptrtoint ptr %tgc24.lcssa.sink.i506.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %bf.set51.i508.i, ptr %tgc24.lcssa.sink.i506.i, align 4
  %285 = ptrtoint ptr %lpt_first.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %lpt_first.i.i, align 8
  %add53.i509.i = add i32 %286, %i.195.lcssa.sink.i507.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i509.i, i32 %286)
  %cmp118.not.i = icmp slt i32 %add53.i509.i, %286
  br i1 %cmp118.not.i, label %if.end115.i.if.then131.i_crit_edge, label %land.rhs119.i, !prof !182

if.end115.i.if.then131.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131.i

land.rhs119.i:                                    ; preds = %if.end115.i
  %287 = ptrtoint ptr %lpt_last.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %lpt_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i509.i, i32 %288)
  %cmp121.i = icmp sgt i32 %add53.i509.i, %288
  br i1 %cmp121.i, label %land.rhs119.i.if.then131.i_crit_edge, label %land.rhs119.i.if.end135.i_crit_edge, !prof !182

land.rhs119.i.if.end135.i_crit_edge:              ; preds = %land.rhs119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

land.rhs119.i.if.then131.i_crit_edge:             ; preds = %land.rhs119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131.i

if.then131.i:                                     ; preds = %land.rhs119.i.if.then131.i_crit_edge, %if.end115.i.if.then131.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 274) #7
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then131.i, %land.rhs119.i.if.end135.i_crit_edge, %if.then93.i.if.end135.i_crit_edge
  %lnum.5.i = phi i32 [ %add53.i509.i, %if.then131.i ], [ %add53.i509.i, %land.rhs119.i.if.end135.i_crit_edge ], [ %lnum.3.i, %if.then93.i.if.end135.i_crit_edge ]
  %offs.5.i = phi i32 [ 0, %if.then131.i ], [ 0, %land.rhs119.i.if.end135.i_crit_edge ], [ %add83.i, %if.then93.i.if.end135.i_crit_edge ]
  %289 = ptrtoint ptr %lsave_lnum56.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %lnum.5.i, ptr %lsave_lnum56.i, align 4
  %290 = ptrtoint ptr %lsave_offs57.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %offs.5.i, ptr %lsave_offs57.i, align 8
  %291 = ptrtoint ptr %lsave_sz58.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %lsave_sz58.i, align 4
  %add139.i = add i32 %292, %offs.5.i
  %293 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i514.i = load i8, ptr @ubifs_dbg, align 4
  %295 = and i8 %bf.load.i.i514.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool.not.i.i515.i = icmp eq i8 %295, 0
  br i1 %tobool.not.i.i515.i, label %dbg_is_chk_lprops.exit.i519.i, label %if.end135.i.if.end.i520.i_crit_edge

if.end135.i.if.end.i520.i_crit_edge:              ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i520.i

dbg_is_chk_lprops.exit.i519.i:                    ; preds = %if.end135.i
  %chk_lprops.i.i516.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %294, i32 0, i32 19
  %296 = ptrtoint ptr %chk_lprops.i.i516.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %bf.load1.i.i517.i = load i8, ptr %chk_lprops.i.i516.i, align 4
  %297 = and i8 %bf.load1.i.i517.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool.not.i518.i = icmp eq i8 %297, 0
  br i1 %tobool.not.i518.i, label %dbg_is_chk_lprops.exit.i519.i.if.end142.i_crit_edge, label %dbg_is_chk_lprops.exit.i519.i.if.end.i520.i_crit_edge

dbg_is_chk_lprops.exit.i519.i.if.end.i520.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i519.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i520.i

dbg_is_chk_lprops.exit.i519.i.if.end142.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i519.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142.i

if.end.i520.i:                                    ; preds = %dbg_is_chk_lprops.exit.i519.i.if.end.i520.i_crit_edge, %if.end135.i.if.end.i520.i_crit_edge
  %conv.i521.i = sext i32 %292 to i64
  %chk_lpt_sz12.i522.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %294, i32 0, i32 8
  %298 = ptrtoint ptr %chk_lpt_sz12.i522.i to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %chk_lpt_sz12.i522.i, align 8
  %add.i523.i = add i64 %299, %conv.i521.i
  store i64 %add.i523.i, ptr %chk_lpt_sz12.i522.i, align 8
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.end.i520.i, %dbg_is_chk_lprops.exit.i519.i.if.end142.i_crit_edge, %do.end91.i.if.end142.i_crit_edge
  %lnum.6.i = phi i32 [ %lnum.3.i, %do.end91.i.if.end142.i_crit_edge ], [ %lnum.5.i, %dbg_is_chk_lprops.exit.i519.i.if.end142.i_crit_edge ], [ %lnum.5.i, %if.end.i520.i ]
  %offs.6.i = phi i32 [ %add83.i, %do.end91.i.if.end142.i_crit_edge ], [ %add139.i, %dbg_is_chk_lprops.exit.i519.i.if.end142.i_crit_edge ], [ %add139.i, %if.end.i520.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_ltab.2.ph681.i)
  %tobool143.not.i = icmp eq i32 %done_ltab.2.ph681.i, 0
  br i1 %tobool143.not.i, label %if.then144.i, label %if.end142.i.if.end193.i_crit_edge

if.end142.i.if.end193.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193.i

if.then144.i:                                     ; preds = %if.end142.i
  %300 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %ltab_sz.i, align 8
  %add146.i = add i32 %301, %offs.6.i
  %302 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add146.i, i32 %303)
  %cmp148.i = icmp sgt i32 %add146.i, %303
  br i1 %cmp148.i, label %if.then149.i, label %if.then144.i.if.end186.i_crit_edge

if.then144.i.if.end186.i_crit_edge:               ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.i

if.then149.i:                                     ; preds = %if.then144.i
  %304 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %min_io_size.i, align 8
  %sub151.i = add i32 %offs.6.i, -1
  %add152.i = add i32 %sub151.i, %305
  %neg155.i = sub i32 0, %305
  %and156.i = and i32 %add152.i, %neg155.i
  %sub158.i = sub i32 %303, %and156.i
  %sub159.i = sub i32 %and156.i, %offs.6.i
  tail call fastcc void @upd_ltab(ptr noundef %c, i32 noundef %lnum.6.i, i32 noundef %sub158.i, i32 noundef %sub159.i) #7
  %306 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %leb_size13.i, align 8
  %sub161.i = sub i32 %307, %offs.6.i
  %308 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i527.i = load i8, ptr @ubifs_dbg, align 4
  %310 = and i8 %bf.load.i.i527.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool.not.i.i528.i = icmp eq i8 %310, 0
  br i1 %tobool.not.i.i528.i, label %dbg_is_chk_lprops.exit.i532.i, label %if.then149.i.if.end.i533.i_crit_edge

if.then149.i.if.end.i533.i_crit_edge:             ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i533.i

dbg_is_chk_lprops.exit.i532.i:                    ; preds = %if.then149.i
  %chk_lprops.i.i529.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %309, i32 0, i32 19
  %311 = ptrtoint ptr %chk_lprops.i.i529.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %bf.load1.i.i530.i = load i8, ptr %chk_lprops.i.i529.i, align 4
  %312 = and i8 %bf.load1.i.i530.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool.not.i531.i = icmp eq i8 %312, 0
  br i1 %tobool.not.i531.i, label %dbg_is_chk_lprops.exit.i532.i.dbg_chk_lpt_sz.exit542.i_crit_edge, label %dbg_is_chk_lprops.exit.i532.i.if.end.i533.i_crit_edge

dbg_is_chk_lprops.exit.i532.i.if.end.i533.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i532.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i533.i

dbg_is_chk_lprops.exit.i532.i.dbg_chk_lpt_sz.exit542.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i532.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit542.i

if.end.i533.i:                                    ; preds = %dbg_is_chk_lprops.exit.i532.i.if.end.i533.i_crit_edge, %if.then149.i.if.end.i533.i_crit_edge
  %conv14.i534.i = sext i32 %sub161.i to i64
  %chk_lpt_sz15.i535.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %309, i32 0, i32 8
  %313 = ptrtoint ptr %chk_lpt_sz15.i535.i to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %chk_lpt_sz15.i535.i, align 8
  %add16.i536.i = add i64 %314, %conv14.i534.i
  store i64 %add16.i536.i, ptr %chk_lpt_sz15.i535.i, align 8
  %chk_lpt_wastage18.i537.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %309, i32 0, i32 10
  %315 = ptrtoint ptr %chk_lpt_wastage18.i537.i to i32
  call void @__asan_load8_noabort(i32 %315)
  %316 = load i64, ptr %chk_lpt_wastage18.i537.i, align 8
  %add19.i538.i = add i64 %316, %conv14.i534.i
  store i64 %add19.i538.i, ptr %chk_lpt_wastage18.i537.i, align 8
  %chk_lpt_lebs20.i539.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %309, i32 0, i32 11
  %317 = ptrtoint ptr %chk_lpt_lebs20.i539.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %chk_lpt_lebs20.i539.i, align 8
  %add21.i540.i = add i32 %318, 1
  store i32 %add21.i540.i, ptr %chk_lpt_lebs20.i539.i, align 8
  br label %dbg_chk_lpt_sz.exit542.i

dbg_chk_lpt_sz.exit542.i:                         ; preds = %if.end.i533.i, %dbg_is_chk_lprops.exit.i532.i.dbg_chk_lpt_sz.exit542.i_crit_edge
  %319 = ptrtoint ptr %lpt_first.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %lpt_first.i.i, align 8
  %sub.i544.i = sub i32 %lnum.6.i, %320
  %add.i545.i = add i32 %sub.i544.i, 1
  %321 = ptrtoint ptr %lpt_lebs.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %lpt_lebs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i545.i, i32 %322)
  %cmp91.i547.i = icmp slt i32 %add.i545.i, %322
  br i1 %cmp91.i547.i, label %for.body.lr.ph.i550.i, label %dbg_chk_lpt_sz.exit542.i.for.cond19.preheader.i552.i_crit_edge

dbg_chk_lpt_sz.exit542.i.for.cond19.preheader.i552.i_crit_edge: ; preds = %dbg_chk_lpt_sz.exit542.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i552.i

for.body.lr.ph.i550.i:                            ; preds = %dbg_chk_lpt_sz.exit542.i
  %323 = ptrtoint ptr %ltab.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %ltab.i.i, align 8
  br label %for.body.i559.i

for.cond19.preheader.i552.i:                      ; preds = %for.inc.i565.i.for.cond19.preheader.i552.i_crit_edge, %dbg_chk_lpt_sz.exit542.i.for.cond19.preheader.i552.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub.i544.i)
  %cmp2094.i551.i = icmp ult i32 %sub.i544.i, 2147483647
  br i1 %cmp2094.i551.i, label %for.body21.lr.ph.i555.i, label %for.cond19.preheader.i552.i.no_space.i_crit_edge

for.cond19.preheader.i552.i.no_space.i_crit_edge: ; preds = %for.cond19.preheader.i552.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space.i

for.body21.lr.ph.i555.i:                          ; preds = %for.cond19.preheader.i552.i
  %325 = ptrtoint ptr %ltab.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ltab.i.i, align 8
  br label %for.body21.i569.i

for.body.i559.i:                                  ; preds = %for.inc.i565.i.for.body.i559.i_crit_edge, %for.body.lr.ph.i550.i
  %i.092.i556.i = phi i32 [ %add.i545.i, %for.body.lr.ph.i550.i ], [ %inc.i563.i, %for.inc.i565.i.for.body.i559.i_crit_edge ]
  %tgc.i557.i = getelementptr %struct.ubifs_lpt_lprops, ptr %324, i32 %i.092.i556.i, i32 2
  %327 = ptrtoint ptr %tgc.i557.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %bf.load.i558.i = load i8, ptr %tgc.i557.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i558.i)
  %328 = icmp ult i8 %bf.load.i558.i, 64
  br i1 %328, label %if.end.i562.i, label %for.body.i559.i.for.inc.i565.i_crit_edge

for.body.i559.i.for.inc.i565.i_crit_edge:         ; preds = %for.body.i559.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i565.i

if.end.i562.i:                                    ; preds = %for.body.i559.i
  %arrayidx.i560.i = getelementptr %struct.ubifs_lpt_lprops, ptr %324, i32 %i.092.i556.i
  %329 = ptrtoint ptr %arrayidx.i560.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx.i560.i, align 4
  %331 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %330, i32 %332)
  %cmp9.i561.i = icmp eq i32 %330, %332
  br i1 %cmp9.i561.i, label %if.end.i562.i.if.end166.i_crit_edge, label %if.end.i562.i.for.inc.i565.i_crit_edge

if.end.i562.i.for.inc.i565.i_crit_edge:           ; preds = %if.end.i562.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i565.i

if.end.i562.i.if.end166.i_crit_edge:              ; preds = %if.end.i562.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166.i

for.inc.i565.i:                                   ; preds = %if.end.i562.i.for.inc.i565.i_crit_edge, %for.body.i559.i.for.inc.i565.i_crit_edge
  %inc.i563.i = add i32 %i.092.i556.i, 1
  %exitcond.not.i564.i = icmp eq i32 %inc.i563.i, %322
  br i1 %exitcond.not.i564.i, label %for.inc.i565.i.for.cond19.preheader.i552.i_crit_edge, label %for.inc.i565.i.for.body.i559.i_crit_edge

for.inc.i565.i.for.body.i559.i_crit_edge:         ; preds = %for.inc.i565.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i559.i

for.inc.i565.i.for.cond19.preheader.i552.i_crit_edge: ; preds = %for.inc.i565.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i552.i

for.body21.i569.i:                                ; preds = %for.inc55.i575.i.for.body21.i569.i_crit_edge, %for.body21.lr.ph.i555.i
  %i.195.i566.i = phi i32 [ 0, %for.body21.lr.ph.i555.i ], [ %inc56.i573.i, %for.inc55.i575.i.for.body21.i569.i_crit_edge ]
  %tgc24.i567.i = getelementptr %struct.ubifs_lpt_lprops, ptr %326, i32 %i.195.i566.i, i32 2
  %333 = ptrtoint ptr %tgc24.i567.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %bf.load25.i568.i = load i8, ptr %tgc24.i567.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load25.i568.i)
  %334 = icmp ult i8 %bf.load25.i568.i, 64
  br i1 %334, label %if.end39.i572.i, label %for.body21.i569.i.for.inc55.i575.i_crit_edge

for.body21.i569.i.for.inc55.i575.i_crit_edge:     ; preds = %for.body21.i569.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i575.i

if.end39.i572.i:                                  ; preds = %for.body21.i569.i
  %arrayidx23.i570.i = getelementptr %struct.ubifs_lpt_lprops, ptr %326, i32 %i.195.i566.i
  %335 = ptrtoint ptr %arrayidx23.i570.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx23.i570.i, align 4
  %337 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %leb_size13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %336, i32 %338)
  %cmp44.i571.i = icmp eq i32 %336, %338
  br i1 %cmp44.i571.i, label %if.end39.i572.i.if.end166.i_crit_edge, label %if.end39.i572.i.for.inc55.i575.i_crit_edge

if.end39.i572.i.for.inc55.i575.i_crit_edge:       ; preds = %if.end39.i572.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.i575.i

if.end39.i572.i.if.end166.i_crit_edge:            ; preds = %if.end39.i572.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166.i

for.inc55.i575.i:                                 ; preds = %if.end39.i572.i.for.inc55.i575.i_crit_edge, %for.body21.i569.i.for.inc55.i575.i_crit_edge
  %inc56.i573.i = add nuw nsw i32 %i.195.i566.i, 1
  %exitcond103.not.i574.i = icmp eq i32 %i.195.i566.i, %sub.i544.i
  br i1 %exitcond103.not.i574.i, label %for.inc55.i575.i.no_space.i_crit_edge, label %for.inc55.i575.i.for.body21.i569.i_crit_edge

for.inc55.i575.i.for.body21.i569.i_crit_edge:     ; preds = %for.inc55.i575.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i569.i

for.inc55.i575.i.no_space.i_crit_edge:            ; preds = %for.inc55.i575.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space.i

if.end166.i:                                      ; preds = %if.end39.i572.i.if.end166.i_crit_edge, %if.end.i562.i.if.end166.i_crit_edge
  %bf.load25.lcssa.sink.i576.i = phi i8 [ %bf.load25.i568.i, %if.end39.i572.i.if.end166.i_crit_edge ], [ %bf.load.i558.i, %if.end.i562.i.if.end166.i_crit_edge ]
  %tgc24.lcssa.sink.i577.i = phi ptr [ %tgc24.i567.i, %if.end39.i572.i.if.end166.i_crit_edge ], [ %tgc.i557.i, %if.end.i562.i.if.end166.i_crit_edge ]
  %i.195.lcssa.sink.i578.i = phi i32 [ %i.195.i566.i, %if.end39.i572.i.if.end166.i_crit_edge ], [ %i.092.i556.i, %if.end.i562.i.if.end166.i_crit_edge ]
  %bf.set51.i579.i = or i8 %bf.load25.lcssa.sink.i576.i, 64
  %339 = ptrtoint ptr %tgc24.lcssa.sink.i577.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %bf.set51.i579.i, ptr %tgc24.lcssa.sink.i577.i, align 4
  %340 = ptrtoint ptr %lpt_first.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %lpt_first.i.i, align 8
  %add53.i580.i = add i32 %341, %i.195.lcssa.sink.i578.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i580.i, i32 %341)
  %cmp169.not.i = icmp slt i32 %add53.i580.i, %341
  br i1 %cmp169.not.i, label %if.end166.i.if.then182.i_crit_edge, label %land.rhs170.i, !prof !182

if.end166.i.if.then182.i_crit_edge:               ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then182.i

land.rhs170.i:                                    ; preds = %if.end166.i
  %342 = ptrtoint ptr %lpt_last.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %lpt_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i580.i, i32 %343)
  %cmp172.i = icmp sgt i32 %add53.i580.i, %343
  br i1 %cmp172.i, label %land.rhs170.i.if.then182.i_crit_edge, label %land.rhs170.i.if.end186.i_crit_edge, !prof !182

land.rhs170.i.if.end186.i_crit_edge:              ; preds = %land.rhs170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.i

land.rhs170.i.if.then182.i_crit_edge:             ; preds = %land.rhs170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then182.i

if.then182.i:                                     ; preds = %land.rhs170.i.if.then182.i_crit_edge, %if.end166.i.if.then182.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 294) #7
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then182.i, %land.rhs170.i.if.end186.i_crit_edge, %if.then144.i.if.end186.i_crit_edge
  %lnum.8.i = phi i32 [ %add53.i580.i, %if.then182.i ], [ %add53.i580.i, %land.rhs170.i.if.end186.i_crit_edge ], [ %lnum.6.i, %if.then144.i.if.end186.i_crit_edge ]
  %offs.7.i = phi i32 [ 0, %if.then182.i ], [ 0, %land.rhs170.i.if.end186.i_crit_edge ], [ %offs.6.i, %if.then144.i.if.end186.i_crit_edge ]
  %344 = ptrtoint ptr %ltab_lnum65.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %lnum.8.i, ptr %ltab_lnum65.i, align 8
  %345 = ptrtoint ptr %ltab_offs66.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %offs.7.i, ptr %ltab_offs66.i, align 4
  %346 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %ltab_sz.i, align 8
  %add190.i = add i32 %347, %offs.7.i
  %348 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i585.i = load i8, ptr @ubifs_dbg, align 4
  %350 = and i8 %bf.load.i.i585.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %350)
  %tobool.not.i.i586.i = icmp eq i8 %350, 0
  br i1 %tobool.not.i.i586.i, label %dbg_is_chk_lprops.exit.i590.i, label %if.end186.i.if.end.i591.i_crit_edge

if.end186.i.if.end.i591.i_crit_edge:              ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i591.i

dbg_is_chk_lprops.exit.i590.i:                    ; preds = %if.end186.i
  %chk_lprops.i.i587.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %349, i32 0, i32 19
  %351 = ptrtoint ptr %chk_lprops.i.i587.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %bf.load1.i.i588.i = load i8, ptr %chk_lprops.i.i587.i, align 4
  %352 = and i8 %bf.load1.i.i588.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool.not.i589.i = icmp eq i8 %352, 0
  br i1 %tobool.not.i589.i, label %dbg_is_chk_lprops.exit.i590.i.if.end193.i_crit_edge, label %dbg_is_chk_lprops.exit.i590.i.if.end.i591.i_crit_edge

dbg_is_chk_lprops.exit.i590.i.if.end.i591.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i590.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i591.i

dbg_is_chk_lprops.exit.i590.i.if.end193.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i590.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193.i

if.end.i591.i:                                    ; preds = %dbg_is_chk_lprops.exit.i590.i.if.end.i591.i_crit_edge, %if.end186.i.if.end.i591.i_crit_edge
  %conv.i592.i = sext i32 %347 to i64
  %chk_lpt_sz12.i593.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %349, i32 0, i32 8
  %353 = ptrtoint ptr %chk_lpt_sz12.i593.i to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %chk_lpt_sz12.i593.i, align 8
  %add.i594.i = add i64 %354, %conv.i592.i
  store i64 %add.i594.i, ptr %chk_lpt_sz12.i593.i, align 8
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.end.i591.i, %dbg_is_chk_lprops.exit.i590.i.if.end193.i_crit_edge, %if.end142.i.if.end193.i_crit_edge
  %lnum.9.i = phi i32 [ %lnum.6.i, %if.end142.i.if.end193.i_crit_edge ], [ %lnum.8.i, %dbg_is_chk_lprops.exit.i590.i.if.end193.i_crit_edge ], [ %lnum.8.i, %if.end.i591.i ]
  %offs.8.i = phi i32 [ %offs.6.i, %if.end142.i.if.end193.i_crit_edge ], [ %add190.i, %dbg_is_chk_lprops.exit.i590.i.if.end193.i_crit_edge ], [ %add190.i, %if.end.i591.i ]
  %355 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %min_io_size.i, align 8
  %sub195.i = add i32 %offs.8.i, -1
  %add196.i = add i32 %sub195.i, %356
  %neg199.i = sub i32 0, %356
  %and200.i = and i32 %add196.i, %neg199.i
  %357 = ptrtoint ptr %leb_size13.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %leb_size13.i, align 8
  %sub202.i = sub i32 %358, %and200.i
  %sub203.i = sub i32 %and200.i, %offs.8.i
  tail call fastcc void @upd_ltab(ptr noundef %c, i32 noundef %lnum.9.i, i32 noundef %sub202.i, i32 noundef %sub203.i) #7
  %359 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dbg.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i598.i = load i8, ptr @ubifs_dbg, align 4
  %361 = and i8 %bf.load.i.i598.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool.not.i.i599.i = icmp eq i8 %361, 0
  br i1 %tobool.not.i.i599.i, label %dbg_is_chk_lprops.exit.i603.i, label %if.end193.i.if.end.i604.i_crit_edge

if.end193.i.if.end.i604.i_crit_edge:              ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i604.i

dbg_is_chk_lprops.exit.i603.i:                    ; preds = %if.end193.i
  %chk_lprops.i.i600.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %360, i32 0, i32 19
  %362 = ptrtoint ptr %chk_lprops.i.i600.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %bf.load1.i.i601.i = load i8, ptr %chk_lprops.i.i600.i, align 4
  %363 = and i8 %bf.load1.i.i601.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool.not.i602.i = icmp eq i8 %363, 0
  br i1 %tobool.not.i602.i, label %dbg_is_chk_lprops.exit.i603.i.layout_cnodes.exit_crit_edge, label %dbg_is_chk_lprops.exit.i603.i.if.end.i604.i_crit_edge

dbg_is_chk_lprops.exit.i603.i.if.end.i604.i_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i603.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i604.i

dbg_is_chk_lprops.exit.i603.i.layout_cnodes.exit_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i603.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %layout_cnodes.exit

if.end.i604.i:                                    ; preds = %dbg_is_chk_lprops.exit.i603.i.if.end.i604.i_crit_edge, %if.end193.i.if.end.i604.i_crit_edge
  %conv95.i.i = sext i32 %sub203.i to i64
  %chk_lpt_sz96.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %360, i32 0, i32 8
  %364 = ptrtoint ptr %chk_lpt_sz96.i.i to i32
  call void @__asan_load8_noabort(i32 %364)
  %365 = load i64, ptr %chk_lpt_sz96.i.i, align 8
  %add97.i.i = add i64 %365, %conv95.i.i
  store i64 %add97.i.i, ptr %chk_lpt_sz96.i.i, align 8
  %chk_lpt_wastage99.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %360, i32 0, i32 10
  %366 = ptrtoint ptr %chk_lpt_wastage99.i.i to i32
  call void @__asan_load8_noabort(i32 %366)
  %367 = load i64, ptr %chk_lpt_wastage99.i.i, align 8
  %add100.i.i = add i64 %367, %conv95.i.i
  store i64 %add100.i.i, ptr %chk_lpt_wastage99.i.i, align 8
  br label %layout_cnodes.exit

no_space.i:                                       ; preds = %for.inc55.i575.i.no_space.i_crit_edge, %for.cond19.preheader.i552.i.no_space.i_crit_edge, %for.inc55.i504.i.no_space.i_crit_edge, %for.cond19.preheader.i481.i.no_space.i_crit_edge, %for.inc55.i.i.no_space.i_crit_edge, %for.cond19.preheader.i.i.no_space.i_crit_edge
  %done_ltab.2.ph680.i = phi i32 [ %done_ltab.2.ph681.i, %for.cond19.preheader.i481.i.no_space.i_crit_edge ], [ 0, %for.cond19.preheader.i552.i.no_space.i_crit_edge ], [ 0, %for.inc55.i575.i.no_space.i_crit_edge ], [ %done_ltab.2.ph681.i, %for.inc55.i504.i.no_space.i_crit_edge ], [ %done_ltab.2.ph702.i, %for.inc55.i.i.no_space.i_crit_edge ], [ %done_ltab.2.ph702.i, %for.cond19.preheader.i.i.no_space.i_crit_edge ]
  %lnum.10.i = phi i32 [ %lnum.3.i, %for.cond19.preheader.i481.i.no_space.i_crit_edge ], [ %lnum.6.i, %for.cond19.preheader.i552.i.no_space.i_crit_edge ], [ %lnum.6.i, %for.inc55.i575.i.no_space.i_crit_edge ], [ %lnum.3.i, %for.inc55.i504.i.no_space.i_crit_edge ], [ %lnum.1687.i, %for.inc55.i.i.no_space.i_crit_edge ], [ %lnum.1687.i, %for.cond19.preheader.i.i.no_space.i_crit_edge ]
  %offs.9.i = phi i32 [ %add83.i, %for.cond19.preheader.i481.i.no_space.i_crit_edge ], [ %offs.6.i, %for.cond19.preheader.i552.i.no_space.i_crit_edge ], [ %offs.6.i, %for.inc55.i575.i.no_space.i_crit_edge ], [ %add83.i, %for.inc55.i504.i.no_space.i_crit_edge ], [ %offs.3688.i, %for.inc55.i.i.no_space.i_crit_edge ], [ %offs.3688.i, %for.cond19.preheader.i.i.no_space.i_crit_edge ]
  %done_lsave.4.i = phi i32 [ 0, %for.cond19.preheader.i481.i.no_space.i_crit_edge ], [ 1, %for.cond19.preheader.i552.i.no_space.i_crit_edge ], [ 1, %for.inc55.i575.i.no_space.i_crit_edge ], [ 0, %for.inc55.i504.i.no_space.i_crit_edge ], [ %done_lsave.2689.i, %for.inc55.i.i.no_space.i_crit_edge ], [ %done_lsave.2689.i, %for.cond19.preheader.i.i.no_space.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.37, i32 noundef %lnum.10.i, i32 noundef %offs.9.i, i32 noundef %len.0.i, i32 noundef %done_ltab.2.ph680.i, i32 noundef %done_lsave.4.i) #7
  tail call void @ubifs_dump_lpt_info(ptr noundef %c) #7
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %c) #7
  tail call void @dump_stack() #10
  br label %out

layout_cnodes.exit:                               ; preds = %if.end.i604.i, %dbg_is_chk_lprops.exit.i603.i.layout_cnodes.exit_crit_edge
  %call206.i = tail call i32 @dbg_chk_lpt_sz(ptr noundef %c, i32 noundef 3, i32 noundef %and200.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206.i)
  %tobool77.not = icmp eq i32 %call206.i, 0
  br i1 %tobool77.not, label %layout_cnodes.exit.if.end79_crit_edge, label %layout_cnodes.exit.out_crit_edge

layout_cnodes.exit.out_crit_edge:                 ; preds = %layout_cnodes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

layout_cnodes.exit.if.end79_crit_edge:            ; preds = %layout_cnodes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.end79:                                         ; preds = %layout_cnodes.exit.if.end79_crit_edge, %if.end.i.if.end79_crit_edge
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %368 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %mst_node, align 4
  %hash_lpt = getelementptr inbounds %struct.ubifs_mst_node, ptr %369, i32 0, i32 30
  %call80 = tail call i32 @ubifs_lpt_calc_hash(ptr noundef %c, ptr noundef %hash_lpt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.out_crit_edge

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end83:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %ltab_cmt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 169
  %370 = ptrtoint ptr %ltab_cmt to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %ltab_cmt, align 4
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %372 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %ltab, align 8
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %374 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %lpt_lebs, align 4
  %mul = mul i32 %375, 12
  %376 = call ptr @memcpy(ptr %371, ptr %373, i32 %mul)
  %lpt_drty_flgs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 149
  %377 = ptrtoint ptr %lpt_drty_flgs to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %lpt_drty_flgs, align 4
  %and = and i32 %378, -4
  store i32 %and, ptr %lpt_drty_flgs, align 4
  br label %out

out:                                              ; preds = %if.end83, %if.end79.out_crit_edge, %layout_cnodes.exit.out_crit_edge, %no_space.i, %dbg_chk_lpt_sz.exit.thread626.i, %if.end5.i.i.out_crit_edge, %make_tree_dirty.exit, %if.then38, %do.body26, %if.end7.out_crit_edge, %do.end.out_crit_edge
  %err.0 = phi i32 [ %call4, %do.end.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ], [ %call206.i, %layout_cnodes.exit.out_crit_edge ], [ %call80, %if.end79.out_crit_edge ], [ 0, %if.end83 ], [ %retval.0.i164, %make_tree_dirty.exit ], [ 0, %if.then38 ], [ 0, %do.body26 ], [ -22, %if.end5.i.i.out_crit_edge ], [ -22, %dbg_chk_lpt_sz.exit.thread626.i ], [ -28, %no_space.i ]
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call18, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_chk_lpt_free_spc(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %0 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

lor.rhs.i:                                        ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %1 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg.i, align 4
  %chk_lprops.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %chk_lprops.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %chk_lprops.i, align 4
  %4 = and i8 %bf.load1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %phi.cmp = icmp eq i8 %4, 0
  br i1 %phi.cmp, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.for.cond.preheader_crit_edge

lor.rhs.i.for.cond.preheader_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.rhs.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %5 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp55 = icmp sgt i32 %6, 0
  br i1 %cmp55, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %7 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ltab, align 8
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %leb_size16 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %free.056 = phi i64 [ 0, %for.body.lr.ph ], [ %free.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %8, i32 %i.057
  %tgc = getelementptr %struct.ubifs_lpt_lprops, ptr %8, i32 %i.057, i32 2
  %9 = ptrtoint ptr %tgc to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %tgc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %10 = icmp ult i8 %bf.load, 64
  br i1 %10, label %if.end9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %11 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lpt_first, align 8
  %add = add i32 %12, %i.057
  %13 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nhead_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp10 = icmp eq i32 %add, %14
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leb_size16, align 8
  %17 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nhead_offs, align 8
  %sub = sub i32 %16, %18
  %conv = sext i32 %sub to i64
  %add12 = add i64 %free.056, %conv
  br label %for.inc

if.else:                                          ; preds = %if.end9
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %leb_size16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp17 = icmp eq i32 %20, %22
  br i1 %cmp17, label %if.then19, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = sext i32 %20 to i64
  %add22 = add i64 %free.056, %conv21
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.else.for.inc_crit_edge, %if.then11, %for.body.for.inc_crit_edge
  %free.1 = phi i64 [ %free.056, %for.body.for.inc_crit_edge ], [ %add12, %if.then11 ], [ %add22, %if.then19 ], [ %free.056, %if.else.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %free.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %free.1, %for.inc.for.end_crit_edge ]
  %lpt_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %23 = ptrtoint ptr %lpt_sz to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %lpt_sz, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %free.0.lcssa, i64 %24)
  %cmp25 = icmp slt i64 %free.0.lcssa, %24
  br i1 %cmp25, label %if.then27, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.10, i64 noundef %free.0.lcssa, i64 noundef %24) #7
  tail call void @ubifs_dump_lpt_info(ptr noundef %c) #7
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %c)
  tail call void @dump_stack() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.end.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then27 ], [ 0, %lor.rhs.i.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_ltab(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %0 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dbg_is_chk_lprops.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_lprops.exit:                           ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %1 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg.i, align 4
  %chk_lprops.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %chk_lprops.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %chk_lprops.i, align 4
  %4 = and i8 %bf.load1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %dbg_is_chk_lprops.exit.cleanup29_crit_edge, label %dbg_is_chk_lprops.exit.if.end_crit_edge

dbg_is_chk_lprops.exit.if.end_crit_edge:          ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_lprops.exit.cleanup29_crit_edge:       ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

if.end:                                           ; preds = %dbg_is_chk_lprops.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %5 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %main_lebs, align 4
  %sub = add i32 %6, 3
  %div = sdiv i32 %sub, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp54 = icmp sgt i32 %sub, 3
  br i1 %cmp54, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call1 = tail call ptr @ubifs_pnode_lookup(ptr noundef %c, i32 noundef %i.055) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call1 to i32
  br label %cleanup29

for.inc:                                          ; preds = %for.body
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1676, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %8 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nroot, align 8
  %call7 = tail call i32 @dbg_check_lpt_nodes(ptr noundef %c, ptr noundef %9, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %for.end.cleanup29_crit_edge

for.end.cleanup29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

if.end10:                                         ; preds = %for.end
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %10 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lpt_first, align 8
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %12 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp12.not56 = icmp sgt i32 %11, %13
  br i1 %cmp12.not56, label %if.end10.do.body_crit_edge, label %if.end10.for.body13_crit_edge

if.end10.for.body13_crit_edge:                    ; preds = %if.end10
  br label %for.body13

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body13:                                       ; preds = %for.inc18.for.body13_crit_edge, %if.end10.for.body13_crit_edge
  %lnum.057 = phi i32 [ %inc19, %for.inc18.for.body13_crit_edge ], [ %11, %if.end10.for.body13_crit_edge ]
  %call14 = tail call fastcc i32 @dbg_check_ltab_lnum(ptr noundef %c, i32 noundef %lnum.057)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.inc18, label %if.then16

if.then16:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.7, i32 noundef %lnum.057) #7
  br label %cleanup29

for.inc18:                                        ; preds = %for.body13
  %inc19 = add i32 %lnum.057, 1
  %14 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpt_last, align 4
  %cmp12.not = icmp sgt i32 %inc19, %15
  br i1 %cmp12.not, label %for.inc18.do.body_crit_edge, label %for.inc18.for.body13_crit_edge

for.inc18.for.body13_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.inc18.do.body_crit_edge:                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.inc18.do.body_crit_edge, %if.end10.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_check_ltab.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_check_ltab, %if.then26)) #7
          to label %cleanup29 [label %if.then26], !srcloc !181

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbg_check_ltab.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.9, i32 noundef %21) #7
  br label %cleanup29

cleanup29:                                        ; preds = %if.then26, %do.body, %if.then16, %for.end.cleanup29_crit_edge, %cleanup.thread, %dbg_is_chk_lprops.exit.cleanup29_crit_edge
  %retval.2 = phi i32 [ %call14, %if.then16 ], [ 0, %dbg_is_chk_lprops.exit.cleanup29_crit_edge ], [ %call7, %for.end.cleanup29_crit_edge ], [ 0, %if.then26 ], [ %7, %cleanup.thread ], [ 0, %do.body ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpt_gc(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #7
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %0 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp55 = icmp sgt i32 %1, 0
  br i1 %cmp55, label %do.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #7
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %dirty.059 = phi i32 [ 0, %do.body.lr.ph ], [ %dirty.1, %for.inc.do.body_crit_edge ]
  %lnum.058 = phi i32 [ -1, %do.body.lr.ph ], [ %lnum.1, %for.inc.do.body_crit_edge ]
  %i.056 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  %2 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ltab, align 8
  %tgc = getelementptr %struct.ubifs_lpt_lprops, ptr %3, i32 %i.056, i32 2
  %4 = ptrtoint ptr %tgc to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tgc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then, !prof !183

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 1156) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  %5 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lpt_first, align 8
  %add = add i32 %6, %i.056
  %7 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nhead_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp5 = icmp eq i32 %add, %8
  br i1 %cmp5, label %do.end.for.inc_crit_edge, label %lor.lhs.false

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ltab, align 8
  %arrayidx7 = getelementptr %struct.ubifs_lpt_lprops, ptr %10, i32 %i.056
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %dirty10 = getelementptr %struct.ubifs_lpt_lprops, ptr %10, i32 %i.056, i32 1
  %13 = ptrtoint ptr %dirty10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty10, align 4
  %add11 = add i32 %14, %12
  %15 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %16)
  %cmp12 = icmp ne i32 %add11, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %dirty.059)
  %cmp18 = icmp sgt i32 %14, %dirty.059
  %or.cond = select i1 %cmp12, i1 %cmp18, i1 false
  %spec.select = select i1 %or.cond, i32 %add, i32 %lnum.058
  %spec.select54 = select i1 %or.cond, i32 %14, i32 %dirty.059
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %do.end.for.inc_crit_edge
  %lnum.1 = phi i32 [ %lnum.058, %do.end.for.inc_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %dirty.1 = phi i32 [ %dirty.059, %do.end.for.inc_crit_edge ], [ %spec.select54, %lor.lhs.false ]
  %inc = add nuw nsw i32 %i.056, 1
  %17 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lpt_lebs, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum.1)
  %cmp27 = icmp eq i32 %lnum.1, -1
  br i1 %cmp27, label %for.end.cleanup_crit_edge, label %if.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @lpt_gc_lnum(ptr noundef %c, i32 noundef %lnum.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ %call, %if.end29 ], [ -28, %for.end.cleanup_crit_edge ], [ -28, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpt_tgc_start(ptr nocapture noundef readonly %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %0 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp49 = icmp sgt i32 %1, 0
  br i1 %cmp49, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lpt_first, align 8
  %add = add i32 %3, %i.050
  %4 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nhead_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp1 = icmp eq i32 %add, %5
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ltab, align 8
  %dirty = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %i.050, i32 1
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %i.050
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add8 = add i32 %11, %9
  %12 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %13)
  %cmp9 = icmp eq i32 %add8, %13
  br i1 %cmp9, label %if.then10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %tgc = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %i.050, i32 2
  %14 = ptrtoint ptr %tgc to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %tgc, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %tgc, align 4
  %15 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leb_size, align 8
  %17 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ltab, align 8
  %arrayidx15 = getelementptr %struct.ubifs_lpt_lprops, ptr %18, i32 %i.050
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %arrayidx15, align 4
  %20 = load ptr, ptr %ltab, align 8
  %dirty19 = getelementptr %struct.ubifs_lpt_lprops, ptr %20, i32 %i.050, i32 1
  %21 = ptrtoint ptr %dirty19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dirty19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_tgc_start.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_tgc_start, %if.then22)) #7
          to label %for.inc [label %if.then22], !srcloc !181

if.then22:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 8
  %28 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lpt_first, align 8
  %add25 = add i32 %29, %i.050
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_tgc_start.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.25, i32 noundef %27, i32 noundef %add25) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.then10, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %30 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lpt_lebs, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @populate_lsave(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.do.end_crit_edge, !prof !182

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 767) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %lpt_drty_flgs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 149
  %1 = ptrtoint ptr %lpt_drty_flgs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lpt_drty_flgs, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %2, 2
  %3 = ptrtoint ptr %lpt_drty_flgs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %lpt_drty_flgs, align 4
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %4 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lsave_lnum, align 4
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %6 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lsave_sz, align 4
  tail call void @ubifs_add_lpt_dirt(ptr noundef %c, i32 noundef %5, i32 noundef %7) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %dbg_is_chk_gen.exit.i, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

dbg_is_chk_gen.exit.i:                            ; preds = %if.end7
  %dbg.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %8 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbg.i.i, align 4
  %chk_gen.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %chk_gen.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load1.i.i = load i8, ptr %chk_gen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load1.i.i, -1
  br i1 %tobool.not.i, label %dbg_is_chk_gen.exit.i.if.end10_crit_edge, label %dbg_is_chk_gen.exit.i.if.end.i_crit_edge

dbg_is_chk_gen.exit.i.if.end.i_crit_edge:         ; preds = %dbg_is_chk_gen.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

dbg_is_chk_gen.exit.i.if.end10_crit_edge:         ; preds = %dbg_is_chk_gen.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.i:                                         ; preds = %dbg_is_chk_gen.exit.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %call1.i = tail call i32 @prandom_u32() #7
  %and.i = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.cond.preheader.i:                             ; preds = %if.end.i
  %lsave_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %11 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lsave_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp162.i = icmp sgt i32 %12, 0
  br i1 %cmp162.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %lsave.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0163.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %main_first.i, align 8
  %15 = ptrtoint ptr %lsave.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lsave.i, align 4
  %arrayidx.i = getelementptr i32, ptr %16, i32 %i.0163.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0163.i, 1
  %18 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lsave_cnt.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %empty_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 161
  %20 = ptrtoint ptr %empty_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn164.i = load ptr, ptr %empty_list.i, align 4
  %cmp7.not165.i = icmp eq ptr %.pn164.i, %empty_list.i
  br i1 %cmp7.not165.i, label %for.end.i.for.end18.i_crit_edge, label %for.body8.lr.ph.i

for.end.i.for.end18.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18.i

for.body8.lr.ph.i:                                ; preds = %for.end.i
  %lsave9.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %.pn166.i = phi ptr [ %.pn164.i, %for.body8.lr.ph.i ], [ %.pn.i, %for.body8.i.for.body8.i_crit_edge ]
  %lnum.i = getelementptr i8, ptr %.pn166.i, i32 -4
  %21 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lnum.i, align 4
  %23 = ptrtoint ptr %lsave9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lsave9.i, align 4
  %call10.i = tail call i32 @prandom_u32() #7
  %25 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lsave_cnt.i, align 8
  %rem.i = urem i32 %call10.i, %26
  %arrayidx12.i = getelementptr i32, ptr %24, i32 %rem.i
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %arrayidx12.i, align 4
  %28 = ptrtoint ptr %.pn166.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn166.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %empty_list.i
  br i1 %cmp7.not.i, label %for.body8.i.for.end18.i_crit_edge, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i

for.body8.i.for.end18.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18.i

for.end18.i:                                      ; preds = %for.body8.i.for.end18.i_crit_edge, %for.end.i.for.end18.i_crit_edge
  %freeable_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 162
  %29 = ptrtoint ptr %freeable_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn159167.i = load ptr, ptr %freeable_list.i, align 4
  %cmp25.not168.i = icmp eq ptr %.pn159167.i, %freeable_list.i
  br i1 %cmp25.not168.i, label %for.end18.i.for.end39.i_crit_edge, label %for.body27.lr.ph.i

for.end18.i.for.end39.i_crit_edge:                ; preds = %for.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39.i

for.body27.lr.ph.i:                               ; preds = %for.end18.i
  %lsave29.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %for.body27.lr.ph.i
  %.pn159169.i = phi ptr [ %.pn159167.i, %for.body27.lr.ph.i ], [ %.pn159.i, %for.body27.i.for.body27.i_crit_edge ]
  %lnum28.i = getelementptr i8, ptr %.pn159169.i, i32 -4
  %30 = ptrtoint ptr %lnum28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lnum28.i, align 4
  %32 = ptrtoint ptr %lsave29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lsave29.i, align 4
  %call30.i = tail call i32 @prandom_u32() #7
  %34 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lsave_cnt.i, align 8
  %rem32.i = urem i32 %call30.i, %35
  %arrayidx33.i = getelementptr i32, ptr %33, i32 %rem32.i
  %36 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %arrayidx33.i, align 4
  %37 = ptrtoint ptr %.pn159169.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn159.i = load ptr, ptr %.pn159169.i, align 4
  %cmp25.not.i = icmp eq ptr %.pn159.i, %freeable_list.i
  br i1 %cmp25.not.i, label %for.body27.i.for.end39.i_crit_edge, label %for.body27.i.for.body27.i_crit_edge

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27.i

for.body27.i.for.end39.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39.i

for.end39.i:                                      ; preds = %for.body27.i.for.end39.i_crit_edge, %for.end18.i.for.end39.i_crit_edge
  %frdi_idx_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  %38 = ptrtoint ptr %frdi_idx_list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn160170.i = load ptr, ptr %frdi_idx_list.i, align 4
  %cmp46.not171.i = icmp eq ptr %.pn160170.i, %frdi_idx_list.i
  br i1 %cmp46.not171.i, label %for.end39.i.for.end60.i_crit_edge, label %for.body48.lr.ph.i

for.end39.i.for.end60.i_crit_edge:                ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.body48.lr.ph.i:                               ; preds = %for.end39.i
  %lsave50.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body48.i

for.body48.i:                                     ; preds = %for.body48.i.for.body48.i_crit_edge, %for.body48.lr.ph.i
  %.pn160172.i = phi ptr [ %.pn160170.i, %for.body48.lr.ph.i ], [ %.pn160.i, %for.body48.i.for.body48.i_crit_edge ]
  %lnum49.i = getelementptr i8, ptr %.pn160172.i, i32 -4
  %39 = ptrtoint ptr %lnum49.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lnum49.i, align 4
  %41 = ptrtoint ptr %lsave50.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lsave50.i, align 4
  %call51.i = tail call i32 @prandom_u32() #7
  %43 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lsave_cnt.i, align 8
  %rem53.i = urem i32 %call51.i, %44
  %arrayidx54.i = getelementptr i32, ptr %42, i32 %rem53.i
  %45 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %arrayidx54.i, align 4
  %46 = ptrtoint ptr %.pn160172.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn160.i = load ptr, ptr %.pn160172.i, align 4
  %cmp46.not.i = icmp eq ptr %.pn160.i, %frdi_idx_list.i
  br i1 %cmp46.not.i, label %for.body48.i.for.end60.i_crit_edge, label %for.body48.i.for.body48.i_crit_edge

for.body48.i.for.body48.i_crit_edge:              ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48.i

for.body48.i.for.end60.i_crit_edge:               ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end60.i:                                      ; preds = %for.body48.i.for.end60.i_crit_edge, %for.end39.i.for.end60.i_crit_edge
  %lpt_heap.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158
  %arrayidx61.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 1
  %47 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp63173.i = icmp sgt i32 %48, 0
  br i1 %cmp63173.i, label %for.body64.lr.ph.i, label %for.end60.i.for.cond77.preheader.i_crit_edge

for.end60.i.for.cond77.preheader.i_crit_edge:     ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond77.preheader.i

for.body64.lr.ph.i:                               ; preds = %for.end60.i
  %lsave67.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body64.i

for.cond77.preheader.i:                           ; preds = %for.body64.i.for.cond77.preheader.i_crit_edge, %for.end60.i.for.cond77.preheader.i_crit_edge
  %cnt78.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0, i32 1
  %49 = ptrtoint ptr %cnt78.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cnt78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp79175.i = icmp sgt i32 %50, 0
  br i1 %cmp79175.i, label %for.body80.lr.ph.i, label %for.cond77.preheader.i.for.end91.i_crit_edge

for.cond77.preheader.i.for.end91.i_crit_edge:     ; preds = %for.cond77.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91.i

for.body80.lr.ph.i:                               ; preds = %for.cond77.preheader.i
  %lsave84.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body80.i

for.body64.i:                                     ; preds = %for.body64.i.for.body64.i_crit_edge, %for.body64.lr.ph.i
  %i.1174.i = phi i32 [ 0, %for.body64.lr.ph.i ], [ %inc73.i, %for.body64.i.for.body64.i_crit_edge ]
  %51 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx61.i, align 4
  %arrayidx65.i = getelementptr ptr, ptr %52, i32 %i.1174.i
  %53 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx65.i, align 4
  %lnum66.i = getelementptr inbounds %struct.ubifs_lprops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %lnum66.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lnum66.i, align 4
  %57 = ptrtoint ptr %lsave67.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lsave67.i, align 4
  %call68.i = tail call i32 @prandom_u32() #7
  %59 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lsave_cnt.i, align 8
  %rem70.i = urem i32 %call68.i, %60
  %arrayidx71.i = getelementptr i32, ptr %58, i32 %rem70.i
  %61 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %arrayidx71.i, align 4
  %inc73.i = add nuw nsw i32 %i.1174.i, 1
  %62 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cnt.i, align 4
  %cmp63.i = icmp slt i32 %inc73.i, %63
  br i1 %cmp63.i, label %for.body64.i.for.body64.i_crit_edge, label %for.body64.i.for.cond77.preheader.i_crit_edge

for.body64.i.for.cond77.preheader.i_crit_edge:    ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond77.preheader.i

for.body64.i.for.body64.i_crit_edge:              ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64.i

for.body80.i:                                     ; preds = %for.body80.i.for.body80.i_crit_edge, %for.body80.lr.ph.i
  %i.2176.i = phi i32 [ 0, %for.body80.lr.ph.i ], [ %inc90.i, %for.body80.i.for.body80.i_crit_edge ]
  %64 = ptrtoint ptr %lpt_heap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lpt_heap.i, align 4
  %arrayidx82.i = getelementptr ptr, ptr %65, i32 %i.2176.i
  %66 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx82.i, align 4
  %lnum83.i = getelementptr inbounds %struct.ubifs_lprops, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %lnum83.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lnum83.i, align 4
  %70 = ptrtoint ptr %lsave84.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lsave84.i, align 4
  %call85.i = tail call i32 @prandom_u32() #7
  %72 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lsave_cnt.i, align 8
  %rem87.i = urem i32 %call85.i, %73
  %arrayidx88.i = getelementptr i32, ptr %71, i32 %rem87.i
  %74 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %69, ptr %arrayidx88.i, align 4
  %inc90.i = add nuw nsw i32 %i.2176.i, 1
  %75 = ptrtoint ptr %cnt78.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cnt78.i, align 4
  %cmp79.i = icmp slt i32 %inc90.i, %76
  br i1 %cmp79.i, label %for.body80.i.for.body80.i_crit_edge, label %for.body80.i.for.end91.i_crit_edge

for.body80.i.for.end91.i_crit_edge:               ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91.i

for.body80.i.for.body80.i_crit_edge:              ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body80.i

for.end91.i:                                      ; preds = %for.body80.i.for.end91.i_crit_edge, %for.cond77.preheader.i.for.end91.i_crit_edge
  %arrayidx93.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2
  %cnt95.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2, i32 1
  %77 = ptrtoint ptr %cnt95.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cnt95.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp96177.i = icmp sgt i32 %78, 0
  br i1 %cmp96177.i, label %for.body97.lr.ph.i, label %for.end91.i.cleanup_crit_edge

for.end91.i.cleanup_crit_edge:                    ; preds = %for.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body97.lr.ph.i:                               ; preds = %for.end91.i
  %lsave101.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body97.i

for.body97.i:                                     ; preds = %for.body97.i.for.body97.i_crit_edge, %for.body97.lr.ph.i
  %i.3178.i = phi i32 [ 0, %for.body97.lr.ph.i ], [ %inc107.i, %for.body97.i.for.body97.i_crit_edge ]
  %79 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx93.i, align 4
  %arrayidx99.i = getelementptr ptr, ptr %80, i32 %i.3178.i
  %81 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx99.i, align 4
  %lnum100.i = getelementptr inbounds %struct.ubifs_lprops, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %lnum100.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lnum100.i, align 4
  %85 = ptrtoint ptr %lsave101.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lsave101.i, align 4
  %call102.i = tail call i32 @prandom_u32() #7
  %87 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %lsave_cnt.i, align 8
  %rem104.i = urem i32 %call102.i, %88
  %arrayidx105.i = getelementptr i32, ptr %86, i32 %rem104.i
  %89 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %84, ptr %arrayidx105.i, align 4
  %inc107.i = add nuw nsw i32 %i.3178.i, 1
  %90 = ptrtoint ptr %cnt95.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cnt95.i, align 4
  %cmp96.i = icmp slt i32 %inc107.i, %91
  br i1 %cmp96.i, label %for.body97.i.for.body97.i_crit_edge, label %for.body97.i.cleanup_crit_edge

for.body97.i.cleanup_crit_edge:                   ; preds = %for.body97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body97.i.for.body97.i_crit_edge:              ; preds = %for.body97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body97.i

if.end10:                                         ; preds = %if.end.i.if.end10_crit_edge, %dbg_is_chk_gen.exit.i.if.end10_crit_edge
  %empty_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 161
  %lsave = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end10
  %cnt.0 = phi i32 [ 0, %if.end10 ], [ %inc, %for.body.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %empty_list, %if.end10 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %92 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %empty_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %lnum = getelementptr i8, ptr %.pn, i32 -4
  %93 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lnum, align 4
  %95 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lsave, align 4
  %inc = add nuw nsw i32 %cnt.0, 1
  %arrayidx = getelementptr i32, ptr %96, i32 %cnt.0
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %94, ptr %arrayidx, align 4
  %98 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %lsave_cnt, align 8
  %cmp14.not = icmp slt i32 %inc, %99
  br i1 %cmp14.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %freeable_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 162
  br label %for.cond25

for.cond25:                                       ; preds = %for.body30.for.cond25_crit_edge, %for.end
  %cnt.1 = phi i32 [ %cnt.0, %for.end ], [ %inc33, %for.body30.for.cond25_crit_edge ]
  %.pn197.in = phi ptr [ %freeable_list, %for.end ], [ %.pn197, %for.body30.for.cond25_crit_edge ]
  %100 = ptrtoint ptr %.pn197.in to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn197 = load ptr, ptr %.pn197.in, align 4
  %cmp27.not = icmp eq ptr %.pn197, %freeable_list
  br i1 %cmp27.not, label %for.end44, label %for.body30

for.body30:                                       ; preds = %for.cond25
  %lnum31 = getelementptr i8, ptr %.pn197, i32 -4
  %101 = ptrtoint ptr %lnum31 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lnum31, align 4
  %103 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lsave, align 4
  %inc33 = add nuw nsw i32 %cnt.1, 1
  %arrayidx34 = getelementptr i32, ptr %104, i32 %cnt.1
  %105 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %102, ptr %arrayidx34, align 4
  %106 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lsave_cnt, align 8
  %cmp36.not = icmp slt i32 %inc33, %107
  br i1 %cmp36.not, label %for.body30.for.cond25_crit_edge, label %for.body30.cleanup_crit_edge

for.body30.cleanup_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body30.for.cond25_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond25

for.end44:                                        ; preds = %for.cond25
  %frdi_idx_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  br label %for.cond49

for.cond49:                                       ; preds = %for.body54.for.cond49_crit_edge, %for.end44
  %cnt.2 = phi i32 [ %cnt.1, %for.end44 ], [ %inc57, %for.body54.for.cond49_crit_edge ]
  %.pn198.in = phi ptr [ %frdi_idx_list, %for.end44 ], [ %.pn198, %for.body54.for.cond49_crit_edge ]
  %108 = ptrtoint ptr %.pn198.in to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn198 = load ptr, ptr %.pn198.in, align 4
  %cmp51.not = icmp eq ptr %.pn198, %frdi_idx_list
  br i1 %cmp51.not, label %for.end68, label %for.body54

for.body54:                                       ; preds = %for.cond49
  %lnum55 = getelementptr i8, ptr %.pn198, i32 -4
  %109 = ptrtoint ptr %lnum55 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lnum55, align 4
  %111 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %lsave, align 4
  %inc57 = add nuw nsw i32 %cnt.2, 1
  %arrayidx58 = getelementptr i32, ptr %112, i32 %cnt.2
  %113 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %arrayidx58, align 4
  %114 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lsave_cnt, align 8
  %cmp60.not = icmp slt i32 %inc57, %115
  br i1 %cmp60.not, label %for.body54.for.cond49_crit_edge, label %for.body54.cleanup_crit_edge

for.body54.cleanup_crit_edge:                     ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body54.for.cond49_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond49

for.end68:                                        ; preds = %for.cond49
  %lpt_heap = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158
  %arrayidx69 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %cnt71 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 1
  %116 = ptrtoint ptr %cnt71 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cnt71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp72214 = icmp sgt i32 %117, 0
  br i1 %cmp72214, label %for.end68.for.body73_crit_edge, label %for.end68.for.cond88.preheader_crit_edge

for.end68.for.cond88.preheader_crit_edge:         ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond88.preheader

for.end68.for.body73_crit_edge:                   ; preds = %for.end68
  br label %for.body73

for.cond70:                                       ; preds = %for.body73
  %inc84 = add nuw nsw i32 %i.0216, 1
  %118 = ptrtoint ptr %cnt71 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cnt71, align 4
  %cmp72 = icmp slt i32 %inc84, %119
  br i1 %cmp72, label %for.cond70.for.body73_crit_edge, label %for.cond70.for.cond88.preheader_crit_edge

for.cond70.for.cond88.preheader_crit_edge:        ; preds = %for.cond70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond88.preheader

for.cond70.for.body73_crit_edge:                  ; preds = %for.cond70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body73

for.cond88.preheader:                             ; preds = %for.cond70.for.cond88.preheader_crit_edge, %for.end68.for.cond88.preheader_crit_edge
  %cnt.3.lcssa = phi i32 [ %cnt.2, %for.end68.for.cond88.preheader_crit_edge ], [ %inc77, %for.cond70.for.cond88.preheader_crit_edge ]
  %cnt89 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0, i32 1
  %120 = ptrtoint ptr %cnt89 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cnt89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp90217 = icmp sgt i32 %121, 0
  br i1 %cmp90217, label %for.cond88.preheader.for.body91_crit_edge, label %for.cond88.preheader.for.end104_crit_edge

for.cond88.preheader.for.end104_crit_edge:        ; preds = %for.cond88.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end104

for.cond88.preheader.for.body91_crit_edge:        ; preds = %for.cond88.preheader
  br label %for.body91

for.body73:                                       ; preds = %for.cond70.for.body73_crit_edge, %for.end68.for.body73_crit_edge
  %i.0216 = phi i32 [ %inc84, %for.cond70.for.body73_crit_edge ], [ 0, %for.end68.for.body73_crit_edge ]
  %cnt.3215 = phi i32 [ %inc77, %for.cond70.for.body73_crit_edge ], [ %cnt.2, %for.end68.for.body73_crit_edge ]
  %122 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx69, align 4
  %arrayidx74 = getelementptr ptr, ptr %123, i32 %i.0216
  %124 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx74, align 4
  %lnum75 = getelementptr inbounds %struct.ubifs_lprops, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %lnum75 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lnum75, align 4
  %128 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lsave, align 4
  %inc77 = add nuw i32 %cnt.3215, 1
  %arrayidx78 = getelementptr i32, ptr %129, i32 %cnt.3215
  %130 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %127, ptr %arrayidx78, align 4
  %131 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc77, i32 %132)
  %cmp80.not = icmp slt i32 %inc77, %132
  br i1 %cmp80.not, label %for.cond70, label %for.body73.cleanup_crit_edge

for.body73.cleanup_crit_edge:                     ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond88:                                       ; preds = %for.body91
  %inc103 = add nuw nsw i32 %i.1219, 1
  %133 = ptrtoint ptr %cnt89 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cnt89, align 4
  %cmp90 = icmp slt i32 %inc103, %134
  br i1 %cmp90, label %for.cond88.for.body91_crit_edge, label %for.cond88.for.end104_crit_edge

for.cond88.for.end104_crit_edge:                  ; preds = %for.cond88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end104

for.cond88.for.body91_crit_edge:                  ; preds = %for.cond88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body91

for.body91:                                       ; preds = %for.cond88.for.body91_crit_edge, %for.cond88.preheader.for.body91_crit_edge
  %i.1219 = phi i32 [ %inc103, %for.cond88.for.body91_crit_edge ], [ 0, %for.cond88.preheader.for.body91_crit_edge ]
  %cnt.4218 = phi i32 [ %inc96, %for.cond88.for.body91_crit_edge ], [ %cnt.3.lcssa, %for.cond88.preheader.for.body91_crit_edge ]
  %135 = ptrtoint ptr %lpt_heap to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lpt_heap, align 4
  %arrayidx93 = getelementptr ptr, ptr %136, i32 %i.1219
  %137 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx93, align 4
  %lnum94 = getelementptr inbounds %struct.ubifs_lprops, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %lnum94 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %lnum94, align 4
  %141 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %lsave, align 4
  %inc96 = add i32 %cnt.4218, 1
  %arrayidx97 = getelementptr i32, ptr %142, i32 %cnt.4218
  %143 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %140, ptr %arrayidx97, align 4
  %144 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc96, i32 %145)
  %cmp99.not = icmp slt i32 %inc96, %145
  br i1 %cmp99.not, label %for.cond88, label %for.body91.cleanup_crit_edge

for.body91.cleanup_crit_edge:                     ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end104:                                       ; preds = %for.cond88.for.end104_crit_edge, %for.cond88.preheader.for.end104_crit_edge
  %cnt.4.lcssa = phi i32 [ %cnt.3.lcssa, %for.cond88.preheader.for.end104_crit_edge ], [ %inc96, %for.cond88.for.end104_crit_edge ]
  %arrayidx106 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2
  %cnt108 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2, i32 1
  %146 = ptrtoint ptr %cnt108 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cnt108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp109221 = icmp sgt i32 %147, 0
  br i1 %cmp109221, label %for.end104.for.body110_crit_edge, label %for.end104.while.cond.preheader_crit_edge

for.end104.while.cond.preheader_crit_edge:        ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.end104.for.body110_crit_edge:                 ; preds = %for.end104
  br label %for.body110

for.cond107:                                      ; preds = %for.body110
  %inc122 = add nuw nsw i32 %i.2223, 1
  %148 = ptrtoint ptr %cnt108 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cnt108, align 4
  %cmp109 = icmp slt i32 %inc122, %149
  br i1 %cmp109, label %for.cond107.for.body110_crit_edge, label %for.cond107.while.cond.preheader_crit_edge

for.cond107.while.cond.preheader_crit_edge:       ; preds = %for.cond107
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.cond107.for.body110_crit_edge:                ; preds = %for.cond107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body110

while.cond.preheader:                             ; preds = %for.cond107.while.cond.preheader_crit_edge, %for.end104.while.cond.preheader_crit_edge
  %cnt.5.lcssa = phi i32 [ %cnt.4.lcssa, %for.end104.while.cond.preheader_crit_edge ], [ %inc115, %for.cond107.while.cond.preheader_crit_edge ]
  %150 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.5.lcssa, i32 %151)
  %cmp125225 = icmp slt i32 %cnt.5.lcssa, %151
  br i1 %cmp125225, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  br label %while.body

for.body110:                                      ; preds = %for.cond107.for.body110_crit_edge, %for.end104.for.body110_crit_edge
  %i.2223 = phi i32 [ %inc122, %for.cond107.for.body110_crit_edge ], [ 0, %for.end104.for.body110_crit_edge ]
  %cnt.5222 = phi i32 [ %inc115, %for.cond107.for.body110_crit_edge ], [ %cnt.4.lcssa, %for.end104.for.body110_crit_edge ]
  %152 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx106, align 4
  %arrayidx112 = getelementptr ptr, ptr %153, i32 %i.2223
  %154 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx112, align 4
  %lnum113 = getelementptr inbounds %struct.ubifs_lprops, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %lnum113 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %lnum113, align 4
  %158 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lsave, align 4
  %inc115 = add i32 %cnt.5222, 1
  %arrayidx116 = getelementptr i32, ptr %159, i32 %cnt.5222
  %160 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %157, ptr %arrayidx116, align 4
  %161 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc115, i32 %162)
  %cmp118.not = icmp slt i32 %inc115, %162
  br i1 %cmp118.not, label %for.cond107, label %for.body110.cleanup_crit_edge

for.body110.cleanup_crit_edge:                    ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %cnt.6226 = phi i32 [ %cnt.5.lcssa, %while.body.lr.ph ], [ %inc127, %while.body.while.body_crit_edge ]
  %163 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %main_first, align 8
  %165 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %lsave, align 4
  %inc127 = add nsw i32 %cnt.6226, 1
  %arrayidx128 = getelementptr i32, ptr %166, i32 %cnt.6226
  %167 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %164, ptr %arrayidx128, align 4
  %168 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %lsave_cnt, align 8
  %cmp125 = icmp slt i32 %inc127, %169
  br i1 %cmp125, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.body110.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %for.body91.cleanup_crit_edge, %for.body73.cleanup_crit_edge, %for.body54.cleanup_crit_edge, %for.body30.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.body97.i.cleanup_crit_edge, %for.end91.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_cnodes_to_commit(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %0 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nroot, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i:                                     ; preds = %if.then6.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %nnode.addr.0.i = phi ptr [ %.lcssa.i, %if.then6.i.while.body.i_crit_edge ], [ %1, %if.end.while.body.i_crit_edge ]
  %4 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i, i32 0, i32 6, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %while.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %flags.i = getelementptr inbounds %struct.ubifs_cnode, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.then6.i_crit_edge

land.lhs.true.i.if.then6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %land.lhs.true.3.i.if.then6.i_crit_edge, %land.lhs.true.2.i.if.then6.i_crit_edge, %land.lhs.true.1.i.if.then6.i_crit_edge, %land.lhs.true.i.if.then6.i_crit_edge
  %.lcssa.i = phi ptr [ %6, %land.lhs.true.i.if.then6.i_crit_edge ], [ %13, %land.lhs.true.1.i.if.then6.i_crit_edge ], [ %18, %land.lhs.true.2.i.if.then6.i_crit_edge ], [ %23, %land.lhs.true.3.i.if.then6.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_cnode, ptr %.lcssa.i, i32 0, i32 4
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level.i, align 4
  %cmp7.i = icmp eq i32 %10, 0
  br i1 %cmp7.i, label %if.then6.i.first_dirty_cnode.exit_crit_edge, label %if.then6.i.while.body.i_crit_edge

if.then6.i.while.body.i_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then6.i.first_dirty_cnode.exit_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %first_dirty_cnode.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %while.body.i.for.inc.i_crit_edge
  %11 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i, i32 0, i32 6, i32 1, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool4.not.1.i = icmp eq ptr %13, null
  br i1 %tobool4.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %flags.1.i = getelementptr inbounds %struct.ubifs_cnode, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.1.i, align 4
  %and1.i.1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.1.i)
  %tobool5.not.1.i = icmp eq i32 %and1.i.1.i, 0
  br i1 %tobool5.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.if.then6.i_crit_edge

land.lhs.true.1.i.if.then6.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %16 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i, i32 0, i32 6, i32 2, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool4.not.2.i = icmp eq ptr %18, null
  br i1 %tobool4.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %flags.2.i = getelementptr inbounds %struct.ubifs_cnode, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.2.i, align 4
  %and1.i.2.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.2.i)
  %tobool5.not.2.i = icmp eq i32 %and1.i.2.i, 0
  br i1 %tobool5.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.if.then6.i_crit_edge

land.lhs.true.2.i.if.then6.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %21 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i, i32 0, i32 6, i32 3, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool4.not.3.i = icmp eq ptr %23, null
  br i1 %tobool4.not.3.i, label %for.inc.2.i.first_dirty_cnode.exit_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.first_dirty_cnode.exit_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %first_dirty_cnode.exit

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %flags.3.i = getelementptr inbounds %struct.ubifs_cnode, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.3.i, align 4
  %and1.i.3.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.3.i)
  %tobool5.not.3.i = icmp eq i32 %and1.i.3.i, 0
  br i1 %tobool5.not.3.i, label %land.lhs.true.3.i.first_dirty_cnode.exit_crit_edge, label %land.lhs.true.3.i.if.then6.i_crit_edge

land.lhs.true.3.i.if.then6.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

land.lhs.true.3.i.first_dirty_cnode.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %first_dirty_cnode.exit

first_dirty_cnode.exit:                           ; preds = %land.lhs.true.3.i.first_dirty_cnode.exit_crit_edge, %for.inc.2.i.first_dirty_cnode.exit_crit_edge, %if.then6.i.first_dirty_cnode.exit_crit_edge
  %retval.4.ph.i = phi ptr [ %nnode.addr.0.i, %land.lhs.true.3.i.first_dirty_cnode.exit_crit_edge ], [ %nnode.addr.0.i, %for.inc.2.i.first_dirty_cnode.exit_crit_edge ], [ %.lcssa.i, %if.then6.i.first_dirty_cnode.exit_crit_edge ]
  %lpt_cnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 157
  %26 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.4.ph.i, ptr %lpt_cnext, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %first_dirty_cnode.exit
  %cnt.0 = phi i32 [ %add28, %if.end26 ], [ 1, %first_dirty_cnode.exit ]
  %cnode.0 = phi ptr [ %retval.0.i114118, %if.end26 ], [ %retval.4.ph.i, %first_dirty_cnode.exit ]
  %flags11 = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 2
  %27 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags11, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not = icmp eq i32 %29, 0
  br i1 %tobool13.not, label %while.cond.do.end.i108_crit_edge, label %if.then18, !prof !183

while.cond.do.end.i108_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i108

if.then18:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 105) #7
  br label %do.end.i108

do.end.i108:                                      ; preds = %if.then18, %while.cond.do.end.i108_crit_edge
  %30 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags11, align 4
  %or.i = or i32 %31, 4
  store i32 %or.i, ptr %flags11, align 4
  %32 = ptrtoint ptr %cnode.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cnode.0, align 4
  %tobool4.not.i107 = icmp eq ptr %33, null
  br i1 %tobool4.not.i107, label %if.then23, label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i108
  %iip.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 3
  %34 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iip.i, align 4
  %i.030.i = add i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.030.i)
  %cmp31.i = icmp slt i32 %i.030.i, 4
  br i1 %cmp31.i, label %if.end6.i.for.body.i_crit_edge, label %if.end6.i.if.end26_crit_edge

if.end6.i.if.end26_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i113.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %i.0.i, %for.inc.i113.for.body.i_crit_edge ], [ %i.030.i, %if.end6.i.for.body.i_crit_edge ]
  %36 = getelementptr %struct.ubifs_nnode, ptr %33, i32 0, i32 6, i32 %i.032.i, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool7.not.i = icmp eq ptr %38, null
  br i1 %tobool7.not.i, label %for.body.i.for.inc.i113_crit_edge, label %land.lhs.true.i111

for.body.i.for.inc.i113_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i113

land.lhs.true.i111:                               ; preds = %for.body.i
  %flags.i109 = getelementptr inbounds %struct.ubifs_cnode, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %flags.i109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i109, align 4
  %and1.i.i110 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i110)
  %tobool8.not.i = icmp eq i32 %and1.i.i110, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i111.for.inc.i113_crit_edge, label %if.then9.i

land.lhs.true.i111.for.inc.i113_crit_edge:        ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i113

if.then9.i:                                       ; preds = %land.lhs.true.i111
  %level.i112 = getelementptr inbounds %struct.ubifs_cnode, ptr %38, i32 0, i32 4
  %41 = ptrtoint ptr %level.i112 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %level.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp10.i = icmp eq i32 %42, 0
  br i1 %cmp10.i, label %if.then9.i.if.end26_crit_edge, label %if.then9.i.while.body.i.i_crit_edge

if.then9.i.while.body.i.i_crit_edge:              ; preds = %if.then9.i
  br label %while.body.i.i

if.then9.i.if.end26_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

while.body.i.i:                                   ; preds = %if.then6.i.i.while.body.i.i_crit_edge, %if.then9.i.while.body.i.i_crit_edge
  %nnode.addr.0.i.i = phi ptr [ %.lcssa.i.i, %if.then6.i.i.while.body.i.i_crit_edge ], [ %38, %if.then9.i.while.body.i.i_crit_edge ]
  %43 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i.i, i32 0, i32 6, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool4.not.i.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i.i, label %while.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

while.body.i.i.for.inc.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %flags.i.i = getelementptr inbounds %struct.ubifs_cnode, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool5.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.then6.i.i_crit_edge

land.lhs.true.i.i.if.then6.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.3.i.i.if.then6.i.i_crit_edge, %land.lhs.true.2.i.i.if.then6.i.i_crit_edge, %land.lhs.true.1.i.i.if.then6.i.i_crit_edge, %land.lhs.true.i.i.if.then6.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %45, %land.lhs.true.i.i.if.then6.i.i_crit_edge ], [ %52, %land.lhs.true.1.i.i.if.then6.i.i_crit_edge ], [ %57, %land.lhs.true.2.i.i.if.then6.i.i_crit_edge ], [ %62, %land.lhs.true.3.i.i.if.then6.i.i_crit_edge ]
  %level.i.i = getelementptr inbounds %struct.ubifs_cnode, ptr %.lcssa.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %level.i.i, align 4
  %cmp7.i.i = icmp eq i32 %49, 0
  br i1 %cmp7.i.i, label %if.then6.i.i.if.end26_crit_edge, label %if.then6.i.i.while.body.i.i_crit_edge

if.then6.i.i.while.body.i.i_crit_edge:            ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.then6.i.i.if.end26_crit_edge:                  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %while.body.i.i.for.inc.i.i_crit_edge
  %50 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i.i, i32 0, i32 6, i32 1, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool4.not.1.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  %flags.1.i.i = getelementptr inbounds %struct.ubifs_cnode, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %flags.1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.1.i.i, align 4
  %and1.i.1.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.1.i.i)
  %tobool5.not.1.i.i = icmp eq i32 %and1.i.1.i.i, 0
  br i1 %tobool5.not.1.i.i, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i.if.then6.i.i_crit_edge

land.lhs.true.1.i.i.if.then6.i.i_crit_edge:       ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %55 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i.i, i32 0, i32 6, i32 2, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool4.not.2.i.i = icmp eq ptr %57, null
  br i1 %tobool4.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %for.inc.1.i.i
  %flags.2.i.i = getelementptr inbounds %struct.ubifs_cnode, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %flags.2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags.2.i.i, align 4
  %and1.i.2.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.2.i.i)
  %tobool5.not.2.i.i = icmp eq i32 %and1.i.2.i.i, 0
  br i1 %tobool5.not.2.i.i, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i.if.then6.i.i_crit_edge

land.lhs.true.2.i.i.if.then6.i.i_crit_edge:       ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %60 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.0.i.i, i32 0, i32 6, i32 3, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %tobool4.not.3.i.i = icmp eq ptr %62, null
  br i1 %tobool4.not.3.i.i, label %for.inc.2.i.i.if.end26_crit_edge, label %land.lhs.true.3.i.i

for.inc.2.i.i.if.end26_crit_edge:                 ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true.3.i.i:                              ; preds = %for.inc.2.i.i
  %flags.3.i.i = getelementptr inbounds %struct.ubifs_cnode, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %flags.3.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags.3.i.i, align 4
  %and1.i.3.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.3.i.i)
  %tobool5.not.3.i.i = icmp eq i32 %and1.i.3.i.i, 0
  br i1 %tobool5.not.3.i.i, label %land.lhs.true.3.i.i.if.end26_crit_edge, label %land.lhs.true.3.i.i.if.then6.i.i_crit_edge

land.lhs.true.3.i.i.if.then6.i.i_crit_edge:       ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

land.lhs.true.3.i.i.if.end26_crit_edge:           ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.inc.i113:                                     ; preds = %land.lhs.true.i111.for.inc.i113_crit_edge, %for.body.i.for.inc.i113_crit_edge
  %i.0.i = add i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %i.0.i, 4
  br i1 %exitcond.not.i, label %for.inc.i113.if.end26_crit_edge, label %for.inc.i113.for.body.i_crit_edge

for.inc.i113.for.body.i_crit_edge:                ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i113.if.end26_crit_edge:                  ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %do.end.i108
  %65 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lpt_cnext, align 4
  %cnext25 = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 1
  %67 = ptrtoint ptr %cnext25 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %cnext25, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cnodes_to_commit.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cnodes_to_commit, %if.then38)) #7
          to label %do.body43 [label %if.then38], !srcloc !181

if.end26:                                         ; preds = %for.inc.i113.if.end26_crit_edge, %land.lhs.true.3.i.i.if.end26_crit_edge, %for.inc.2.i.i.if.end26_crit_edge, %if.then6.i.i.if.end26_crit_edge, %if.then9.i.if.end26_crit_edge, %if.end6.i.if.end26_crit_edge
  %retval.0.i114118 = phi ptr [ %33, %if.end6.i.if.end26_crit_edge ], [ %38, %if.then9.i.if.end26_crit_edge ], [ %.lcssa.i.i, %if.then6.i.i.if.end26_crit_edge ], [ %nnode.addr.0.i.i, %for.inc.2.i.i.if.end26_crit_edge ], [ %nnode.addr.0.i.i, %land.lhs.true.3.i.i.if.end26_crit_edge ], [ %33, %for.inc.i113.if.end26_crit_edge ]
  %cnext27 = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 1
  %68 = ptrtoint ptr %cnext27 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i114118, ptr %cnext27, align 4
  %add28 = add i32 %cnt.0, 1
  br label %while.cond

if.then38:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %69 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 68
  %73 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cnodes_to_commit.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.31, i32 noundef %74, i32 noundef %cnt.0) #7
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %if.then23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cnodes_to_commit.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cnodes_to_commit, %if.then55)) #7
          to label %do.body62 [label %if.then55], !srcloc !181

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %75 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i115 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i115 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task57, align 8
  %pid58 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid58 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid58, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cnodes_to_commit.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.32, i32 noundef %80, i32 noundef %cnt.0) #7
  br label %do.body62

do.body62:                                        ; preds = %if.then55, %do.body43
  %dirty_nn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %81 = ptrtoint ptr %dirty_nn_cnt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dirty_nn_cnt, align 8
  %dirty_pn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %83 = ptrtoint ptr %dirty_pn_cnt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dirty_pn_cnt, align 4
  %add63 = add i32 %84, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0, i32 %add63)
  %cmp.not = icmp eq i32 %cnt.0, %add63
  br i1 %cmp.not, label %do.body62.cleanup_crit_edge, label %if.then72, !prof !183

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then72:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 118) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body62.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %cnt.0, %if.then72 ], [ %cnt.0, %do.body62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_calc_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_end_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lpt_end_commit.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lpt_end_commit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lpt_end_commit.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.3, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lpt_cnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 157
  %6 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpt_cnext, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call fastcc i32 @write_cnodes(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #7
  %8 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lpt_cnext, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end10.free_obsolete_cnodes.exit_crit_edge, label %if.end10.do.body.i_crit_edge

if.end10.do.body.i_crit_edge:                     ; preds = %if.end10
  br label %do.body.i

if.end10.free_obsolete_cnodes.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_obsolete_cnodes.exit

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end10.do.body.i_crit_edge
  %cnext.0.i = phi ptr [ %11, %do.cond.i.do.body.i_crit_edge ], [ %9, %if.end10.do.body.i_crit_edge ]
  %cnext1.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnext.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %cnext1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cnext1.i, align 4
  %flags.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnext.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %cnext.0.i) #7
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cnext1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cnext1.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.else.i, %if.then3.i
  %16 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lpt_cnext, align 4
  %cmp.not.i = icmp eq ptr %11, %17
  br i1 %cmp.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %lpt_cnext, align 4
  br label %free_obsolete_cnodes.exit

free_obsolete_cnodes.exit:                        ; preds = %do.end.i, %if.end10.free_obsolete_cnodes.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %free_obsolete_cnodes.exit, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %free_obsolete_cnodes.exit ], [ 0, %do.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_cnodes(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %lnum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #7
  %lpt_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 155
  %0 = ptrtoint ptr %lpt_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpt_buf, align 4
  %lpt_cnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 157
  %2 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lpt_cnext, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %4 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nhead_lnum, align 4
  %6 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %lnum, align 4
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %7 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nhead_offs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then1:                                         ; preds = %if.end
  %call = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then1.if.end5_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then1.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %9 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool6.not = icmp sgt i16 %bf.load, -1
  %10 = xor i16 %bf.load, -1
  %11 = lshr i16 %10, 15
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %land.lhs.true

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end5
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %12 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lsave_sz, align 4
  %add = add i32 %13, %8
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %14 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp8.not = icmp sgt i32 %add, %15
  br i1 %cmp8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %1, i32 %8
  %lsave = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  %16 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lsave, align 4
  tail call void @ubifs_pack_lsave(ptr noundef %c, ptr noundef %add.ptr, ptr noundef %17) #7
  %18 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lsave_sz, align 4
  %add11 = add i32 %19, %8
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %20 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dbg.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i = load i8, ptr @ubifs_dbg, align 4
  %22 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %dbg_is_chk_lprops.exit.i, label %if.then9.if.end.i_crit_edge

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

dbg_is_chk_lprops.exit.i:                         ; preds = %if.then9
  %chk_lprops.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %21, i32 0, i32 19
  %23 = ptrtoint ptr %chk_lprops.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load1.i.i = load i8, ptr %chk_lprops.i.i, align 4
  %24 = and i8 %bf.load1.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %dbg_is_chk_lprops.exit.i.if.end14_crit_edge, label %dbg_is_chk_lprops.exit.i.if.end.i_crit_edge

dbg_is_chk_lprops.exit.i.if.end.i_crit_edge:      ; preds = %dbg_is_chk_lprops.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

dbg_is_chk_lprops.exit.i.if.end14_crit_edge:      ; preds = %dbg_is_chk_lprops.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end.i:                                         ; preds = %dbg_is_chk_lprops.exit.i.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge
  %conv.i = sext i32 %19 to i64
  %chk_lpt_sz12.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %21, i32 0, i32 8
  %25 = ptrtoint ptr %chk_lpt_sz12.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %chk_lpt_sz12.i, align 8
  %add.i = add i64 %26, %conv.i
  store i64 %add.i, ptr %chk_lpt_sz12.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end.i, %dbg_is_chk_lprops.exit.i.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %done_lsave.0.shrunk = phi i16 [ %11, %if.end5.if.end14_crit_edge ], [ %11, %land.lhs.true.if.end14_crit_edge ], [ 1, %dbg_is_chk_lprops.exit.i.if.end14_crit_edge ], [ 1, %if.end.i ]
  %offs.0 = phi i32 [ %8, %if.end5.if.end14_crit_edge ], [ %8, %land.lhs.true.if.end14_crit_edge ], [ %add11, %dbg_is_chk_lprops.exit.i.if.end14_crit_edge ], [ %add11, %if.end.i ]
  %done_lsave.0 = zext i16 %done_lsave.0.shrunk to i32
  %ltab_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %27 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ltab_sz, align 8
  %add15 = add i32 %28, %offs.0
  %leb_size16 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %29 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %leb_size16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %30)
  %cmp17.not = icmp sgt i32 %add15, %30
  br i1 %cmp17.not, label %if.end14.if.end24_crit_edge, label %if.then18

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then18:                                        ; preds = %if.end14
  %add.ptr19 = getelementptr i8, ptr %1, i32 %offs.0
  %ltab_cmt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 169
  %31 = ptrtoint ptr %ltab_cmt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ltab_cmt, align 4
  tail call void @ubifs_pack_ltab(ptr noundef %c, ptr noundef %add.ptr19, ptr noundef %32) #7
  %33 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ltab_sz, align 8
  %add21 = add i32 %34, %offs.0
  %dbg.i595 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %35 = ptrtoint ptr %dbg.i595 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dbg.i595, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i596 = load i8, ptr @ubifs_dbg, align 4
  %37 = and i8 %bf.load.i.i596, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i597 = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i597, label %dbg_is_chk_lprops.exit.i601, label %if.then18.if.end.i602_crit_edge

if.then18.if.end.i602_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i602

dbg_is_chk_lprops.exit.i601:                      ; preds = %if.then18
  %chk_lprops.i.i598 = getelementptr inbounds %struct.ubifs_debug_info, ptr %36, i32 0, i32 19
  %38 = ptrtoint ptr %chk_lprops.i.i598 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load1.i.i599 = load i8, ptr %chk_lprops.i.i598, align 4
  %39 = and i8 %bf.load1.i.i599, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i600 = icmp eq i8 %39, 0
  br i1 %tobool.not.i600, label %dbg_is_chk_lprops.exit.i601.if.end24_crit_edge, label %dbg_is_chk_lprops.exit.i601.if.end.i602_crit_edge

dbg_is_chk_lprops.exit.i601.if.end.i602_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i601
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i602

dbg_is_chk_lprops.exit.i601.if.end24_crit_edge:   ; preds = %dbg_is_chk_lprops.exit.i601
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end.i602:                                      ; preds = %dbg_is_chk_lprops.exit.i601.if.end.i602_crit_edge, %if.then18.if.end.i602_crit_edge
  %conv.i603 = sext i32 %34 to i64
  %chk_lpt_sz12.i604 = getelementptr inbounds %struct.ubifs_debug_info, ptr %36, i32 0, i32 8
  %40 = ptrtoint ptr %chk_lpt_sz12.i604 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %chk_lpt_sz12.i604, align 8
  %add.i605 = add i64 %41, %conv.i603
  store i64 %add.i605, ptr %chk_lpt_sz12.i604, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end.i602, %dbg_is_chk_lprops.exit.i601.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %done_ltab.0 = phi i32 [ 0, %if.end14.if.end24_crit_edge ], [ 1, %dbg_is_chk_lprops.exit.i601.if.end24_crit_edge ], [ 1, %if.end.i602 ]
  %offs.1 = phi i32 [ %offs.0, %if.end14.if.end24_crit_edge ], [ %add21, %dbg_is_chk_lprops.exit.i601.if.end24_crit_edge ], [ %add21, %if.end.i602 ]
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %dbg.i608 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %lpt_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %lpt_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %ltab.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %lsave71 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  %lsave_sz72 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %ltab_cmt80 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 169
  br label %do.body

do.body:                                          ; preds = %land.rhs110.do.body_crit_edge, %if.end24
  %done_lsave.1 = phi i32 [ %done_lsave.0, %if.end24 ], [ %done_lsave.2726, %land.rhs110.do.body_crit_edge ]
  %cnode.0 = phi ptr [ %3, %if.end24 ], [ %121, %land.rhs110.do.body_crit_edge ]
  %done_ltab.1 = phi i32 [ %done_ltab.0, %if.end24 ], [ %done_ltab.2.ph734, %land.rhs110.do.body_crit_edge ]
  %from.0 = phi i32 [ %8, %if.end24 ], [ %from.2, %land.rhs110.do.body_crit_edge ]
  %offs.2 = phi i32 [ %offs.1, %if.end24 ], [ %add106, %land.rhs110.do.body_crit_edge ]
  %level = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 4
  %42 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool25.not = icmp eq i32 %43, 0
  %len.0.in = select i1 %tobool25.not, ptr %pnode_sz, ptr %nnode_sz
  %44 = ptrtoint ptr %len.0.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %len.0 = load i32, ptr %len.0.in, align 4
  %add28739752 = add i32 %offs.2, %len.0
  %45 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %leb_size16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add28739752, i32 %46)
  %cmp30740753 = icmp sgt i32 %add28739752, %46
  br i1 %cmp30740753, label %do.body.while.body.lr.ph_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body.while.body.lr.ph_crit_edge:               ; preds = %do.body
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %dbg_chk_lpt_sz.exit646.while.body.lr.ph_crit_edge, %do.body.while.body.lr.ph_crit_edge
  %offs.3.ph757 = phi i32 [ %101, %dbg_chk_lpt_sz.exit646.while.body.lr.ph_crit_edge ], [ %offs.2, %do.body.while.body.lr.ph_crit_edge ]
  %from.1.ph756 = phi i32 [ 0, %dbg_chk_lpt_sz.exit646.while.body.lr.ph_crit_edge ], [ %from.0, %do.body.while.body.lr.ph_crit_edge ]
  %done_ltab.2.ph755 = phi i32 [ 1, %dbg_chk_lpt_sz.exit646.while.body.lr.ph_crit_edge ], [ %done_ltab.1, %do.body.while.body.lr.ph_crit_edge ]
  %done_lsave.2.ph754 = phi i32 [ 1, %dbg_chk_lpt_sz.exit646.while.body.lr.ph_crit_edge ], [ %done_lsave.1, %do.body.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %dbg_chk_lpt_sz.exit633.while.body_crit_edge, %while.body.lr.ph
  %offs.3744 = phi i32 [ %offs.3.ph757, %while.body.lr.ph ], [ %88, %dbg_chk_lpt_sz.exit633.while.body_crit_edge ]
  %from.1743 = phi i32 [ %from.1.ph756, %while.body.lr.ph ], [ 0, %dbg_chk_lpt_sz.exit633.while.body_crit_edge ]
  %done_lsave.2741 = phi i32 [ %done_lsave.2.ph754, %while.body.lr.ph ], [ 1, %dbg_chk_lpt_sz.exit633.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.3744, i32 %from.1743)
  %tobool31.not = icmp eq i32 %offs.3744, %from.1743
  br i1 %tobool31.not, label %while.body.if.end44_crit_edge, label %if.then32

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then32:                                        ; preds = %while.body
  %sub = sub i32 %offs.3744, %from.1743
  %47 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %min_io_size, align 8
  %sub33 = add i32 %sub, -1
  %add34 = add i32 %sub33, %48
  %neg = sub i32 0, %48
  %and = and i32 %add34, %neg
  %add.ptr37 = getelementptr i8, ptr %1, i32 %offs.3744
  %sub38 = sub i32 %and, %sub
  %49 = call ptr @memset(ptr %add.ptr37, i32 255, i32 %sub38)
  %50 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lnum, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 %from.1743
  %call40 = tail call i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %51, ptr noundef %add.ptr39, i32 noundef %from.1743, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then32.if.end44_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32.if.end44_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %if.then32.if.end44_crit_edge, %while.body.if.end44_crit_edge
  %52 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %leb_size16, align 8
  %sub46 = sub i32 %53, %offs.3744
  %54 = ptrtoint ptr %dbg.i608 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dbg.i608, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i609 = load i8, ptr @ubifs_dbg, align 4
  %56 = and i8 %bf.load.i.i609, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i610 = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i610, label %dbg_is_chk_lprops.exit.i614, label %if.end44.if.end.i615_crit_edge

if.end44.if.end.i615_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i615

dbg_is_chk_lprops.exit.i614:                      ; preds = %if.end44
  %chk_lprops.i.i611 = getelementptr inbounds %struct.ubifs_debug_info, ptr %55, i32 0, i32 19
  %57 = ptrtoint ptr %chk_lprops.i.i611 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load1.i.i612 = load i8, ptr %chk_lprops.i.i611, align 4
  %58 = and i8 %bf.load1.i.i612, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i613 = icmp eq i8 %58, 0
  br i1 %tobool.not.i613, label %dbg_is_chk_lprops.exit.i614.dbg_chk_lpt_sz.exit617_crit_edge, label %dbg_is_chk_lprops.exit.i614.if.end.i615_crit_edge

dbg_is_chk_lprops.exit.i614.if.end.i615_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i614
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i615

dbg_is_chk_lprops.exit.i614.dbg_chk_lpt_sz.exit617_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i614
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit617

if.end.i615:                                      ; preds = %dbg_is_chk_lprops.exit.i614.if.end.i615_crit_edge, %if.end44.if.end.i615_crit_edge
  %conv14.i = sext i32 %sub46 to i64
  %chk_lpt_sz15.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %55, i32 0, i32 8
  %59 = ptrtoint ptr %chk_lpt_sz15.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %chk_lpt_sz15.i, align 8
  %add16.i = add i64 %60, %conv14.i
  store i64 %add16.i, ptr %chk_lpt_sz15.i, align 8
  %chk_lpt_wastage18.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %55, i32 0, i32 10
  %61 = ptrtoint ptr %chk_lpt_wastage18.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %chk_lpt_wastage18.i, align 8
  %add19.i = add i64 %62, %conv14.i
  store i64 %add19.i, ptr %chk_lpt_wastage18.i, align 8
  %chk_lpt_lebs20.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %55, i32 0, i32 11
  %63 = ptrtoint ptr %chk_lpt_lebs20.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chk_lpt_lebs20.i, align 8
  %add21.i = add i32 %64, 1
  store i32 %add21.i, ptr %chk_lpt_lebs20.i, align 8
  br label %dbg_chk_lpt_sz.exit617

dbg_chk_lpt_sz.exit617:                           ; preds = %if.end.i615, %dbg_is_chk_lprops.exit.i614.dbg_chk_lpt_sz.exit617_crit_edge
  %65 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lnum, align 4
  %67 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lpt_first.i, align 8
  %sub.i = sub i32 %66, %68
  %add.i618 = add i32 %sub.i, 1
  %69 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lpt_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i618, i32 %70)
  %cmp54.i = icmp slt i32 %add.i618, %70
  br i1 %cmp54.i, label %for.body.lr.ph.i, label %dbg_chk_lpt_sz.exit617.for.cond8.preheader.i_crit_edge

dbg_chk_lpt_sz.exit617.for.cond8.preheader.i_crit_edge: ; preds = %dbg_chk_lpt_sz.exit617
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

for.body.lr.ph.i:                                 ; preds = %dbg_chk_lpt_sz.exit617
  %71 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ltab.i, align 8
  br label %for.body.i

for.cond8.preheader.i:                            ; preds = %for.inc.i.for.cond8.preheader.i_crit_edge, %dbg_chk_lpt_sz.exit617.for.cond8.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub.i)
  %cmp956.i = icmp ult i32 %sub.i, 2147483647
  br i1 %cmp956.i, label %for.body10.lr.ph.i, label %for.cond8.preheader.i.no_space_crit_edge

for.cond8.preheader.i.no_space_crit_edge:         ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space

for.body10.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %73 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ltab.i, align 8
  br label %for.body10.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.055.i = phi i32 [ %add.i618, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %cmt.i = getelementptr %struct.ubifs_lpt_lprops, ptr %72, i32 %i.055.i, i32 2
  %75 = ptrtoint ptr %cmt.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i = load i8, ptr %cmt.i, align 4
  %76 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i619 = icmp eq i8 %76, 0
  br i1 %tobool.not.i619, label %for.inc.i, label %for.body.i.if.end51_crit_edge

for.body.i.if.end51_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %70
  br i1 %exitcond.not.i, label %for.inc.i.for.cond8.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.cond8.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

for.body10.i:                                     ; preds = %for.inc29.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.157.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc30.i, %for.inc29.i.for.body10.i_crit_edge ]
  %cmt13.i = getelementptr %struct.ubifs_lpt_lprops, ptr %74, i32 %i.157.i, i32 2
  %77 = ptrtoint ptr %cmt13.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load14.i = load i8, ptr %cmt13.i, align 4
  %78 = and i8 %bf.load14.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool18.not.i = icmp eq i8 %78, 0
  br i1 %tobool18.not.i, label %for.inc29.i, label %for.body10.i.if.end51_crit_edge

for.body10.i.if.end51_crit_edge:                  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.inc29.i:                                      ; preds = %for.body10.i
  %inc30.i = add nuw nsw i32 %i.157.i, 1
  %exitcond64.not.i = icmp eq i32 %i.157.i, %sub.i
  br i1 %exitcond64.not.i, label %for.inc29.i.no_space_crit_edge, label %for.inc29.i.for.body10.i_crit_edge

for.inc29.i.for.body10.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.inc29.i.no_space_crit_edge:                   ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space

if.end51:                                         ; preds = %for.body10.i.if.end51_crit_edge, %for.body.i.if.end51_crit_edge
  %bf.load14.lcssa.sink.i = phi i8 [ %bf.load14.i, %for.body10.i.if.end51_crit_edge ], [ %bf.load.i, %for.body.i.if.end51_crit_edge ]
  %cmt13.lcssa.sink.i = phi ptr [ %cmt13.i, %for.body10.i.if.end51_crit_edge ], [ %cmt.i, %for.body.i.if.end51_crit_edge ]
  %i.157.lcssa.sink.i = phi i32 [ %i.157.i, %for.body10.i.if.end51_crit_edge ], [ %i.055.i, %for.body.i.if.end51_crit_edge ]
  %bf.clear24.i = and i8 %bf.load14.lcssa.sink.i, -65
  %79 = ptrtoint ptr %cmt13.lcssa.sink.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.clear24.i, ptr %cmt13.lcssa.sink.i, align 4
  %80 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lpt_first.i, align 8
  %add27.i = add i32 %81, %i.157.lcssa.sink.i
  %82 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add27.i, ptr %lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i, i32 %81)
  %cmp53.not = icmp slt i32 %add27.i, %81
  br i1 %cmp53.not, label %if.end51.if.then62_crit_edge, label %land.rhs, !prof !182

if.end51.if.then62_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

land.rhs:                                         ; preds = %if.end51
  %83 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i, i32 %84)
  %cmp54.not = icmp sgt i32 %add27.i, %84
  br i1 %cmp54.not, label %land.rhs.if.then62_crit_edge, label %land.rhs.do.end_crit_edge, !prof !182

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.rhs.if.then62_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %land.rhs.if.then62_crit_edge, %if.end51.if.then62_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 417) #7
  br label %do.end

do.end:                                           ; preds = %if.then62, %land.rhs.do.end_crit_edge
  %call64 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %add27.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_lsave.2741)
  %tobool68.not = icmp eq i32 %done_lsave.2741, 0
  br i1 %tobool68.not, label %if.then69, label %if.end76

if.then69:                                        ; preds = %if.end67
  %85 = ptrtoint ptr %lsave71 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lsave71, align 4
  tail call void @ubifs_pack_lsave(ptr noundef %c, ptr noundef %1, ptr noundef %86) #7
  %87 = ptrtoint ptr %lsave_sz72 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %lsave_sz72, align 4
  %89 = ptrtoint ptr %dbg.i608 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dbg.i608, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i622 = load i8, ptr @ubifs_dbg, align 4
  %91 = and i8 %bf.load.i.i622, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i623 = icmp eq i8 %91, 0
  br i1 %tobool.not.i.i623, label %dbg_is_chk_lprops.exit.i627, label %if.then69.if.end.i628_crit_edge

if.then69.if.end.i628_crit_edge:                  ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i628

dbg_is_chk_lprops.exit.i627:                      ; preds = %if.then69
  %chk_lprops.i.i624 = getelementptr inbounds %struct.ubifs_debug_info, ptr %90, i32 0, i32 19
  %92 = ptrtoint ptr %chk_lprops.i.i624 to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load1.i.i625 = load i8, ptr %chk_lprops.i.i624, align 4
  %93 = and i8 %bf.load1.i.i625, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i626 = icmp eq i8 %93, 0
  br i1 %tobool.not.i626, label %dbg_is_chk_lprops.exit.i627.dbg_chk_lpt_sz.exit633_crit_edge, label %dbg_is_chk_lprops.exit.i627.if.end.i628_crit_edge

dbg_is_chk_lprops.exit.i627.if.end.i628_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i627
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i628

dbg_is_chk_lprops.exit.i627.dbg_chk_lpt_sz.exit633_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i627
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit633

if.end.i628:                                      ; preds = %dbg_is_chk_lprops.exit.i627.if.end.i628_crit_edge, %if.then69.if.end.i628_crit_edge
  %conv.i629 = sext i32 %88 to i64
  %chk_lpt_sz12.i630 = getelementptr inbounds %struct.ubifs_debug_info, ptr %90, i32 0, i32 8
  %94 = ptrtoint ptr %chk_lpt_sz12.i630 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %chk_lpt_sz12.i630, align 8
  %add.i631 = add i64 %95, %conv.i629
  store i64 %add.i631, ptr %chk_lpt_sz12.i630, align 8
  br label %dbg_chk_lpt_sz.exit633

dbg_chk_lpt_sz.exit633:                           ; preds = %if.end.i628, %dbg_is_chk_lprops.exit.i627.dbg_chk_lpt_sz.exit633_crit_edge
  %add28 = add i32 %88, %len.0
  %96 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %leb_size16, align 8
  %cmp30 = icmp sgt i32 %add28, %97
  br i1 %cmp30, label %dbg_chk_lpt_sz.exit633.while.body_crit_edge, label %dbg_chk_lpt_sz.exit633.while.end_crit_edge

dbg_chk_lpt_sz.exit633.while.end_crit_edge:       ; preds = %dbg_chk_lpt_sz.exit633
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

dbg_chk_lpt_sz.exit633.while.body_crit_edge:      ; preds = %dbg_chk_lpt_sz.exit633
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_ltab.2.ph755)
  %tobool77.not = icmp eq i32 %done_ltab.2.ph755, 0
  br i1 %tobool77.not, label %if.then78, label %if.end76.while.end_crit_edge

if.end76.while.end_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then78:                                        ; preds = %if.end76
  %98 = ptrtoint ptr %ltab_cmt80 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ltab_cmt80, align 4
  tail call void @ubifs_pack_ltab(ptr noundef %c, ptr noundef %1, ptr noundef %99) #7
  %100 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ltab_sz, align 8
  %102 = ptrtoint ptr %dbg.i608 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dbg.i608, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i635 = load i8, ptr @ubifs_dbg, align 4
  %104 = and i8 %bf.load.i.i635, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i.i636 = icmp eq i8 %104, 0
  br i1 %tobool.not.i.i636, label %dbg_is_chk_lprops.exit.i640, label %if.then78.if.end.i641_crit_edge

if.then78.if.end.i641_crit_edge:                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i641

dbg_is_chk_lprops.exit.i640:                      ; preds = %if.then78
  %chk_lprops.i.i637 = getelementptr inbounds %struct.ubifs_debug_info, ptr %103, i32 0, i32 19
  %105 = ptrtoint ptr %chk_lprops.i.i637 to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load1.i.i638 = load i8, ptr %chk_lprops.i.i637, align 4
  %106 = and i8 %bf.load1.i.i638, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i639 = icmp eq i8 %106, 0
  br i1 %tobool.not.i639, label %dbg_is_chk_lprops.exit.i640.dbg_chk_lpt_sz.exit646_crit_edge, label %dbg_is_chk_lprops.exit.i640.if.end.i641_crit_edge

dbg_is_chk_lprops.exit.i640.if.end.i641_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i640
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i641

dbg_is_chk_lprops.exit.i640.dbg_chk_lpt_sz.exit646_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i640
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit646

if.end.i641:                                      ; preds = %dbg_is_chk_lprops.exit.i640.if.end.i641_crit_edge, %if.then78.if.end.i641_crit_edge
  %conv.i642 = sext i32 %101 to i64
  %chk_lpt_sz12.i643 = getelementptr inbounds %struct.ubifs_debug_info, ptr %103, i32 0, i32 8
  %107 = ptrtoint ptr %chk_lpt_sz12.i643 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %chk_lpt_sz12.i643, align 8
  %add.i644 = add i64 %108, %conv.i642
  store i64 %add.i644, ptr %chk_lpt_sz12.i643, align 8
  br label %dbg_chk_lpt_sz.exit646

dbg_chk_lpt_sz.exit646:                           ; preds = %if.end.i641, %dbg_is_chk_lprops.exit.i640.dbg_chk_lpt_sz.exit646_crit_edge
  %add28739 = add i32 %101, %len.0
  %109 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %leb_size16, align 8
  %cmp30740 = icmp sgt i32 %add28739, %110
  br i1 %cmp30740, label %dbg_chk_lpt_sz.exit646.while.body.lr.ph_crit_edge, label %dbg_chk_lpt_sz.exit646.while.end_crit_edge

dbg_chk_lpt_sz.exit646.while.end_crit_edge:       ; preds = %dbg_chk_lpt_sz.exit646
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

dbg_chk_lpt_sz.exit646.while.body.lr.ph_crit_edge: ; preds = %dbg_chk_lpt_sz.exit646
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

while.end:                                        ; preds = %dbg_chk_lpt_sz.exit646.while.end_crit_edge, %if.end76.while.end_crit_edge, %dbg_chk_lpt_sz.exit633.while.end_crit_edge, %do.body.while.end_crit_edge
  %done_ltab.2.ph734 = phi i32 [ %done_ltab.1, %do.body.while.end_crit_edge ], [ %done_ltab.2.ph755, %dbg_chk_lpt_sz.exit633.while.end_crit_edge ], [ 1, %dbg_chk_lpt_sz.exit646.while.end_crit_edge ], [ %done_ltab.2.ph755, %if.end76.while.end_crit_edge ]
  %done_lsave.2726 = phi i32 [ %done_lsave.1, %do.body.while.end_crit_edge ], [ 1, %dbg_chk_lpt_sz.exit633.while.end_crit_edge ], [ 1, %dbg_chk_lpt_sz.exit646.while.end_crit_edge ], [ %done_lsave.2741, %if.end76.while.end_crit_edge ]
  %from.2 = phi i32 [ %from.0, %do.body.while.end_crit_edge ], [ 0, %dbg_chk_lpt_sz.exit633.while.end_crit_edge ], [ 0, %dbg_chk_lpt_sz.exit646.while.end_crit_edge ], [ 0, %if.end76.while.end_crit_edge ]
  %offs.4 = phi i32 [ %offs.2, %do.body.while.end_crit_edge ], [ %88, %dbg_chk_lpt_sz.exit633.while.end_crit_edge ], [ %101, %dbg_chk_lpt_sz.exit646.while.end_crit_edge ], [ 0, %if.end76.while.end_crit_edge ]
  %111 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool87.not = icmp eq i32 %112, 0
  %add.ptr91 = getelementptr i8, ptr %1, i32 %offs.4
  br i1 %tobool87.not, label %if.else90, label %if.then88

if.then88:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_pack_nnode(ptr noundef %c, ptr noundef %add.ptr91, ptr noundef nonnull %cnode.0) #7
  br label %if.end92

if.else90:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_pack_pnode(ptr noundef %c, ptr noundef %add.ptr91, ptr noundef nonnull %cnode.0) #7
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then88
  %flags = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !185
  %add106 = add i32 %offs.4, %len.0
  %113 = ptrtoint ptr %dbg.i608 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dbg.i608, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i648 = load i8, ptr @ubifs_dbg, align 4
  %115 = and i8 %bf.load.i.i648, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i649 = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i649, label %dbg_is_chk_lprops.exit.i653, label %if.end92.if.end.i654_crit_edge

if.end92.if.end.i654_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i654

dbg_is_chk_lprops.exit.i653:                      ; preds = %if.end92
  %chk_lprops.i.i650 = getelementptr inbounds %struct.ubifs_debug_info, ptr %114, i32 0, i32 19
  %116 = ptrtoint ptr %chk_lprops.i.i650 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load1.i.i651 = load i8, ptr %chk_lprops.i.i650, align 4
  %117 = and i8 %bf.load1.i.i651, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i652 = icmp eq i8 %117, 0
  br i1 %tobool.not.i652, label %dbg_is_chk_lprops.exit.i653.dbg_chk_lpt_sz.exit659_crit_edge, label %dbg_is_chk_lprops.exit.i653.if.end.i654_crit_edge

dbg_is_chk_lprops.exit.i653.if.end.i654_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i653
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i654

dbg_is_chk_lprops.exit.i653.dbg_chk_lpt_sz.exit659_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i653
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit659

if.end.i654:                                      ; preds = %dbg_is_chk_lprops.exit.i653.if.end.i654_crit_edge, %if.end92.if.end.i654_crit_edge
  %conv.i655 = sext i32 %len.0 to i64
  %chk_lpt_sz12.i656 = getelementptr inbounds %struct.ubifs_debug_info, ptr %114, i32 0, i32 8
  %118 = ptrtoint ptr %chk_lpt_sz12.i656 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %chk_lpt_sz12.i656, align 8
  %add.i657 = add i64 %119, %conv.i655
  store i64 %add.i657, ptr %chk_lpt_sz12.i656, align 8
  br label %dbg_chk_lpt_sz.exit659

dbg_chk_lpt_sz.exit659:                           ; preds = %if.end.i654, %dbg_is_chk_lprops.exit.i653.dbg_chk_lpt_sz.exit659_crit_edge
  %cnext = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 1
  %120 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cnext, align 4
  %tobool109.not = icmp eq ptr %121, null
  br i1 %tobool109.not, label %dbg_chk_lpt_sz.exit659.do.end114_crit_edge, label %land.rhs110

dbg_chk_lpt_sz.exit659.do.end114_crit_edge:       ; preds = %dbg_chk_lpt_sz.exit659
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114

land.rhs110:                                      ; preds = %dbg_chk_lpt_sz.exit659
  %122 = ptrtoint ptr %lpt_cnext to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %lpt_cnext, align 4
  %cmp112.not = icmp eq ptr %121, %123
  br i1 %cmp112.not, label %land.rhs110.do.end114_crit_edge, label %land.rhs110.do.body_crit_edge

land.rhs110.do.body_crit_edge:                    ; preds = %land.rhs110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.rhs110.do.end114_crit_edge:                  ; preds = %land.rhs110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114

do.end114:                                        ; preds = %land.rhs110.do.end114_crit_edge, %dbg_chk_lpt_sz.exit659.do.end114_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_lsave.2726)
  %tobool115.not = icmp eq i32 %done_lsave.2726, 0
  br i1 %tobool115.not, label %if.then116, label %do.end114.if.end174_crit_edge

do.end114.if.end174_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

if.then116:                                       ; preds = %do.end114
  %124 = ptrtoint ptr %lsave_sz72 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lsave_sz72, align 4
  %add118 = add i32 %125, %add106
  %126 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %leb_size16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %127)
  %cmp120 = icmp sgt i32 %add118, %127
  br i1 %cmp120, label %if.then121, label %if.then116.if.end167_crit_edge

if.then116.if.end167_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then121:                                       ; preds = %if.then116
  %sub122 = sub i32 %add106, %from.2
  %128 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %min_io_size, align 8
  %sub124 = add i32 %sub122, -1
  %add125 = add i32 %sub124, %129
  %neg128 = sub i32 0, %129
  %and129 = and i32 %add125, %neg128
  %add.ptr130 = getelementptr i8, ptr %1, i32 %add106
  %sub131 = sub i32 %and129, %sub122
  %130 = call ptr @memset(ptr %add.ptr130, i32 255, i32 %sub131)
  %131 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %lnum, align 4
  %add.ptr132 = getelementptr i8, ptr %1, i32 %from.2
  %call133 = tail call i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %132, ptr noundef %add.ptr132, i32 noundef %from.2, i32 noundef %and129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.then121.cleanup_crit_edge

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end136:                                        ; preds = %if.then121
  %133 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %leb_size16, align 8
  %sub138 = sub i32 %134, %add106
  %call139 = tail call i32 @dbg_chk_lpt_sz(ptr noundef %c, i32 noundef 2, i32 noundef %sub138)
  %call140 = call fastcc i32 @realloc_lpt_leb(ptr noundef %c, ptr noundef nonnull %lnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end136.no_space_crit_edge

if.end136.no_space_crit_edge:                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space

if.end143:                                        ; preds = %if.end136
  %135 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %lnum, align 4
  %137 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %lpt_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp146.not = icmp slt i32 %136, %138
  br i1 %cmp146.not, label %if.end143.if.then159_crit_edge, label %land.rhs147, !prof !182

if.end143.if.then159_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.rhs147:                                      ; preds = %if.end143
  %139 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %140)
  %cmp149.not = icmp sgt i32 %136, %140
  br i1 %cmp149.not, label %land.rhs147.if.then159_crit_edge, label %land.rhs147.do.end162_crit_edge, !prof !182

land.rhs147.do.end162_crit_edge:                  ; preds = %land.rhs147
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end162

land.rhs147.if.then159_crit_edge:                 ; preds = %land.rhs147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

if.then159:                                       ; preds = %land.rhs147.if.then159_crit_edge, %if.end143.if.then159_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 474) #7
  br label %do.end162

do.end162:                                        ; preds = %if.then159, %land.rhs147.do.end162_crit_edge
  %call163 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %do.end162.if.end167_crit_edge, label %do.end162.cleanup_crit_edge

do.end162.cleanup_crit_edge:                      ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end162.if.end167_crit_edge:                    ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.end167:                                        ; preds = %do.end162.if.end167_crit_edge, %if.then116.if.end167_crit_edge
  %from.3 = phi i32 [ 0, %do.end162.if.end167_crit_edge ], [ %from.2, %if.then116.if.end167_crit_edge ]
  %offs.5 = phi i32 [ 0, %do.end162.if.end167_crit_edge ], [ %add106, %if.then116.if.end167_crit_edge ]
  %add.ptr168 = getelementptr i8, ptr %1, i32 %offs.5
  %141 = ptrtoint ptr %lsave71 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %lsave71, align 4
  tail call void @ubifs_pack_lsave(ptr noundef %c, ptr noundef %add.ptr168, ptr noundef %142) #7
  %143 = ptrtoint ptr %lsave_sz72 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %lsave_sz72, align 4
  %add171 = add i32 %144, %offs.5
  %145 = ptrtoint ptr %dbg.i608 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dbg.i608, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i661 = load i8, ptr @ubifs_dbg, align 4
  %147 = and i8 %bf.load.i.i661, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i.i662 = icmp eq i8 %147, 0
  br i1 %tobool.not.i.i662, label %dbg_is_chk_lprops.exit.i666, label %if.end167.if.end.i667_crit_edge

if.end167.if.end.i667_crit_edge:                  ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i667

dbg_is_chk_lprops.exit.i666:                      ; preds = %if.end167
  %chk_lprops.i.i663 = getelementptr inbounds %struct.ubifs_debug_info, ptr %146, i32 0, i32 19
  %148 = ptrtoint ptr %chk_lprops.i.i663 to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load1.i.i664 = load i8, ptr %chk_lprops.i.i663, align 4
  %149 = and i8 %bf.load1.i.i664, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i665 = icmp eq i8 %149, 0
  br i1 %tobool.not.i665, label %dbg_is_chk_lprops.exit.i666.if.end174_crit_edge, label %dbg_is_chk_lprops.exit.i666.if.end.i667_crit_edge

dbg_is_chk_lprops.exit.i666.if.end.i667_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i666
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i667

dbg_is_chk_lprops.exit.i666.if.end174_crit_edge:  ; preds = %dbg_is_chk_lprops.exit.i666
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

if.end.i667:                                      ; preds = %dbg_is_chk_lprops.exit.i666.if.end.i667_crit_edge, %if.end167.if.end.i667_crit_edge
  %conv.i668 = sext i32 %144 to i64
  %chk_lpt_sz12.i669 = getelementptr inbounds %struct.ubifs_debug_info, ptr %146, i32 0, i32 8
  %150 = ptrtoint ptr %chk_lpt_sz12.i669 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %chk_lpt_sz12.i669, align 8
  %add.i670 = add i64 %151, %conv.i668
  store i64 %add.i670, ptr %chk_lpt_sz12.i669, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.end.i667, %dbg_is_chk_lprops.exit.i666.if.end174_crit_edge, %do.end114.if.end174_crit_edge
  %from.4 = phi i32 [ %from.2, %do.end114.if.end174_crit_edge ], [ %from.3, %dbg_is_chk_lprops.exit.i666.if.end174_crit_edge ], [ %from.3, %if.end.i667 ]
  %offs.6 = phi i32 [ %add106, %do.end114.if.end174_crit_edge ], [ %add171, %dbg_is_chk_lprops.exit.i666.if.end174_crit_edge ], [ %add171, %if.end.i667 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_ltab.2.ph734)
  %tobool175.not = icmp eq i32 %done_ltab.2.ph734, 0
  br i1 %tobool175.not, label %if.then176, label %if.end174.if.end234_crit_edge

if.end174.if.end234_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end234

if.then176:                                       ; preds = %if.end174
  %152 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ltab_sz, align 8
  %add178 = add i32 %153, %offs.6
  %154 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %leb_size16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add178, i32 %155)
  %cmp180 = icmp sgt i32 %add178, %155
  br i1 %cmp180, label %if.then181, label %if.then176.if.end227_crit_edge

if.then176.if.end227_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end227

if.then181:                                       ; preds = %if.then176
  %sub182 = sub i32 %offs.6, %from.4
  %156 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %min_io_size, align 8
  %sub184 = add i32 %sub182, -1
  %add185 = add i32 %sub184, %157
  %neg188 = sub i32 0, %157
  %and189 = and i32 %add185, %neg188
  %add.ptr190 = getelementptr i8, ptr %1, i32 %offs.6
  %sub191 = sub i32 %and189, %sub182
  %158 = call ptr @memset(ptr %add.ptr190, i32 255, i32 %sub191)
  %159 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %lnum, align 4
  %add.ptr192 = getelementptr i8, ptr %1, i32 %from.4
  %call193 = tail call i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %160, ptr noundef %add.ptr192, i32 noundef %from.4, i32 noundef %and189) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %if.then181.cleanup_crit_edge

if.then181.cleanup_crit_edge:                     ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end196:                                        ; preds = %if.then181
  %161 = ptrtoint ptr %leb_size16 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %leb_size16, align 8
  %sub198 = sub i32 %162, %offs.6
  %call199 = tail call i32 @dbg_chk_lpt_sz(ptr noundef %c, i32 noundef 2, i32 noundef %sub198)
  %call200 = call fastcc i32 @realloc_lpt_leb(ptr noundef %c, ptr noundef nonnull %lnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %if.end196.no_space_crit_edge

if.end196.no_space_crit_edge:                     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_space

if.end203:                                        ; preds = %if.end196
  %163 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %lnum, align 4
  %165 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %lpt_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp206.not = icmp slt i32 %164, %166
  br i1 %cmp206.not, label %if.end203.if.then219_crit_edge, label %land.rhs207, !prof !182

if.end203.if.then219_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then219

land.rhs207:                                      ; preds = %if.end203
  %167 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %168)
  %cmp209 = icmp sgt i32 %164, %168
  br i1 %cmp209, label %land.rhs207.if.then219_crit_edge, label %land.rhs207.do.end222_crit_edge, !prof !182

land.rhs207.do.end222_crit_edge:                  ; preds = %land.rhs207
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end222

land.rhs207.if.then219_crit_edge:                 ; preds = %land.rhs207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then219

if.then219:                                       ; preds = %land.rhs207.if.then219_crit_edge, %if.end203.if.then219_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 500) #7
  br label %do.end222

do.end222:                                        ; preds = %if.then219, %land.rhs207.do.end222_crit_edge
  %call223 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %do.end222.if.end227_crit_edge, label %do.end222.cleanup_crit_edge

do.end222.cleanup_crit_edge:                      ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end222.if.end227_crit_edge:                    ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end227

if.end227:                                        ; preds = %do.end222.if.end227_crit_edge, %if.then176.if.end227_crit_edge
  %from.5 = phi i32 [ 0, %do.end222.if.end227_crit_edge ], [ %from.4, %if.then176.if.end227_crit_edge ]
  %offs.7 = phi i32 [ 0, %do.end222.if.end227_crit_edge ], [ %offs.6, %if.then176.if.end227_crit_edge ]
  %add.ptr228 = getelementptr i8, ptr %1, i32 %offs.7
  %169 = ptrtoint ptr %ltab_cmt80 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ltab_cmt80, align 4
  tail call void @ubifs_pack_ltab(ptr noundef %c, ptr noundef %add.ptr228, ptr noundef %170) #7
  %171 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ltab_sz, align 8
  %add231 = add i32 %172, %offs.7
  %173 = ptrtoint ptr %dbg.i608 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dbg.i608, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i674 = load i8, ptr @ubifs_dbg, align 4
  %175 = and i8 %bf.load.i.i674, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i.i675 = icmp eq i8 %175, 0
  br i1 %tobool.not.i.i675, label %dbg_is_chk_lprops.exit.i679, label %if.end227.if.end.i680_crit_edge

if.end227.if.end.i680_crit_edge:                  ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i680

dbg_is_chk_lprops.exit.i679:                      ; preds = %if.end227
  %chk_lprops.i.i676 = getelementptr inbounds %struct.ubifs_debug_info, ptr %174, i32 0, i32 19
  %176 = ptrtoint ptr %chk_lprops.i.i676 to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load1.i.i677 = load i8, ptr %chk_lprops.i.i676, align 4
  %177 = and i8 %bf.load1.i.i677, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i678 = icmp eq i8 %177, 0
  br i1 %tobool.not.i678, label %dbg_is_chk_lprops.exit.i679.if.end234_crit_edge, label %dbg_is_chk_lprops.exit.i679.if.end.i680_crit_edge

dbg_is_chk_lprops.exit.i679.if.end.i680_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i679
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i680

dbg_is_chk_lprops.exit.i679.if.end234_crit_edge:  ; preds = %dbg_is_chk_lprops.exit.i679
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end234

if.end.i680:                                      ; preds = %dbg_is_chk_lprops.exit.i679.if.end.i680_crit_edge, %if.end227.if.end.i680_crit_edge
  %conv.i681 = sext i32 %172 to i64
  %chk_lpt_sz12.i682 = getelementptr inbounds %struct.ubifs_debug_info, ptr %174, i32 0, i32 8
  %178 = ptrtoint ptr %chk_lpt_sz12.i682 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %chk_lpt_sz12.i682, align 8
  %add.i683 = add i64 %179, %conv.i681
  store i64 %add.i683, ptr %chk_lpt_sz12.i682, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.end.i680, %dbg_is_chk_lprops.exit.i679.if.end234_crit_edge, %if.end174.if.end234_crit_edge
  %from.6 = phi i32 [ %from.4, %if.end174.if.end234_crit_edge ], [ %from.5, %dbg_is_chk_lprops.exit.i679.if.end234_crit_edge ], [ %from.5, %if.end.i680 ]
  %offs.8 = phi i32 [ %offs.6, %if.end174.if.end234_crit_edge ], [ %add231, %dbg_is_chk_lprops.exit.i679.if.end234_crit_edge ], [ %add231, %if.end.i680 ]
  %sub235 = sub i32 %offs.8, %from.6
  %180 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %min_io_size, align 8
  %sub237 = add i32 %181, -1
  %add238 = add i32 %sub237, %sub235
  %neg241 = sub i32 0, %181
  %and242 = and i32 %add238, %neg241
  %add.ptr243 = getelementptr i8, ptr %1, i32 %offs.8
  %sub244 = sub i32 %and242, %sub235
  %182 = call ptr @memset(ptr %add.ptr243, i32 255, i32 %sub244)
  %183 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %lnum, align 4
  %add.ptr245 = getelementptr i8, ptr %1, i32 %from.6
  %call246 = tail call i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %184, ptr noundef %add.ptr245, i32 noundef %from.6, i32 noundef %and242) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end249, label %if.end234.cleanup_crit_edge

if.end234.cleanup_crit_edge:                      ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end249:                                        ; preds = %if.end234
  %185 = ptrtoint ptr %dbg.i608 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dbg.i608, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i.i687 = load i8, ptr @ubifs_dbg, align 4
  %187 = and i8 %bf.load.i.i687, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i.i688 = icmp eq i8 %187, 0
  br i1 %tobool.not.i.i688, label %dbg_is_chk_lprops.exit.i692, label %if.end249.if.end.i693_crit_edge

if.end249.if.end.i693_crit_edge:                  ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i693

dbg_is_chk_lprops.exit.i692:                      ; preds = %if.end249
  %chk_lprops.i.i689 = getelementptr inbounds %struct.ubifs_debug_info, ptr %186, i32 0, i32 19
  %188 = ptrtoint ptr %chk_lprops.i.i689 to i32
  call void @__asan_load1_noabort(i32 %188)
  %bf.load1.i.i690 = load i8, ptr %chk_lprops.i.i689, align 4
  %189 = and i8 %bf.load1.i.i690, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i691 = icmp eq i8 %189, 0
  br i1 %tobool.not.i691, label %dbg_is_chk_lprops.exit.i692.dbg_chk_lpt_sz.exit695_crit_edge, label %dbg_is_chk_lprops.exit.i692.if.end.i693_crit_edge

dbg_is_chk_lprops.exit.i692.if.end.i693_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i692
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i693

dbg_is_chk_lprops.exit.i692.dbg_chk_lpt_sz.exit695_crit_edge: ; preds = %dbg_is_chk_lprops.exit.i692
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_chk_lpt_sz.exit695

if.end.i693:                                      ; preds = %dbg_is_chk_lprops.exit.i692.if.end.i693_crit_edge, %if.end249.if.end.i693_crit_edge
  %conv95.i = sext i32 %sub244 to i64
  %chk_lpt_sz96.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %186, i32 0, i32 8
  %190 = ptrtoint ptr %chk_lpt_sz96.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %chk_lpt_sz96.i, align 8
  %add97.i = add i64 %191, %conv95.i
  store i64 %add97.i, ptr %chk_lpt_sz96.i, align 8
  %chk_lpt_wastage99.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %186, i32 0, i32 10
  %192 = ptrtoint ptr %chk_lpt_wastage99.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %chk_lpt_wastage99.i, align 8
  %add100.i = add i64 %193, %conv95.i
  store i64 %add100.i, ptr %chk_lpt_wastage99.i, align 8
  br label %dbg_chk_lpt_sz.exit695

dbg_chk_lpt_sz.exit695:                           ; preds = %if.end.i693, %dbg_is_chk_lprops.exit.i692.dbg_chk_lpt_sz.exit695_crit_edge
  %194 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %min_io_size, align 8
  %sub253 = add i32 %offs.8, -1
  %add254 = add i32 %sub253, %195
  %neg257 = sub i32 0, %195
  %and258 = and i32 %add254, %neg257
  %call259 = tail call i32 @dbg_chk_lpt_sz(ptr noundef %c, i32 noundef 3, i32 noundef %and258)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end262, label %dbg_chk_lpt_sz.exit695.cleanup_crit_edge

dbg_chk_lpt_sz.exit695.cleanup_crit_edge:         ; preds = %dbg_chk_lpt_sz.exit695
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end262:                                        ; preds = %dbg_chk_lpt_sz.exit695
  %196 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %184, ptr %nhead_lnum, align 4
  %197 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %min_io_size, align 8
  %add266 = add i32 %sub253, %198
  %neg269 = sub i32 0, %198
  %and270 = and i32 %add266, %neg269
  %199 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %and270, ptr %nhead_offs, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_cnodes.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cnodes, %if.then281)) #7
          to label %do.body286 [label %if.then281], !srcloc !181

if.then281:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  %200 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %200, -16384
  %201 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %203, i32 0, i32 68
  %204 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pid, align 8
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %206 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %lpt_lnum, align 4
  %lpt_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %208 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %lpt_offs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_cnodes.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.41, i32 noundef %205, i32 noundef %207, i32 noundef %209) #7
  br label %do.body286

do.body286:                                       ; preds = %if.then281, %if.end262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_cnodes.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cnodes, %if.then298)) #7
          to label %do.body307 [label %if.then298], !srcloc !181

if.then298:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #9
  %210 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i696 = and i32 %210, -16384
  %211 = inttoptr i32 %and.i696 to ptr
  %task300 = getelementptr inbounds %struct.thread_info, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %task300 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %task300, align 8
  %pid301 = getelementptr inbounds %struct.task_struct, ptr %213, i32 0, i32 68
  %214 = ptrtoint ptr %pid301 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %pid301, align 8
  %216 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %nhead_lnum, align 4
  %218 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %nhead_offs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_cnodes.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.42, i32 noundef %215, i32 noundef %217, i32 noundef %219) #7
  br label %do.body307

do.body307:                                       ; preds = %if.then298, %do.body286
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_cnodes.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cnodes, %if.then319)) #7
          to label %do.end325 [label %if.then319], !srcloc !181

if.then319:                                       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #9
  %220 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i697 = and i32 %220, -16384
  %221 = inttoptr i32 %and.i697 to ptr
  %task321 = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %task321 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %task321, align 8
  %pid322 = getelementptr inbounds %struct.task_struct, ptr %223, i32 0, i32 68
  %224 = ptrtoint ptr %pid322 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pid322, align 8
  %ltab_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %226 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ltab_lnum, align 8
  %ltab_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %228 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ltab_offs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_cnodes.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.43, i32 noundef %225, i32 noundef %227, i32 noundef %229) #7
  br label %do.end325

do.end325:                                        ; preds = %if.then319, %do.body307
  %230 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %230)
  %bf.load327 = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load327)
  %tobool330.not = icmp sgt i16 %bf.load327, -1
  br i1 %tobool330.not, label %do.end325.cleanup_crit_edge, label %do.body332

do.end325.cleanup_crit_edge:                      ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body332:                                       ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_cnodes.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cnodes, %if.then344)) #7
          to label %cleanup [label %if.then344], !srcloc !181

if.then344:                                       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #9
  %231 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i698 = and i32 %231, -16384
  %232 = inttoptr i32 %and.i698 to ptr
  %task346 = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %task346 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %task346, align 8
  %pid347 = getelementptr inbounds %struct.task_struct, ptr %234, i32 0, i32 68
  %235 = ptrtoint ptr %pid347 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %pid347, align 8
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %237 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %lsave_lnum, align 4
  %lsave_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %239 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %lsave_offs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_cnodes.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.44, i32 noundef %236, i32 noundef %238, i32 noundef %240) #7
  br label %cleanup

no_space:                                         ; preds = %if.end196.no_space_crit_edge, %if.end136.no_space_crit_edge, %for.inc29.i.no_space_crit_edge, %for.cond8.preheader.i.no_space_crit_edge
  %done_ltab.2.ph733 = phi i32 [ 0, %if.end196.no_space_crit_edge ], [ %done_ltab.2.ph734, %if.end136.no_space_crit_edge ], [ %done_ltab.2.ph755, %for.inc29.i.no_space_crit_edge ], [ %done_ltab.2.ph755, %for.cond8.preheader.i.no_space_crit_edge ]
  %done_lsave.4 = phi i32 [ 1, %if.end196.no_space_crit_edge ], [ 0, %if.end136.no_space_crit_edge ], [ %done_lsave.2741, %for.inc29.i.no_space_crit_edge ], [ %done_lsave.2741, %for.cond8.preheader.i.no_space_crit_edge ]
  %err.0 = phi i32 [ %call200, %if.end196.no_space_crit_edge ], [ %call140, %if.end136.no_space_crit_edge ], [ -28, %for.inc29.i.no_space_crit_edge ], [ -28, %for.cond8.preheader.i.no_space_crit_edge ]
  %offs.9 = phi i32 [ %offs.6, %if.end196.no_space_crit_edge ], [ %add106, %if.end136.no_space_crit_edge ], [ %offs.3744, %for.inc29.i.no_space_crit_edge ], [ %offs.3744, %for.cond8.preheader.i.no_space_crit_edge ]
  %241 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %lnum, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.45, i32 noundef %242, i32 noundef %offs.9, i32 noundef %len.0, i32 noundef %done_ltab.2.ph733, i32 noundef %done_lsave.4) #7
  tail call void @ubifs_dump_lpt_info(ptr noundef %c) #7
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %c)
  tail call void @dump_stack() #10
  br label %cleanup

cleanup:                                          ; preds = %no_space, %if.then344, %do.body332, %do.end325.cleanup_crit_edge, %dbg_chk_lpt_sz.exit695.cleanup_crit_edge, %if.end234.cleanup_crit_edge, %do.end222.cleanup_crit_edge, %if.then181.cleanup_crit_edge, %do.end162.cleanup_crit_edge, %if.then121.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %no_space ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then1.cleanup_crit_edge ], [ %call133, %if.then121.cleanup_crit_edge ], [ %call163, %do.end162.cleanup_crit_edge ], [ %call193, %if.then181.cleanup_crit_edge ], [ %call223, %do.end222.cleanup_crit_edge ], [ %call246, %if.end234.cleanup_crit_edge ], [ %call259, %dbg_chk_lpt_sz.exit695.cleanup_crit_edge ], [ 0, %if.then344 ], [ 0, %do.end325.cleanup_crit_edge ], [ 0, %do.body332 ], [ %call64, %do.end.cleanup_crit_edge ], [ %call40, %if.then32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_post_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #7
  %lpt_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %lpt_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %0 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lpt_lebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.i = icmp sgt i32 %1, 0
  br i1 %cmp30.i, label %for.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ltab.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ltab.i, align 8
  %tgc.i = getelementptr %struct.ubifs_lpt_lprops, ptr %3, i32 %i.031.i, i32 2
  %4 = ptrtoint ptr %tgc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %tgc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %5 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lpt_first.i, align 8
  %add.i = add i32 %6, %i.031.i
  %call.i = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ltab.i, align 8
  %tgc5.i = getelementptr %struct.ubifs_lpt_lprops, ptr %8, i32 %i.031.i, i32 2
  %9 = ptrtoint ptr %tgc5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load6.i = load i8, ptr %tgc5.i, align 4
  %bf.clear.i = and i8 %bf.load6.i, 127
  store i8 %bf.clear.i, ptr %tgc5.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_tgc_end.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lpt_post_commit, %if.then11.i)) #7
          to label %for.inc.i [label %if.then11.i], !srcloc !181

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  %16 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_first.i, align 8
  %add14.i = add i32 %17, %i.031.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_tgc_end.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.25, i32 noundef %15, i32 noundef %add14.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %18 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lpt_lebs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %20 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool1.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %while.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.cond.preheader:                             ; preds = %if.end
  %lpt_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %nhead_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %ltab.i25 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %leb_size4.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %nhead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %while.cond.preheader
  %21 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lpt_lebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp53.i = icmp sgt i32 %22, 0
  br i1 %cmp53.i, label %for.body.lr.ph.i26, label %while.cond.need_write_all.exit_crit_edge

while.cond.need_write_all.exit_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_write_all.exit

for.body.lr.ph.i26:                               ; preds = %while.cond
  %23 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lpt_first.i, align 8
  %25 = ptrtoint ptr %nhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nhead_lnum.i, align 4
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.inc.i31.for.body.i28_crit_edge, %for.body.lr.ph.i26
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i26 ], [ %inc.i30, %for.inc.i31.for.body.i28_crit_edge ]
  %free.054.i = phi i64 [ 0, %for.body.lr.ph.i26 ], [ %free.1.i, %for.inc.i31.for.body.i28_crit_edge ]
  %add.i27 = add i32 %i.055.i, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i27, i32 %26)
  %cmp1.i = icmp eq i32 %add.i27, %26
  br i1 %cmp1.i, label %if.then.i29, label %if.else.i

if.then.i29:                                      ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %leb_size4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %leb_size4.i, align 8
  %29 = ptrtoint ptr %nhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nhead_offs.i, align 8
  %sub.i = sub i32 %28, %30
  %conv.i = sext i32 %sub.i to i64
  %add2.i = add i64 %free.054.i, %conv.i
  br label %for.inc.i31

if.else.i:                                        ; preds = %for.body.i28
  %31 = ptrtoint ptr %ltab.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ltab.i25, align 8
  %arrayidx.i = getelementptr %struct.ubifs_lpt_lprops, ptr %32, i32 %i.055.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %leb_size4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %leb_size4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp5.i = icmp eq i32 %34, %36
  br i1 %cmp5.i, label %if.then7.i, label %if.else11.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i = sext i32 %34 to i64
  %add10.i = add i64 %free.054.i, %conv9.i
  br label %for.inc.i31

if.else11.i:                                      ; preds = %if.else.i
  %dirty.i = getelementptr %struct.ubifs_lpt_lprops, ptr %32, i32 %i.055.i, i32 1
  %37 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dirty.i, align 4
  %add17.i = add i32 %38, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %36)
  %cmp19.i = icmp eq i32 %add17.i, %36
  br i1 %cmp19.i, label %if.then21.i, label %if.else11.i.for.inc.i31_crit_edge

if.else11.i.for.inc.i31_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i31

if.then21.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.i = sext i32 %36 to i64
  %add24.i = add i64 %free.054.i, %conv23.i
  br label %for.inc.i31

for.inc.i31:                                      ; preds = %if.then21.i, %if.else11.i.for.inc.i31_crit_edge, %if.then7.i, %if.then.i29
  %free.1.i = phi i64 [ %add2.i, %if.then.i29 ], [ %add10.i, %if.then7.i ], [ %add24.i, %if.then21.i ], [ %free.054.i, %if.else11.i.for.inc.i31_crit_edge ]
  %inc.i30 = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i30, %22
  br i1 %exitcond.not.i, label %for.inc.i31.need_write_all.exit_crit_edge, label %for.inc.i31.for.body.i28_crit_edge

for.inc.i31.for.body.i28_crit_edge:               ; preds = %for.inc.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i28

for.inc.i31.need_write_all.exit_crit_edge:        ; preds = %for.inc.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %need_write_all.exit

need_write_all.exit:                              ; preds = %for.inc.i31.need_write_all.exit_crit_edge, %while.cond.need_write_all.exit_crit_edge
  %free.0.lcssa.i = phi i64 [ 0, %while.cond.need_write_all.exit_crit_edge ], [ %free.1.i, %for.inc.i31.need_write_all.exit_crit_edge ]
  %39 = ptrtoint ptr %lpt_sz.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %lpt_sz.i, align 8
  %mul.i = shl i64 %40, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %free.0.lcssa.i, i64 %mul.i)
  %cmp27.not.i.not = icmp sgt i64 %free.0.lcssa.i, %mul.i
  br i1 %cmp27.not.i.not, label %need_write_all.exit.out_crit_edge, label %while.body

need_write_all.exit.out_crit_edge:                ; preds = %need_write_all.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body:                                       ; preds = %need_write_all.exit
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #7
  %call6 = tail call fastcc i32 @lpt_gc(ptr noundef %c)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #7
  br label %while.cond

out:                                              ; preds = %need_write_all.exit.out_crit_edge, %if.end.out_crit_edge, %if.then.i.out_crit_edge
  %err.1 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %need_write_all.exit.out_crit_edge ], [ %call.i, %if.then.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ %call6, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_lpt_free(ptr nocapture noundef %c, i32 noundef %wr_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lpt_cnext.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 157
  %0 = ptrtoint ptr %lpt_cnext.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpt_cnext.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.free_obsolete_cnodes.exit_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.free_obsolete_cnodes.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_obsolete_cnodes.exit

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %cnext.0.i = phi ptr [ %3, %do.cond.i.do.body.i_crit_edge ], [ %1, %entry.do.body.i_crit_edge ]
  %cnext1.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnext.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %cnext1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cnext1.i, align 4
  %flags.i = getelementptr inbounds %struct.ubifs_cnode, ptr %cnext.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %cnext.0.i) #7
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %cnext1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cnext1.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.else.i, %if.then3.i
  %8 = ptrtoint ptr %lpt_cnext.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lpt_cnext.i, align 4
  %cmp.not.i = icmp eq ptr %3, %9
  br i1 %cmp.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %lpt_cnext.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %lpt_cnext.i, align 4
  br label %free_obsolete_cnodes.exit

free_obsolete_cnodes.exit:                        ; preds = %do.end.i, %entry.free_obsolete_cnodes.exit_crit_edge
  %ltab_cmt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 169
  %11 = ptrtoint ptr %ltab_cmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ltab_cmt, align 4
  tail call void @vfree(ptr noundef %12) #7
  %13 = ptrtoint ptr %ltab_cmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ltab_cmt, align 4
  %lpt_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 155
  %14 = ptrtoint ptr %lpt_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lpt_buf, align 4
  tail call void @vfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %lpt_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %lpt_buf, align 4
  %lsave = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  %17 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lsave, align 4
  tail call void @kfree(ptr noundef %18) #7
  %19 = ptrtoint ptr %lsave to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %lsave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr_only)
  %tobool.not = icmp eq i32 %wr_only, 0
  br i1 %tobool.not, label %if.end, label %free_obsolete_cnodes.exit.cleanup_crit_edge

free_obsolete_cnodes.exit.cleanup_crit_edge:      ; preds = %free_obsolete_cnodes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %free_obsolete_cnodes.exit
  %nroot.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %20 = ptrtoint ptr %nroot.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nroot.i, align 8
  %tobool.not.i36 = icmp eq ptr %21, null
  br i1 %tobool.not.i36, label %if.end.for.cond6.preheader_crit_edge, label %for.cond.preheader.i

if.end.for.cond6.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

for.cond.preheader.i:                             ; preds = %if.end
  %lpt_hght.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %22 = ptrtoint ptr %lpt_hght.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lpt_hght.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp34.i = icmp sgt i32 %23, 1
  br i1 %cmp34.i, label %for.cond1.preheader.i.preheader, label %for.cond.preheader.i.for.cond.preheader.lr.ph_crit_edge

for.cond.preheader.i.for.cond.preheader.lr.ph_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.lr.ph

for.cond1.preheader.i.preheader:                  ; preds = %for.cond.preheader.i
  %24 = add nsw i32 %23, -1
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.i.preheader
  %hght.0 = phi i32 [ %h.036.i, %for.inc12.i.for.cond1.preheader.i_crit_edge ], [ 0, %for.cond1.preheader.i.preheader ]
  %h.036.i = phi i32 [ %inc13.i, %for.inc12.i.for.cond1.preheader.i_crit_edge ], [ 1, %for.cond1.preheader.i.preheader ]
  %nnode.035.i = phi ptr [ %.lcssa.i, %for.inc12.i.for.cond1.preheader.i_crit_edge ], [ %21, %for.cond1.preheader.i.preheader ]
  %25 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i, i32 0, i32 6, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %for.cond1.i, label %for.cond1.preheader.i.for.inc12.i_crit_edge

for.cond1.preheader.i.for.inc12.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i

for.cond1.i:                                      ; preds = %for.cond1.preheader.i
  %28 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i, i32 0, i32 6, i32 1, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool4.not.1.i = icmp eq ptr %30, null
  br i1 %tobool4.not.1.i, label %for.cond1.1.i, label %for.cond1.i.for.inc12.i_crit_edge

for.cond1.i.for.inc12.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i

for.cond1.1.i:                                    ; preds = %for.cond1.i
  %31 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i, i32 0, i32 6, i32 2, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool4.not.2.i = icmp eq ptr %33, null
  br i1 %tobool4.not.2.i, label %for.cond1.2.i, label %for.cond1.1.i.for.inc12.i_crit_edge

for.cond1.1.i.for.inc12.i_crit_edge:              ; preds = %for.cond1.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i

for.cond1.2.i:                                    ; preds = %for.cond1.1.i
  %34 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i, i32 0, i32 6, i32 3, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool4.not.3.i = icmp eq ptr %36, null
  br i1 %tobool4.not.3.i, label %for.cond1.2.i.for.cond.preheader.lr.ph_crit_edge, label %for.cond1.2.i.for.inc12.i_crit_edge

for.cond1.2.i.for.inc12.i_crit_edge:              ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i

for.cond1.2.i.for.cond.preheader.lr.ph_crit_edge: ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.lr.ph

for.inc12.i:                                      ; preds = %for.cond1.2.i.for.inc12.i_crit_edge, %for.cond1.1.i.for.inc12.i_crit_edge, %for.cond1.i.for.inc12.i_crit_edge, %for.cond1.preheader.i.for.inc12.i_crit_edge
  %.lcssa.i = phi ptr [ %27, %for.cond1.preheader.i.for.inc12.i_crit_edge ], [ %30, %for.cond1.i.for.inc12.i_crit_edge ], [ %33, %for.cond1.1.i.for.inc12.i_crit_edge ], [ %36, %for.cond1.2.i.for.inc12.i_crit_edge ]
  %inc13.i = add nuw nsw i32 %h.036.i, 1
  %exitcond.not = icmp eq i32 %inc13.i, %23
  br i1 %exitcond.not, label %for.inc12.i.for.cond.preheader.lr.ph_crit_edge, label %for.inc12.i.for.cond1.preheader.i_crit_edge

for.inc12.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.inc12.i.for.cond.preheader.lr.ph_crit_edge:   ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %for.inc12.i.for.cond.preheader.lr.ph_crit_edge, %for.cond1.2.i.for.cond.preheader.lr.ph_crit_edge, %for.cond.preheader.i.for.cond.preheader.lr.ph_crit_edge
  %hght.1.ph = phi i32 [ 0, %for.cond.preheader.i.for.cond.preheader.lr.ph_crit_edge ], [ %hght.0, %for.cond1.2.i.for.cond.preheader.lr.ph_crit_edge ], [ %24, %for.inc12.i.for.cond.preheader.lr.ph_crit_edge ]
  %retval.0.i.ph = phi ptr [ %21, %for.cond.preheader.i.for.cond.preheader.lr.ph_crit_edge ], [ %nnode.035.i, %for.cond1.2.i.for.cond.preheader.lr.ph_crit_edge ], [ %.lcssa.i, %for.inc12.i.for.cond.preheader.lr.ph_crit_edge ]
  %lpt_hght.i40 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %next_nnode.exit.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %nnode.049 = phi ptr [ %retval.0.i.ph, %for.cond.preheader.lr.ph ], [ %retval.0.i42, %next_nnode.exit.for.cond.preheader_crit_edge ]
  %hght.247 = phi i32 [ %hght.1.ph, %for.cond.preheader.lr.ph ], [ %hght.4, %next_nnode.exit.for.cond.preheader_crit_edge ]
  %37 = getelementptr %struct.ubifs_nnode, ptr %nnode.049, i32 0, i32 6, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %39) #7
  %40 = getelementptr %struct.ubifs_nnode, ptr %nnode.049, i32 0, i32 6, i32 1, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %42) #7
  %43 = getelementptr %struct.ubifs_nnode, ptr %nnode.049, i32 0, i32 6, i32 2, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %45) #7
  %46 = getelementptr %struct.ubifs_nnode, ptr %nnode.049, i32 0, i32 6, i32 3, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void @kfree(ptr noundef %48) #7
  %49 = ptrtoint ptr %nnode.049 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nnode.049, align 4
  %tobool.not.i37 = icmp eq ptr %50, null
  br i1 %tobool.not.i37, label %for.cond.preheader.for.cond6.preheader_crit_edge, label %if.end.i

for.cond.preheader.for.cond6.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %next_nnode.exit.for.cond6.preheader_crit_edge, %for.cond.preheader.for.cond6.preheader_crit_edge, %if.end.for.cond6.preheader_crit_edge
  %arrayidx9 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0
  %51 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx9, align 4
  tail call void @kfree(ptr noundef %52) #7
  %arrayidx9.1 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %53 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @kfree(ptr noundef %54) #7
  %arrayidx9.2 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2
  %55 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx9.2, align 4
  tail call void @kfree(ptr noundef %56) #7
  %dirty_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159
  %57 = ptrtoint ptr %dirty_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dirty_idx, align 4
  tail call void @kfree(ptr noundef %58) #7
  %59 = ptrtoint ptr %nroot.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nroot.i, align 8
  tail call void @kfree(ptr noundef %60) #7
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %61 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ltab, align 8
  tail call void @vfree(ptr noundef %62) #7
  %lpt_nod_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 154
  %63 = ptrtoint ptr %lpt_nod_buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lpt_nod_buf, align 8
  tail call void @kfree(ptr noundef %64) #7
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.preheader
  %iip2.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.049, i32 0, i32 3
  %65 = ptrtoint ptr %iip2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iip2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i38 = icmp eq i32 %66, 3
  br i1 %cmp.i38, label %if.end.i.cleanup.sink.split.i_crit_edge, label %for.cond.preheader.i39

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

for.cond.preheader.i39:                           ; preds = %if.end.i
  %iip.072.i = add i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iip.072.i)
  %cmp673.i = icmp slt i32 %iip.072.i, 4
  br i1 %cmp673.i, label %for.cond.preheader.i39.for.body.i_crit_edge, label %for.cond.preheader.i39.if.end13.i_crit_edge

for.cond.preheader.i39.if.end13.i_crit_edge:      ; preds = %for.cond.preheader.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

for.cond.preheader.i39.for.body.i_crit_edge:      ; preds = %for.cond.preheader.i39
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %iip.0.i = add i32 %iip.074.i, 1
  %exitcond.not.i = icmp eq i32 %iip.0.i, 4
  br i1 %exitcond.not.i, label %for.cond.i.cleanup.sink.split.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i39.for.body.i_crit_edge
  %iip.074.i = phi i32 [ %iip.0.i, %for.cond.i.for.body.i_crit_edge ], [ %iip.072.i, %for.cond.preheader.i39.for.body.i_crit_edge ]
  %67 = getelementptr %struct.ubifs_nnode, ptr %50, i32 0, i32 6, i32 %iip.074.i, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %tobool7.not.i = icmp eq ptr %69, null
  br i1 %tobool7.not.i, label %for.cond.i, label %for.body.i.if.end13.i_crit_edge

for.body.i.if.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %for.body.i.if.end13.i_crit_edge, %for.cond.preheader.i39.if.end13.i_crit_edge
  %nnode.addr.166.i = phi ptr [ %nnode.049, %for.cond.preheader.i39.if.end13.i_crit_edge ], [ %69, %for.body.i.if.end13.i_crit_edge ]
  %h.076.i = add i32 %hght.247, 1
  %70 = ptrtoint ptr %lpt_hght.i40 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lpt_hght.i40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %h.076.i, i32 %71)
  %cmp1677.i = icmp slt i32 %h.076.i, %71
  br i1 %cmp1677.i, label %for.cond18.preheader.i.preheader, label %if.end13.i.next_nnode.exit_crit_edge

if.end13.i.next_nnode.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_nnode.exit

for.cond18.preheader.i.preheader:                 ; preds = %if.end13.i
  %72 = add nsw i32 %71, -1
  br label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %for.end30.i.for.cond18.preheader.i_crit_edge, %for.cond18.preheader.i.preheader
  %hght.3 = phi i32 [ %h.079.i, %for.end30.i.for.cond18.preheader.i_crit_edge ], [ %hght.247, %for.cond18.preheader.i.preheader ]
  %h.079.i = phi i32 [ %h.0.i, %for.end30.i.for.cond18.preheader.i_crit_edge ], [ %h.076.i, %for.cond18.preheader.i.preheader ]
  %nnode.addr.278.i = phi ptr [ %.lcssa.i41, %for.end30.i.for.cond18.preheader.i_crit_edge ], [ %nnode.addr.166.i, %for.cond18.preheader.i.preheader ]
  %73 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i, i32 0, i32 6, i32 0, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool23.not.i = icmp eq ptr %75, null
  br i1 %tobool23.not.i, label %for.cond18.i, label %for.cond18.preheader.i.for.end30.i_crit_edge

for.cond18.preheader.i.for.end30.i_crit_edge:     ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i

for.cond18.i:                                     ; preds = %for.cond18.preheader.i
  %76 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i, i32 0, i32 6, i32 1, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %tobool23.not.1.i = icmp eq ptr %78, null
  br i1 %tobool23.not.1.i, label %for.cond18.1.i, label %for.cond18.i.for.end30.i_crit_edge

for.cond18.i.for.end30.i_crit_edge:               ; preds = %for.cond18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i

for.cond18.1.i:                                   ; preds = %for.cond18.i
  %79 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i, i32 0, i32 6, i32 2, i32 2
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %tobool23.not.2.i = icmp eq ptr %81, null
  br i1 %tobool23.not.2.i, label %for.cond18.2.i, label %for.cond18.1.i.for.end30.i_crit_edge

for.cond18.1.i.for.end30.i_crit_edge:             ; preds = %for.cond18.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i

for.cond18.2.i:                                   ; preds = %for.cond18.1.i
  %82 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i, i32 0, i32 6, i32 3, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %tobool23.not.3.i = icmp eq ptr %84, null
  br i1 %tobool23.not.3.i, label %for.cond18.2.i.next_nnode.exit_crit_edge, label %for.cond18.2.i.for.end30.i_crit_edge

for.cond18.2.i.for.end30.i_crit_edge:             ; preds = %for.cond18.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i

for.cond18.2.i.next_nnode.exit_crit_edge:         ; preds = %for.cond18.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_nnode.exit

for.end30.i:                                      ; preds = %for.cond18.2.i.for.end30.i_crit_edge, %for.cond18.1.i.for.end30.i_crit_edge, %for.cond18.i.for.end30.i_crit_edge, %for.cond18.preheader.i.for.end30.i_crit_edge
  %.lcssa.i41 = phi ptr [ %75, %for.cond18.preheader.i.for.end30.i_crit_edge ], [ %78, %for.cond18.i.for.end30.i_crit_edge ], [ %81, %for.cond18.1.i.for.end30.i_crit_edge ], [ %84, %for.cond18.2.i.for.end30.i_crit_edge ]
  %h.0.i = add i32 %h.079.i, 1
  %exitcond53.not = icmp eq i32 %h.0.i, %71
  br i1 %exitcond53.not, label %for.end30.i.next_nnode.exit_crit_edge, label %for.end30.i.for.cond18.preheader.i_crit_edge

for.end30.i.for.cond18.preheader.i_crit_edge:     ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond18.preheader.i

for.end30.i.next_nnode.exit_crit_edge:            ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_nnode.exit

cleanup.sink.split.i:                             ; preds = %for.cond.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %sub12.i = add i32 %hght.247, -1
  br label %next_nnode.exit

next_nnode.exit:                                  ; preds = %cleanup.sink.split.i, %for.end30.i.next_nnode.exit_crit_edge, %for.cond18.2.i.next_nnode.exit_crit_edge, %if.end13.i.next_nnode.exit_crit_edge
  %hght.4 = phi i32 [ %sub12.i, %cleanup.sink.split.i ], [ %hght.247, %if.end13.i.next_nnode.exit_crit_edge ], [ %72, %for.end30.i.next_nnode.exit_crit_edge ], [ %hght.3, %for.cond18.2.i.next_nnode.exit_crit_edge ]
  %retval.0.i42 = phi ptr [ %50, %cleanup.sink.split.i ], [ %nnode.addr.166.i, %if.end13.i.next_nnode.exit_crit_edge ], [ %.lcssa.i41, %for.end30.i.next_nnode.exit_crit_edge ], [ %nnode.addr.278.i, %for.cond18.2.i.next_nnode.exit_crit_edge ]
  %tobool4.not = icmp eq ptr %retval.0.i42, null
  br i1 %tobool4.not, label %next_nnode.exit.for.cond6.preheader_crit_edge, label %next_nnode.exit.for.cond.preheader_crit_edge

next_nnode.exit.for.cond.preheader_crit_edge:     ; preds = %next_nnode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

next_nnode.exit.for.cond6.preheader_crit_edge:    ; preds = %next_nnode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

cleanup:                                          ; preds = %for.cond6.preheader, %free_obsolete_cnodes.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_pnode_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lpt_nodes(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbg_check_ltab_lnum(ptr noundef %c, i32 noundef %lnum) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca ptr, align 4
  %pos.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %0 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_size, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %2 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %dbg_is_chk_lprops.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_lprops.exit:                           ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %3 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbg.i, align 4
  %chk_lprops.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %chk_lprops.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load1.i = load i8, ptr %chk_lprops.i, align 4
  %6 = and i8 %bf.load1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %dbg_is_chk_lprops.exit.cleanup59_crit_edge, label %dbg_is_chk_lprops.exit.if.end_crit_edge

dbg_is_chk_lprops.exit.if.end_crit_edge:          ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_lprops.exit.cleanup59_crit_edge:       ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.end:                                           ; preds = %dbg_is_chk_lprops.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call noalias ptr @__vmalloc(i32 noundef %1, i32 noundef 3136) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.47) #7
  br label %cleanup59

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_check_ltab_lnum.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_check_ltab_lnum, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !181

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbg_check_ltab_lnum.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.25, i32 noundef %12, i32 noundef %lnum) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %13 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %leb_size, align 8
  %call14 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef %14, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %while.cond.preheader, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.cond.preheader:                             ; preds = %do.end
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %pcnt_bits.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %lsave_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %lsave_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %lsave_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %lpt_drty_flgs.i32.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 149
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %ltab_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %ltab_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %pnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %main_lebs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %nnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %nroot.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %lpt_hght.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %lpt_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %lpt_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %len.0 = phi i32 [ %1, %while.cond.preheader ], [ %len.0.be, %while.cond.backedge ]
  %dirty.0 = phi i32 [ 0, %while.cond.preheader ], [ %dirty.0.be, %while.cond.backedge ]
  %p.0 = phi ptr [ %call2, %while.cond.preheader ], [ %p.0.be, %while.cond.backedge ]
  %call18 = call fastcc i32 @is_a_node(ptr noundef %c, ptr noundef %p.0, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end47

if.then20:                                        ; preds = %while.cond
  %15 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_io_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  br i1 %cmp.i, label %if.then20.if.end24_crit_edge, label %get_pad_len.exit

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

get_pad_len.exit:                                 ; preds = %if.then20
  %17 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %leb_size, align 8
  %sub.i = sub i32 %18, %len.0
  %sub2.i = add i32 %16, -1
  %add.i = add i32 %sub2.i, %sub.i
  %neg.i = sub i32 0, %16
  %and.i124 = and i32 %add.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i124, i32 %sub.i)
  %tobool22.not = icmp eq i32 %and.i124, %sub.i
  br i1 %tobool22.not, label %get_pad_len.exit.if.end24_crit_edge, label %cleanup

get_pad_len.exit.if.end24_crit_edge:              ; preds = %get_pad_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %get_pad_len.exit.if.end24_crit_edge, %if.then20.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp5.i = icmp sgt i32 %len.0, 0
  br i1 %cmp5.i, label %if.end24.for.body.i_crit_edge, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len.0
  br i1 %exitcond.not.i, label %for.cond.i.if.end30_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.end30_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end24.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %p.0, i32 %i.06.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp1.not.i = icmp eq i8 %20, -1
  br i1 %cmp1.not.i, label %for.cond.i, label %if.then27

if.then27:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %leb_size, align 8
  %sub29 = sub i32 %22, %len.0
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.49, i32 noundef %lnum, i32 noundef %sub29) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %for.cond.i.if.end30_crit_edge, %if.end24.if.end30_crit_edge
  %err.1 = phi i32 [ -22, %if.then27 ], [ 0, %if.end24.if.end30_crit_edge ], [ 0, %for.cond.i.if.end30_crit_edge ]
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %23 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lpt_first, align 8
  %sub31 = sub i32 %lnum, %24
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %25 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ltab, align 8
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %26, i32 %sub31
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %28)
  %cmp.not = icmp eq i32 %len.0, %28
  br i1 %cmp.not, label %if.end30.if.end36_crit_edge, label %if.then32

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.50, i32 noundef %lnum, i32 noundef %len.0, i32 noundef %28) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end30.if.end36_crit_edge
  %err.2 = phi i32 [ -22, %if.then32 ], [ %err.1, %if.end30.if.end36_crit_edge ]
  %29 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ltab, align 8
  %dirty39 = getelementptr %struct.ubifs_lpt_lprops, ptr %30, i32 %sub31, i32 1
  %31 = ptrtoint ptr %dirty39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dirty39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dirty.0, i32 %32)
  %cmp40.not = icmp eq i32 %dirty.0, %32
  br i1 %cmp40.not, label %if.end36.out_crit_edge, label %if.then41

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.51, i32 noundef %lnum, i32 noundef %dirty.0, i32 noundef %32) #7
  br label %out

cleanup:                                          ; preds = %get_pad_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i = sub i32 %and.i124, %sub.i
  %add = add i32 %sub5.i, %dirty.0
  br label %while.cond.backedge

if.end47:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #7
  %add.ptr.i = getelementptr i8, ptr %p.0, i32 2
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #7
  %34 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %pos.i, align 4
  %call.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef 4) #7
  %35 = ptrtoint ptr %pcnt_bits.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pcnt_bits.i, align 8
  %call1.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef %36) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %37 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end47.dbg_is_node_dirty.exit.thread_crit_edge [
    i32 1, label %get_lpt_node_len.exit.thread
    i32 0, label %get_lpt_node_len.exit.thread150
    i32 2, label %get_lpt_node_len.exit.thread155
    i32 3, label %get_lpt_node_len.exit.thread160
  ]

if.end47.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

get_lpt_node_len.exit.thread:                     ; preds = %if.end47
  %38 = ptrtoint ptr %nnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nnode_sz.i, align 8
  %40 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %leb_size, align 8
  %sub51146 = sub i32 %41, %len.0
  %42 = ptrtoint ptr %nroot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nroot.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %get_lpt_node_len.exit.thread.dbg_is_node_dirty.exit.thread_crit_edge, label %for.cond.preheader.i.i.i

get_lpt_node_len.exit.thread.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %get_lpt_node_len.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

get_lpt_node_len.exit.thread150:                  ; preds = %if.end47
  %44 = ptrtoint ptr %pnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pnode_sz.i, align 4
  %46 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %leb_size, align 8
  %sub51152 = sub i32 %47, %len.0
  %48 = ptrtoint ptr %main_lebs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %main_lebs.i.i, align 4
  %sub.i.i = add i32 %49, 3
  %div.i.i = sdiv i32 %sub.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp28.i.i = icmp sgt i32 %sub.i.i, 3
  br i1 %cmp28.i.i, label %get_lpt_node_len.exit.thread150.for.body.i17.i_crit_edge, label %get_lpt_node_len.exit.thread150.dbg_is_node_dirty.exit.thread_crit_edge

get_lpt_node_len.exit.thread150.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %get_lpt_node_len.exit.thread150
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

get_lpt_node_len.exit.thread150.for.body.i17.i_crit_edge: ; preds = %get_lpt_node_len.exit.thread150
  br label %for.body.i17.i

get_lpt_node_len.exit.thread155:                  ; preds = %if.end47
  %50 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ltab_sz.i, align 8
  %52 = ptrtoint ptr %ltab_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ltab_lnum.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %lnum)
  %cmp.not.i26.i = icmp eq i32 %53, %lnum
  br i1 %cmp.not.i26.i, label %lor.lhs.false.i27.i, label %get_lpt_node_len.exit.thread155.dbg_is_node_dirty.exit.thread_crit_edge

get_lpt_node_len.exit.thread155.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %get_lpt_node_len.exit.thread155
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

get_lpt_node_len.exit.thread160:                  ; preds = %if.end47
  %54 = ptrtoint ptr %lsave_sz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lsave_sz.i, align 4
  %56 = ptrtoint ptr %lsave_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lsave_lnum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %lnum)
  %cmp.not.i29.i = icmp eq i32 %57, %lnum
  br i1 %cmp.not.i29.i, label %lor.lhs.false.i31.i, label %get_lpt_node_len.exit.thread160.dbg_is_node_dirty.exit.thread_crit_edge

get_lpt_node_len.exit.thread160.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %get_lpt_node_len.exit.thread160
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

for.cond.preheader.i.i.i:                         ; preds = %get_lpt_node_len.exit.thread
  %58 = ptrtoint ptr %lpt_hght.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lpt_hght.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp34.i.i.i = icmp sgt i32 %59, 1
  br i1 %cmp34.i.i.i, label %for.cond1.preheader.i.preheader.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.preheader_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.preheader_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.preheader

for.cond1.preheader.i.preheader.i.i:              ; preds = %for.cond.preheader.i.i.i
  %60 = add nsw i32 %59, -1
  br label %for.cond1.preheader.i.i.i

for.cond1.preheader.i.i.i:                        ; preds = %for.inc12.i.i.i.for.cond1.preheader.i.i.i_crit_edge, %for.cond1.preheader.i.preheader.i.i
  %hght.0.i.i = phi i32 [ %h.036.i.i.i, %for.inc12.i.i.i.for.cond1.preheader.i.i.i_crit_edge ], [ 0, %for.cond1.preheader.i.preheader.i.i ]
  %h.036.i.i.i = phi i32 [ %inc13.i.i.i, %for.inc12.i.i.i.for.cond1.preheader.i.i.i_crit_edge ], [ 1, %for.cond1.preheader.i.preheader.i.i ]
  %nnode.035.i.i.i = phi ptr [ %.lcssa.i.i.i, %for.inc12.i.i.i.for.cond1.preheader.i.i.i_crit_edge ], [ %43, %for.cond1.preheader.i.preheader.i.i ]
  %61 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i.i.i, i32 0, i32 6, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %tobool4.not.i.i.i = icmp eq ptr %63, null
  br i1 %tobool4.not.i.i.i, label %for.cond1.i.i.i, label %for.cond1.preheader.i.i.i.for.inc12.i.i.i_crit_edge

for.cond1.preheader.i.i.i.for.inc12.i.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

for.cond1.i.i.i:                                  ; preds = %for.cond1.preheader.i.i.i
  %64 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i.i.i, i32 0, i32 6, i32 1, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool4.not.1.i.i.i = icmp eq ptr %66, null
  br i1 %tobool4.not.1.i.i.i, label %for.cond1.1.i.i.i, label %for.cond1.i.i.i.for.inc12.i.i.i_crit_edge

for.cond1.i.i.i.for.inc12.i.i.i_crit_edge:        ; preds = %for.cond1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

for.cond1.1.i.i.i:                                ; preds = %for.cond1.i.i.i
  %67 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i.i.i, i32 0, i32 6, i32 2, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %tobool4.not.2.i.i.i = icmp eq ptr %69, null
  br i1 %tobool4.not.2.i.i.i, label %for.cond1.2.i.i.i, label %for.cond1.1.i.i.i.for.inc12.i.i.i_crit_edge

for.cond1.1.i.i.i.for.inc12.i.i.i_crit_edge:      ; preds = %for.cond1.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

for.cond1.2.i.i.i:                                ; preds = %for.cond1.1.i.i.i
  %70 = getelementptr %struct.ubifs_nnode, ptr %nnode.035.i.i.i, i32 0, i32 6, i32 3, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool4.not.3.i.i.i = icmp eq ptr %72, null
  br i1 %tobool4.not.3.i.i.i, label %for.cond1.2.i.i.i.for.body.i.i.preheader_crit_edge, label %for.cond1.2.i.i.i.for.inc12.i.i.i_crit_edge

for.cond1.2.i.i.i.for.inc12.i.i.i_crit_edge:      ; preds = %for.cond1.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

for.cond1.2.i.i.i.for.body.i.i.preheader_crit_edge: ; preds = %for.cond1.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.preheader

for.inc12.i.i.i:                                  ; preds = %for.cond1.2.i.i.i.for.inc12.i.i.i_crit_edge, %for.cond1.1.i.i.i.for.inc12.i.i.i_crit_edge, %for.cond1.i.i.i.for.inc12.i.i.i_crit_edge, %for.cond1.preheader.i.i.i.for.inc12.i.i.i_crit_edge
  %.lcssa.i.i.i = phi ptr [ %63, %for.cond1.preheader.i.i.i.for.inc12.i.i.i_crit_edge ], [ %66, %for.cond1.i.i.i.for.inc12.i.i.i_crit_edge ], [ %69, %for.cond1.1.i.i.i.for.inc12.i.i.i_crit_edge ], [ %72, %for.cond1.2.i.i.i.for.inc12.i.i.i_crit_edge ]
  %inc13.i.i.i = add nuw nsw i32 %h.036.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc13.i.i.i, %59
  br i1 %exitcond.not.i.i, label %for.inc12.i.i.i.for.body.i.i.preheader_crit_edge, label %for.inc12.i.i.i.for.cond1.preheader.i.i.i_crit_edge

for.inc12.i.i.i.for.cond1.preheader.i.i.i_crit_edge: ; preds = %for.inc12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i.i.i

for.inc12.i.i.i.for.body.i.i.preheader_crit_edge: ; preds = %for.inc12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %for.inc12.i.i.i.for.body.i.i.preheader_crit_edge, %for.cond1.2.i.i.i.for.body.i.i.preheader_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.preheader_crit_edge
  %nnode.055.i.i.ph = phi ptr [ %43, %for.cond.preheader.i.i.i.for.body.i.i.preheader_crit_edge ], [ %.lcssa.i.i.i, %for.inc12.i.i.i.for.body.i.i.preheader_crit_edge ], [ %nnode.035.i.i.i, %for.cond1.2.i.i.i.for.body.i.i.preheader_crit_edge ]
  %hght.253.i.i.ph = phi i32 [ 0, %for.cond.preheader.i.i.i.for.body.i.i.preheader_crit_edge ], [ %60, %for.inc12.i.i.i.for.body.i.i.preheader_crit_edge ], [ %hght.0.i.i, %for.cond1.2.i.i.i.for.body.i.i.preheader_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %next_nnode.exit.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %nnode.055.i.i = phi ptr [ %retval.0.i44.i.i, %next_nnode.exit.i.i.for.body.i.i_crit_edge ], [ %nnode.055.i.i.ph, %for.body.i.i.preheader ]
  %hght.253.i.i = phi i32 [ %hght.4.i.i, %next_nnode.exit.i.i.for.body.i.i_crit_edge ], [ %hght.253.i.i.ph, %for.body.i.i.preheader ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1486, i32 noundef 0) #7
  %call.i.i.i = call i32 @__cond_resched() #7
  %73 = ptrtoint ptr %nnode.055.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nnode.055.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %74, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %iip.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.055.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %iip.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iip.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ubifs_nnode, ptr %74, i32 0, i32 6, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %lnum)
  %cmp.not.i.i = icmp eq i32 %78, %lnum
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %offs5.i.i = getelementptr %struct.ubifs_nnode, ptr %74, i32 0, i32 6, i32 %76, i32 1
  %79 = ptrtoint ptr %offs5.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offs5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub51146)
  %cmp6.not.i.i = icmp eq i32 %80, %sub51146
  br i1 %cmp6.not.i.i, label %lor.lhs.false.i.i.cleanup23.sink.split.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

lor.lhs.false.i.i.cleanup23.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23.sink.split.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %81 = ptrtoint ptr %lpt_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %lpt_lnum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %lnum)
  %cmp12.not.i.i = icmp eq i32 %82, %lnum
  br i1 %cmp12.not.i.i, label %lor.lhs.false13.i.i, label %if.else.i.i.dbg_is_node_dirty.exit.thread_crit_edge

if.else.i.i.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

lor.lhs.false13.i.i:                              ; preds = %if.else.i.i
  %83 = ptrtoint ptr %lpt_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lpt_offs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %sub51146)
  %cmp14.not.i.i = icmp eq i32 %84, %sub51146
  br i1 %cmp14.not.i.i, label %lor.lhs.false13.i.i.cleanup23.sink.split.i.i_crit_edge, label %lor.lhs.false13.i.i.dbg_is_node_dirty.exit.thread_crit_edge

lor.lhs.false13.i.i.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

lor.lhs.false13.i.i.cleanup23.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23.sink.split.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp.i40.i.i = icmp eq i32 %76, 3
  br i1 %cmp.i40.i.i, label %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %for.cond.preheader.i41.i.i

if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i.i

for.cond.preheader.i41.i.i:                       ; preds = %if.end.i.i.i
  %iip.072.i.i.i = add i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iip.072.i.i.i)
  %cmp673.i.i.i = icmp slt i32 %iip.072.i.i.i, 4
  br i1 %cmp673.i.i.i, label %for.cond.preheader.i41.i.i.for.body.i.i.i_crit_edge, label %for.cond.preheader.i41.i.i.if.end13.i.i.i_crit_edge

for.cond.preheader.i41.i.i.if.end13.i.i.i_crit_edge: ; preds = %for.cond.preheader.i41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i.i

for.cond.preheader.i41.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i41.i.i
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %iip.0.i.i.i = add i32 %iip.074.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %iip.0.i.i.i, 4
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.cond.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i41.i.i.for.body.i.i.i_crit_edge
  %iip.074.i.i.i = phi i32 [ %iip.0.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ %iip.072.i.i.i, %for.cond.preheader.i41.i.i.for.body.i.i.i_crit_edge ]
  %85 = getelementptr %struct.ubifs_nnode, ptr %74, i32 0, i32 6, i32 %iip.074.i.i.i, i32 2
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool7.not.i.i.i = icmp eq ptr %87, null
  br i1 %tobool7.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.if.end13.i.i.i_crit_edge

for.body.i.i.i.if.end13.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %for.body.i.i.i.if.end13.i.i.i_crit_edge, %for.cond.preheader.i41.i.i.if.end13.i.i.i_crit_edge
  %nnode.addr.166.i.i.i = phi ptr [ %nnode.055.i.i, %for.cond.preheader.i41.i.i.if.end13.i.i.i_crit_edge ], [ %87, %for.body.i.i.i.if.end13.i.i.i_crit_edge ]
  %h.076.i.i.i = add i32 %hght.253.i.i, 1
  %88 = ptrtoint ptr %lpt_hght.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lpt_hght.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %h.076.i.i.i, i32 %89)
  %cmp1677.i.i.i = icmp slt i32 %h.076.i.i.i, %89
  br i1 %cmp1677.i.i.i, label %for.cond18.preheader.i.preheader.i.i, label %if.end13.i.i.i.next_nnode.exit.i.i_crit_edge

if.end13.i.i.i.next_nnode.exit.i.i_crit_edge:     ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_nnode.exit.i.i

for.cond18.preheader.i.preheader.i.i:             ; preds = %if.end13.i.i.i
  %90 = add nsw i32 %89, -1
  br label %for.cond18.preheader.i.i.i

for.cond18.preheader.i.i.i:                       ; preds = %for.end30.i.i.i.for.cond18.preheader.i.i.i_crit_edge, %for.cond18.preheader.i.preheader.i.i
  %hght.3.i.i = phi i32 [ %h.079.i.i.i, %for.end30.i.i.i.for.cond18.preheader.i.i.i_crit_edge ], [ %hght.253.i.i, %for.cond18.preheader.i.preheader.i.i ]
  %h.079.i.i.i = phi i32 [ %h.0.i.i.i, %for.end30.i.i.i.for.cond18.preheader.i.i.i_crit_edge ], [ %h.076.i.i.i, %for.cond18.preheader.i.preheader.i.i ]
  %nnode.addr.278.i.i.i = phi ptr [ %.lcssa.i43.i.i, %for.end30.i.i.i.for.cond18.preheader.i.i.i_crit_edge ], [ %nnode.addr.166.i.i.i, %for.cond18.preheader.i.preheader.i.i ]
  %91 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i.i.i, i32 0, i32 6, i32 0, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %tobool23.not.i.i.i = icmp eq ptr %93, null
  br i1 %tobool23.not.i.i.i, label %for.cond18.i.i.i, label %for.cond18.preheader.i.i.i.for.end30.i.i.i_crit_edge

for.cond18.preheader.i.i.i.for.end30.i.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i.i

for.cond18.i.i.i:                                 ; preds = %for.cond18.preheader.i.i.i
  %94 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i.i.i, i32 0, i32 6, i32 1, i32 2
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %tobool23.not.1.i.i.i = icmp eq ptr %96, null
  br i1 %tobool23.not.1.i.i.i, label %for.cond18.1.i.i.i, label %for.cond18.i.i.i.for.end30.i.i.i_crit_edge

for.cond18.i.i.i.for.end30.i.i.i_crit_edge:       ; preds = %for.cond18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i.i

for.cond18.1.i.i.i:                               ; preds = %for.cond18.i.i.i
  %97 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i.i.i, i32 0, i32 6, i32 2, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %tobool23.not.2.i.i.i = icmp eq ptr %99, null
  br i1 %tobool23.not.2.i.i.i, label %for.cond18.2.i.i.i, label %for.cond18.1.i.i.i.for.end30.i.i.i_crit_edge

for.cond18.1.i.i.i.for.end30.i.i.i_crit_edge:     ; preds = %for.cond18.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i.i

for.cond18.2.i.i.i:                               ; preds = %for.cond18.1.i.i.i
  %100 = getelementptr %struct.ubifs_nnode, ptr %nnode.addr.278.i.i.i, i32 0, i32 6, i32 3, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %tobool23.not.3.i.i.i = icmp eq ptr %102, null
  br i1 %tobool23.not.3.i.i.i, label %for.cond18.2.i.i.i.next_nnode.exit.i.i_crit_edge, label %for.cond18.2.i.i.i.for.end30.i.i.i_crit_edge

for.cond18.2.i.i.i.for.end30.i.i.i_crit_edge:     ; preds = %for.cond18.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i.i

for.cond18.2.i.i.i.next_nnode.exit.i.i_crit_edge: ; preds = %for.cond18.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_nnode.exit.i.i

for.end30.i.i.i:                                  ; preds = %for.cond18.2.i.i.i.for.end30.i.i.i_crit_edge, %for.cond18.1.i.i.i.for.end30.i.i.i_crit_edge, %for.cond18.i.i.i.for.end30.i.i.i_crit_edge, %for.cond18.preheader.i.i.i.for.end30.i.i.i_crit_edge
  %.lcssa.i43.i.i = phi ptr [ %93, %for.cond18.preheader.i.i.i.for.end30.i.i.i_crit_edge ], [ %96, %for.cond18.i.i.i.for.end30.i.i.i_crit_edge ], [ %99, %for.cond18.1.i.i.i.for.end30.i.i.i_crit_edge ], [ %102, %for.cond18.2.i.i.i.for.end30.i.i.i_crit_edge ]
  %h.0.i.i.i = add i32 %h.079.i.i.i, 1
  %exitcond60.not.i.i = icmp eq i32 %h.0.i.i.i, %89
  br i1 %exitcond60.not.i.i, label %for.end30.i.i.i.next_nnode.exit.i.i_crit_edge, label %for.end30.i.i.i.for.cond18.preheader.i.i.i_crit_edge

for.end30.i.i.i.for.cond18.preheader.i.i.i_crit_edge: ; preds = %for.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond18.preheader.i.i.i

for.end30.i.i.i.next_nnode.exit.i.i_crit_edge:    ; preds = %for.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_nnode.exit.i.i

cleanup.sink.split.i.i.i:                         ; preds = %for.cond.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  %sub12.i.i.i = add i32 %hght.253.i.i, -1
  br label %next_nnode.exit.i.i

next_nnode.exit.i.i:                              ; preds = %cleanup.sink.split.i.i.i, %for.end30.i.i.i.next_nnode.exit.i.i_crit_edge, %for.cond18.2.i.i.i.next_nnode.exit.i.i_crit_edge, %if.end13.i.i.i.next_nnode.exit.i.i_crit_edge
  %hght.4.i.i = phi i32 [ %sub12.i.i.i, %cleanup.sink.split.i.i.i ], [ %hght.253.i.i, %if.end13.i.i.i.next_nnode.exit.i.i_crit_edge ], [ %90, %for.end30.i.i.i.next_nnode.exit.i.i_crit_edge ], [ %hght.3.i.i, %for.cond18.2.i.i.i.next_nnode.exit.i.i_crit_edge ]
  %retval.0.i44.i.i = phi ptr [ %74, %cleanup.sink.split.i.i.i ], [ %nnode.addr.166.i.i.i, %if.end13.i.i.i.next_nnode.exit.i.i_crit_edge ], [ %.lcssa.i43.i.i, %for.end30.i.i.i.next_nnode.exit.i.i_crit_edge ], [ %nnode.addr.278.i.i.i, %for.cond18.2.i.i.i.next_nnode.exit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i44.i.i, null
  br i1 %tobool.not.i.i, label %next_nnode.exit.i.i.dbg_is_node_dirty.exit.thread_crit_edge, label %next_nnode.exit.i.i.for.body.i.i_crit_edge

next_nnode.exit.i.i.for.body.i.i_crit_edge:       ; preds = %next_nnode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

next_nnode.exit.i.i.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %next_nnode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

cleanup23.sink.split.i.i:                         ; preds = %lor.lhs.false13.i.i.cleanup23.sink.split.i.i_crit_edge, %lor.lhs.false.i.i.cleanup23.sink.split.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.055.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %104, 1
  br label %dbg_is_node_dirty.exit

for.body.i17.i:                                   ; preds = %for.inc.i.i.for.body.i17.i_crit_edge, %get_lpt_node_len.exit.thread150.for.body.i17.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i17.i_crit_edge ], [ 0, %get_lpt_node_len.exit.thread150.for.body.i17.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1520, i32 noundef 0) #7
  %call.i.i16.i = call i32 @__cond_resched() #7
  %call1.i.i = call ptr @ubifs_pnode_lookup(ptr noundef %c, i32 noundef %i.029.i.i) #7
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i18.i, label %if.end.i.i

if.then.i18.i:                                    ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %call1.i.i to i32
  br label %dbg_is_node_dirty.exit

if.end.i.i:                                       ; preds = %for.body.i17.i
  %106 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call1.i.i, align 4
  %iip.i19.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call1.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %iip.i19.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %iip.i19.i, align 4
  %arrayidx.i20.i = getelementptr %struct.ubifs_nnode, ptr %107, i32 0, i32 6, i32 %109
  %110 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %lnum)
  %cmp5.not.i.i = icmp eq i32 %111, %lnum
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i21.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

lor.lhs.false.i21.i:                              ; preds = %if.end.i.i
  %offs6.i.i = getelementptr %struct.ubifs_nnode, ptr %107, i32 0, i32 6, i32 %109, i32 1
  %112 = ptrtoint ptr %offs6.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offs6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %sub51152)
  %cmp7.not.i.i = icmp eq i32 %113, %sub51152
  br i1 %cmp7.not.i.i, label %if.end9.i.i, label %lor.lhs.false.i21.i.for.inc.i.i_crit_edge

lor.lhs.false.i21.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end9.i.i:                                      ; preds = %lor.lhs.false.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i22.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call1.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags.i22.i, align 4
  %and1.i.i23.i = and i32 %115, 1
  br label %dbg_is_node_dirty.exit

for.inc.i.i:                                      ; preds = %lor.lhs.false.i21.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i24.i = icmp eq i32 %inc.i.i, %div.i.i
  br i1 %exitcond.not.i24.i, label %for.inc.i.i.dbg_is_node_dirty.exit.thread_crit_edge, label %for.inc.i.i.for.body.i17.i_crit_edge

for.inc.i.i.for.body.i17.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i17.i

for.inc.i.i.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

lor.lhs.false.i27.i:                              ; preds = %get_lpt_node_len.exit.thread155
  %116 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %leb_size, align 8
  %sub51157 = sub i32 %117, %len.0
  %118 = ptrtoint ptr %ltab_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ltab_offs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %sub51157)
  %cmp1.not.i.i = icmp eq i32 %119, %sub51157
  br i1 %cmp1.not.i.i, label %if.end.i28.i, label %lor.lhs.false.i27.i.dbg_is_node_dirty.exit.thread_crit_edge

lor.lhs.false.i27.i.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

if.end.i28.i:                                     ; preds = %lor.lhs.false.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %lpt_drty_flgs.i32.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %lpt_drty_flgs.i32.i, align 4
  %and.i.i = and i32 %121, 1
  br label %dbg_is_node_dirty.exit

lor.lhs.false.i31.i:                              ; preds = %get_lpt_node_len.exit.thread160
  %122 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %leb_size, align 8
  %sub51162 = sub i32 %123, %len.0
  %124 = ptrtoint ptr %lsave_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lsave_offs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %sub51162)
  %cmp1.not.i30.i = icmp eq i32 %125, %sub51162
  br i1 %cmp1.not.i30.i, label %if.end.i34.i, label %lor.lhs.false.i31.i.dbg_is_node_dirty.exit.thread_crit_edge

lor.lhs.false.i31.i.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

if.end.i34.i:                                     ; preds = %lor.lhs.false.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %lpt_drty_flgs.i32.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lpt_drty_flgs.i32.i, align 4
  %and.i33.i = lshr i32 %127, 1
  %and.lobit.i.i = and i32 %and.i33.i, 1
  br label %dbg_is_node_dirty.exit

dbg_is_node_dirty.exit:                           ; preds = %if.end.i34.i, %if.end.i28.i, %if.end9.i.i, %if.then.i18.i, %cleanup23.sink.split.i.i
  %retval.0.i127148 = phi i32 [ %39, %cleanup23.sink.split.i.i ], [ %45, %if.then.i18.i ], [ %45, %if.end9.i.i ], [ %51, %if.end.i28.i ], [ %55, %if.end.i34.i ]
  %retval.0.i131 = phi i32 [ %and1.i.i.i, %cleanup23.sink.split.i.i ], [ %105, %if.then.i18.i ], [ %and1.i.i23.i, %if.end9.i.i ], [ %and.i.i, %if.end.i28.i ], [ %and.lobit.i.i, %if.end.i34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i131)
  %cmp53 = icmp eq i32 %retval.0.i131, 1
  br i1 %cmp53, label %dbg_is_node_dirty.exit.dbg_is_node_dirty.exit.thread_crit_edge, label %dbg_is_node_dirty.exit.while.cond.backedge_crit_edge

dbg_is_node_dirty.exit.while.cond.backedge_crit_edge: ; preds = %dbg_is_node_dirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

dbg_is_node_dirty.exit.dbg_is_node_dirty.exit.thread_crit_edge: ; preds = %dbg_is_node_dirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dbg_is_node_dirty.exit.thread

dbg_is_node_dirty.exit.thread:                    ; preds = %dbg_is_node_dirty.exit.dbg_is_node_dirty.exit.thread_crit_edge, %lor.lhs.false.i31.i.dbg_is_node_dirty.exit.thread_crit_edge, %lor.lhs.false.i27.i.dbg_is_node_dirty.exit.thread_crit_edge, %for.inc.i.i.dbg_is_node_dirty.exit.thread_crit_edge, %next_nnode.exit.i.i.dbg_is_node_dirty.exit.thread_crit_edge, %lor.lhs.false13.i.i.dbg_is_node_dirty.exit.thread_crit_edge, %if.else.i.i.dbg_is_node_dirty.exit.thread_crit_edge, %get_lpt_node_len.exit.thread160.dbg_is_node_dirty.exit.thread_crit_edge, %get_lpt_node_len.exit.thread155.dbg_is_node_dirty.exit.thread_crit_edge, %get_lpt_node_len.exit.thread150.dbg_is_node_dirty.exit.thread_crit_edge, %get_lpt_node_len.exit.thread.dbg_is_node_dirty.exit.thread_crit_edge, %if.end47.dbg_is_node_dirty.exit.thread_crit_edge
  %retval.0.i127148170 = phi i32 [ %retval.0.i127148, %dbg_is_node_dirty.exit.dbg_is_node_dirty.exit.thread_crit_edge ], [ %55, %get_lpt_node_len.exit.thread160.dbg_is_node_dirty.exit.thread_crit_edge ], [ %55, %lor.lhs.false.i31.i.dbg_is_node_dirty.exit.thread_crit_edge ], [ %51, %get_lpt_node_len.exit.thread155.dbg_is_node_dirty.exit.thread_crit_edge ], [ %51, %lor.lhs.false.i27.i.dbg_is_node_dirty.exit.thread_crit_edge ], [ %45, %get_lpt_node_len.exit.thread150.dbg_is_node_dirty.exit.thread_crit_edge ], [ %39, %if.else.i.i.dbg_is_node_dirty.exit.thread_crit_edge ], [ %39, %lor.lhs.false13.i.i.dbg_is_node_dirty.exit.thread_crit_edge ], [ %39, %get_lpt_node_len.exit.thread.dbg_is_node_dirty.exit.thread_crit_edge ], [ 0, %if.end47.dbg_is_node_dirty.exit.thread_crit_edge ], [ %39, %next_nnode.exit.i.i.dbg_is_node_dirty.exit.thread_crit_edge ], [ %45, %for.inc.i.i.dbg_is_node_dirty.exit.thread_crit_edge ]
  %add55171 = add i32 %retval.0.i127148170, %dirty.0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %dbg_is_node_dirty.exit.thread, %dbg_is_node_dirty.exit.while.cond.backedge_crit_edge, %cleanup
  %retval.0.i127148169.pn = phi i32 [ %sub5.i, %cleanup ], [ %retval.0.i127148170, %dbg_is_node_dirty.exit.thread ], [ %retval.0.i127148, %dbg_is_node_dirty.exit.while.cond.backedge_crit_edge ]
  %dirty.0.be = phi i32 [ %add, %cleanup ], [ %add55171, %dbg_is_node_dirty.exit.thread ], [ %dirty.0, %dbg_is_node_dirty.exit.while.cond.backedge_crit_edge ]
  %p.0.be = getelementptr i8, ptr %p.0, i32 %retval.0.i127148169.pn
  %len.0.be = sub i32 %len.0, %retval.0.i127148169.pn
  br label %while.cond

out:                                              ; preds = %if.then41, %if.end36.out_crit_edge, %do.end.out_crit_edge
  %err.5 = phi i32 [ %call14, %do.end.out_crit_edge ], [ %err.2, %if.end36.out_crit_edge ], [ -22, %if.then41 ]
  call void @vfree(ptr noundef nonnull %call2) #7
  br label %cleanup59

cleanup59:                                        ; preds = %out, %if.then4, %dbg_is_chk_lprops.exit.cleanup59_crit_edge
  %retval.0 = phi i32 [ %err.5, %out ], [ 0, %if.then4 ], [ 0, %dbg_is_chk_lprops.exit.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lpt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lpt_lebs(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %addr.i.i = alloca ptr, align 4
  %pos.i.i = alloca i32, align 4
  %nnode.i = alloca %struct.ubifs_nnode, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %5) #10
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %6 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16 = icmp sgt i32 %7, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

for.body.lr.ph:                                   ; preds = %entry
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %pcnt_bits.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %lsave_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %nnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %big_lpt47.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %pnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %min_io_size.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %arrayidx.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 0
  %offs81.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 0, i32 1
  %arrayidx.1.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 1
  %offs81.1.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 1, i32 1
  %arrayidx.2.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 2
  %offs81.2.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 2, i32 1
  %arrayidx.3.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 3
  %offs81.3.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.i, i32 0, i32 6, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %dump_lpt_leb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dump_lpt_leb.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lpt_first, align 8
  %add = add i32 %9, %i.017
  %10 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_size.i, align 8
  %12 = call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid.i, align 8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %17, i32 noundef %add) #10
  %18 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %leb_size.i, align 8
  %call3.i = call noalias ptr @__vmalloc(i32 noundef %19, i32 noundef 3136) #11
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.54) #7
  br label %dump_lpt_leb.exit

if.end.i:                                         ; preds = %for.body
  %20 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_size.i, align 8
  %call5.i = call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %add, ptr noundef nonnull %call3.i, i32 noundef 0, i32 noundef %21, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.while.cond.i_crit_edge, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.backedge.i, %if.end.i.while.cond.i_crit_edge
  %p.0.i = phi ptr [ %p.0.be.i, %while.cond.backedge.i ], [ %call3.i, %if.end.i.while.cond.i_crit_edge ]
  %len.0.i = phi i32 [ %len.0.be.i, %while.cond.backedge.i ], [ %11, %if.end.i.while.cond.i_crit_edge ]
  %22 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %leb_size.i, align 8
  %sub.i = sub i32 %23, %len.0.i
  %call10.i = call fastcc i32 @is_a_node(ptr noundef %c, ptr noundef %p.0.i, i32 noundef %len.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end31.i

if.then12.i:                                      ; preds = %while.cond.i
  %24 = ptrtoint ptr %min_io_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_io_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 1
  br i1 %cmp.i.i, label %if.then12.i.if.end22.i_crit_edge, label %get_pad_len.exit.i

if.then12.i.if.end22.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

get_pad_len.exit.i:                               ; preds = %if.then12.i
  %26 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %leb_size.i, align 8
  %sub.i.i = sub i32 %27, %len.0.i
  %sub2.i.i = add i32 %25, -1
  %add.i.i = add i32 %sub2.i.i, %sub.i.i
  %neg.i.i = sub i32 0, %25
  %and.i185.i = and i32 %add.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i185.i, i32 %sub.i.i)
  %tobool14.not.i = icmp eq i32 %and.i185.i, %sub.i.i
  br i1 %tobool14.not.i, label %get_pad_len.exit.i.if.end22.i_crit_edge, label %cleanup.i

get_pad_len.exit.i.if.end22.i_crit_edge:          ; preds = %get_pad_len.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %get_pad_len.exit.i.if.end22.i_crit_edge, %if.then12.i.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool23.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool23.not.i, label %if.end22.i.do.end114.i_crit_edge, label %do.end27.i

if.end22.i.do.end114.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i

do.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %add, i32 noundef %sub.i, i32 noundef %len.0.i) #10
  br label %do.end114.i

cleanup.i:                                        ; preds = %get_pad_len.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i.i = sub i32 %and.i185.i, %sub.i.i
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %add, i32 noundef %sub.i, i32 noundef %sub5.i.i) #10
  br label %while.cond.backedge.i

if.end31.i:                                       ; preds = %while.cond.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %p.0.i, i32 2
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i.i, ptr %addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i.i) #7
  %29 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %pos.i.i, align 4
  %call.i.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %pos.i.i, i32 noundef 4) #7
  %30 = ptrtoint ptr %pcnt_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pcnt_bits.i.i, align 8
  %call1.i.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %pos.i.i, i32 noundef %31) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #7
  %32 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call.i.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb46.i
    i32 2, label %sw.bb98.i
    i32 3, label %sw.bb104.i
  ]

sw.bb.i:                                          ; preds = %if.end31.i
  %33 = ptrtoint ptr %pnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pnode_sz.i, align 4
  %35 = ptrtoint ptr %big_lpt47.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i = load i16, ptr %big_lpt47.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool33.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool33.not.i, label %do.end42.i, label %do.end37.i

do.end37.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %add, i32 noundef %sub.i, i32 noundef %call1.i.i) #10
  br label %while.cond.backedge.i

do.end42.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %add, i32 noundef %sub.i) #10
  br label %while.cond.backedge.i

sw.bb46.i:                                        ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nnode.i) #7
  %36 = call ptr @memset(ptr %nnode.i, i32 255, i32 72)
  %37 = ptrtoint ptr %nnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nnode_sz.i, align 8
  %39 = ptrtoint ptr %big_lpt47.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load48.i = load i16, ptr %big_lpt47.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load48.i)
  %tobool51.not.i = icmp sgt i16 %bf.load48.i, -1
  br i1 %tobool51.not.i, label %do.end61.i, label %do.end55.i

do.end55.i:                                       ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #9
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %add, i32 noundef %sub.i, i32 noundef %call1.i.i) #10
  br label %if.end64.i

do.end61.i:                                       ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #9
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %add, i32 noundef %sub.i) #10
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end61.i, %do.end55.i
  %call65.i = call i32 @ubifs_unpack_nnode(ptr noundef %c, ptr noundef %p.0.i, ptr noundef nonnull %nnode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %for.inc.3.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %call65.i) #10
  br label %cleanup96.i

for.inc.3.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %42 = ptrtoint ptr %offs81.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offs81.i, align 4
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %41, i32 noundef %43) #10
  %call89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #10
  %44 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i, align 4
  %46 = ptrtoint ptr %offs81.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offs81.1.i, align 4
  %call82.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %45, i32 noundef %47) #10
  %call89.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #10
  %48 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.2.i, align 4
  %50 = ptrtoint ptr %offs81.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offs81.2.i, align 4
  %call82.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %49, i32 noundef %51) #10
  %call89.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #10
  %52 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.3.i, align 4
  %54 = ptrtoint ptr %offs81.3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offs81.3.i, align 4
  %call82.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %53, i32 noundef %55) #10
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #10
  br label %cleanup96.i

cleanup96.i:                                      ; preds = %for.inc.3.i, %do.end70.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nnode.i) #7
  br label %while.cond.backedge.i

sw.bb98.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ltab_sz.i, align 8
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %add, i32 noundef %sub.i) #10
  br label %while.cond.backedge.i

sw.bb104.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %lsave_sz.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lsave_sz.i, align 4
  %call109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %add, i32 noundef %sub.i) #10
  br label %while.cond.backedge.i

sw.default.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.91, i32 noundef %call.i.i) #7
  br label %out.i

while.cond.backedge.i:                            ; preds = %sw.bb104.i, %sw.bb98.i, %cleanup96.i, %do.end42.i, %do.end37.i, %cleanup.i
  %node_len.0.pn.i = phi i32 [ %sub5.i.i, %cleanup.i ], [ %59, %sw.bb104.i ], [ %57, %sw.bb98.i ], [ %38, %cleanup96.i ], [ %34, %do.end37.i ], [ %34, %do.end42.i ]
  %len.0.be.i = sub i32 %len.0.i, %node_len.0.pn.i
  %p.0.be.i = getelementptr i8, ptr %p.0.i, i32 %node_len.0.pn.i
  br label %while.cond.i

do.end114.i:                                      ; preds = %do.end27.i, %if.end22.i.do.end114.i_crit_edge
  %60 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i, align 8
  %pid118.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 68
  %62 = ptrtoint ptr %pid118.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid118.i, align 8
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %63, i32 noundef %add) #10
  br label %out.i

out.i:                                            ; preds = %do.end114.i, %sw.default.i, %if.end.i.out.i_crit_edge
  call void @vfree(ptr noundef nonnull %call3.i) #7
  br label %dump_lpt_leb.exit

dump_lpt_leb.exit:                                ; preds = %out.i, %if.then.i
  %inc = add nuw nsw i32 %i.017, 1
  %64 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lpt_lebs, align 4
  %cmp = icmp slt i32 %inc, %65
  br i1 %cmp, label %dump_lpt_leb.exit.for.body_crit_edge, label %dump_lpt_leb.exit.do.end4_crit_edge

dump_lpt_leb.exit.do.end4_crit_edge:              ; preds = %dump_lpt_leb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

dump_lpt_leb.exit.for.body_crit_edge:             ; preds = %dump_lpt_leb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end4:                                          ; preds = %dump_lpt_leb.exit.do.end4_crit_edge, %entry.do.end4_crit_edge
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 8
  %pid8 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 68
  %68 = ptrtoint ptr %pid8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid8, align 8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %69) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_chk_lpt_sz(ptr noundef %c, i32 noundef %action, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %2 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %dbg_is_chk_lprops.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_lprops.exit:                           ; preds = %entry
  %chk_lprops.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %chk_lprops.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %chk_lprops.i, align 4
  %4 = and i8 %bf.load1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %dbg_is_chk_lprops.exit.cleanup_crit_edge, label %dbg_is_chk_lprops.exit.if.end_crit_edge

dbg_is_chk_lprops.exit.if.end_crit_edge:          ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_lprops.exit.cleanup_crit_edge:         ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dbg_is_chk_lprops.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %action, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb13
    i32 3, label %sw.bb22
    i32 4, label %sw.bb94
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %chk_lpt_sz1 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 8
  %dirty_pn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %6 = call ptr @memset(ptr %chk_lpt_sz1, i32 0, i32 28)
  %7 = ptrtoint ptr %dirty_pn_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dirty_pn_cnt, align 4
  %pnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %9 = ptrtoint ptr %pnode_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pnode_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp sgt i32 %8, %10
  br i1 %cmp, label %if.then2, label %sw.bb.if.end5_crit_edge

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.11, i32 noundef %8, i32 noundef %10) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %sw.bb.if.end5_crit_edge
  %err.0 = phi i32 [ -22, %if.then2 ], [ 0, %sw.bb.if.end5_crit_edge ]
  %dirty_nn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %11 = ptrtoint ptr %dirty_nn_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dirty_nn_cnt, align 8
  %nnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 141
  %13 = ptrtoint ptr %nnode_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nnode_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp6 = icmp sgt i32 %12, %14
  br i1 %cmp6, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef %14) #7
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = sext i32 %len to i64
  %chk_lpt_sz12 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %chk_lpt_sz12 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %chk_lpt_sz12, align 8
  %add = add i64 %16, %conv
  store i64 %add, ptr %chk_lpt_sz12, align 8
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = sext i32 %len to i64
  %chk_lpt_sz15 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %chk_lpt_sz15 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %chk_lpt_sz15, align 8
  %add16 = add i64 %18, %conv14
  store i64 %add16, ptr %chk_lpt_sz15, align 8
  %chk_lpt_wastage18 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %chk_lpt_wastage18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %chk_lpt_wastage18, align 8
  %add19 = add i64 %20, %conv14
  store i64 %add19, ptr %chk_lpt_wastage18, align 8
  %chk_lpt_lebs20 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %chk_lpt_lebs20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chk_lpt_lebs20, align 8
  %add21 = add i32 %22, 1
  store i32 %add21, ptr %chk_lpt_lebs20, align 8
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %23 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %leb_size, align 8
  %conv23 = sext i32 %24 to i64
  %chk_lpt_lebs24 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %chk_lpt_lebs24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chk_lpt_lebs24, align 8
  %conv25 = sext i32 %26 to i64
  %mul = mul nsw i64 %conv25, %conv23
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %27 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nhead_offs, align 8
  %sub = sub i32 %len, %28
  %conv26 = sext i32 %sub to i64
  %add27 = add nsw i64 %mul, %conv26
  %chk_lpt_sz28 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %chk_lpt_sz28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %chk_lpt_sz28, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %add27)
  %cmp29.not = icmp eq i64 %30, %add27
  br i1 %cmp29.not, label %sw.bb22.if.end33_crit_edge, label %if.then31

sw.bb22.if.end33_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then31:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.13, i64 noundef %30, i64 noundef %add27) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %sw.bb22.if.end33_crit_edge
  %err.2 = phi i32 [ -22, %if.then31 ], [ 0, %sw.bb22.if.end33_crit_edge ]
  %31 = ptrtoint ptr %chk_lpt_sz28 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %chk_lpt_sz28, align 8
  %lpt_sz35 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %33 = ptrtoint ptr %lpt_sz35 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %lpt_sz35, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp36 = icmp sgt i64 %32, %34
  br i1 %cmp36, label %if.then38, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.14, i64 noundef %32, i64 noundef %34) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end33.if.end41_crit_edge
  %err.3 = phi i32 [ -22, %if.then38 ], [ %err.2, %if.end33.if.end41_crit_edge ]
  %chk_lpt_sz242 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %chk_lpt_sz242 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %chk_lpt_sz242, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool43.not = icmp eq i64 %36, 0
  br i1 %tobool43.not, label %if.end41.if.end59_crit_edge, label %land.lhs.true

if.end41.if.end59_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end41
  %37 = ptrtoint ptr %chk_lpt_sz28 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %chk_lpt_sz28, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %36)
  %cmp46.not = icmp eq i64 %38, %36
  br i1 %cmp46.not, label %land.lhs.true.land.lhs.true54_crit_edge, label %if.end51

land.lhs.true.land.lhs.true54_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true54

if.end51:                                         ; preds = %land.lhs.true
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.15, i64 noundef %38, i64 noundef %36) #7
  %39 = ptrtoint ptr %chk_lpt_sz242 to i32
  call void @__asan_load8_noabort(i32 %39)
  %.pr = load i64, ptr %chk_lpt_sz242, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %tobool53.not = icmp eq i64 %.pr, 0
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %if.end51.land.lhs.true54_crit_edge

if.end51.land.lhs.true54_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true54

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true54:                                  ; preds = %if.end51.land.lhs.true54_crit_edge, %land.lhs.true.land.lhs.true54_crit_edge
  %err.4197 = phi i32 [ -22, %if.end51.land.lhs.true54_crit_edge ], [ %err.3, %land.lhs.true.land.lhs.true54_crit_edge ]
  %new_nhead_offs = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 12
  %40 = ptrtoint ptr %new_nhead_offs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %new_nhead_offs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %len)
  %cmp55.not = icmp eq i32 %41, %len
  br i1 %cmp55.not, label %land.lhs.true54.if.end59_crit_edge, label %if.then57

land.lhs.true54.if.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then57:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.16, i32 noundef %41, i32 noundef %len) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true54.if.end59_crit_edge, %if.end51.if.end59_crit_edge, %if.end41.if.end59_crit_edge
  %err.5 = phi i32 [ -22, %if.then57 ], [ %err.4197, %land.lhs.true54.if.end59_crit_edge ], [ -22, %if.end51.if.end59_crit_edge ], [ %err.3, %if.end41.if.end59_crit_edge ]
  %pnode_cnt60 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %42 = ptrtoint ptr %pnode_cnt60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pnode_cnt60, align 8
  %conv61 = sext i32 %43 to i64
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %44 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pnode_sz, align 4
  %conv62 = sext i32 %45 to i64
  %mul63 = mul nsw i64 %conv62, %conv61
  %nnode_cnt64 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 141
  %46 = ptrtoint ptr %nnode_cnt64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nnode_cnt64, align 4
  %conv65 = sext i32 %47 to i64
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %48 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nnode_sz, align 8
  %conv66 = sext i32 %49 to i64
  %mul67 = mul nsw i64 %conv66, %conv65
  %add68 = add i64 %mul67, %mul63
  %ltab_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %50 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ltab_sz, align 8
  %conv69 = sext i32 %51 to i64
  %add70 = add i64 %add68, %conv69
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %52 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool71.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool71.not, label %if.end59.if.end75_crit_edge, label %if.then72

if.end59.if.end75_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then72:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %53 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lsave_sz, align 4
  %conv73 = sext i32 %54 to i64
  %add74 = add i64 %add70, %conv73
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end59.if.end75_crit_edge
  %lpt_sz.0 = phi i64 [ %add74, %if.then72 ], [ %add70, %if.end59.if.end75_crit_edge ]
  %55 = ptrtoint ptr %chk_lpt_sz28 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %chk_lpt_sz28, align 8
  %chk_lpt_wastage77 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %chk_lpt_wastage77 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %chk_lpt_wastage77, align 8
  %sub78 = sub i64 %56, %58
  call void @__sanitizer_cov_trace_cmp8(i64 %sub78, i64 %lpt_sz.0)
  %cmp79 = icmp sgt i64 %sub78, %lpt_sz.0
  br i1 %cmp79, label %if.end84.thread, label %if.end84

if.end84.thread:                                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.17, i64 noundef %56, i64 noundef %58, i64 noundef %lpt_sz.0) #7
  br label %if.then86

if.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool85.not = icmp eq i32 %err.5, 0
  br i1 %tobool85.not, label %if.end84.if.end87_crit_edge, label %if.end84.if.then86_crit_edge

if.end84.if.then86_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86

if.end84.if.end87_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then86:                                        ; preds = %if.end84.if.then86_crit_edge, %if.end84.thread
  %err.6200 = phi i32 [ -22, %if.end84.thread ], [ %err.5, %if.end84.if.then86_crit_edge ]
  tail call void @ubifs_dump_lpt_info(ptr noundef %c) #7
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %c)
  tail call void @dump_stack() #10
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end84.if.end87_crit_edge
  %err.6201 = phi i32 [ %err.6200, %if.then86 ], [ 0, %if.end84.if.end87_crit_edge ]
  %59 = ptrtoint ptr %chk_lpt_sz28 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %chk_lpt_sz28, align 8
  %61 = ptrtoint ptr %chk_lpt_sz242 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %chk_lpt_sz242, align 8
  store i64 0, ptr %chk_lpt_sz28, align 8
  %62 = ptrtoint ptr %chk_lpt_wastage77 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %chk_lpt_wastage77, align 8
  %63 = ptrtoint ptr %chk_lpt_lebs24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %chk_lpt_lebs24, align 8
  %new_nhead_offs93 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 12
  %64 = ptrtoint ptr %new_nhead_offs93 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %len, ptr %new_nhead_offs93, align 4
  br label %cleanup

sw.bb94:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv95 = sext i32 %len to i64
  %chk_lpt_sz96 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 8
  %65 = ptrtoint ptr %chk_lpt_sz96 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %chk_lpt_sz96, align 8
  %add97 = add i64 %66, %conv95
  store i64 %add97, ptr %chk_lpt_sz96, align 8
  %chk_lpt_wastage99 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 10
  %67 = ptrtoint ptr %chk_lpt_wastage99 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %chk_lpt_wastage99, align 8
  %add100 = add i64 %68, %conv95
  store i64 %add100, ptr %chk_lpt_wastage99, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb94, %if.end87, %sw.bb13, %sw.bb11, %if.then7, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dbg_is_chk_lprops.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb94 ], [ %err.6201, %if.end87 ], [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ 0, %dbg_is_chk_lprops.exit.cleanup_crit_edge ], [ -22, %if.then7 ], [ %err.0, %if.end5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpt_gc_lnum(ptr noundef %c, i32 noundef %lnum) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca ptr, align 4
  %pos.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %0 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_size, align 8
  %lpt_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 155
  %2 = ptrtoint ptr %lpt_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lpt_buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_gc_lnum.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_gc_lnum, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_gc_lnum.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %lnum) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_size, align 8
  %call5 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef %3, i32 noundef 0, i32 noundef %11, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.cond.preheader, label %do.end.cleanup41_crit_edge

do.end.cleanup41_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

while.cond.preheader:                             ; preds = %do.end
  %pcnt_bits.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %lsave_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %pnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %nnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  %lsave_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %lsave_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %lpt_drty_flgs.i31.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 149
  %ltab_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %ltab_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %nroot.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %lpt_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %lpt_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %dirty_nn_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %len.0 = phi i32 [ %1, %while.cond.preheader ], [ %len.0.be, %while.cond.backedge ]
  %buf.0 = phi ptr [ %3, %while.cond.preheader ], [ %buf.0.be, %while.cond.backedge ]
  %call9 = call fastcc i32 @is_a_node(ptr noundef %c, ptr noundef %buf.0, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %while.cond
  %12 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_io_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.then11.cleanup41_crit_edge, label %get_pad_len.exit

if.then11.cleanup41_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

get_pad_len.exit:                                 ; preds = %if.then11
  %14 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size, align 8
  %sub.i = sub i32 %15, %len.0
  %sub2.i = add i32 %13, -1
  %add.i = add i32 %sub2.i, %sub.i
  %neg.i = sub i32 0, %13
  %and.i79 = and i32 %add.i, %neg.i
  %sub5.i = sub i32 %and.i79, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i79, i32 %sub.i)
  %tobool13.not = icmp eq i32 %and.i79, %sub.i
  br i1 %tobool13.not, label %get_pad_len.exit.cleanup41_crit_edge, label %get_pad_len.exit.while.cond.backedge_crit_edge

get_pad_len.exit.while.cond.backedge_crit_edge:   ; preds = %get_pad_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

get_pad_len.exit.cleanup41_crit_edge:             ; preds = %get_pad_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.end16:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #7
  %add.ptr.i = getelementptr i8, ptr %buf.0, i32 2
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #7
  %17 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pos.i, align 4
  %call.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef 4) #7
  %18 = ptrtoint ptr %pcnt_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcnt_bits.i, align 8
  %call1.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %20 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call.i, label %get_lpt_node_len.exit.thread [
    i32 1, label %if.end16.get_lpt_node_len.exit_crit_edge
    i32 0, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

if.end16.get_lpt_node_len.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_lpt_node_len.exit

get_lpt_node_len.exit.thread:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %leb_size, align 8
  %sub2092 = sub i32 %22, %len.0
  br label %if.then30

sw.bb1.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_lpt_node_len.exit

sw.bb2.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_lpt_node_len.exit

sw.bb3.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_lpt_node_len.exit

get_lpt_node_len.exit:                            ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end16.get_lpt_node_len.exit_crit_edge
  %retval.0.i81.in = phi ptr [ %lsave_sz.i, %sw.bb3.i ], [ %ltab_sz.i, %sw.bb2.i ], [ %pnode_sz.i, %sw.bb1.i ], [ %nnode_sz.i, %if.end16.get_lpt_node_len.exit_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i81.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.0.i81 = load i32, ptr %retval.0.i81.in, align 4
  %24 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %leb_size, align 8
  %sub20 = sub i32 %25, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i81)
  %cmp.not = icmp eq i32 %retval.0.i81, 0
  br i1 %cmp.not, label %get_lpt_node_len.exit.if.then30_crit_edge, label %get_lpt_node_len.exit.do.end33_crit_edge, !prof !182

get_lpt_node_len.exit.do.end33_crit_edge:         ; preds = %get_lpt_node_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

get_lpt_node_len.exit.if.then30_crit_edge:        ; preds = %get_lpt_node_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then30:                                        ; preds = %get_lpt_node_len.exit.if.then30_crit_edge, %get_lpt_node_len.exit.thread
  %sub2097 = phi i32 [ %sub2092, %get_lpt_node_len.exit.thread ], [ %sub20, %get_lpt_node_len.exit.if.then30_crit_edge ]
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 1131) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %get_lpt_node_len.exit.do.end33_crit_edge
  %sub2096 = phi i32 [ %sub2097, %if.then30 ], [ %sub20, %get_lpt_node_len.exit.do.end33_crit_edge ]
  %retval.0.i8194 = phi i32 [ 0, %if.then30 ], [ %retval.0.i81, %get_lpt_node_len.exit.do.end33_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #7
  %26 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call.i, label %do.end33.cleanup41.sink.split_crit_edge [
    i32 1, label %sw.bb.i82
    i32 0, label %sw.bb1.i83
    i32 2, label %sw.bb3.i84
    i32 3, label %sw.bb5.i
  ]

do.end33.cleanup41.sink.split_crit_edge:          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41.sink.split

sw.bb.i82:                                        ; preds = %do.end33
  %27 = ptrtoint ptr %nroot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nroot.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %sw.bb.i82.if.end4.i.i.i_crit_edge

sw.bb.i82.if.end4.i.i.i_crit_edge:                ; preds = %sw.bb.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i82
  %call.i.i.i = call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i.i.if.end4.i.i.i_crit_edge, label %if.then2.i.i.i

if.then.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = inttoptr i32 %call.i.i.i to ptr
  br label %nnode_lookup.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.then.i.i.i.if.end4.i.i.i_crit_edge, %sw.bb.i82.if.end4.i.i.i_crit_edge
  %30 = ptrtoint ptr %nroot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nroot.i.i.i, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end8.i.i.i.while.cond.i.i.i_crit_edge, %if.end4.i.i.i
  %i.addr.0.i.i.i = phi i32 [ %call1.i, %if.end4.i.i.i ], [ %shr.i.i.i, %if.end8.i.i.i.while.cond.i.i.i_crit_edge ]
  %nnode.0.i.i.i = phi ptr [ %31, %if.end4.i.i.i ], [ %call9.i.i.i, %if.end8.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.addr.0.i.i.i)
  %tobool6.not.i.i.i = icmp ult i32 %i.addr.0.i.i.i, 4
  br i1 %tobool6.not.i.i.i, label %while.cond.i.i.i.nnode_lookup.exit.i.i_crit_edge, label %if.end8.i.i.i

while.cond.i.i.i.nnode_lookup.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nnode_lookup.exit.i.i

if.end8.i.i.i:                                    ; preds = %while.cond.i.i.i
  %shr.i.i.i = ashr i32 %i.addr.0.i.i.i, 2
  %and.i.i.i = and i32 %i.addr.0.i.i.i, 3
  %call9.i.i.i = call ptr @ubifs_get_nnode(ptr noundef %c, ptr noundef %nnode.0.i.i.i, i32 noundef %and.i.i.i) #7
  %cmp.i.i.i.i = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end8.i.i.i.nnode_lookup.exit.i.i_crit_edge, label %if.end8.i.i.i.while.cond.i.i.i_crit_edge

if.end8.i.i.i.while.cond.i.i.i_crit_edge:         ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

if.end8.i.i.i.nnode_lookup.exit.i.i_crit_edge:    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nnode_lookup.exit.i.i

nnode_lookup.exit.i.i:                            ; preds = %if.end8.i.i.i.nnode_lookup.exit.i.i_crit_edge, %while.cond.i.i.i.nnode_lookup.exit.i.i_crit_edge, %if.then2.i.i.i
  %retval.0.i.i.i = phi ptr [ %29, %if.then2.i.i.i ], [ %call9.i.i.i, %if.end8.i.i.i.nnode_lookup.exit.i.i_crit_edge ], [ %nnode.0.i.i.i, %while.cond.i.i.i.nnode_lookup.exit.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %nnode_lookup.exit.i.i.make_node_dirty.exit_crit_edge, label %if.end.i.i

nnode_lookup.exit.i.i.make_node_dirty.exit_crit_edge: ; preds = %nnode_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit

if.end.i.i:                                       ; preds = %nnode_lookup.exit.i.i
  %32 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %retval.0.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %iip.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %retval.0.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %iip.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iip.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ubifs_nnode, ptr %33, i32 0, i32 6, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %lnum)
  %cmp.not.i.i = icmp eq i32 %37, %lnum
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then3.i.i.make_node_dirty.exit.thread_crit_edge

if.then3.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.then3.i.i
  %offs6.i.i = getelementptr %struct.ubifs_nnode, ptr %33, i32 0, i32 6, i32 %35, i32 1
  %38 = ptrtoint ptr %offs6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offs6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub2096)
  %cmp7.not.i.i = icmp eq i32 %39, %sub2096
  br i1 %cmp7.not.i.i, label %lor.lhs.false.i.i.if.end15.i.i_crit_edge, label %lor.lhs.false.i.i.make_node_dirty.exit.thread_crit_edge

lor.lhs.false.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

lor.lhs.false.i.i.if.end15.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %40 = ptrtoint ptr %lpt_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lpt_lnum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %lnum)
  %cmp10.not.i.i = icmp eq i32 %41, %lnum
  br i1 %cmp10.not.i.i, label %lor.lhs.false11.i.i, label %if.else.i.i.make_node_dirty.exit.thread_crit_edge

if.else.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

lor.lhs.false11.i.i:                              ; preds = %if.else.i.i
  %42 = ptrtoint ptr %lpt_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lpt_offs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %sub2096)
  %cmp12.not.i.i = icmp eq i32 %43, %sub2096
  br i1 %cmp12.not.i.i, label %lor.lhs.false11.i.i.if.end15.i.i_crit_edge, label %lor.lhs.false11.i.i.make_node_dirty.exit.thread_crit_edge

lor.lhs.false11.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

lor.lhs.false11.i.i.if.end15.i.i_crit_edge:       ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %lor.lhs.false11.i.i.if.end15.i.i_crit_edge, %lor.lhs.false.i.i.if.end15.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %retval.0.i.i.i, i32 0, i32 2
  %call16.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.end15.i.i.make_node_dirty.exit.thread_crit_edge

if.end15.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %44 = ptrtoint ptr %dirty_nn_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dirty_nn_cnt.i.i, align 8
  %add.i.i = add i32 %45, 1
  store i32 %add.i.i, ptr %dirty_nn_cnt.i.i, align 8
  call void @ubifs_add_nnode_dirt(ptr noundef %c, ptr noundef %retval.0.i.i.i) #7
  %46 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %nnode.052.i.i = load ptr, ptr %retval.0.i.i.i, align 4
  %tobool20.not53.i.i = icmp eq ptr %nnode.052.i.i, null
  br i1 %tobool20.not53.i.i, label %if.then18.i.i.make_node_dirty.exit.thread_crit_edge, label %if.then18.i.i.while.body.i.i_crit_edge

if.then18.i.i.while.body.i.i_crit_edge:           ; preds = %if.then18.i.i
  br label %while.body.i.i

if.then18.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

while.body.i.i:                                   ; preds = %if.then24.i.i.while.body.i.i_crit_edge, %if.then18.i.i.while.body.i.i_crit_edge
  %nnode.054.i.i = phi ptr [ %nnode.0.i.i, %if.then24.i.i.while.body.i.i_crit_edge ], [ %nnode.052.i.i, %if.then18.i.i.while.body.i.i_crit_edge ]
  %flags21.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.054.i.i, i32 0, i32 2
  %call22.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags21.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.then24.i.i, label %while.body.i.i.make_node_dirty.exit.thread_crit_edge

while.body.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

if.then24.i.i:                                    ; preds = %while.body.i.i
  %47 = ptrtoint ptr %dirty_nn_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dirty_nn_cnt.i.i, align 8
  %add26.i.i = add i32 %48, 1
  store i32 %add26.i.i, ptr %dirty_nn_cnt.i.i, align 8
  call void @ubifs_add_nnode_dirt(ptr noundef %c, ptr noundef nonnull %nnode.054.i.i) #7
  %49 = ptrtoint ptr %nnode.054.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %nnode.0.i.i = load ptr, ptr %nnode.054.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %nnode.0.i.i, null
  br i1 %tobool20.not.i.i, label %if.then24.i.i.make_node_dirty.exit.thread_crit_edge, label %if.then24.i.i.while.body.i.i_crit_edge

if.then24.i.i.while.body.i.i_crit_edge:           ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.then24.i.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

sw.bb1.i83:                                       ; preds = %do.end33
  %call.i.i = call ptr @ubifs_pnode_lookup(ptr noundef %c, i32 noundef %call1.i) #7
  %cmp.i.i17.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i17.i, label %sw.bb1.i83.make_node_dirty.exit_crit_edge, label %if.end.i22.i

sw.bb1.i83.make_node_dirty.exit_crit_edge:        ; preds = %sw.bb1.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit

if.end.i22.i:                                     ; preds = %sw.bb1.i83
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i.i, align 4
  %iip.i19.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %iip.i19.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iip.i19.i, align 4
  %arrayidx.i20.i = getelementptr %struct.ubifs_nnode, ptr %51, i32 0, i32 6, i32 %53
  %54 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %lnum)
  %cmp.not.i21.i = icmp eq i32 %55, %lnum
  br i1 %cmp.not.i21.i, label %lor.lhs.false.i23.i, label %if.end.i22.i.make_node_dirty.exit.thread_crit_edge

if.end.i22.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

lor.lhs.false.i23.i:                              ; preds = %if.end.i22.i
  %offs4.i.i = getelementptr %struct.ubifs_nnode, ptr %51, i32 0, i32 6, i32 %53, i32 1
  %56 = ptrtoint ptr %offs4.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offs4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %sub2096)
  %cmp5.not.i.i = icmp eq i32 %57, %sub2096
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %lor.lhs.false.i23.i.make_node_dirty.exit.thread_crit_edge

lor.lhs.false.i23.i.make_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

if.end7.i.i:                                      ; preds = %lor.lhs.false.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @do_make_pnode_dirty(ptr noundef %c, ptr noundef %call.i.i) #7
  br label %make_node_dirty.exit.thread

sw.bb3.i84:                                       ; preds = %do.end33
  %58 = ptrtoint ptr %ltab_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ltab_lnum.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %lnum)
  %cmp.not.i24.i = icmp eq i32 %59, %lnum
  br i1 %cmp.not.i24.i, label %lor.lhs.false.i25.i, label %sw.bb3.i84.make_node_dirty.exit.thread_crit_edge

sw.bb3.i84.make_node_dirty.exit.thread_crit_edge: ; preds = %sw.bb3.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

lor.lhs.false.i25.i:                              ; preds = %sw.bb3.i84
  %60 = ptrtoint ptr %ltab_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ltab_offs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %sub2096)
  %cmp1.not.i.i = icmp eq i32 %61, %sub2096
  br i1 %cmp1.not.i.i, label %if.end.i27.i, label %lor.lhs.false.i25.i.make_node_dirty.exit.thread_crit_edge

lor.lhs.false.i25.i.make_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

if.end.i27.i:                                     ; preds = %lor.lhs.false.i25.i
  %62 = ptrtoint ptr %lpt_drty_flgs.i31.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lpt_drty_flgs.i31.i, align 4
  %and.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i26.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i26.i, label %if.then2.i.i, label %if.end.i27.i.make_node_dirty.exit.thread_crit_edge

if.end.i27.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %63, 1
  %64 = ptrtoint ptr %lpt_drty_flgs.i31.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i.i, ptr %lpt_drty_flgs.i31.i, align 4
  %65 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ltab_sz.i, align 8
  call void @ubifs_add_lpt_dirt(ptr noundef %c, i32 noundef %lnum, i32 noundef %66) #7
  br label %make_node_dirty.exit.thread

sw.bb5.i:                                         ; preds = %do.end33
  %67 = ptrtoint ptr %lsave_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lsave_lnum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %lnum)
  %cmp.not.i28.i = icmp eq i32 %68, %lnum
  br i1 %cmp.not.i28.i, label %lor.lhs.false.i30.i, label %sw.bb5.i.make_node_dirty.exit.thread_crit_edge

sw.bb5.i.make_node_dirty.exit.thread_crit_edge:   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

lor.lhs.false.i30.i:                              ; preds = %sw.bb5.i
  %69 = ptrtoint ptr %lsave_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lsave_offs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %sub2096)
  %cmp1.not.i29.i = icmp eq i32 %70, %sub2096
  br i1 %cmp1.not.i29.i, label %if.end.i34.i, label %lor.lhs.false.i30.i.make_node_dirty.exit.thread_crit_edge

lor.lhs.false.i30.i.make_node_dirty.exit.thread_crit_edge: ; preds = %lor.lhs.false.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

if.end.i34.i:                                     ; preds = %lor.lhs.false.i30.i
  %71 = ptrtoint ptr %lpt_drty_flgs.i31.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lpt_drty_flgs.i31.i, align 4
  %and.i32.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.then2.i36.i, label %if.end.i34.i.make_node_dirty.exit.thread_crit_edge

if.end.i34.i.make_node_dirty.exit.thread_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %make_node_dirty.exit.thread

if.then2.i36.i:                                   ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i35.i = or i32 %72, 2
  %73 = ptrtoint ptr %lpt_drty_flgs.i31.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or.i35.i, ptr %lpt_drty_flgs.i31.i, align 4
  %74 = ptrtoint ptr %lsave_sz.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lsave_sz.i, align 4
  call void @ubifs_add_lpt_dirt(ptr noundef %c, i32 noundef %lnum, i32 noundef %75) #7
  br label %make_node_dirty.exit.thread

make_node_dirty.exit.thread:                      ; preds = %if.then2.i36.i, %if.end.i34.i.make_node_dirty.exit.thread_crit_edge, %lor.lhs.false.i30.i.make_node_dirty.exit.thread_crit_edge, %sw.bb5.i.make_node_dirty.exit.thread_crit_edge, %if.then2.i.i, %if.end.i27.i.make_node_dirty.exit.thread_crit_edge, %lor.lhs.false.i25.i.make_node_dirty.exit.thread_crit_edge, %sw.bb3.i84.make_node_dirty.exit.thread_crit_edge, %if.end7.i.i, %lor.lhs.false.i23.i.make_node_dirty.exit.thread_crit_edge, %if.end.i22.i.make_node_dirty.exit.thread_crit_edge, %if.then24.i.i.make_node_dirty.exit.thread_crit_edge, %while.body.i.i.make_node_dirty.exit.thread_crit_edge, %if.then18.i.i.make_node_dirty.exit.thread_crit_edge, %if.end15.i.i.make_node_dirty.exit.thread_crit_edge, %lor.lhs.false11.i.i.make_node_dirty.exit.thread_crit_edge, %if.else.i.i.make_node_dirty.exit.thread_crit_edge, %lor.lhs.false.i.i.make_node_dirty.exit.thread_crit_edge, %if.then3.i.i.make_node_dirty.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lp_mutex) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %make_node_dirty.exit.thread, %get_pad_len.exit.while.cond.backedge_crit_edge
  %retval.0.i8194.pn = phi i32 [ %retval.0.i8194, %make_node_dirty.exit.thread ], [ %sub5.i, %get_pad_len.exit.while.cond.backedge_crit_edge ]
  %buf.0.be = getelementptr i8, ptr %buf.0, i32 %retval.0.i8194.pn
  %len.0.be = sub i32 %len.0, %retval.0.i8194.pn
  br label %while.cond

make_node_dirty.exit:                             ; preds = %sw.bb1.i83.make_node_dirty.exit_crit_edge, %nnode_lookup.exit.i.i.make_node_dirty.exit_crit_edge
  %retval.0.i85.in = phi ptr [ %retval.0.i.i.i, %nnode_lookup.exit.i.i.make_node_dirty.exit_crit_edge ], [ %call.i.i, %sw.bb1.i83.make_node_dirty.exit_crit_edge ]
  %retval.0.i85 = ptrtoint ptr %retval.0.i85.in to i32
  br label %cleanup41.sink.split

cleanup41.sink.split:                             ; preds = %make_node_dirty.exit, %do.end33.cleanup41.sink.split_crit_edge
  %retval.2.ph = phi i32 [ %retval.0.i85, %make_node_dirty.exit ], [ -22, %do.end33.cleanup41.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %lp_mutex) #7
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup41.sink.split, %get_pad_len.exit.cleanup41_crit_edge, %if.then11.cleanup41_crit_edge, %do.end.cleanup41_crit_edge
  %retval.2 = phi i32 [ %call5, %do.end.cleanup41_crit_edge ], [ %retval.2.ph, %cleanup41.sink.split ], [ 0, %get_pad_len.exit.cleanup41_crit_edge ], [ 0, %if.then11.cleanup41_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_a_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %addr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #7
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #7
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp slt i32 %len, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 4) #7
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb3.i
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  br label %get_lpt_node_len.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  br label %get_lpt_node_len.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  br label %get_lpt_node_len.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lsave_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  br label %get_lpt_node_len.exit

get_lpt_node_len.exit:                            ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %lsave_sz.i, %sw.bb3.i ], [ %ltab_sz.i, %sw.bb2.i ], [ %pnode_sz.i, %sw.bb1.i ], [ %nnode_sz.i, %sw.bb.i ]
  %3 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0.i = load i32, ptr %retval.0.i.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %len)
  %cmp5 = icmp sgt i32 %retval.0.i, %len
  %or.cond = or i1 %tobool.not, %cmp5
  br i1 %or.cond, label %get_lpt_node_len.exit.cleanup_crit_edge, label %if.end7

get_lpt_node_len.exit.cleanup_crit_edge:          ; preds = %get_lpt_node_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %get_lpt_node_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pos, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %addr, align 4
  %call8 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 16) #7
  %sub = add i32 %retval.0.i, -2
  %call10 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub) #7
  %6 = trunc i32 %call8 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call10, i16 %6)
  %cmp13.not = icmp eq i16 %call10, %6
  %. = zext i1 %cmp13.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %get_lpt_node_len.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %get_lpt_node_len.exit.cleanup_crit_edge ], [ %., %if.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_unpack_bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_nnode_dirt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_nnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_nnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_make_pnode_dirty(ptr noundef %c, ptr noundef %pnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %dirty_pn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %0 = ptrtoint ptr %dirty_pn_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dirty_pn_cnt, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %dirty_pn_cnt, align 4
  %2 = ptrtoint ptr %pnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnode, align 4
  %iip.i = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 3
  %4 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iip.i, align 4
  %arrayidx.i = getelementptr %struct.ubifs_nnode, ptr %3, i32 0, i32 6, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %pnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %8 = ptrtoint ptr %pnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pnode_sz.i, align 4
  tail call void @ubifs_add_lpt_dirt(ptr noundef %c, i32 noundef %7, i32 noundef %9) #7
  %10 = ptrtoint ptr %pnode to i32
  call void @__asan_load4_noabort(i32 %10)
  %nnode.017 = load ptr, ptr %pnode, align 4
  %tobool1.not18 = icmp eq ptr %nnode.017, null
  br i1 %tobool1.not18, label %if.then.if.end8_crit_edge, label %while.body.lr.ph

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

while.body.lr.ph:                                 ; preds = %if.then
  %dirty_nn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  br label %while.body

while.body:                                       ; preds = %if.then5.while.body_crit_edge, %while.body.lr.ph
  %nnode.019 = phi ptr [ %nnode.017, %while.body.lr.ph ], [ %nnode.0, %if.then5.while.body_crit_edge ]
  %flags2 = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode.019, i32 0, i32 2
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %while.body
  %11 = ptrtoint ptr %dirty_nn_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dirty_nn_cnt, align 8
  %add6 = add i32 %12, 1
  store i32 %add6, ptr %dirty_nn_cnt, align 8
  tail call void @ubifs_add_nnode_dirt(ptr noundef %c, ptr noundef nonnull %nnode.019) #7
  %13 = ptrtoint ptr %nnode.019 to i32
  call void @__asan_load4_noabort(i32 %13)
  %nnode.0 = load ptr, ptr %nnode.019, align 4
  %tobool1.not = icmp eq ptr %nnode.0, null
  br i1 %tobool1.not, label %if.then5.if.end8_crit_edge, label %if.then5.while.body_crit_edge

if.then5.while.body_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5.if.end8_crit_edge, %while.body.if.end8_crit_edge, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_lpt_dirt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_pnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @upd_ltab(ptr noundef %c, i32 noundef %lnum, i32 noundef %free, i32 noundef %dirty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd_ltab.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd_ltab, %if.then)) #7
          to label %do.body10 [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %6 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ltab, align 8
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %8 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lpt_first, align 8
  %sub = sub i32 %lnum, %9
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %dirty9 = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %sub, i32 1
  %12 = ptrtoint ptr %dirty9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty9, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @upd_ltab.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.39, i32 noundef %5, i32 noundef %lnum, i32 noundef %11, i32 noundef %13, i32 noundef %free, i32 noundef %dirty) #7
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %lpt_first11 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %14 = ptrtoint ptr %lpt_first11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpt_first11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %lnum)
  %cmp.not = icmp sgt i32 %15, %lnum
  br i1 %cmp.not, label %do.body10.if.then21_crit_edge, label %land.rhs, !prof !182

do.body10.if.then21_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.rhs:                                         ; preds = %do.body10
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %16 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %lnum)
  %cmp12 = icmp slt i32 %17, %lnum
  br i1 %cmp12, label %land.rhs.if.then21_crit_edge, label %land.rhs.do.end23_crit_edge, !prof !182

land.rhs.do.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

land.rhs.if.then21_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %land.rhs.if.then21_crit_edge, %do.body10.if.then21_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 134) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then21, %land.rhs.do.end23_crit_edge
  %ltab24 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %18 = ptrtoint ptr %ltab24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ltab24, align 8
  %20 = ptrtoint ptr %lpt_first11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lpt_first11, align 8
  %sub26 = sub i32 %lnum, %21
  %arrayidx27 = getelementptr %struct.ubifs_lpt_lprops, ptr %19, i32 %sub26
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %free, ptr %arrayidx27, align 4
  %23 = load ptr, ptr %ltab24, align 8
  %24 = load i32, ptr %lpt_first11, align 8
  %sub31 = sub i32 %lnum, %24
  %dirty33 = getelementptr %struct.ubifs_lpt_lprops, ptr %23, i32 %sub31, i32 1
  %25 = ptrtoint ptr %dirty33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dirty33, align 4
  %add = add i32 %26, %dirty
  store i32 %add, ptr %dirty33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_lsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_ltab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @realloc_lpt_leb(ptr nocapture noundef readonly %c, ptr nocapture noundef %lnum) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lnum, align 4
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %2 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lpt_first, align 8
  %sub = sub i32 %1, %3
  %add = add i32 %sub, 1
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %4 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp54 = icmp slt i32 %add, %5
  br i1 %cmp54, label %for.body.lr.ph, label %entry.for.cond8.preheader_crit_edge

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %6 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ltab, align 8
  br label %for.body

for.cond8.preheader:                              ; preds = %for.inc.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub)
  %cmp956 = icmp ult i32 %sub, 2147483647
  br i1 %cmp956, label %for.body10.lr.ph, label %for.cond8.preheader.cleanup_crit_edge

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %ltab11 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %8 = ptrtoint ptr %ltab11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ltab11, align 8
  br label %for.body10

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ %add, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %cmt = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %i.055, i32 2
  %10 = ptrtoint ptr %cmt to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %cmt, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.cond8.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.cond8.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader

for.body10:                                       ; preds = %for.inc29.for.body10_crit_edge, %for.body10.lr.ph
  %i.157 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc30, %for.inc29.for.body10_crit_edge ]
  %cmt13 = getelementptr %struct.ubifs_lpt_lprops, ptr %9, i32 %i.157, i32 2
  %12 = ptrtoint ptr %cmt13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load14 = load i8, ptr %cmt13, align 4
  %13 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %for.inc29, label %for.body10.cleanup.sink.split_crit_edge

for.body10.cleanup.sink.split_crit_edge:          ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc29:                                        ; preds = %for.body10
  %inc30 = add nuw nsw i32 %i.157, 1
  %exitcond64.not = icmp eq i32 %i.157, %sub
  br i1 %exitcond64.not, label %for.inc29.cleanup_crit_edge, label %for.inc29.for.body10_crit_edge

for.inc29.for.body10_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.inc29.cleanup_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body10.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %bf.load14.lcssa.sink = phi i8 [ %bf.load14, %for.body10.cleanup.sink.split_crit_edge ], [ %bf.load, %for.body.cleanup.sink.split_crit_edge ]
  %cmt13.lcssa.sink = phi ptr [ %cmt13, %for.body10.cleanup.sink.split_crit_edge ], [ %cmt, %for.body.cleanup.sink.split_crit_edge ]
  %i.157.lcssa.sink = phi i32 [ %i.157, %for.body10.cleanup.sink.split_crit_edge ], [ %i.055, %for.body.cleanup.sink.split_crit_edge ]
  %bf.clear24 = and i8 %bf.load14.lcssa.sink, -65
  %14 = ptrtoint ptr %cmt13.lcssa.sink to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.clear24, ptr %cmt13.lcssa.sink, align 4
  %15 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lpt_first, align 8
  %add27 = add i32 %16, %i.157.lcssa.sink
  %17 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add27, ptr %lnum, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc29.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %for.cond8.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -28, %for.inc29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_nnode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_pnode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_unpack_nnode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !58, !60, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !98, !99, !101, !103, !104, !106, !108, !110, !112, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !170}
!llvm.named.register.sp = !{!171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/lpt_commit.c", i32 1185, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubifs_lpt_start_commit.__UNIQUE_ID_ddebug286, !1, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/lpt_commit.c", i32 1215, i32 3}
!8 = !{ptr @ubifs_lpt_start_commit.__UNIQUE_ID_ddebug287, !7, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/lpt_commit.c", i32 1232, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/lpt_commit.c", i32 1287, i32 2}
!13 = !{ptr @ubifs_lpt_end_commit.__UNIQUE_ID_ddebug288, !12, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/lpt_commit.c", i32 1688, i32 17}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/lpt_commit.c", i32 1693, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dbg_check_ltab.__UNIQUE_ID_ddebug290, !17, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/lpt_commit.c", i32 1720, i32 16}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/lpt_commit.c", i32 1760, i32 17}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/lpt_commit.c", i32 1765, i32 17}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/lpt_commit.c", i32 1783, i32 17}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/lpt_commit.c", i32 1788, i32 17}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ubifs/lpt_commit.c", i32 1793, i32 17}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/lpt_commit.c", i32 1798, i32 17}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/lpt_commit.c", i32 1808, i32 17}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/lpt_commit.c", i32 1950, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ubifs_dump_lpt_lebs._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ubifs_dump_lpt_lebs._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/lpt_commit.c", i32 1953, i32 2}
!43 = !{ptr @ubifs_dump_lpt_lebs._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ubifs_dump_lpt_lebs._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/lpt_commit.c", i32 1156, i32 3}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/lpt_commit.c", i32 1110, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lpt_gc_lnum.__UNIQUE_ID_ddebug285, !48, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ubifs/lpt_commit.c", i32 1131, i32 3}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ubifs/lpt_commit.c", i32 720, i32 4}
!55 = !{ptr @lpt_tgc_start.__UNIQUE_ID_ddebug283, !54, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ubifs/lpt_commit.c", i32 767, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/lpt_commit.c", i32 105, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ubifs/lpt_commit.c", i32 116, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @get_cnodes_to_commit.__UNIQUE_ID_ddebug276, !61, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/lpt_commit.c", i32 117, i32 2}
!66 = !{ptr @get_cnodes_to_commit.__UNIQUE_ID_ddebug277, !65, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/lpt_commit.c", i32 118, i32 2}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/lpt_commit.c", i32 32, i32 2}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ubifs/lpt_commit.c", i32 66, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/lpt_commit.c", i32 230, i32 4}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/lpt_commit.c", i32 311, i32 15}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ubifs/lpt_commit.c", i32 131, i32 2}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @upd_ltab.__UNIQUE_ID_ddebug278, !78, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ubifs/lpt_commit.c", i32 526, i32 2}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @write_cnodes.__UNIQUE_ID_ddebug279, !82, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ubifs/lpt_commit.c", i32 527, i32 2}
!87 = !{ptr @write_cnodes.__UNIQUE_ID_ddebug280, !86, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ubifs/lpt_commit.c", i32 528, i32 2}
!90 = !{ptr @write_cnodes.__UNIQUE_ID_ddebug281, !89, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ubifs/lpt_commit.c", i32 530, i32 3}
!93 = !{ptr @write_cnodes.__UNIQUE_ID_ddebug282, !92, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ubifs/lpt_commit.c", i32 535, i32 15}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ubifs/lpt_commit.c", i32 744, i32 4}
!98 = !{ptr @lpt_tgc_end.__UNIQUE_ID_ddebug284, !97, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ubifs/lpt_commit.c", i32 1601, i32 16}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ubifs/lpt_commit.c", i32 1605, i32 2}
!103 = !{ptr @dbg_check_ltab_lnum.__UNIQUE_ID_ddebug289, !102, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ubifs/lpt_commit.c", i32 1623, i32 18}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ubifs/lpt_commit.c", i32 1629, i32 18}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ubifs/lpt_commit.c", i32 1634, i32 18}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ubifs/lpt_commit.c", i32 1847, i32 2}
!112 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dump_lpt_leb._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @dump_lpt_leb._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ubifs/lpt_commit.c", i32 1850, i32 16}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ubifs/lpt_commit.c", i32 1865, i32 5}
!119 = !{ptr @dump_lpt_leb._entry.55, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @dump_lpt_leb._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ubifs/lpt_commit.c", i32 1872, i32 5}
!123 = !{ptr @dump_lpt_leb._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dump_lpt_leb._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ubifs/lpt_commit.c", i32 1883, i32 5}
!127 = !{ptr @dump_lpt_leb._entry.61, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @dump_lpt_leb._entry_ptr.63, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ubifs/lpt_commit.c", i32 1886, i32 5}
!131 = !{ptr @dump_lpt_leb._entry.64, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @dump_lpt_leb._entry_ptr.66, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ubifs/lpt_commit.c", i32 1896, i32 5}
!135 = !{ptr @dump_lpt_leb._entry.67, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dump_lpt_leb._entry_ptr.69, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ubifs/lpt_commit.c", i32 1899, i32 5}
!139 = !{ptr @dump_lpt_leb._entry.70, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @dump_lpt_leb._entry_ptr.72, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ubifs/lpt_commit.c", i32 1903, i32 5}
!143 = !{ptr @dump_lpt_leb._entry.73, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dump_lpt_leb._entry_ptr.75, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ubifs/lpt_commit.c", i32 1908, i32 5}
!147 = !{ptr @dump_lpt_leb._entry.76, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @dump_lpt_leb._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ubifs/lpt_commit.c", i32 1911, i32 6}
!151 = !{ptr @dump_lpt_leb._entry.79, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @dump_lpt_leb._entry_ptr.81, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ubifs/lpt_commit.c", i32 1913, i32 4}
!155 = !{ptr @dump_lpt_leb._entry.82, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @dump_lpt_leb._entry_ptr.84, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ubifs/lpt_commit.c", i32 1918, i32 4}
!159 = !{ptr @dump_lpt_leb._entry.85, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @dump_lpt_leb._entry_ptr.87, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ubifs/lpt_commit.c", i32 1922, i32 4}
!163 = !{ptr @dump_lpt_leb._entry.88, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dump_lpt_leb._entry_ptr.90, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ubifs/lpt_commit.c", i32 1925, i32 17}
!167 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ubifs/lpt_commit.c", i32 1933, i32 2}
!169 = !{ptr @dump_lpt_leb._entry.92, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @dump_lpt_leb._entry_ptr.94, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{!"sp"}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 2148251752, i64 2148251757, i64 2148251770, i64 2148251814, i64 2148251848, i64 2148251869}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{i64 2155175957}
!185 = !{i64 2155176246}
