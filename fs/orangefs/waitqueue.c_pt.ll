; ModuleID = '/llk/IR_all_yes/fs/orangefs/waitqueue.c_pt.bc'
source_filename = "../fs/orangefs/waitqueue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.7 }
%struct.llist_node = type { ptr }
%union.anon.7 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.1, [2048 x i8] }
%union.anon.1 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.2 }
%union.anon.2 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@orangefs_request_list_lock = external dso_local global %struct.spinlock, align 4
@orangefs_request_list = external dso_local global %struct.list_head, align 4
@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@purge_waiting_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017pvfs2-client-core: purging op tag %llu %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"purge_waiting_ops\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/orangefs/waitqueue.c\00", [40 x i8] zeroinitializer }, align 32
@purge_waiting_ops._entry_ptr = internal global ptr @purge_waiting_ops._entry, section ".printk_index", align 4
@purge_waiting_ops._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: op:%s: op_state:%d: process:%s:\0A\00", [57 x i8] zeroinitializer }, align 32
@purge_waiting_ops._entry_ptr.5 = internal global ptr @purge_waiting_ops._entry.3, section ".printk_index", align 4
@service_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s op:%p: process:%s: pid:%d:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"service_operation\00", [46 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr = internal global ptr @service_operation._entry, section ".printk_index", align 4
@orangefs_request_mutex = external dso_local global %struct.mutex, align 4
@service_operation._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: service_operation interrupted.\0A\00", [58 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr.10 = internal global ptr @service_operation._entry.8, section ".printk_index", align 4
@service_operation._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.7, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr.12 = internal global ptr @service_operation._entry.11, section ".printk_index", align 4
@orangefs_request_list_waitq = external dso_local global %struct.wait_queue_head, align 4
@service_operation._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s:client core is NOT in service.\0A\00", [59 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr.15 = internal global ptr @service_operation._entry.13, section ".printk_index", align 4
@op_timeout_secs = external dso_local local_unnamed_addr global i32, align 4
@service_operation._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: wait_for_matching_downcall returned %d for %p\0A\00", [43 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr.18 = internal global ptr @service_operation._entry.16, section ".printk_index", align 4
@service_operation._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s -- wait timed out; aborting attempt.\0A\00", [49 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr.21 = internal global ptr @service_operation._entry.19, section ".printk_index", align 4
@service_operation._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017orangefs: tag %llu (%s) -- operation to be retried (%d attempt)\0A\00", [61 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr.24 = internal global ptr @service_operation._entry.22, section ".printk_index", align 4
@service_operation._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s returning: %d for %p.\0A\00", [32 x i8] zeroinitializer }, align 32
@service_operation._entry_ptr.27 = internal global ptr @service_operation._entry.25, section ".printk_index", align 4
@orangefs_cancel_op_in_progress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.28, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"orangefs_cancel_op_in_progress\00", [33 x i8] zeroinitializer }, align 32
@orangefs_cancel_op_in_progress._entry_ptr = internal global ptr @orangefs_cancel_op_in_progress._entry, section ".printk_index", align 4
@orangefs_cancel_op_in_progress._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017Attempting ORANGEFS operation cancellation of tag %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@orangefs_cancel_op_in_progress._entry_ptr.31 = internal global ptr @orangefs_cancel_op_in_progress._entry.29, section ".printk_index", align 4
@orangefs_clean_up_interrupted_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017Interrupted: Removed op %p from request_list\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"orangefs_clean_up_interrupted_operation\00", [56 x i8] zeroinitializer }, align 32
@orangefs_clean_up_interrupted_operation._entry_ptr = internal global ptr @orangefs_clean_up_interrupted_operation._entry, section ".printk_index", align 4
@orangefs_htable_ops_in_progress_lock = external dso_local global %struct.spinlock, align 4
@orangefs_clean_up_interrupted_operation._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017Interrupted: Removed op %p from htable_ops_in_progress\0A\00", [38 x i8] zeroinitializer }, align 32
@orangefs_clean_up_interrupted_operation._entry_ptr.36 = internal global ptr @orangefs_clean_up_interrupted_operation._entry.34, section ".printk_index", align 4
@orangefs_clean_up_interrupted_operation._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013interrupted operation is in a weird state 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@orangefs_clean_up_interrupted_operation._entry_ptr.39 = internal global ptr @orangefs_clean_up_interrupted_operation._entry.37, section ".printk_index", align 4
@wait_for_matching_downcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: operation interrupted, tag %llu, %p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait_for_matching_downcall\00", [37 x i8] zeroinitializer }, align 32
@wait_for_matching_downcall._entry_ptr = internal global ptr @wait_for_matching_downcall._entry, section ".printk_index", align 4
@wait_for_matching_downcall._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: operation purged, tag %llu, %p, %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wait_for_matching_downcall._entry_ptr.44 = internal global ptr @wait_for_matching_downcall._entry.42, section ".printk_index", align 4
@wait_for_matching_downcall._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: operation timed out, tag %llu, %p, %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@wait_for_matching_downcall._entry_ptr.47 = internal global ptr @wait_for_matching_downcall._entry.45, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 40, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 45, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 79, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 104, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 115, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 129, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 147, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 164, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 180, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 197, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 230, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 240, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 280, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 289, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 295, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 347, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 355, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [27 x i8] c"../fs/orangefs/waitqueue.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 366, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @orangefs_cancel_op_in_progress._entry, ptr @orangefs_cancel_op_in_progress._entry.29, ptr @orangefs_cancel_op_in_progress._entry_ptr, ptr @orangefs_cancel_op_in_progress._entry_ptr.31, ptr @orangefs_clean_up_interrupted_operation._entry, ptr @orangefs_clean_up_interrupted_operation._entry.34, ptr @orangefs_clean_up_interrupted_operation._entry.37, ptr @orangefs_clean_up_interrupted_operation._entry_ptr, ptr @orangefs_clean_up_interrupted_operation._entry_ptr.36, ptr @orangefs_clean_up_interrupted_operation._entry_ptr.39, ptr @purge_waiting_ops._entry, ptr @purge_waiting_ops._entry.3, ptr @purge_waiting_ops._entry_ptr, ptr @purge_waiting_ops._entry_ptr.5, ptr @service_operation._entry, ptr @service_operation._entry.11, ptr @service_operation._entry.13, ptr @service_operation._entry.16, ptr @service_operation._entry.19, ptr @service_operation._entry.22, ptr @service_operation._entry.25, ptr @service_operation._entry.8, ptr @service_operation._entry_ptr, ptr @service_operation._entry_ptr.10, ptr @service_operation._entry_ptr.12, ptr @service_operation._entry_ptr.15, ptr @service_operation._entry_ptr.18, ptr @service_operation._entry_ptr.21, ptr @service_operation._entry_ptr.24, ptr @service_operation._entry_ptr.27, ptr @wait_for_matching_downcall._entry, ptr @wait_for_matching_downcall._entry.42, ptr @wait_for_matching_downcall._entry.45, ptr @wait_for_matching_downcall._entry_ptr, ptr @wait_for_matching_downcall._entry_ptr.44, ptr @wait_for_matching_downcall._entry_ptr.47, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_waiting_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_waiting_ops._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_operation._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_cancel_op_in_progress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_cancel_op_in_progress._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_clean_up_interrupted_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_clean_up_interrupted_operation._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_clean_up_interrupted_operation._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_matching_downcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_matching_downcall._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_matching_downcall._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @purge_waiting_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_request_list_lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %0 = load ptr, ptr @orangefs_request_list, align 4
  %cmp.not40 = icmp eq ptr %0, @orangefs_request_list
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %.pn.in41 = phi ptr [ %.pn45, %for.inc.do.body_crit_edge ], [ %0, %entry.do.body_crit_edge ]
  %op.043 = getelementptr i8, ptr %.pn.in41, i32 -16880
  %1 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn45 = load ptr, ptr %.pn.in41, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %tag = getelementptr i8, ptr %.pn.in41, i32 -16872
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tag, align 8
  %call = tail call ptr @get_opname_string(ptr noundef %op.043) #5
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i64 noundef %4, ptr noundef %call) #8
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %lock.i = getelementptr i8, ptr %.pn.in41, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %upcall.i = getelementptr i8, ptr %.pn.in41, i32 -16856
  %5 = ptrtoint ptr %upcall.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %upcall.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16716288, i32 %6)
  %cmp.i = icmp eq i32 %6, -16716288
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !86

if.then.i:                                        ; preds = %do.end10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %.pn.in41, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in41, ptr %.pn.in41, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in41, i32 4
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in41, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  %15 = getelementptr i8, ptr %.pn.in41, i32 -16864
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  tail call void @orangefs_bufmap_put(i32 noundef %17) #5
  tail call void @op_release(ptr noundef %op.043) #5
  br label %set_op_state_purged.exit

if.else.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %op.043 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %op.043, align 8
  %or.i = or i32 %19, 8
  store i32 %or.i, ptr %op.043, align 8
  %waitq.i = getelementptr i8, ptr %.pn.in41, i32 -104
  tail call void @complete(ptr noundef %waitq.i) #5
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  br label %set_op_state_purged.exit

set_op_state_purged.exit:                         ; preds = %if.else.i, %list_del_init.exit.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %20 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and12 = and i64 %20, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %set_op_state_purged.exit.for.inc_crit_edge, label %do.end17

set_op_state_purged.exit.for.inc_crit_edge:       ; preds = %set_op_state_purged.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end17:                                         ; preds = %set_op_state_purged.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call ptr @get_opname_string(ptr noundef %op.043) #5
  %21 = ptrtoint ptr %op.043 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %op.043, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !76) #5
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %call19, i32 noundef %22, ptr noundef %comm) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end17, %set_op_state_purged.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn45, @orangefs_request_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_opname_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @service_operation(ptr noundef %op, ptr noundef %op_name, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %wait_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait_entry) #5
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_entry, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_entry, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_entry, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_entry, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait_entry, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !76) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 69
  %14 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgid, align 4
  %upcall = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3
  %tgid7 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %tgid7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tgid7, align 8
  %17 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  %pid11 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %pid11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pid11, align 4
  %status = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 4, i32 1
  %and21 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %lock = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 6
  %and65 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %list = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 8
  %prev3.i.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 8, i32 1
  %and.i208 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i208)
  %tobool.not.i = icmp eq i32 %and.i208, 0
  %waitq.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 5
  %tag39.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 1
  %attempts.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 7
  %21 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 2
  br label %retry_servicing

retry_servicing:                                  ; preds = %do.end145.retry_servicing_crit_edge, %entry
  %timeout.0 = phi i32 [ 2147483647, %entry ], [ %mul132, %do.end145.retry_servicing_crit_edge ]
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %status, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %23 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %23, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %retry_servicing.do.end20_crit_edge, label %do.end

retry_servicing.do.end20_crit_edge:               ; preds = %retry_servicing
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

do.end:                                           ; preds = %retry_servicing
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid17, align 8
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %op_name, ptr noundef %op, ptr noundef %comm, i32 noundef %27) #8
  br label %do.end20

do.end20:                                         ; preds = %do.end, %retry_servicing.do.end20_crit_edge
  br i1 %tobool22.not, label %if.then23, label %do.end20.if.end46_crit_edge

do.end20.if.end46_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then23:                                        ; preds = %do.end20
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @orangefs_request_mutex, i32 noundef 0) #5
  br label %if.end29

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = call i32 @mutex_lock_killable_nested(ptr noundef nonnull @orangefs_request_mutex, i32 noundef 0) #5
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %ret.0 = phi i32 [ %call27, %if.then26 ], [ %call28, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.then30, label %if.end29.if.end46_crit_edge

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then30:                                        ; preds = %if.end29
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret.0, ptr %status, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %29 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and34 = and i64 %29, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.then30.cleanup_crit_edge, label %do.end39

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end29.if.end46_crit_edge, %do.end20.if.end46_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_request_list_lock) #5
  call void @_raw_spin_lock(ptr noundef %lock) #5
  %30 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %op, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %31 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and48 = and i64 %31, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48)
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %if.end46.do.end64_crit_edge, label %do.end53

if.end46.do.end64_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end64

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = call ptr @get_opname_string(ptr noundef %op) #5
  %32 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %op, align 8
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %comm59 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef %call55, i32 noundef %33, ptr noundef %comm59) #8
  br label %do.end64

do.end64:                                         ; preds = %do.end53, %if.end46.do.end64_crit_edge
  br i1 %tobool66.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %do.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %36 = load ptr, ptr @orangefs_request_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @orangefs_request_list, ptr noundef %36) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then67.if.end70_crit_edge

if.then67.if.end70_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.end.i.i:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  br label %if.end70.sink.split

if.else68:                                        ; preds = %do.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @orangefs_request_list, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @orangefs_request_list, i32 0, i32 1), align 4
  %call.i.i205 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %37, ptr noundef nonnull @orangefs_request_list) #5
  br i1 %call.i.i205, label %if.else68.if.end70.sink.split_crit_edge, label %if.else68.if.end70_crit_edge

if.else68.if.end70_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.else68.if.end70.sink.split_crit_edge:          ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.else68.if.end70.sink.split_crit_edge, %if.end.i.i
  %.sink223 = phi ptr [ %prev1.i.i, %if.end.i.i ], [ getelementptr inbounds (%struct.list_head, ptr @orangefs_request_list, i32 0, i32 1), %if.else68.if.end70.sink.split_crit_edge ]
  %orangefs_request_list.sink = phi ptr [ %36, %if.end.i.i ], [ @orangefs_request_list, %if.else68.if.end70.sink.split_crit_edge ]
  %.sink222 = phi ptr [ @orangefs_request_list, %if.end.i.i ], [ %37, %if.else68.if.end70.sink.split_crit_edge ]
  %38 = ptrtoint ptr %.sink223 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list, ptr %.sink223, align 4
  %39 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %orangefs_request_list.sink, ptr %list, align 4
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %.sink222, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %.sink222 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list, ptr %.sink222, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else68.if.end70_crit_edge, %if.then67.if.end70_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #5
  call void @__wake_up(ptr noundef nonnull @orangefs_request_list_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  %call72 = call zeroext i1 @__is_daemon_in_service() #5
  br i1 %call72, label %if.end70.if.end91_crit_edge, label %do.body74

if.end70.if.end91_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

do.body74:                                        ; preds = %if.end70
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %42 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and75 = and i64 %42, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and75)
  %tobool76.not = icmp eq i64 %and75, 0
  br i1 %tobool76.not, label %do.body74.do.end85_crit_edge, label %do.end80

do.body74.do.end85_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7) #8
  br label %do.end85

do.end85:                                         ; preds = %do.end80, %do.body74.do.end85_crit_edge
  %43 = ptrtoint ptr %upcall to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %upcall, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777201, i32 %44)
  %cmp87 = icmp eq i32 %44, -16777201
  br i1 %cmp87, label %do.end85.if.end91_crit_edge, label %if.else89

do.end85.if.end91_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.else89:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @op_timeout_secs to i32))
  %45 = load i32, ptr @op_timeout_secs, align 4
  %mul = mul i32 %45, 100
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %do.end85.if.end91_crit_edge, %if.end70.if.end91_crit_edge
  %timeout.1 = phi i32 [ %timeout.0, %if.end70.if.end91_crit_edge ], [ %mul, %if.else89 ], [ 0, %do.end85.if.end91_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #5
  br i1 %tobool22.not, label %if.then94, label %if.end91.if.end95_crit_edge

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef nonnull @orangefs_request_mutex) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end91.if.end95_crit_edge
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i

if.then.i:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 @wait_for_completion_io_timeout(ptr noundef %waitq.i, i32 noundef %timeout.1) #5
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end95
  br i1 %tobool25.not, label %if.else7.i, label %if.then4.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %waitq.i, i32 noundef %timeout.1) #5
  br label %if.end10.i

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call i32 @wait_for_completion_killable_timeout(ptr noundef %waitq.i, i32 noundef %timeout.1) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %n.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else7.i ], [ %call6.i, %if.then4.i ]
  call void @_raw_spin_lock(ptr noundef %lock) #5
  %46 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %op, align 8
  %and11.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.wait_for_matching_downcall.exit_crit_edge

if.end10.i.wait_for_matching_downcall.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_for_matching_downcall.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i)
  %cmp.i = icmp slt i32 %n.0.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end26.i, !prof !86

do.body.i:                                        ; preds = %if.end14.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %48 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and18.i = and i64 %48, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %do.body.i.wait_for_matching_downcall.exit_crit_edge, label %do.end.i

do.body.i.wait_for_matching_downcall.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_for_matching_downcall.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %tag39.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tag39.i, align 8
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i64 noundef %50, ptr noundef %op) #8
  br label %wait_for_matching_downcall.exit

if.end26.i:                                       ; preds = %if.end14.i
  %and28.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %51 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and48.i = and i64 %51, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48.i)
  %tobool49.not.i = icmp eq i64 %and48.i, 0
  br i1 %tobool29.not.i, label %do.body47.i, label %do.body31.i

do.body31.i:                                      ; preds = %if.end26.i
  br i1 %tobool49.not.i, label %do.body31.i.do.end43.i_crit_edge, label %do.end37.i

do.body31.i.do.end43.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.i

do.end37.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %tag39.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tag39.i, align 8
  %54 = ptrtoint ptr %attempts.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %attempts.i, align 4
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i64 noundef %53, ptr noundef %op, i32 noundef %55) #8
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end37.i, %do.body31.i.do.end43.i_crit_edge
  %56 = ptrtoint ptr %attempts.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %attempts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %57)
  %cmp45.i = icmp slt i32 %57, 5
  %cond.i = select i1 %cmp45.i, i32 -11, i32 -5
  br label %wait_for_matching_downcall.exit

do.body47.i:                                      ; preds = %if.end26.i
  br i1 %tobool49.not.i, label %do.body47.i.wait_for_matching_downcall.exit_crit_edge, label %do.end53.i

do.body47.i.wait_for_matching_downcall.exit_crit_edge: ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_for_matching_downcall.exit

do.end53.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %tag39.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tag39.i, align 8
  %60 = ptrtoint ptr %attempts.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %attempts.i, align 4
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, i64 noundef %59, ptr noundef %op, i32 noundef %61) #8
  br label %wait_for_matching_downcall.exit

wait_for_matching_downcall.exit:                  ; preds = %do.end53.i, %do.body47.i.wait_for_matching_downcall.exit_crit_edge, %do.end43.i, %do.end.i, %do.body.i.wait_for_matching_downcall.exit_crit_edge, %if.end10.i.wait_for_matching_downcall.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %do.end43.i ], [ 0, %if.end10.i.wait_for_matching_downcall.exit_crit_edge ], [ -4, %do.end.i ], [ -4, %do.body.i.wait_for_matching_downcall.exit_crit_edge ], [ -110, %do.end53.i ], [ -110, %do.body47.i.wait_for_matching_downcall.exit_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %62 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and98 = and i64 %62, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and98)
  %tobool99.not = icmp eq i64 %and98, 0
  br i1 %tobool99.not, label %wait_for_matching_downcall.exit.do.end108_crit_edge, label %do.end103

wait_for_matching_downcall.exit.do.end108_crit_edge: ; preds = %wait_for_matching_downcall.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end108

do.end103:                                        ; preds = %wait_for_matching_downcall.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i, ptr noundef %op) #8
  br label %do.end108

do.end108:                                        ; preds = %do.end103, %wait_for_matching_downcall.exit.do.end108_crit_edge
  %63 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %do.end108.if.end127_crit_edge [
    i32 0, label %if.then110
    i32 -110, label %do.end124
  ]

do.end108.if.end127_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.then110:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %lock) #5
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status, align 4
  %call114 = call i32 @orangefs_normalize_to_errno(i32 noundef %65) #5
  %66 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call114, ptr %status, align 4
  br label %do.body150

do.end124:                                        ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #7
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.7, ptr noundef %op_name) #8
  br label %if.end127

if.end127:                                        ; preds = %do.end124, %do.end108.if.end127_crit_edge
  %67 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %op, align 8
  %or.i = or i32 %68, 16
  store i32 %or.i, ptr %op, align 8
  %69 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %70, %list
  br i1 %cmp.i.not.i, label %do.body.i210, label %if.else.i

do.body.i210:                                     ; preds = %if.end127
  %and.i209 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool2.not.i = icmp eq i32 %and.i209, 0
  br i1 %tobool2.not.i, label %do.end9.i, label %do.body6.i, !prof !87

do.body6.i:                                       ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/orangefs/waitqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #5, !srcloc !88
  unreachable

do.end9.i:                                        ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %lock) #5
  call void @wait_for_completion(ptr noundef %waitq.i) #5
  br label %orangefs_clean_up_interrupted_operation.exit

if.else.i:                                        ; preds = %if.end127
  %and11.i213 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i213)
  %tobool12.not.i214 = icmp eq i32 %and11.i213, 0
  br i1 %tobool12.not.i214, label %if.else25.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @_raw_spin_unlock(ptr noundef %lock) #5
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_request_list_lock) #5
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then13.i.list_del_init.exit.i_crit_edge

if.then13.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev3.i.i, align 4
  %73 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then13.i.list_del_init.exit.i_crit_edge
  %77 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %list, ptr %list, align 4
  %78 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %list, ptr %prev3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #5
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %79 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and17.i = and i64 %79, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i)
  %tobool18.not.i = icmp eq i64 %and17.i, 0
  br i1 %tobool18.not.i, label %list_del_init.exit.i.orangefs_clean_up_interrupted_operation.exit_crit_edge, label %do.end21.i

list_del_init.exit.i.orangefs_clean_up_interrupted_operation.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %orangefs_clean_up_interrupted_operation.exit

do.end21.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %op) #8
  br label %orangefs_clean_up_interrupted_operation.exit

if.else25.i:                                      ; preds = %if.else.i
  %and27.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  call void @_raw_spin_unlock(ptr noundef %lock) #5
  br i1 %tobool28.not.i, label %if.else42.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else25.i
  call void @_raw_spin_lock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #5
  %call.i.i68.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i68.i, label %if.end.i.i71.i, label %if.then29.i.list_del_init.exit73.i_crit_edge

if.then29.i.list_del_init.exit73.i_crit_edge:     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit73.i

if.end.i.i71.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev3.i.i, align 4
  %82 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %list, align 4
  %prev1.i.i.i70.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i70.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %list_del_init.exit73.i

list_del_init.exit73.i:                           ; preds = %if.end.i.i71.i, %if.then29.i.list_del_init.exit73.i_crit_edge
  %86 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %list, ptr %list, align 4
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %list, ptr %prev3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #5
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %88 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and33.i = and i64 %88, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i)
  %tobool34.not.i = icmp eq i64 %and33.i, 0
  br i1 %tobool34.not.i, label %list_del_init.exit73.i.orangefs_clean_up_interrupted_operation.exit_crit_edge, label %do.end37.i216

list_del_init.exit73.i.orangefs_clean_up_interrupted_operation.exit_crit_edge: ; preds = %list_del_init.exit73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %orangefs_clean_up_interrupted_operation.exit

do.end37.i216:                                    ; preds = %list_del_init.exit73.i
  call void @__sanitizer_cov_trace_pc() #7
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %op) #8
  br label %orangefs_clean_up_interrupted_operation.exit

if.else42.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %op, align 8
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %90) #8
  br label %orangefs_clean_up_interrupted_operation.exit

orangefs_clean_up_interrupted_operation.exit:     ; preds = %if.else42.i, %do.end37.i216, %list_del_init.exit73.i.orangefs_clean_up_interrupted_operation.exit_crit_edge, %do.end21.i, %list_del_init.exit.i.orangefs_clean_up_interrupted_operation.exit_crit_edge, %do.end9.i
  %91 = ptrtoint ptr %waitq.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %waitq.i, align 4
  %92 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %retval.0.i, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %retval.0.i)
  %cmp130 = icmp eq i32 %retval.0.i, -11
  br i1 %cmp130, label %if.then131, label %orangefs_clean_up_interrupted_operation.exit.do.body150_crit_edge

orangefs_clean_up_interrupted_operation.exit.do.body150_crit_edge: ; preds = %orangefs_clean_up_interrupted_operation.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body150

if.then131:                                       ; preds = %orangefs_clean_up_interrupted_operation.exit
  %93 = ptrtoint ptr %attempts.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %attempts.i, align 4
  %inc = add i32 %94, 1
  store i32 %inc, ptr %attempts.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @op_timeout_secs to i32))
  %95 = load i32, ptr @op_timeout_secs, align 4
  %mul132 = mul i32 %95, 100
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %96 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and134 = and i64 %96, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and134)
  %tobool135.not = icmp eq i64 %and134, 0
  br i1 %tobool135.not, label %if.then131.do.end145_crit_edge, label %do.end139

if.then131.do.end145_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end145

do.end139:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %tag39.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %tag39.i, align 8
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i64 noundef %98, ptr noundef %op_name, i32 noundef %inc) #8
  br label %do.end145

do.end145:                                        ; preds = %do.end139, %if.then131.do.end145_crit_edge
  %99 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %21, align 8
  %tobool146.not = icmp eq i32 %100, 0
  br i1 %tobool146.not, label %do.end145.retry_servicing_crit_edge, label %do.end145.do.body150_crit_edge

do.end145.do.body150_crit_edge:                   ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body150

do.end145.retry_servicing_crit_edge:              ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry_servicing

do.body150:                                       ; preds = %do.end145.do.body150_crit_edge, %orangefs_clean_up_interrupted_operation.exit.do.body150_crit_edge, %if.then110
  %ret.1 = phi i32 [ %call114, %if.then110 ], [ %retval.0.i, %orangefs_clean_up_interrupted_operation.exit.do.body150_crit_edge ], [ -11, %do.end145.do.body150_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %101 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and151 = and i64 %101, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and151)
  %tobool152.not = icmp eq i64 %and151, 0
  br i1 %tobool152.not, label %do.body150.cleanup_crit_edge, label %do.end156

do.body150.cleanup_crit_edge:                     ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end156:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.7, ptr noundef %op_name, i32 noundef %ret.1, ptr noundef %op) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %do.body150.cleanup_crit_edge, %do.end39, %if.then30.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end39 ], [ %ret.0, %if.then30.cleanup_crit_edge ], [ %ret.1, %do.end156 ], [ %ret.1, %do.body150.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait_entry) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__is_daemon_in_service() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_normalize_to_errno(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @orangefs_cancel_op_in_progress(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tag1 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 1
  %0 = ptrtoint ptr %tag1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tag1, align 8
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %upcall = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7
  %buf_index = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_index, align 4
  %6 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %6, align 8
  %downcall = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 4
  %8 = call ptr @memset(ptr %upcall, i32 0, i32 16752)
  %9 = ptrtoint ptr %upcall to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -16716288, ptr %upcall, align 8
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %1, ptr %req, align 8
  %11 = ptrtoint ptr %downcall to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -16777216, ptr %downcall, align 8
  %status = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %status, align 4
  tail call void @orangefs_new_tag(ptr noundef %op) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_request_list_lock) #5
  %call = tail call zeroext i1 @__is_daemon_in_service() #5
  br i1 %call, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %13 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %op, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %14 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and12 = and i64 %14, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end10.do.end22_crit_edge, label %do.end

if.end10.do.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call ptr @get_opname_string(ptr noundef %op) #5
  %15 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %op, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #5
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, ptr noundef %call16, i32 noundef %16, ptr noundef %comm) #8
  br label %do.end22

do.end22:                                         ; preds = %do.end, %if.end10.do.end22_crit_edge
  %list = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  %21 = load ptr, ptr @orangefs_request_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @orangefs_request_list, ptr noundef %21) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end22.list_add.exit_crit_edge

do.end22.list_add.exit_crit_edge:                 ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @orangefs_request_list, ptr %prev3.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @orangefs_request_list to i32))
  store volatile ptr %list, ptr @orangefs_request_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end22.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_request_list_lock) #5
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %25 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and25 = and i64 %25, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %list_add.exit.cleanup_crit_edge, label %do.end30

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end30:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %list_add.exit.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then9 ], [ false, %entry.cleanup_crit_edge ], [ true, %do.end30 ], [ true, %list_add.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_new_tag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_bufmap_put(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_io_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/waitqueue.c", i32 40, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @purge_waiting_ops._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @purge_waiting_ops._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/orangefs/waitqueue.c", i32 45, i32 3}
!8 = !{ptr @purge_waiting_ops._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @purge_waiting_ops._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/waitqueue.c", i32 79, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @service_operation._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @service_operation._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/orangefs/waitqueue.c", i32 104, i32 4}
!17 = !{ptr @service_operation._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @service_operation._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @service_operation._entry.11, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../fs/orangefs/waitqueue.c", i32 115, i32 2}
!21 = !{ptr @service_operation._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/orangefs/waitqueue.c", i32 129, i32 3}
!24 = !{ptr @service_operation._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @service_operation._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/orangefs/waitqueue.c", i32 147, i32 2}
!28 = !{ptr @service_operation._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @service_operation._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/orangefs/waitqueue.c", i32 164, i32 3}
!32 = !{ptr @service_operation._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @service_operation._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/orangefs/waitqueue.c", i32 180, i32 3}
!36 = !{ptr @service_operation._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @service_operation._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/orangefs/waitqueue.c", i32 197, i32 2}
!40 = !{ptr @service_operation._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @service_operation._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/orangefs/waitqueue.c", i32 230, i32 2}
!44 = !{ptr @orangefs_cancel_op_in_progress._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @orangefs_cancel_op_in_progress._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/orangefs/waitqueue.c", i32 240, i32 2}
!48 = !{ptr @orangefs_cancel_op_in_progress._entry.29, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @orangefs_cancel_op_in_progress._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/orangefs/waitqueue.c", i32 280, i32 3}
!52 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @orangefs_clean_up_interrupted_operation._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @orangefs_clean_up_interrupted_operation._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/orangefs/waitqueue.c", i32 289, i32 3}
!57 = !{ptr @orangefs_clean_up_interrupted_operation._entry.34, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @orangefs_clean_up_interrupted_operation._entry_ptr.36, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/orangefs/waitqueue.c", i32 295, i32 3}
!61 = !{ptr @orangefs_clean_up_interrupted_operation._entry.37, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @orangefs_clean_up_interrupted_operation._entry_ptr.39, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/orangefs/waitqueue.c", i32 347, i32 3}
!65 = !{ptr @.str.41, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wait_for_matching_downcall._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @wait_for_matching_downcall._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/orangefs/waitqueue.c", i32 355, i32 3}
!70 = !{ptr @wait_for_matching_downcall._entry.42, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wait_for_matching_downcall._entry_ptr.44, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/orangefs/waitqueue.c", i32 366, i32 2}
!74 = !{ptr @wait_for_matching_downcall._entry.45, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @wait_for_matching_downcall._entry_ptr.47, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2154878116, i64 2154878604, i64 2154878153, i64 2154878209, i64 2154878243, i64 2154878267, i64 2154878308, i64 2154878329, i64 2154878357, i64 2154878391}
