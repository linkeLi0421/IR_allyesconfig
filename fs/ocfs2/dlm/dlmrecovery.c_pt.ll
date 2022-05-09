; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmrecovery.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmrecovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dlm_work_item = type { %struct.list_head, ptr, ptr, ptr, %union.anon.145 }
%union.anon.145 = type { %struct.dlm_assert_master_priv }
%struct.dlm_assert_master_priv = type { ptr, i8, i32, i8 }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.dlm_finalize_reco = type { i8, i8, i8, i8, i32 }
%struct.dlm_node_iter = type { [8 x i32], i32 }
%struct.dlm_lock_request = type { i8, i8, i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dlm_begin_reco = type { i8, i8, i16, i32 }
%struct.dlm_lockstatus = type { i32, i32, ptr, [64 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dlm_reco_node_data = type { i32, i8, %struct.list_head }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_reco_data_done = type { i8, i8, i16, i32, [64 x i8] }
%struct.dlm_request_all_locks_priv = type { i8, i8 }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.dlm_migratable_lockres = type { i8, i8, i8, i8, i32, i64, [32 x i8], [64 x i8], [0 x %struct.dlm_migratable_lock] }
%struct.dlm_migratable_lock = type { i64, i16, i8, i8, i8, i8, i8, i8 }
%struct.dlm_mig_lockres_priv = type { ptr, i8, i8 }
%struct.dlm_lock = type { %struct.dlm_migratable_lock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.kref, ptr, ptr, ptr, ptr, i8 }
%struct.dlm_master_requery = type { i8, i8, i8, i8, i32, [64 x i8] }
%struct.hlist_head = type { ptr }

@__func__.dlm_dispatch_work = private unnamed_addr constant [18 x i8] c"dlm_dispatch_work\00", align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: work thread has %d work items\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dlm_launch_recovery_thread = private unnamed_addr constant [27 x i8] c"dlm_launch_recovery_thread\00", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"starting dlm recovery thread...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dlm_reco-%s\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.dlm_complete_recovery_thread = private unnamed_addr constant [29 x i8] c"dlm_complete_recovery_thread\00", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"waiting for dlm recovery thread to exit\0A\00", [55 x i8] zeroinitializer }, align 32
@dlm_wait_for_node_death._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015o2dlm: Waiting on the death of node %u in domain %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dlm_wait_for_node_death\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/ocfs2/dlm/dlmrecovery.c\00", [37 x i8] zeroinitializer }, align 32
@dlm_wait_for_node_death._entry_ptr = internal global ptr @dlm_wait_for_node_death._entry, section ".printk_index", align 4
@dlm_wait_for_node_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015o2dlm: Waiting on the recovery of node %u in domain %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlm_wait_for_node_recovery\00", [37 x i8] zeroinitializer }, align 32
@dlm_wait_for_node_recovery._entry_ptr = internal global ptr @dlm_wait_for_node_recovery._entry, section ".printk_index", align 4
@__func__.dlm_wait_for_recovery = private unnamed_addr constant [22 x i8] c"dlm_wait_for_recovery\00", align 1
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: reco thread %d in recovery: state=%d, master=%u, dead=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_request_all_locks_handler = private unnamed_addr constant [30 x i8] c"dlm_request_all_locks_handler\00", align 1
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: node %u sent dead_node=%u, but local dead_node is %u\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.dlm_reco_data_done_handler = private unnamed_addr constant [27 x i8] c"dlm_reco_data_done_handler\00", align 1
@.str.12 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"got DATA DONE: dead_node=%u, reco.dead_node=%u, node_idx=%u, this node=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bug expression: (done->dead_node != dlm->reco.dead_node)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Got DATA DONE: dead_node=%u, reco.dead_node=%u, node_idx=%u, this node=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@dlm_reco_state_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.145, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad ndata state for node %u: state=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"node %u is DONE sending recovery data!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to find recovery node data for node %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"leaving reco data done handler, ret=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.dlm_send_one_lockres = private unnamed_addr constant [21 x i8] c"dlm_send_one_lockres\00", align 1
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sending to %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"argh.  lockres has %d locks.  this will require more than one network packet to migrate\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%.*s: sending dummy lock to %u, %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"migration\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: dlm_send_mig_lockres_msg returned %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: node %u went down while sending %s lockres %.*s\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dlm_mig_lockres_handler = private unnamed_addr constant [24 x i8] c"dlm_mig_lockres_handler\00", align 1
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Domain %s not joined! lockres %.*s, master %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s message received from node %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"all done flag.  all lockres data received!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: node is attempting to migrate lockres %.*s, but marked as dropping  ref!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lock %.*s is already migrating\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"node is attempting to migrate lock %.*s, but marked as recovering!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"recovery has passed me a lockres with an unknown owner.. will need to requery: %.*s\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dlm_do_master_requery = private unnamed_addr constant [22 x i8] c"dlm_do_master_requery\00", align 1
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"node %u responded to master requery with %u\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dlm_master_requery_handler = private unnamed_addr constant [27 x i8] c"dlm_master_requery_handler\00", align 1
@__func__.dlm_move_lockres_to_recovery_list = private unnamed_addr constant [34 x i8] c"dlm_move_lockres_to_recovery_list\00", align 1
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Recovering res %s:%.*s, is already on recovery list!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"node died with convert pending on %.*s. move back to granted list.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"node died with lock pending on %.*s. remove from blocked list and skip.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"node died with unlock pending on %.*s. remove from blocked list and skip.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"node died with cancel pending on %.*s. move back to granted list.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dlm_begin_reco_handler = private unnamed_addr constant [23 x i8] c"dlm_begin_reco_handler\00", align 1
@.str.40 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"%s: node %u wants to recover node %u (%u:%u) but this node is in finalize state, waiting on finalize2\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: node %u wants to recover node %u (%u:%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: new_master %u died, changing to %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: new_master %u NOT DEAD, changing to %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: dead_node previously set to %u, node %u changing it to %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"recovery master %u sees %u as dead, but this node has not yet.  marking %u as dead\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%u not in domain/live_nodes map so setting it in reco map manually\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: recovery started by node %u, for %u (%u:%u)\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.dlm_finalize_reco_handler = private unnamed_addr constant [26 x i8] c"dlm_finalize_reco_handler\00", align 1
@.str.48 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: node %u finalizing recovery stage%d of node %u (%u:%u)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"node %u sent recovery finalize msg, but node %u is supposed to be the new master, dead=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"node %u sent recovery finalize msg for dead node %u, but node %u is supposed to be dead\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"%s: received finalize1 from new master %u for dead node %u, but this node has already received it!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s: received finalize2 from new master %u for dead node %u, but this node did not have finalize1!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: recovery done, reco master was %u, dead now %u, master now %u\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dlm_recovery_thread = private unnamed_addr constant [20 x i8] c"dlm_recovery_thread\00", align 1
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dlm thread running for %s...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"quitting DLM recovery thread\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_do_recovery = private unnamed_addr constant [16 x i8] c"dlm_do_recovery\00", align 1
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: no need do recovery after migrating all lock resources\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"new master %u died while recovering %u!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dead_node %u no longer in recovery map!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s(%d):recovery thread found node %u in the recovery map!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"another node will master this recovery session.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DONE mastering recovery of %s:%u here(this=%u)!\0A\00", [47 x i8] zeroinitializer }, align 32
@dlm_begin_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.7, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015o2dlm: Begin recovery on domain %s for node %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_begin_recovery\00", [45 x i8] zeroinitializer }, align 32
@dlm_begin_recovery._entry_ptr = internal global ptr @dlm_begin_recovery._entry, section ".printk_index", align 4
@__func__.dlm_pick_recovery_master = private unnamed_addr constant [25 x i8] c"dlm_pick_recovery_master\00", align 1
@.str.65 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"starting recovery of %s at %lu, dead=%u, this=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"$RECOVERY\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: dlmlock($RECOVERY) returned %d, lksb=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dlm=%s dlmlock says I got it (this=%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: got reco EX lock, but %u will do the recovery\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: got reco EX lock, but node got recovered already\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: new master is %u but no dead node!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: dead=%u, this=%u, sending begin_reco now\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"got DLM_DENIED, trying LKM_CANCEL\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlmunlock returned %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"dlm=%s dlmlock says another node got it (this=%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: reco master taking awhile\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: reco master %u is ready to recover %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dlm=%s dlmlock says master node died (this=%u)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: got %s from dlmlock($RECOVERY), lksb.status=%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"recovery lock not found\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.dlm_reco_ast = private unnamed_addr constant [13 x i8] c"dlm_reco_ast\00", align 1
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ast for recovery lock fired!, this=%u, dlm=%s\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.dlm_reco_bast = private unnamed_addr constant [14 x i8] c"dlm_reco_bast\00", align 1
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bast for recovery lock fired!, this=%u, dlm=%s\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.dlm_send_begin_reco_message = private unnamed_addr constant [28 x i8] c"dlm_send_begin_reco_message\00", align 1
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: dead node is %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"not sending begin reco to dead node %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not sending begin reco to self\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"attempting to send begin reco msg to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: node %u was down when sending begin reco msg (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"%s: trying to start recovery of node %u, but node %u is waiting for last recovery to complete, backoff for a bit\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"begin reco of dlm %s to node %u returned %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dlm_reco_unlock_ast = private unnamed_addr constant [20 x i8] c"dlm_reco_unlock_ast\00", align 1
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unlockast for recovery lock fired!\0A\00", [60 x i8] zeroinitializer }, align 32
@dlm_print_recovery_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.7, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015o2dlm: Node %u (%s) is the Recovery Master for the dead node %u in domain %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dlm_print_recovery_master\00", [38 x i8] zeroinitializer }, align 32
@dlm_print_recovery_master._entry_ptr = internal global ptr @dlm_print_recovery_master._entry, section ".printk_index", align 4
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"me\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"he\00", [29 x i8] zeroinitializer }, align 32
@dlm_end_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.7, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015o2dlm: End recovery on domain %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_end_recovery\00", [47 x i8] zeroinitializer }, align 32
@dlm_end_recovery._entry_ptr = internal global ptr @dlm_end_recovery._entry, section ".printk_index", align 4
@__func__.dlm_remaster_locks = private unnamed_addr constant [19 x i8] c"dlm_remaster_locks\00", align 1
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: failed to alloc recovery area, retrying\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Requesting lock info from node %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"waited 1 sec for %u, dead? %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: node %u returned %d during recovery, retrying after a short wait\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"node %u died after requesting recovery info for node %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"now receiving recovery data from node %u for dead node %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"already receiving recovery data from node %u for dead node %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"already DONE receiving recovery data from node %u for dead node %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Done requesting all lock info\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"checking recovery state of node %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: node %u still in state %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"receiving\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"requested\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: node %u state is done\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: node %u state is finalize\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pass #%d, all_nodes_done?: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"all nodes are done! send finalize\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"should be done with recovery!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"finishing recovery of %s at %lu, dead=%u, this=%u, new=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.dlm_request_all_locks = private unnamed_addr constant [22 x i8] c"dlm_request_all_locks\00", align 1
@.str.118 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"dlm_request_all_locks: dead node is %u, sending request to %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Error %d send LOCK_REQUEST to node %u to recover dead node %u\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dlm_send_finalize_reco_message = private unnamed_addr constant [31 x i8] c"dlm_send_finalize_reco_message\00", align 1
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"finishing recovery for node %s:%u, stage %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"node %u went down after this node finished recovery.\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.dlm_print_reco_node_status = private unnamed_addr constant [27 x i8] c"dlm_print_reco_node_status\00", align 1
@.str.123 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(%d): recovery info, state=%s, dead=%u, master=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"requesting\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dead\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"finalize-sent\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bad\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: reco state, node %u, state=%s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: lockres %.*s on recovering list\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dlm_request_all_locks_worker = private unnamed_addr constant [29 x i8] c"dlm_request_all_locks_worker\00", align 1
@.str.135 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: recovery worker started, dead=%u, master=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"%s: will not send recovery state, recovery master %u died, thread=(dead=%u,mas=%u) current=(dead=%u,mas=%u)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: reco state invalid: reco(dead=%u, master=%u), request(dead=%u, master=%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: node %u went down while sending recovery state for dead node %u, ret=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s: node %u went down while sending recovery all-done for dead node %u, ret=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.dlm_move_reco_locks_to_list = private unnamed_addr constant [28 x i8] c"dlm_move_reco_locks_to_list\00", align 1
@.str.140 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"AHA! there was a $RECOVERY lock for dead node %u (%s)!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"found lockres owned by dead node while doing recovery for node %u. sending it.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"found UNKNOWN owner while doing recovery for node %u. sending it.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dlm_send_all_done_msg = private unnamed_addr constant [22 x i8] c"dlm_send_all_done_msg\00", align 1
@.str.143 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sending DATA DONE message to %u, my node=%u, dead node=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: Error %d send RECO_DATA_DONE to node %u to recover dead node %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_reco_state_lock\00", [44 x i8] zeroinitializer }, align 32
@dlm_mig_cookie_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.146, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dlm_mig_cookie = internal global { i64, [24 x i8] } { i64 1, [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_mig_cookie_lock\00", [44 x i8] zeroinitializer }, align 32
@__func__.dlm_prepare_lvb_for_migration = private unnamed_addr constant [30 x i8] c"dlm_prepare_lvb_for_migration\00", align 1
@.str.147 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Mismatched lvb in lock cookie=%u:%llu, name=%.*s, node=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.dlm_send_mig_lockres_msg = private unnamed_addr constant [25 x i8] c"dlm_send_mig_lockres_msg\00", align 1
@.str.148 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%.*s: sending mig lockres (%s) to %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: res %.*s, Error %d send MIG_LOCKRES to node %u (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"node %u told me to kill myself!\0A\00", [63 x i8] zeroinitializer }, align 32
@dlm_domain_lock = external dso_local global %struct.spinlock, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.dlm_mig_lockres_worker = private unnamed_addr constant [23 x i8] c"dlm_mig_lockres_worker\00", align 1
@.str.151 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dlm_lockres_master_requery ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"lockres %.*s not claimed.  this node will take it.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"master needs to respond to sender that node %u still owns %.*s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dlm_process_recovery_data returned  %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dlm_process_recovery_data succeeded\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dlm_lockres_master_requery = private unnamed_addr constant [27 x i8] c"dlm_lockres_master_requery\00", align 1
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lock master is %u\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.dlm_process_recovery_data = private unnamed_addr constant [26 x i8] c"dlm_process_recovery_data\00", align 1
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"running %d locks for this lockres\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%.*s: dummy lock for %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Could not find local lock with cookie %u:%llu, node %u, list %u, flags 0x%x, type %d, conv %d, highest blocked %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Mismatched node# in lock cookie %u:%llu, name %.*s, node %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Migrate lock cookie %u:%llu, node %u, list %u, flags 0x%x, type %d, conv %d, highest blocked %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Lock cookie %u:%llu was on list %u instead of list %u for %.*s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"just reordered a local lock!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%.*s: received bad lvb! type=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@dlm_process_recovery_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @__func__.dlm_process_recovery_data, ptr @.str.7, i32 1958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lockres lvb=[\00", [18 x i8] zeroinitializer }, align 32
@dlm_process_recovery_data._entry_ptr = internal global ptr @dlm_process_recovery_data._entry, section ".printk_index", align 4
@dlm_process_recovery_data._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @__func__.dlm_process_recovery_data, ptr @.str.7, i32 1960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@dlm_process_recovery_data._entry_ptr.168 = internal global ptr @dlm_process_recovery_data._entry.166, section ".printk_index", align 4
@dlm_process_recovery_data._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @__func__.dlm_process_recovery_data, ptr @.str.7, i32 1961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"]\0Amigrated lvb=[\00", [47 x i8] zeroinitializer }, align 32
@dlm_process_recovery_data._entry_ptr.171 = internal global ptr @dlm_process_recovery_data._entry.169, section ".printk_index", align 4
@dlm_process_recovery_data._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @__func__.dlm_process_recovery_data, ptr @.str.7, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_process_recovery_data._entry_ptr.173 = internal global ptr @dlm_process_recovery_data._entry.172, section ".printk_index", align 4
@dlm_process_recovery_data._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @__func__.dlm_process_recovery_data, ptr @.str.7, i32 1964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@dlm_process_recovery_data._entry_ptr.176 = internal global ptr @dlm_process_recovery_data._entry.174, section ".printk_index", align 4
@.str.177 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%.*s: %u:%llu: lock already exists on this lockres!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"sent lock: type=%d, conv=%d, node=%u, cookie=%u:%llu, queue=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%.*s: added lock for node %u, setting refmap bit\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"done running all the locks\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.__dlm_hb_node_down = private unnamed_addr constant [19 x i8] c"__dlm_hb_node_down\00", align 1
@.str.181 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: recovery master %d just died\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: dead master %d had reached finalize1 state, clearing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Clearing join state for node %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"for domain %s, node %d is already dead. another node likely did recovery already.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"node %u already removed from domain!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"node %u being removed from domain map!\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.dlm_do_local_recovery_cleanup = private unnamed_addr constant [30 x i8] c"dlm_do_local_recovery_cleanup\00", align 1
@.str.187 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"%s:%.*s: owned by dead node %u, this node was dropping its ref when master died. continue, purging the lockres.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s:%.*s: dead node %u had a ref, but had no locks and had not purged before dying\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.dlm_revalidate_lvb = private unnamed_addr constant [19 x i8] c"dlm_revalidate_lvb\00", align 1
@.str.189 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"clearing %.*s lvb, dead node %u had EX\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.dlm_free_dead_locks = private unnamed_addr constant [20 x i8] c"dlm_free_dead_locks\00", align 1
@.str.190 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%.*s: freed %u locks for dead node %u, dropping ref from lockres\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%.*s: freed %u locks for dead node %u, but ref was not set\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.dlm_set_reco_master = private unnamed_addr constant [20 x i8] c"dlm_set_reco_master\00", align 1
@.str.192 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: changing new_master from %u to %u\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dlm_set_reco_dead_node = private unnamed_addr constant [23 x i8] c"dlm_set_reco_dead_node\00", align 1
@.str.193 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: changing dead_node from %u to %u\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.dlm_finish_local_lockres_recovery = private unnamed_addr constant [34 x i8] c"dlm_finish_local_lockres_recovery\00", align 1
@.str.194 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: res %.*s, Changing owner from %u to %u\0A\00", [52 x i8] zeroinitializer }, align 32
@switch.table.dlm_print_reco_node_status = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.129, ptr @.str.127, ptr @.str.128, ptr @.str.111, ptr @.str.110, ptr @.str.130, ptr @.str.131], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 21, i64 39]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 4294967285]
@__sancov_gen_cov_switch_values.197 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.198 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.199 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.200 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.201 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.202 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.205 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.206 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.208 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.209 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 144, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 181, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 183, i32 30 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 186, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 197, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 343, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 360, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 391, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 825, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 980, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 984, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c"dlm_reco_state_lock\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 999, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1010, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1026, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1030, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1272, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1277, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1306, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1319, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1323, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1363, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1379, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1383, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1403, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1420, i32 5 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1425, i32 5 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1495, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1675, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1686, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2055, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2072, i32 5 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2080, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2101, i32 5 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2112, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2767, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2777, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2786, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2790, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2797, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2804, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2809, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2822, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2901, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2908, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2914, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2924, i32 5 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2936, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2950, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 283, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 301, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 435, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 444, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 461, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 472, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 495, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 521, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 404, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2551, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2557, i32 9 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2560, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2564, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2570, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2581, i32 5 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2584, i32 6 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2596, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2614, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2624, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2627, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2636, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2641, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2645, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2652, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2661, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2519, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2525, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2677, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2692, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2697, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2701, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2711, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2722, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2735, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2530, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 421, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 415, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 547, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 559, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 582, i32 6 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 588, i32 6 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 606, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 614, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 619, i32 5 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 624, i32 5 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 632, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 643, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 661, i32 6 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 668, i32 6 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 672, i32 6 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 679, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 695, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 704, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 706, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 786, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 789, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 802, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2840, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2869, i32 5 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 233, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 242, i32 10 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 245, i32 10 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 248, i32 10 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 257, i32 10 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 260, i32 10 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 263, i32 10 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 266, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 270, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 878, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 886, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 892, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 916, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 932, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1050, i32 6 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1067, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1072, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 950, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 957, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 83, i32 8 }
@___asan_gen_.661 = private unnamed_addr constant [20 x i8] c"dlm_mig_cookie_lock\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [15 x i8] c"dlm_mig_cookie\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 85, i32 12 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 84, i32 8 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1195, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1117, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1129, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1141, i32 5 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1555, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1560, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1567, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1578, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1580, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1651, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1802, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1809, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1850, i32 5 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1864, i32 5 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1871, i32 5 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1884, i32 5 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1903, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1954, i32 7 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1958, i32 7 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1960, i32 8 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1961, i32 7 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1963, i32 8 }
@___asan_gen_.745 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1964, i32 7 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1994, i32 5 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2000, i32 5 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2023, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2030, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2425, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2431, i32 4 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2440, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2446, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2456, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2469, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2388, i32 6 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2407, i32 6 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2246, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2298, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2302, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 114, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 105, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.803 = private constant [30 x i8] c"../fs/ocfs2/dlm/dlmrecovery.c\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2139, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant [40 x i8] c"switch.table.dlm_print_reco_node_status\00", align 1
@llvm.compiler.used = appending global [209 x ptr] [ptr @dlm_begin_recovery._entry, ptr @dlm_begin_recovery._entry_ptr, ptr @dlm_end_recovery._entry, ptr @dlm_end_recovery._entry_ptr, ptr @dlm_print_recovery_master._entry, ptr @dlm_print_recovery_master._entry_ptr, ptr @dlm_process_recovery_data._entry, ptr @dlm_process_recovery_data._entry.166, ptr @dlm_process_recovery_data._entry.169, ptr @dlm_process_recovery_data._entry.172, ptr @dlm_process_recovery_data._entry.174, ptr @dlm_process_recovery_data._entry_ptr, ptr @dlm_process_recovery_data._entry_ptr.168, ptr @dlm_process_recovery_data._entry_ptr.171, ptr @dlm_process_recovery_data._entry_ptr.173, ptr @dlm_process_recovery_data._entry_ptr.176, ptr @dlm_wait_for_node_death._entry, ptr @dlm_wait_for_node_death._entry_ptr, ptr @dlm_wait_for_node_recovery._entry, ptr @dlm_wait_for_node_recovery._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @dlm_reco_state_lock, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @dlm_mig_cookie_lock, ptr @dlm_mig_cookie, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.170, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @switch.table.dlm_print_reco_node_status], section "llvm.metadata"
@0 = internal global [199 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_wait_for_node_death._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_wait_for_node_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_reco_state_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_begin_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_print_recovery_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_end_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_mig_cookie_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_mig_cookie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_recovery_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_recovery_data._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_recovery_data._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_recovery_data._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_recovery_data._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_print_reco_node_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_dispatch_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -868
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  %work_lock = getelementptr i8, ptr %work, i32 52
  call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_list = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %work_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmp_list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 48
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tmp_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %tmp_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %work_list, ptr %work_list, align 4
  store ptr %work_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %list_splice_init.exit
  %tot.0 = phi i32 [ 0, %list_splice_init.exit ], [ %inc, %for.cond.for.cond_crit_edge ]
  %item.0.in = phi ptr [ %tmp_list, %list_splice_init.exit ], [ %item.0, %for.cond.for.cond_crit_edge ]
  %13 = ptrtoint ptr %item.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %item.0 = load ptr, ptr %item.0.in, align 4
  %cmp.not = icmp eq ptr %item.0, %tmp_list
  %inc = add i32 %tot.0, 1
  br i1 %cmp.not, label %do.body, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.body:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %14 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr i8, ptr %work, i32 -680
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_dispatch_work, i32 noundef 144, ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %tot.0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %17 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tmp_list, align 4
  %cmp23.not67 = icmp eq ptr %18, %tmp_list
  br i1 %cmp23.not67, label %do.body.for.end49_crit_edge, label %do.body.for.body25_crit_edge

do.body.for.body25_crit_edge:                     ; preds = %do.body
  br label %for.body25

do.body.for.end49_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.body25:                                       ; preds = %do.end42.for.body25_crit_edge, %do.body.for.body25_crit_edge
  %item.168 = phi ptr [ %next1.070, %do.end42.for.body25_crit_edge ], [ %18, %do.body.for.body25_crit_edge ]
  %19 = ptrtoint ptr %item.168 to i32
  call void @__asan_load4_noabort(i32 %19)
  %next1.070 = load ptr, ptr %item.168, align 4
  %func = getelementptr inbounds %struct.dlm_work_item, ptr %item.168, i32 0, i32 1
  %20 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.168) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body25.list_del_init.exit_crit_edge

for.body25.list_del_init.exit_crit_edge:          ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.168, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %item.168 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %item.168, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body25.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %item.168 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %item.168, ptr %item.168, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %item.168, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %item.168, ptr %prev.i3.i, align 4
  %dlm28 = getelementptr inbounds %struct.dlm_work_item, ptr %item.168, i32 0, i32 2
  %30 = ptrtoint ptr %dlm28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dlm28, align 4
  %cmp29.not = icmp eq ptr %31, %add.ptr
  br i1 %cmp29.not, label %do.end42, label %do.body34, !prof !433

do.body34:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #10, !srcloc !434
  unreachable

do.end42:                                         ; preds = %list_del_init.exit
  %data = getelementptr inbounds %struct.dlm_work_item, ptr %item.168, i32 0, i32 3
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  call void %21(ptr noundef %item.168, ptr noundef %33) #10
  call void @dlm_put(ptr noundef %add.ptr) #10
  call void @kfree(ptr noundef %item.168) #10
  %cmp23.not = icmp eq ptr %next1.070, %tmp_list
  br i1 %cmp23.not, label %do.end42.for.end49_crit_edge, label %do.end42.for.body25_crit_edge

do.end42.for.body25_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

do.end42.for.end49_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.end49:                                        ; preds = %do.end42.for.end49_crit_edge, %do.body.for.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_kick_recovery_thread(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm_reco_thread_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %dlm_reco_thread_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_launch_recovery_thread(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m19 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1088, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_launch_recovery_thread, i32 noundef 181, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dlm_recovery_thread, ptr noundef %dlm, i32 noundef -1, ptr noundef nonnull @.str.2, ptr noundef %2) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end4

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 @wake_up_process(ptr noundef %call) #10
  %dlm_reco_thread_task = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 36
  %3 = ptrtoint ptr %dlm_reco_thread_task to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dlm_reco_thread_task, align 4
  br label %return

if.then7:                                         ; preds = %entry
  %dlm_reco_thread_task43 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 36
  %4 = ptrtoint ptr %dlm_reco_thread_task43 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dlm_reco_thread_task43, align 4
  %5 = ptrtoint ptr %call to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body18 [
    i32 -512, label %if.then7.if.end25_crit_edge
    i32 -4, label %if.then7.if.end25_crit_edge45
    i32 524289, label %if.then7.if.end25_crit_edge46
    i32 -28, label %if.then7.if.end25_crit_edge47
    i32 -122, label %if.then7.if.end25_crit_edge48
  ]

if.then7.if.end25_crit_edge48:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then7.if.end25_crit_edge47:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then7.if.end25_crit_edge46:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then7.if.end25_crit_edge45:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then7.if.end25_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m19) #10
  %7 = ptrtoint ptr %_m19 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606848064, ptr %_m19, align 8
  %conv = sext i32 %5 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m19, ptr noundef nonnull @__func__.dlm_launch_recovery_thread, i32 noundef 186, ptr noundef nonnull @.str.3, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m19) #10
  br label %if.end25

if.end25:                                         ; preds = %do.body18, %if.then7.if.end25_crit_edge, %if.then7.if.end25_crit_edge45, %if.then7.if.end25_crit_edge46, %if.then7.if.end25_crit_edge47, %if.then7.if.end25_crit_edge48
  %8 = ptrtoint ptr %dlm_reco_thread_task43 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dlm_reco_thread_task43, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.end4
  %retval.0 = phi i32 [ -22, %if.end25 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_recovery_thread(ptr noundef %data) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i12.i.i = alloca i32, align 4
  %_m.i13.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i298.i = alloca i32, align 4
  %_m.i.i299.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i300.i = alloca i32, align 4
  %fr.i.i.i = alloca %struct.dlm_finalize_reco, align 8
  %iter.i.i276.i = alloca %struct.dlm_node_iter, align 4
  %status.i21.i.i = alloca i32, align 4
  %_m.i22.i.i = alloca i64, align 8
  %_m28.i.i.i = alloca i64, align 8
  %_m40.i.i.i = alloca i64, align 8
  %lr.i.i.i = alloca %struct.dlm_lock_request, align 8
  %status.i.i277.i = alloca i32, align 4
  %_m.i.i278.i = alloca i64, align 8
  %_m2.i.i.i = alloca i64, align 8
  %_m14.i.i.i = alloca i64, align 8
  %_m.i279.i = alloca i64, align 8
  %_m27.i.i = alloca i64, align 8
  %_m65.i.i = alloca i64, align 8
  %__wq_entry.i280.i = alloca %struct.wait_queue_entry, align 4
  %_m136.i.i = alloca i64, align 8
  %_m149.i.i = alloca i64, align 8
  %_m174.i.i = alloca i64, align 8
  %_m187.i.i = alloca i64, align 8
  %_m199.i.i = alloca i64, align 8
  %_m211.i.i = alloca i64, align 8
  %_m228.i.i = alloca i64, align 8
  %_m252.i.i = alloca i64, align 8
  %_m264.i.i = alloca i64, align 8
  %_m282.i.i = alloca i64, align 8
  %_m294.i.i = alloca i64, align 8
  %_m310.i.i = alloca i64, align 8
  %_m322.i.i = alloca i64, align 8
  %_m341.i.i = alloca i64, align 8
  %_m358.i.i = alloca i64, align 8
  %_m386.i.i = alloca i64, align 8
  %_m401.i.i = alloca i64, align 8
  %_m409.i.i = alloca i64, align 8
  %__wq_entry454.i.i = alloca %struct.wait_queue_entry, align 4
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  %_m.i357.i.i = alloca i64, align 8
  %br.i.i.i = alloca %struct.dlm_begin_reco, align 8
  %iter.i.i.i = alloca %struct.dlm_node_iter, align 4
  %status.i.i.i = alloca i32, align 4
  %_m.i.i.i = alloca i64, align 8
  %_m11.i.i.i = alloca i64, align 8
  %_m26.i.i.i = alloca i64, align 8
  %_m35.i.i.i = alloca i64, align 8
  %_m52.i.i.i = alloca i64, align 8
  %_m67.i.i.i = alloca i64, align 8
  %_m95.i.i.i = alloca i64, align 8
  %_m105.i.i.i = alloca i64, align 8
  %_m117.i.i.i = alloca i64, align 8
  %lksb.i.i = alloca %struct.dlm_lockstatus, align 4
  %_m.i251.i = alloca i64, align 8
  %_m3.i.i = alloca i64, align 8
  %_m15.i.i = alloca i64, align 8
  %_m29.i.i = alloca i64, align 8
  %_m46.i.i = alloca i64, align 8
  %_m61.i.i = alloca i64, align 8
  %_m85.i.i = alloca i64, align 8
  %_m124.i.i = alloca i64, align 8
  %_m137.i.i = alloca i64, align 8
  %_m150.i.i = alloca i64, align 8
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %_m215.i.i = alloca i64, align 8
  %_m225.i.i = alloca i64, align 8
  %_m244.i.i = alloca i64, align 8
  %_m256.i.i = alloca i64, align 8
  %_m272.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i243.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i228.i = alloca i32, align 4
  %_m.i229.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i213.i = alloca i32, align 4
  %_m.i214.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i204.i = alloca i32, align 4
  %_m.i205.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m12.i = alloca i64, align 8
  %_m51.i = alloca i64, align 8
  %_m72.i = alloca i64, align 8
  %_m104.i = alloca i64, align 8
  %_m132.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %_m81 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_recovery_thread, i32 noundef 283, ptr noundef nonnull @.str.54, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call1137 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call1137, label %entry.do.body80_crit_edge, label %while.body.lr.ph

entry.do.body80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

while.body.lr.ph:                                 ; preds = %entry
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  %migrate_done.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 15
  %new_master.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 2
  %recovery_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 20
  %dead_node.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 3
  %dlm_reco_thread_task.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 36
  %state.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 4
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %dlm_reco_thread_wq.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 39
  %3 = getelementptr inbounds %struct.dlm_begin_reco, ptr %br.i.i.i, i32 0, i32 1
  %domain_map.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 18
  %curnode.i.i.i.i = getelementptr inbounds %struct.dlm_node_iter, ptr %iter.i.i.i, i32 0, i32 1
  %key.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 13
  %event.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 6
  %node_map.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 5
  %node_data.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 1
  %prev.i.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 1, i32 1
  %4 = getelementptr inbounds %struct.dlm_lock_request, ptr %lr.i.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dlm_finalize_reco, ptr %fr.i.i.i, i32 0, i32 1
  %curnode.i.i.i293.i = getelementptr inbounds %struct.dlm_node_iter, ptr %iter.i.i276.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call2 = call i32 @dlm_domain_fully_joined(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body.if.end29_crit_edge, label %if.then4

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then4:                                         ; preds = %while.body
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %6 = ptrtoint ptr %migrate_done.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %migrate_done.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end4.i, label %do.body.i

do.body.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %8 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1088, ptr %_m.i, align 8
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_do_recovery, i32 noundef 436, ptr noundef nonnull @.str.56, ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %if.end29

if.end4.i:                                        ; preds = %if.then4
  %11 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %new_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.not.i = icmp eq i8 %12, -1
  br i1 %cmp.not.i, label %if.end4.i.if.end24.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end24.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %conv.i = zext i8 %12 to i32
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %recovery_map.i, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not.i = icmp eq i32 %16, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %do.body11.i

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.body11.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12.i) #10
  %17 = ptrtoint ptr %_m12.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1088, ptr %_m12.i, align 8
  %18 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dead_node.i, align 1
  %conv20.i = zext i8 %19 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12.i, ptr noundef nonnull @__func__.dlm_do_recovery, i32 noundef 445, ptr noundef nonnull @.str.57, i32 noundef %conv.i, i32 noundef %conv20.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %20 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock.i, align 4
  %21 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %dlm_set_reco_master.exit.i, !prof !435

do.body4.i.i:                                     ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

dlm_set_reco_master.exit.i:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %22 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1088, ptr %_m.i.i, align 8
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %25 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %new_master.i, align 4
  %conv.i.i = zext i8 %26 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_set_reco_master, i32 noundef 115, ptr noundef nonnull @.str.192, ptr noundef %24, i32 noundef %conv.i.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  %27 = ptrtoint ptr %new_master.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %new_master.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %dlm_set_reco_master.exit.i, %land.lhs.true.i.if.end24.i_crit_edge, %if.end4.i.if.end24.i_crit_edge
  %28 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dead_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp28.i = icmp eq i8 %29, -1
  br i1 %cmp28.i, label %if.then30.i, label %if.else41.i

if.then30.i:                                      ; preds = %if.end24.i
  %call33.i = call i32 @_find_first_bit_be(ptr noundef %recovery_map.i, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call33.i)
  %30 = icmp ugt i32 %call33.i, 254
  br i1 %30, label %if.then38.i, label %if.else.i

if.then38.i:                                      ; preds = %if.then30.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i204.i)
  %31 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %agg.tmp.sroa.0.0.copyload.i.i207.i = load volatile i32, ptr %spinlock.i, align 4
  %32 = ptrtoint ptr %agg.tmp.sroa.0.i.i204.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i207.i, ptr %agg.tmp.sroa.0.i.i204.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i208.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i207.i, 16
  %conv.i.i.i209.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i207.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i209.i, i32 %lock.sroa.0.0.extract.shift.i.i.i208.i)
  %cmp.i.i.not.i210.i = icmp eq i32 %conv.i.i.i209.i, %lock.sroa.0.0.extract.shift.i.i.i208.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i204.i)
  br i1 %cmp.i.i.not.i210.i, label %do.body4.i211.i, label %do.end7.i.i, !prof !435

do.body4.i211.i:                                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

do.end7.i.i:                                      ; preds = %if.then38.i
  %33 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dead_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp.not.i.i = icmp eq i8 %34, -1
  br i1 %cmp.not.i.i, label %do.end7.i.i.if.then68.i_crit_edge, label %do.body12.i.i

do.end7.i.i.if.then68.i_crit_edge:                ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68.i

do.body12.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i205.i) #10
  %35 = ptrtoint ptr %_m.i205.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1088, ptr %_m.i205.i, align 8
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  %conv17.i.i = zext i8 %34 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i205.i, ptr noundef nonnull @__func__.dlm_set_reco_dead_node, i32 noundef 106, ptr noundef nonnull @.str.193, ptr noundef %37, i32 noundef %conv17.i.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i205.i) #10
  br label %if.then68.i

if.else.i:                                        ; preds = %if.then30.i
  %conv39.i = trunc i32 %call33.i to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i213.i)
  %38 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %agg.tmp.sroa.0.0.copyload.i.i216.i = load volatile i32, ptr %spinlock.i, align 4
  %39 = ptrtoint ptr %agg.tmp.sroa.0.i.i213.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i216.i, ptr %agg.tmp.sroa.0.i.i213.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i217.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i216.i, 16
  %conv.i.i.i218.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i216.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i218.i, i32 %lock.sroa.0.0.extract.shift.i.i.i217.i)
  %cmp.i.i.not.i219.i = icmp eq i32 %conv.i.i.i218.i, %lock.sroa.0.0.extract.shift.i.i.i217.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i213.i)
  br i1 %cmp.i.i.not.i219.i, label %do.body4.i220.i, label %do.end7.i223.i, !prof !435

do.body4.i220.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

do.end7.i223.i:                                   ; preds = %if.else.i
  %40 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dead_node.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %conv39.i)
  %cmp.not.i222.i = icmp eq i8 %41, %conv39.i
  br i1 %cmp.not.i222.i, label %do.end7.i223.i.if.end62.thread328.i_crit_edge, label %do.body12.i226.i

do.end7.i223.i.if.end62.thread328.i_crit_edge:    ; preds = %do.end7.i223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.thread328.i

do.body12.i226.i:                                 ; preds = %do.end7.i223.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i214.i) #10
  %42 = ptrtoint ptr %_m.i214.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1088, ptr %_m.i214.i, align 8
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %conv17.i225.i = zext i8 %41 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i214.i, ptr noundef nonnull @__func__.dlm_set_reco_dead_node, i32 noundef 106, ptr noundef nonnull @.str.193, ptr noundef %44, i32 noundef %conv17.i225.i, i32 noundef %call33.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i214.i) #10
  br label %if.end62.thread328.i

if.end62.thread328.i:                             ; preds = %do.body12.i226.i, %do.end7.i223.i.if.end62.thread328.i_crit_edge
  %45 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv39.i, ptr %dead_node.i, align 1
  br label %do.body71.i

if.else41.i:                                      ; preds = %if.end24.i
  %conv27.i = zext i8 %29 to i32
  %div3.i199.i = lshr i32 %conv27.i, 5
  %arrayidx.i200.i = getelementptr i32, ptr %recovery_map.i, i32 %div3.i199.i
  %46 = ptrtoint ptr %arrayidx.i200.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i200.i, align 4
  %and.i201.i = and i32 %conv27.i, 31
  %48 = shl nuw i32 1, %and.i201.i
  %49 = and i32 %47, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool48.not.i = icmp eq i32 %49, 0
  br i1 %tobool48.not.i, label %do.body50.i, label %if.else41.i.do.body71.i_crit_edge

if.else41.i.do.body71.i_crit_edge:                ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body71.i

do.body50.i:                                      ; preds = %if.else41.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m51.i) #10
  %50 = ptrtoint ptr %_m51.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1152921504606848064, ptr %_m51.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m51.i, ptr noundef nonnull @__func__.dlm_do_recovery, i32 noundef 462, ptr noundef nonnull @.str.58, i32 noundef %conv27.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m51.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i228.i)
  %51 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %agg.tmp.sroa.0.0.copyload.i.i231.i = load volatile i32, ptr %spinlock.i, align 4
  %52 = ptrtoint ptr %agg.tmp.sroa.0.i.i228.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i231.i, ptr %agg.tmp.sroa.0.i.i228.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i232.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i231.i, 16
  %conv.i.i.i233.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i231.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i233.i, i32 %lock.sroa.0.0.extract.shift.i.i.i232.i)
  %cmp.i.i.not.i234.i = icmp eq i32 %conv.i.i.i233.i, %lock.sroa.0.0.extract.shift.i.i.i232.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i228.i)
  br i1 %cmp.i.i.not.i234.i, label %do.body4.i235.i, label %do.end7.i238.i, !prof !435

do.body4.i235.i:                                  ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

do.end7.i238.i:                                   ; preds = %do.body50.i
  %53 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dead_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp.not.i237.i = icmp eq i8 %54, -1
  br i1 %cmp.not.i237.i, label %do.end7.i238.i.if.then68.i_crit_edge, label %do.body12.i241.i

do.end7.i238.i.if.then68.i_crit_edge:             ; preds = %do.end7.i238.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68.i

do.body12.i241.i:                                 ; preds = %do.end7.i238.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i229.i) #10
  %55 = ptrtoint ptr %_m.i229.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1088, ptr %_m.i229.i, align 8
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 4
  %conv17.i240.i = zext i8 %54 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i229.i, ptr noundef nonnull @__func__.dlm_set_reco_dead_node, i32 noundef 106, ptr noundef nonnull @.str.193, ptr noundef %57, i32 noundef %conv17.i240.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i229.i) #10
  br label %if.then68.i

if.then68.i:                                      ; preds = %do.body12.i241.i, %do.end7.i238.i.if.then68.i_crit_edge, %do.body12.i.i, %do.end7.i.i.if.then68.i_crit_edge
  %58 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %dead_node.i, align 1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %if.end29

do.body71.i:                                      ; preds = %if.else41.i.do.body71.i_crit_edge, %if.end62.thread328.i
  %conv80.i.pre-phi = phi i32 [ %conv27.i, %if.else41.i.do.body71.i_crit_edge ], [ %call33.i, %if.end62.thread328.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m72.i) #10
  %59 = ptrtoint ptr %_m72.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 1088, ptr %_m72.i, align 8
  %60 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name, align 4
  %62 = ptrtoint ptr %dlm_reco_thread_task.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dlm_reco_thread_task.i, align 4
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m72.i, ptr noundef nonnull @__func__.dlm_do_recovery, i32 noundef 474, ptr noundef nonnull @.str.59, ptr noundef %61, i32 noundef %65, i32 noundef %conv80.i.pre-phi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m72.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i243.i)
  %66 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %agg.tmp.sroa.0.0.copyload.i.i245.i = load volatile i32, ptr %spinlock.i, align 4
  %67 = ptrtoint ptr %agg.tmp.sroa.0.i.i243.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i245.i, ptr %agg.tmp.sroa.0.i.i243.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i246.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i245.i, 16
  %conv.i.i.i247.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i245.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i247.i, i32 %lock.sroa.0.0.extract.shift.i.i.i246.i)
  %cmp.i.i.not.i248.i = icmp eq i32 %conv.i.i.i247.i, %lock.sroa.0.0.extract.shift.i.i.i246.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i243.i)
  br i1 %cmp.i.i.not.i248.i, label %do.body4.i249.i, label %do.body8.i.i, !prof !435

do.body4.i249.i:                                  ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #10, !srcloc !438
  unreachable

do.body8.i.i:                                     ; preds = %do.body71.i
  %68 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %state.i.i, align 2
  %70 = and i16 %69, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool9.not.i.i = icmp eq i16 %70, 0
  br i1 %tobool9.not.i.i, label %dlm_begin_recovery.exit.i, label %do.body17.i.i, !prof !433

do.body17.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 403, 0\0A.popsection", ""() #10, !srcloc !439
  unreachable

dlm_begin_recovery.exit.i:                        ; preds = %do.body8.i.i
  %71 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name, align 4
  %73 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dead_node.i, align 1
  %conv26.i.i = zext i8 %74 to i32
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %72, i32 noundef %conv26.i.i) #13
  %75 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %state.i.i, align 2
  %77 = or i16 %76, 1
  store i16 %77, ptr %state.i.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %78 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %new_master.i, align 4
  %80 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %81)
  %cmp89.i = icmp eq i8 %79, %81
  br i1 %cmp89.i, label %dlm_begin_recovery.exit.i.master_here.i_crit_edge, label %if.end92.i

dlm_begin_recovery.exit.i.master_here.i_crit_edge: ; preds = %dlm_begin_recovery.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %master_here.i

if.end92.i:                                       ; preds = %dlm_begin_recovery.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp96.i = icmp eq i8 %79, -1
  br i1 %cmp96.i, label %if.then98.i, label %if.end92.i.if.end111.i_crit_edge

if.end92.i.if.end111.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i

if.then98.i:                                      ; preds = %if.end92.i
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %lksb.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i251.i) #10
  %82 = ptrtoint ptr %_m.i251.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 1088, ptr %_m.i251.i, align 8
  %83 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %86 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dead_node.i, align 1
  %conv.i254.i = zext i8 %87 to i32
  %conv1.i.i = zext i8 %81 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i251.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2552, ptr noundef nonnull @.str.65, ptr noundef %84, i32 noundef %85, i32 noundef %conv.i254.i, i32 noundef %conv1.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i251.i) #10
  br label %again.i.i

again.i.i:                                        ; preds = %again.i.i.backedge, %if.then98.i
  %88 = call ptr @memset(ptr %lksb.i.i, i32 0, i32 76)
  %call.i.i = call i32 @dlmlock(ptr noundef %data, i32 noundef 5, ptr noundef nonnull %lksb.i.i, i32 noundef -2147483136, ptr noundef nonnull @.str.66, i32 noundef 9, ptr noundef nonnull @dlm_reco_ast, ptr noundef %data, ptr noundef nonnull @dlm_reco_bast) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m3.i.i) #10
  %89 = ptrtoint ptr %_m3.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 1088, ptr %_m3.i.i, align 8
  %90 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name, align 4
  %92 = ptrtoint ptr %lksb.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lksb.i.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m3.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2561, ptr noundef nonnull @.str.67, ptr noundef %91, i32 noundef %call.i.i, i32 noundef %93) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m3.i.i) #10
  %94 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %call.i.i, label %if.else254.i.i [
    i32 0, label %do.body14.i.i
    i32 21, label %do.body149.i.i
    i32 39, label %do.body243.i.i
  ]

do.body14.i.i:                                    ; preds = %again.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m15.i.i) #10
  %95 = ptrtoint ptr %_m15.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 1088, ptr %_m15.i.i, align 8
  %96 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name, align 4
  %98 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %node_num.i, align 4
  %conv21.i.i = zext i8 %99 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m15.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2565, ptr noundef nonnull @.str.68, ptr noundef %97, i32 noundef %conv21.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m15.i.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %100 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %new_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp.i.not.i.i = icmp eq i8 %101, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.end81.thread.i.i

if.end81.thread.i.i:                              ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29.i.i) #10
  %102 = ptrtoint ptr %_m29.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 1088, ptr %_m29.i.i, align 8
  %103 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name, align 4
  %105 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %new_master.i, align 4
  %conv35.i.i = zext i8 %106 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2572, ptr noundef nonnull @.str.69, ptr noundef %104, i32 noundef %conv35.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29.i.i) #10
  br label %if.end118.i.i

if.else.i.i:                                      ; preds = %do.body14.i.i
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %107 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %dead_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %cmp42.i.i = icmp eq i8 %108, -1
  br i1 %cmp42.i.i, label %if.then44.i.i, label %do.body84.i.i

if.then44.i.i:                                    ; preds = %if.else.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46.i.i) #10
  %109 = ptrtoint ptr %_m46.i.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 1088, ptr %_m46.i.i, align 8
  %110 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2582, ptr noundef nonnull @.str.70, ptr noundef %111) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46.i.i) #10
  %112 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %new_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %113)
  %cmp57.not.i.i = icmp eq i8 %113, -1
  br i1 %cmp57.not.i.i, label %if.end81.i.i, label %do.body60.i.i

do.body60.i.i:                                    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61.i.i) #10
  %114 = ptrtoint ptr %_m61.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 1152921504606848064, ptr %_m61.i.i, align 8
  %115 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name, align 4
  %conv68.i.i = zext i8 %113 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2586, ptr noundef nonnull @.str.71, ptr noundef %116, i32 noundef %conv68.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61.i.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2587, 0\0A.popsection", ""() #10, !srcloc !440
  unreachable

if.end81.i.i:                                     ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %if.end118.i.i

do.body84.i.i:                                    ; preds = %if.else.i.i
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85.i.i) #10
  %117 = ptrtoint ptr %_m85.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 1088, ptr %_m85.i.i, align 8
  %118 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name, align 4
  %120 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %dead_node.i, align 1
  %conv92.i.i = zext i8 %121 to i32
  %122 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %node_num.i, align 4
  %conv94.i.i = zext i8 %123 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2598, ptr noundef nonnull @.str.72, ptr noundef %119, i32 noundef %conv92.i.i, i32 noundef %conv94.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85.i.i) #10
  %124 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %dead_node.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %br.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i.i) #10
  %126 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %status.i.i.i, align 4, !annotation !441
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  %127 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 1088, ptr %_m.i.i.i, align 8
  %128 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %name, align 4
  %conv.i.i.i = zext i8 %125 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2677, ptr noundef nonnull @.str.83, ptr noundef %129, i32 noundef %conv.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %130 = call ptr @memcpy(ptr %iter.i.i.i, ptr %domain_map.i.i.i, i32 32)
  %131 = ptrtoint ptr %curnode.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %curnode.i.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @_clear_bit(i32 noundef %conv.i.i.i, ptr noundef nonnull %iter.i.i.i) #10
  %132 = ptrtoint ptr %br.i.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 0, ptr %br.i.i.i, align 8
  %133 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %node_num.i, align 4
  store i8 %134, ptr %br.i.i.i, align 8
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %125, ptr %3, align 1
  %136 = ptrtoint ptr %curnode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %curnode.i.i.i.i, align 4
  %add.i166.i.i.i = add i32 %137, 1
  %call.i167.i.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter.i.i.i, i32 noundef 255, i32 noundef %add.i166.i.i.i) #10
  %138 = call i32 @llvm.smin.i32(i32 %call.i167.i.i.i, i32 255) #10
  %139 = ptrtoint ptr %curnode.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %curnode.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i167.i.i.i)
  %140 = icmp ult i32 %call.i167.i.i.i, 255
  br i1 %140, label %do.body84.i.i.while.body.i.i.i_crit_edge, label %dlm_send_begin_reco_message.exit.thread.i.i

do.body84.i.i.while.body.i.i.i_crit_edge:         ; preds = %do.body84.i.i
  br label %while.body.i.i.i

dlm_send_begin_reco_message.exit.thread.i.i:      ; preds = %do.body84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %br.i.i.i) #10
  br label %do.end114.i.i

while.body.i.i.i:                                 ; preds = %while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge, %do.body84.i.i.while.body.i.i.i_crit_edge
  %.call8.i172.i.i.i = phi i32 [ %call.i.i.i.i, %while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge ], [ %call.i167.i.i.i, %do.body84.i.i.while.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.call8.i172.i.i.i, i32 %conv.i.i.i)
  %cmp7.i.i.i = icmp eq i32 %.call8.i172.i.i.i, %conv.i.i.i
  br i1 %cmp7.i.i.i, label %do.body10.i.i.i, label %if.end19.i.i.i

do.body10.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m11.i.i.i) #10
  %141 = ptrtoint ptr %_m11.i.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 1088, ptr %_m11.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m11.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2693, ptr noundef nonnull @.str.84, i32 noundef %conv.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m11.i.i.i) #10
  br label %while.cond.backedge.i.i.i

while.cond.backedge.i.i.i:                        ; preds = %if.end76.i.i.i.while.cond.backedge.i.i.i_crit_edge, %if.end76.thread.i.i.i, %do.body25.i.i.i, %do.body10.i.i.i
  %ret.0.be.i.i.i = phi i32 [ 0, %do.body10.i.i.i ], [ 0, %do.body25.i.i.i ], [ 0, %if.end76.thread.i.i.i ], [ %ret.1.i.i.i, %if.end76.i.i.i.while.cond.backedge.i.i.i_crit_edge ]
  %142 = ptrtoint ptr %curnode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %curnode.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %143, 1
  %call.i.i.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter.i.i.i, i32 noundef 255, i32 noundef %add.i.i.i.i) #10
  %144 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 255) #10
  %145 = ptrtoint ptr %curnode.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %curnode.i.i.i.i, align 4
  %146 = icmp ult i32 %call.i.i.i.i, 255
  br i1 %146, label %while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge, label %dlm_send_begin_reco_message.exit.i.i

while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end19.i.i.i:                                   ; preds = %while.body.i.i.i
  %147 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %node_num.i, align 4
  %conv21.i.i.i = zext i8 %148 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.call8.i172.i.i.i, i32 %conv21.i.i.i)
  %cmp22.i.i.i = icmp eq i32 %.call8.i172.i.i.i, %conv21.i.i.i
  br i1 %cmp22.i.i.i, label %do.body25.i.i.i, label %retry.preheader.i.i.i

retry.preheader.i.i.i:                            ; preds = %if.end19.i.i.i
  %conv42.i.i.i = trunc i32 %.call8.i172.i.i.i to i8
  br label %retry.i.i.i

do.body25.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26.i.i.i) #10
  %149 = ptrtoint ptr %_m26.i.i.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 1088, ptr %_m26.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2697, ptr noundef nonnull @.str.85) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26.i.i.i) #10
  br label %while.cond.backedge.i.i.i

retry.i.i.i:                                      ; preds = %retry.backedge.i.i.i, %retry.preheader.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35.i.i.i) #10
  %150 = ptrtoint ptr %_m35.i.i.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 1088, ptr %_m35.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2702, ptr noundef nonnull @.str.86, i32 noundef %.call8.i172.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35.i.i.i) #10
  %151 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %key.i.i.i, align 4
  %call43.i.i.i = call i32 @o2net_send_message(i32 noundef 517, i32 noundef %152, ptr noundef nonnull %br.i.i.i, i32 noundef 8, i8 noundef zeroext %conv42.i.i.i, ptr noundef nonnull %status.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43.i.i.i)
  %cmp44.i.i.i = icmp sgt i32 %call43.i.i.i, -1
  br i1 %cmp44.i.i.i, label %if.then46.i.i.i, label %retry.i.i.i.if.end47.i.i.i_crit_edge

retry.i.i.i.if.end47.i.i.i_crit_edge:             ; preds = %retry.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i.i.i

if.then46.i.i.i:                                  ; preds = %retry.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %status.i.i.i, align 4
  br label %if.end47.i.i.i

if.end47.i.i.i:                                   ; preds = %if.then46.i.i.i, %retry.i.i.i.if.end47.i.i.i_crit_edge
  %ret.1.i.i.i = phi i32 [ %154, %if.then46.i.i.i ], [ %call43.i.i.i, %retry.i.i.i.if.end47.i.i.i_crit_edge ]
  %call48.i.i.i = call i32 @dlm_is_host_down(i32 noundef %ret.1.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i.i)
  %tobool49.not.i.i.i = icmp eq i32 %call48.i.i.i, 0
  br i1 %tobool49.not.i.i.i, label %if.end60.i.i.i, label %if.end76.thread.i.i.i

if.end76.thread.i.i.i:                            ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52.i.i.i) #10
  %155 = ptrtoint ptr %_m52.i.i.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 2305843009213695040, ptr %_m52.i.i.i, align 8
  %156 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2712, ptr noundef nonnull @.str.87, ptr noundef %157, i32 noundef %.call8.i172.i.i.i, i32 noundef %ret.1.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52.i.i.i) #10
  br label %while.cond.backedge.i.i.i

if.end60.i.i.i:                                   ; preds = %if.end47.i.i.i
  %158 = zext i32 %ret.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %ret.1.i.i.i, label %if.end76.i.i.i [
    i32 -11, label %if.end60.i.i.i.do.body66.i.i.i_crit_edge
    i32 11, label %if.end60.i.i.i.do.body66.i.i.i_crit_edge190
  ]

if.end60.i.i.i.do.body66.i.i.i_crit_edge190:      ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66.i.i.i

if.end60.i.i.i.do.body66.i.i.i_crit_edge:         ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66.i.i.i

do.body66.i.i.i:                                  ; preds = %if.end60.i.i.i.do.body66.i.i.i_crit_edge, %if.end60.i.i.i.do.body66.i.i.i_crit_edge190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67.i.i.i) #10
  %159 = ptrtoint ptr %_m67.i.i.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 1088, ptr %_m67.i.i.i, align 8
  %160 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2725, ptr noundef nonnull @.str.88, ptr noundef %161, i32 noundef %conv.i.i.i, i32 noundef %.call8.i172.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67.i.i.i) #10
  br label %retry.backedge.i.i.i

retry.backedge.i.i.i:                             ; preds = %do.body116.i.i.i, %if.then115.i.i.i, %do.body66.i.i.i
  call void @msleep(i32 noundef 100) #10
  br label %retry.i.i.i

if.end76.i.i.i:                                   ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i.i)
  %cmp77.i.i.i = icmp slt i32 %ret.1.i.i.i, 0
  br i1 %cmp77.i.i.i, label %if.then79.i.i.i, label %if.end76.i.i.i.while.cond.backedge.i.i.i_crit_edge

if.end76.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %if.end76.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i.i.i

if.then79.i.i.i:                                  ; preds = %if.end76.i.i.i
  %162 = zext i32 %ret.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %ret.1.i.i.i, label %do.body94.i.i.i [
    i32 -512, label %if.then79.i.i.i.if.end103.i.i.i_crit_edge
    i32 -4, label %if.then79.i.i.i.if.end103.i.i.i_crit_edge191
    i32 -28, label %if.then79.i.i.i.if.end103.i.i.i_crit_edge192
    i32 -122, label %if.then79.i.i.i.if.end103.i.i.i_crit_edge193
  ]

if.then79.i.i.i.if.end103.i.i.i_crit_edge193:     ; preds = %if.then79.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i.i.i

if.then79.i.i.i.if.end103.i.i.i_crit_edge192:     ; preds = %if.then79.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i.i.i

if.then79.i.i.i.if.end103.i.i.i_crit_edge191:     ; preds = %if.then79.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i.i.i

if.then79.i.i.i.if.end103.i.i.i_crit_edge:        ; preds = %if.then79.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i.i.i

do.body94.i.i.i:                                  ; preds = %if.then79.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m95.i.i.i) #10
  %163 = ptrtoint ptr %_m95.i.i.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 1152921504606848064, ptr %_m95.i.i.i, align 8
  %conv99.i.i.i = sext i32 %ret.1.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m95.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2734, ptr noundef nonnull @.str.3, i64 noundef %conv99.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m95.i.i.i) #10
  br label %if.end103.i.i.i

if.end103.i.i.i:                                  ; preds = %do.body94.i.i.i, %if.then79.i.i.i.if.end103.i.i.i_crit_edge, %if.then79.i.i.i.if.end103.i.i.i_crit_edge191, %if.then79.i.i.i.if.end103.i.i.i_crit_edge192, %if.then79.i.i.i.if.end103.i.i.i_crit_edge193
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m105.i.i.i) #10
  %164 = ptrtoint ptr %_m105.i.i.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 1152921504606848064, ptr %_m105.i.i.i, align 8
  %165 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m105.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2736, ptr noundef nonnull @.str.89, ptr noundef %166, i32 noundef %.call8.i172.i.i.i, i32 noundef %ret.1.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m105.i.i.i) #10
  %call113.i.i.i = call ptr @dlm_lookup_lockres(ptr noundef %data, ptr noundef nonnull @.str.66, i32 noundef 9) #10
  %tobool114.not.i.i.i = icmp eq ptr %call113.i.i.i, null
  br i1 %tobool114.not.i.i.i, label %do.body116.i.i.i, label %if.then115.i.i.i

if.then115.i.i.i:                                 ; preds = %if.end103.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_print_one_lock_resource(ptr noundef nonnull %call113.i.i.i) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call113.i.i.i) #10
  br label %retry.backedge.i.i.i

do.body116.i.i.i:                                 ; preds = %if.end103.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m117.i.i.i) #10
  %167 = ptrtoint ptr %_m117.i.i.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 1152921504606848064, ptr %_m117.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m117.i.i.i, ptr noundef nonnull @__func__.dlm_send_begin_reco_message, i32 noundef 2743, ptr noundef nonnull @.str.80) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m117.i.i.i) #10
  br label %retry.backedge.i.i.i

dlm_send_begin_reco_message.exit.i.i:             ; preds = %while.cond.backedge.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %br.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.be.i.i.i)
  %tobool102.not.i.i = icmp eq i32 %ret.0.be.i.i.i, 0
  br i1 %tobool102.not.i.i, label %dlm_send_begin_reco_message.exit.i.i.do.end114.i.i_crit_edge, label %do.body106.i.i, !prof !433

dlm_send_begin_reco_message.exit.i.i.do.end114.i.i_crit_edge: ; preds = %dlm_send_begin_reco_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114.i.i

do.body106.i.i:                                   ; preds = %dlm_send_begin_reco_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2602, 0\0A.popsection", ""() #10, !srcloc !442
  unreachable

do.end114.i.i:                                    ; preds = %dlm_send_begin_reco_message.exit.i.i.do.end114.i.i_crit_edge, %dlm_send_begin_reco_message.exit.thread.i.i
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %168 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %node_num.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %170 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr %spinlock.i, align 4
  %171 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body4.i.i.i, label %dlm_set_reco_master.exit.i.i, !prof !435

do.body4.i.i.i:                                   ; preds = %do.end114.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

dlm_set_reco_master.exit.i.i:                     ; preds = %do.end114.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i357.i.i) #10
  %172 = ptrtoint ptr %_m.i357.i.i to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 1088, ptr %_m.i357.i.i, align 8
  %173 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name, align 4
  %175 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %new_master.i, align 4
  %conv.i361.i.i = zext i8 %176 to i32
  %conv11.i.i.i = zext i8 %169 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i357.i.i, ptr noundef nonnull @__func__.dlm_set_reco_master, i32 noundef 115, ptr noundef nonnull @.str.192, ptr noundef %174, i32 noundef %conv.i361.i.i, i32 noundef %conv11.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i357.i.i) #10
  %177 = ptrtoint ptr %new_master.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %169, ptr %new_master.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %if.end118.i.i

if.end118.i.i:                                    ; preds = %dlm_set_reco_master.exit.i.i, %if.end81.i.i, %if.end81.thread.i.i
  %tobool100.not.i = phi i1 [ true, %dlm_set_reco_master.exit.i.i ], [ false, %if.end81.i.i ], [ false, %if.end81.thread.i.i ]
  %call119.i.i = call i32 @dlmunlock(ptr noundef %data, ptr noundef nonnull %lksb.i.i, i32 noundef 0, ptr noundef nonnull @dlm_reco_unlock_ast, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call119.i.i)
  %cmp120.i.i = icmp eq i32 %call119.i.i, 2
  br i1 %cmp120.i.i, label %do.body123.i.i, label %if.end118.i.i.if.end132.i.i_crit_edge

if.end118.i.i.if.end132.i.i_crit_edge:            ; preds = %if.end118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132.i.i

do.body123.i.i:                                   ; preds = %if.end118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m124.i.i) #10
  %178 = ptrtoint ptr %_m124.i.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 1088, ptr %_m124.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m124.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2614, ptr noundef nonnull @.str.73) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m124.i.i) #10
  %call131.i.i = call i32 @dlmunlock(ptr noundef %data, ptr noundef nonnull %lksb.i.i, i32 noundef 8192, ptr noundef nonnull @dlm_reco_unlock_ast, ptr noundef %data) #10
  br label %if.end132.i.i

if.end132.i.i:                                    ; preds = %do.body123.i.i, %if.end118.i.i.if.end132.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call131.i.i, %do.body123.i.i ], [ %call119.i.i, %if.end118.i.i.if.end132.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp133.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %cmp133.not.i.i, label %if.end132.i.i.dlm_pick_recovery_master.exit.i_crit_edge, label %do.body136.i.i

if.end132.i.i.dlm_pick_recovery_master.exit.i_crit_edge: ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_pick_recovery_master.exit.i

do.body136.i.i:                                   ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m137.i.i) #10
  %179 = ptrtoint ptr %_m137.i.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 1152921504606848064, ptr %_m137.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m137.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2624, ptr noundef nonnull @.str.74, i32 noundef %ret.0.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m137.i.i) #10
  br label %dlm_pick_recovery_master.exit.i

do.body149.i.i:                                   ; preds = %again.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m150.i.i) #10
  %180 = ptrtoint ptr %_m150.i.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 1088, ptr %_m150.i.i, align 8
  %181 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name, align 4
  %183 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %node_num.i, align 4
  %conv156.i.i = zext i8 %184 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m150.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2628, ptr noundef nonnull @.str.75, ptr noundef %182, i32 noundef %conv156.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m150.i.i) #10
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 2634) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %185 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %new_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %186)
  %cmp.i364.not.not.i.i = icmp eq i8 %186, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br i1 %cmp.i364.not.not.i.i, label %if.then180.i.i, label %do.body149.i.i.if.end209.i.i_crit_edge

do.body149.i.i.if.end209.i.i_crit_edge:           ; preds = %do.body149.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209.i.i

if.then180.i.i:                                   ; preds = %do.body149.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  %187 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %cleanup.i.i, %if.then180.i.i
  %__ret181.0.i.i = phi i32 [ 100, %if.then180.i.i ], [ %call206.i.i, %cleanup.i.i ]
  %call183.i.i = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %188 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %new_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %189)
  %cmp.i368.not.i.i = icmp eq i8 %189, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret181.0.i.i)
  %tobool191.not.i.i = icmp eq i32 %__ret181.0.i.i, 0
  %spec.store.select292.i.i = select i1 %tobool191.not.i.i, i32 1, i32 %__ret181.0.i.i
  %__ret181.1.i.i = select i1 %cmp.i368.not.i.i, i32 %__ret181.0.i.i, i32 %spec.store.select292.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret181.1.i.i)
  %tobool198.not.i.i = icmp eq i32 %__ret181.1.i.i, 0
  %not.cmp.i368.not.i.i = xor i1 %cmp.i368.not.i.i, true
  %190 = select i1 %not.cmp.i368.not.i.i, i1 true, i1 %tobool198.not.i.i
  br i1 %190, label %for.end.i.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call206.i.i = call i32 @schedule_timeout(i32 noundef %__ret181.1.i.i) #10
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  br label %if.end209.i.i

if.end209.i.i:                                    ; preds = %for.end.i.i, %do.body149.i.i.if.end209.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %191 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %new_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %192)
  %cmp.i372.not.i.i = icmp eq i8 %192, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br i1 %cmp.i372.not.i.i, label %do.body214.i.i, label %dlm_pick_recovery_master.exit.thread.i

do.body214.i.i:                                   ; preds = %if.end209.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m215.i.i) #10
  %193 = ptrtoint ptr %_m215.i.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 1088, ptr %_m215.i.i, align 8
  %194 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m215.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2637, ptr noundef nonnull @.str.76, ptr noundef %195) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m215.i.i) #10
  br label %again.i.i.backedge

dlm_pick_recovery_master.exit.thread.i:           ; preds = %if.end209.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m225.i.i) #10
  %196 = ptrtoint ptr %_m225.i.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 1088, ptr %_m225.i.i, align 8
  %197 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %name, align 4
  %199 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %new_master.i, align 4
  %conv232.i.i = zext i8 %200 to i32
  %201 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %dead_node.i, align 1
  %conv235.i.i = zext i8 %202 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m225.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2642, ptr noundef nonnull @.str.77, ptr noundef %198, i32 noundef %conv232.i.i, i32 noundef %conv235.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m225.i.i) #10
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %lksb.i.i) #10
  br label %do.body103.i

do.body243.i.i:                                   ; preds = %again.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m244.i.i) #10
  %203 = ptrtoint ptr %_m244.i.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 1088, ptr %_m244.i.i, align 8
  %204 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name, align 4
  %206 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %node_num.i, align 4
  %conv250.i.i = zext i8 %207 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m244.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2646, ptr noundef nonnull @.str.78, ptr noundef %205, i32 noundef %conv250.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m244.i.i) #10
  br label %again.i.i.backedge

again.i.i.backedge:                               ; preds = %do.body243.i.i, %do.body214.i.i
  br label %again.i.i

if.else254.i.i:                                   ; preds = %again.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m256.i.i) #10
  %208 = ptrtoint ptr %_m256.i.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 1152921504606848064, ptr %_m256.i.i, align 8
  %209 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name, align 4
  %call261.i.i = call ptr @dlm_errname(i32 noundef %call.i.i) #10
  %211 = ptrtoint ptr %lksb.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %lksb.i.i, align 4
  %call263.i.i = call ptr @dlm_errname(i32 noundef %212) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m256.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2654, ptr noundef nonnull @.str.79, ptr noundef %210, ptr noundef %call261.i.i, ptr noundef %call263.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m256.i.i) #10
  %call267.i.i = call ptr @dlm_lookup_lockres(ptr noundef %data, ptr noundef nonnull @.str.66, i32 noundef 9) #10
  %tobool268.not.i.i = icmp eq ptr %call267.i.i, null
  br i1 %tobool268.not.i.i, label %do.body271.i.i, label %if.then269.i.i

if.then269.i.i:                                   ; preds = %if.else254.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_print_one_lock_resource(ptr noundef nonnull %call267.i.i) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call267.i.i) #10
  br label %do.body280.i.i

do.body271.i.i:                                   ; preds = %if.else254.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m272.i.i) #10
  %213 = ptrtoint ptr %_m272.i.i to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 1152921504606848064, ptr %_m272.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m272.i.i, ptr noundef nonnull @__func__.dlm_pick_recovery_master, i32 noundef 2661, ptr noundef nonnull @.str.80) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m272.i.i) #10
  br label %do.body280.i.i

do.body280.i.i:                                   ; preds = %do.body271.i.i, %if.then269.i.i
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2663, 0\0A.popsection", ""() #10, !srcloc !443
  unreachable

dlm_pick_recovery_master.exit.i:                  ; preds = %do.body136.i.i, %if.end132.i.i.dlm_pick_recovery_master.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %lksb.i.i) #10
  br i1 %tobool100.not.i, label %dlm_pick_recovery_master.exit.i.master_here.i_crit_edge, label %dlm_pick_recovery_master.exit.i.do.body103.i_crit_edge

dlm_pick_recovery_master.exit.i.do.body103.i_crit_edge: ; preds = %dlm_pick_recovery_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body103.i

dlm_pick_recovery_master.exit.i.master_here.i_crit_edge: ; preds = %dlm_pick_recovery_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %master_here.i

do.body103.i:                                     ; preds = %dlm_pick_recovery_master.exit.i.do.body103.i_crit_edge, %dlm_pick_recovery_master.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m104.i) #10
  %214 = ptrtoint ptr %_m104.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 1088, ptr %_m104.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m104.i, ptr noundef nonnull @__func__.dlm_do_recovery, i32 noundef 495, ptr noundef nonnull @.str.60) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m104.i) #10
  br label %if.end111.i

if.end111.i:                                      ; preds = %do.body103.i, %if.end92.i.if.end111.i_crit_edge
  %215 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %new_master.i, align 4
  %conv.i256.i = zext i8 %216 to i32
  %217 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %218, i8 %216)
  %cmp.i.i = icmp eq i8 %218, %216
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.93, ptr @.str.94
  %219 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %dead_node.i, align 1
  %conv7.i.i = zext i8 %220 to i32
  %221 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %name, align 4
  %call.i260.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %conv.i256.i, ptr noundef nonnull %cond.i.i, i32 noundef %conv7.i.i, ptr noundef %222) #13
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %223 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %state.i.i, align 2
  %225 = and i16 %224, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool.not.i.i = icmp eq i16 %225, 0
  br i1 %tobool.not.i.i, label %do.body4.i263.i, label %dlm_end_recovery.exit.i, !prof !435

do.body4.i263.i:                                  ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 412, 0\0A.popsection", ""() #10, !srcloc !444
  unreachable

dlm_end_recovery.exit.i:                          ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #12
  %and11.i.i = and i16 %224, -2
  %226 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %and11.i.i, ptr %state.i.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %227 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %name, align 4
  %call.i265.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %228) #13
  call void @__wake_up(ptr noundef %event.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end29

master_here.i:                                    ; preds = %dlm_pick_recovery_master.exit.i.master_here.i_crit_edge, %dlm_begin_recovery.exit.i.master_here.i_crit_edge
  %229 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %new_master.i, align 4
  %conv.i268.i = zext i8 %230 to i32
  %231 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %232, i8 %230)
  %cmp.i270.i = icmp eq i8 %232, %230
  %cond.i271.i = select i1 %cmp.i270.i, ptr @.str.93, ptr @.str.94
  %233 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %dead_node.i, align 1
  %conv7.i273.i = zext i8 %234 to i32
  %235 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %name, align 4
  %call.i275.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %conv.i268.i, ptr noundef nonnull %cond.i271.i, i32 noundef %conv7.i273.i, ptr noundef %236) #13
  %237 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %dead_node.i, align 1
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %239 = call ptr @memcpy(ptr %node_map.i.i.i, ptr %domain_map.i.i.i, i32 32)
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %call37.i68.i.i = call i32 @_find_next_bit_be(ptr noundef %node_map.i.i.i, i32 noundef 255, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call37.i68.i.i)
  %cmp38.i69.i.i = icmp sgt i32 %call37.i68.i.i, 254
  br i1 %cmp38.i69.i.i, label %master_here.i.do.end6.i.i_crit_edge, label %do.body.lr.ph.i.lr.ph.i.i

master_here.i.do.end6.i.i_crit_edge:              ; preds = %master_here.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i

do.body.lr.ph.i.lr.ph.i.i:                        ; preds = %master_here.i
  %conv.i.i282.i = zext i8 %238 to i32
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.backedge, %do.body.lr.ph.i.lr.ph.i.i
  %call39.i.i.i = phi i32 [ %call37.i68.i.i, %do.body.lr.ph.i.lr.ph.i.i ], [ %call39.i.i.i.be, %do.body.i.i.i.backedge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call39.i.i.i, i32 %conv.i.i282.i)
  %cmp6.i.i.i = icmp eq i32 %call39.i.i.i, %conv.i.i282.i
  br i1 %cmp6.i.i.i, label %do.body10.i.i284.i, label %do.end16.i.i.i, !prof !435

do.body10.i.i284.i:                               ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 746, 0\0A.popsection", ""() #10, !srcloc !445
  unreachable

do.end16.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %240 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %240, i32 noundef 3392, i32 noundef 16) #14
  %tobool18.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %do.cond4.i.i, label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %do.end16.i.i.i
  %conv21.i.i285.i = trunc i32 %call39.i.i.i to i8
  %node_num.i.i.i = getelementptr inbounds %struct.dlm_reco_node_data, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %241 = ptrtoint ptr %node_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv21.i.i285.i, ptr %node_num.i.i.i, align 4
  %242 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %call7.i.i.i.i.i, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_reco_state_lock) #10
  %list.i.i.i = getelementptr inbounds %struct.dlm_reco_node_data, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %243 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %244, ptr noundef %node_data.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end20.i.i.i.list_add_tail.exit.i.i.i_crit_edge

if.end20.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %list.i.i.i, ptr %prev.i.i.i.i, align 4
  %246 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %node_data.i.i.i, ptr %list.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.dlm_reco_node_data, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 1
  %247 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %244, ptr %prev3.i.i.i.i.i, align 4
  %248 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %list.i.i.i, ptr %244, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.end20.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_reco_state_lock) #10
  %inc.i.i.i = add nsw i32 %call39.i.i.i, 1
  %call.i.i.i = call i32 @_find_next_bit_be(ptr noundef %node_map.i.i.i, i32 noundef 255, i32 noundef %inc.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 254
  br i1 %cmp.i.i.i, label %list_add_tail.exit.i.i.i.do.end6.i.i_crit_edge, label %list_add_tail.exit.i.i.i.do.body.i.i.i.backedge_crit_edge

list_add_tail.exit.i.i.i.do.body.i.i.i.backedge_crit_edge: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.backedge

list_add_tail.exit.i.i.i.do.end6.i.i_crit_edge:   ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i

do.body.i.i.i.backedge:                           ; preds = %do.cond4.i.i.do.body.i.i.i.backedge_crit_edge, %list_add_tail.exit.i.i.i.do.body.i.i.i.backedge_crit_edge
  %call39.i.i.i.be = phi i32 [ %call.i.i.i, %list_add_tail.exit.i.i.i.do.body.i.i.i.backedge_crit_edge ], [ %call37.i.i.i, %do.cond4.i.i.do.body.i.i.i.backedge_crit_edge ]
  br label %do.body.i.i.i

do.cond4.i.i:                                     ; preds = %do.end16.i.i.i
  call fastcc void @dlm_destroy_recovery_area(ptr noundef %data) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i279.i) #10
  %249 = ptrtoint ptr %_m.i279.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 1152921504606848064, ptr %_m.i279.i, align 8
  %250 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i279.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 548, ptr noundef nonnull @.str.97, ptr noundef %251) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i279.i) #10
  call void @msleep(i32 noundef 1000) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %252 = call ptr @memcpy(ptr %node_map.i.i.i, ptr %domain_map.i.i.i, i32 32)
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %call37.i.i.i = call i32 @_find_next_bit_be(ptr noundef %node_map.i.i.i, i32 noundef 255, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call37.i.i.i)
  %cmp38.i.i.i = icmp sgt i32 %call37.i.i.i, 254
  br i1 %cmp38.i.i.i, label %do.cond4.i.i.do.end6.i.i_crit_edge, label %do.cond4.i.i.do.body.i.i.i.backedge_crit_edge

do.cond4.i.i.do.body.i.i.i.backedge_crit_edge:    ; preds = %do.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.backedge

do.cond4.i.i.do.end6.i.i_crit_edge:               ; preds = %do.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.cond4.i.i.do.end6.i.i_crit_edge, %list_add_tail.exit.i.i.i.do.end6.i.i_crit_edge, %master_here.i.do.end6.i.i_crit_edge
  %253 = ptrtoint ptr %node_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %.pn72.i.i = load ptr, ptr %node_data.i.i.i, align 4
  %cmp9.not74.i.i = icmp eq ptr %.pn72.i.i, %node_data.i.i.i
  %.pre.i.i = zext i8 %238 to i32
  br i1 %cmp9.not74.i.i, label %do.end6.i.i.do.body227.i.i_crit_edge, label %do.end6.i.i.do.body10.i.i_crit_edge

do.end6.i.i.do.body10.i.i_crit_edge:              ; preds = %do.end6.i.i
  br label %do.body10.i.i

do.end6.i.i.do.body227.i.i_crit_edge:             ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body227.i.i

do.body10.i.i:                                    ; preds = %for.inc.i.i.do.body10.i.i_crit_edge, %do.end6.i.i.do.body10.i.i_crit_edge
  %.pn75.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.do.body10.i.i_crit_edge ], [ %.pn72.i.i, %do.end6.i.i.do.body10.i.i_crit_edge ]
  %ndata.076.i.i = getelementptr i8, ptr %.pn75.i.i, i32 -8
  %254 = ptrtoint ptr %ndata.076.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ndata.076.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp11.not.i.i = icmp eq i32 %255, 0
  br i1 %cmp11.not.i.i, label %do.end24.i.i, label %do.body16.i.i, !prof !433

do.body16.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #10, !srcloc !446
  unreachable

do.end24.i.i:                                     ; preds = %do.body10.i.i
  %256 = ptrtoint ptr %ndata.076.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 1, ptr %ndata.076.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27.i.i) #10
  %257 = ptrtoint ptr %_m27.i.i to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 1088, ptr %_m27.i.i, align 8
  %258 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %name, align 4
  %node_num.i288.i = getelementptr i8, ptr %.pn75.i.i, i32 -4
  %260 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %node_num.i288.i, align 4
  %conv.i289.i = zext i8 %261 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 560, ptr noundef nonnull @.str.98, ptr noundef %259, i32 noundef %conv.i289.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27.i.i) #10
  %262 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %node_num.i288.i, align 4
  %264 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %263, i8 %265)
  %cmp39.i.i = icmp eq i8 %263, %265
  br i1 %cmp39.i.i, label %if.then41.i.i, label %do.end24.i.i.do.body44.i.i_crit_edge

do.end24.i.i.do.body44.i.i_crit_edge:             ; preds = %do.end24.i.i
  br label %do.body44.i.i

if.then41.i.i:                                    ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %266 = ptrtoint ptr %ndata.076.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 4, ptr %ndata.076.i.i, align 4
  br label %for.inc.i.i

do.body44.i.i:                                    ; preds = %do.cond161.i.i.do.body44.i.i_crit_edge, %do.end24.i.i.do.body44.i.i_crit_edge
  %267 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %node_num.i288.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lr.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i277.i) #10
  %269 = ptrtoint ptr %status.i.i277.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 -1, ptr %status.i.i277.i, align 4, !annotation !441
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i278.i) #10
  %270 = ptrtoint ptr %_m.i.i278.i to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 1088, ptr %_m.i.i278.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i278.i, ptr noundef nonnull @__func__.dlm_request_all_locks, i32 noundef 786, ptr noundef nonnull @.str.118) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i278.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m2.i.i.i) #10
  %271 = ptrtoint ptr %_m2.i.i.i to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 1088, ptr %_m2.i.i.i, align 8
  %conv6.i.i.i = zext i8 %268 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m2.i.i.i, ptr noundef nonnull @__func__.dlm_request_all_locks, i32 noundef 790, ptr noundef nonnull @.str.119, i32 noundef %.pre.i.i, i32 noundef %conv6.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m2.i.i.i) #10
  %272 = ptrtoint ptr %lr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 0, ptr %lr.i.i.i, align 8
  %273 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %node_num.i, align 4
  store i8 %274, ptr %lr.i.i.i, align 8
  %275 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %238, ptr %4, align 1
  %276 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %key.i.i.i, align 4
  %call.i4.i.i = call i32 @o2net_send_message(i32 noundef 515, i32 noundef %277, ptr noundef nonnull %lr.i.i.i, i32 noundef 8, i8 noundef zeroext %268, ptr noundef nonnull %status.i.i277.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %cmp.i5.i.i = icmp slt i32 %call.i4.i.i, 0
  br i1 %cmp.i5.i.i, label %dlm_request_all_locks.exit.thread.i.i, label %dlm_request_all_locks.exit.i.i

dlm_request_all_locks.exit.thread.i.i:            ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m14.i.i.i) #10
  %278 = ptrtoint ptr %_m14.i.i.i to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 1152921504606848064, ptr %_m14.i.i.i, align 8
  %279 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m14.i.i.i, ptr noundef nonnull @__func__.dlm_request_all_locks, i32 noundef 804, ptr noundef nonnull @.str.120, ptr noundef %280, i32 noundef %call.i4.i.i, i32 noundef %conv6.i.i.i, i32 noundef %.pre.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m14.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i277.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lr.i.i.i) #10
  br label %if.then49.i.i

dlm_request_all_locks.exit.i.i:                   ; preds = %do.body44.i.i
  %281 = ptrtoint ptr %status.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %status.i.i277.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i277.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lr.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp47.i.i = icmp slt i32 %282, 0
  br i1 %cmp47.i.i, label %dlm_request_all_locks.exit.i.i.if.then49.i.i_crit_edge, label %dlm_request_all_locks.exit.i.i.do.cond161.i.i_crit_edge

dlm_request_all_locks.exit.i.i.do.cond161.i.i_crit_edge: ; preds = %dlm_request_all_locks.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond161.i.i

dlm_request_all_locks.exit.i.i.if.then49.i.i_crit_edge: ; preds = %dlm_request_all_locks.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i.i

if.then49.i.i:                                    ; preds = %dlm_request_all_locks.exit.i.i.if.then49.i.i_crit_edge, %dlm_request_all_locks.exit.thread.i.i
  %ret.0.i36.i.i = phi i32 [ %call.i4.i.i, %dlm_request_all_locks.exit.thread.i.i ], [ %282, %dlm_request_all_locks.exit.i.i.if.then49.i.i_crit_edge ]
  %283 = zext i32 %ret.0.i36.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %ret.0.i36.i.i, label %do.body64.i.i [
    i32 -512, label %if.then49.i.i.if.end73.i.i_crit_edge
    i32 -4, label %if.then49.i.i.if.end73.i.i_crit_edge194
    i32 -28, label %if.then49.i.i.if.end73.i.i_crit_edge195
    i32 -122, label %if.then49.i.i.if.end73.i.i_crit_edge196
  ]

if.then49.i.i.if.end73.i.i_crit_edge196:          ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i.i

if.then49.i.i.if.end73.i.i_crit_edge195:          ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i.i

if.then49.i.i.if.end73.i.i_crit_edge194:          ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i.i

if.then49.i.i.if.end73.i.i_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i.i

do.body64.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65.i.i) #10
  %284 = ptrtoint ptr %_m65.i.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 1152921504606848064, ptr %_m65.i.i, align 8
  %conv69.i.i = sext i32 %ret.0.i36.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 571, ptr noundef nonnull @.str.3, i64 noundef %conv69.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65.i.i) #10
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %do.body64.i.i, %if.then49.i.i.if.end73.i.i_crit_edge, %if.then49.i.i.if.end73.i.i_crit_edge194, %if.then49.i.i.if.end73.i.i_crit_edge195, %if.then49.i.i.if.end73.i.i_crit_edge196
  %call75.i.i = call i32 @dlm_is_host_down(i32 noundef %ret.0.i36.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i.i)
  %tobool76.not.i.i = icmp eq i32 %call75.i.i, 0
  br i1 %tobool76.not.i.i, label %do.body148.i.i, label %if.then77.i.i

if.then77.i.i:                                    ; preds = %if.end73.i.i
  %285 = ptrtoint ptr %ndata.076.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 -1, ptr %ndata.076.i.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 581) #10
  %286 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %node_num.i288.i, align 4
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %conv.i7.i.i = zext i8 %287 to i32
  %div3.i.i.i.i = lshr i32 %conv.i7.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %domain_map.i.i.i, i32 %div3.i.i.i.i
  %288 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %conv.i7.i.i, 31
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %290 = shl nuw i32 1, %and.i.i.i.i
  %291 = and i32 %290, %289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool88.not.not.i.i = icmp eq i32 %291, 0
  br i1 %tobool88.not.not.i.i, label %if.then77.i.i.do.cond161.thread.i.i_crit_edge, label %if.then102.i.i

if.then77.i.i.do.cond161.thread.i.i_crit_edge:    ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond161.thread.i.i

if.then102.i.i:                                   ; preds = %if.then77.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i280.i) #10
  %292 = call ptr @memset(ptr %__wq_entry.i280.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i280.i, i32 noundef 0) #10
  br label %for.cond105.i.i

for.cond105.i.i:                                  ; preds = %cleanup.i290.i, %if.then102.i.i
  %__ret103.0.i.i = phi i32 [ 100, %if.then102.i.i ], [ %call130.i.i, %cleanup.i290.i ]
  %call106.i.i = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry.i280.i, i32 noundef 2) #10
  %293 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %node_num.i288.i, align 4
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %conv.i10.i.i = zext i8 %294 to i32
  %div3.i.i12.i.i = lshr i32 %conv.i10.i.i, 5
  %arrayidx.i.i13.i.i = getelementptr i32, ptr %domain_map.i.i.i, i32 %div3.i.i12.i.i
  %295 = ptrtoint ptr %arrayidx.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %arrayidx.i.i13.i.i, align 4
  %and.i.i14.i.i = and i32 %conv.i10.i.i, 31
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %297 = shl nuw i32 1, %and.i.i14.i.i
  %298 = and i32 %297, %296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool110.not.not.i.i = icmp eq i32 %298, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret103.0.i.i)
  %tobool115.not.i.i = icmp eq i32 %__ret103.0.i.i, 0
  %299 = select i1 %tobool110.not.not.i.i, i1 %tobool115.not.i.i, i1 false
  %__ret103.1.i.i = select i1 %299, i32 1, i32 %__ret103.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret103.1.i.i)
  %tobool122.not.i.i = icmp eq i32 %__ret103.1.i.i, 0
  %300 = select i1 %tobool110.not.not.i.i, i1 true, i1 %tobool122.not.i.i
  br i1 %300, label %for.end.i291.i, label %cleanup.i290.i

cleanup.i290.i:                                   ; preds = %for.cond105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call130.i.i = call i32 @schedule_timeout(i32 noundef %__ret103.1.i.i) #10
  br label %for.cond105.i.i

for.end.i291.i:                                   ; preds = %for.cond105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry.i280.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i280.i) #10
  br label %do.cond161.thread.i.i

do.cond161.thread.i.i:                            ; preds = %for.end.i291.i, %if.then77.i.i.do.cond161.thread.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m136.i.i) #10
  %301 = ptrtoint ptr %_m136.i.i to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 1088, ptr %_m136.i.i, align 8
  %302 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %node_num.i288.i, align 4
  %conv141.i.i = zext i8 %303 to i32
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %div3.i.i18.i.i = lshr i32 %conv141.i.i, 5
  %arrayidx.i.i19.i.i = getelementptr i32, ptr %domain_map.i.i.i, i32 %div3.i.i18.i.i
  %304 = ptrtoint ptr %arrayidx.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile i32, ptr %arrayidx.i.i19.i.i, align 4
  %and.i.i20.i.i = and i32 %conv141.i.i, 31
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %306 = shl nuw i32 1, %and.i.i20.i.i
  %307 = and i32 %306, %305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool144.not.not.i.i = icmp eq i32 %307, 0
  %cond.i292.i = select i1 %tobool144.not.not.i.i, ptr @.str.100, ptr @.str.101
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m136.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 585, ptr noundef nonnull @.str.99, i32 noundef %conv141.i.i, ptr noundef nonnull %cond.i292.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m136.i.i) #10
  br label %do.end164.i.i

do.body148.i.i:                                   ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m149.i.i) #10
  %308 = ptrtoint ptr %_m149.i.i to i32
  call void @__asan_store8_noabort(i32 %308)
  store i64 1088, ptr %_m149.i.i, align 8
  %309 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %name, align 4
  %311 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %node_num.i288.i, align 4
  %conv155.i.i = zext i8 %312 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m149.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 592, ptr noundef nonnull @.str.102, ptr noundef %310, i32 noundef %conv155.i.i, i32 noundef %ret.0.i36.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m149.i.i) #10
  call void @msleep(i32 noundef 100) #10
  br label %do.cond161.i.i

do.cond161.i.i:                                   ; preds = %do.body148.i.i, %dlm_request_all_locks.exit.i.i.do.cond161.i.i_crit_edge
  %status.0.i.i = phi i32 [ 1, %do.body148.i.i ], [ %282, %dlm_request_all_locks.exit.i.i.do.cond161.i.i_crit_edge ]
  %cmp162.not.i.i = icmp eq i32 %status.0.i.i, 0
  br i1 %cmp162.not.i.i, label %do.cond161.i.i.do.end164.i.i_crit_edge, label %do.cond161.i.i.do.body44.i.i_crit_edge

do.cond161.i.i.do.body44.i.i_crit_edge:           ; preds = %do.cond161.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

do.cond161.i.i.do.end164.i.i_crit_edge:           ; preds = %do.cond161.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end164.i.i

do.end164.i.i:                                    ; preds = %do.cond161.i.i.do.end164.i.i_crit_edge, %do.cond161.thread.i.i
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_reco_state_lock) #10
  %313 = ptrtoint ptr %ndata.076.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %ndata.076.i.i, align 4
  %315 = zext i32 %314 to i64
  call void @__sanitizer_cov_trace_switch(i64 %315, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %314, label %do.end164.i.i.sw.epilog.i.i_crit_edge [
    i32 0, label %do.end164.i.i.do.body166.i.i_crit_edge
    i32 5, label %do.end164.i.i.do.body166.i.i_crit_edge197
    i32 2, label %do.end164.i.i.do.body166.i.i_crit_edge198
    i32 -1, label %do.body173.i.i
    i32 1, label %sw.bb184.i.i
    i32 3, label %do.body198.i.i
    i32 4, label %do.body210.i.i
  ]

do.end164.i.i.do.body166.i.i_crit_edge198:        ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body166.i.i

do.end164.i.i.do.body166.i.i_crit_edge197:        ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body166.i.i

do.end164.i.i.do.body166.i.i_crit_edge:           ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body166.i.i

do.end164.i.i.sw.epilog.i.i_crit_edge:            ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

do.body166.i.i:                                   ; preds = %do.end164.i.i.do.body166.i.i_crit_edge, %do.end164.i.i.do.body166.i.i_crit_edge197, %do.end164.i.i.do.body166.i.i_crit_edge198
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 603, 0\0A.popsection", ""() #10, !srcloc !447
  unreachable

do.body173.i.i:                                   ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m174.i.i) #10
  %316 = ptrtoint ptr %_m174.i.i to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 1088, ptr %_m174.i.i, align 8
  %317 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %node_num.i288.i, align 4
  %conv179.i.i = zext i8 %318 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m174.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 608, ptr noundef nonnull @.str.103, i32 noundef %conv179.i.i, i32 noundef %.pre.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m174.i.i) #10
  br label %sw.epilog.i.i

sw.bb184.i.i:                                     ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %319 = ptrtoint ptr %ndata.076.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 2, ptr %ndata.076.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m187.i.i) #10
  %320 = ptrtoint ptr %_m187.i.i to i32
  call void @__asan_store8_noabort(i32 %320)
  store i64 1088, ptr %_m187.i.i, align 8
  %321 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %node_num.i288.i, align 4
  %conv192.i.i = zext i8 %322 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m187.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 616, ptr noundef nonnull @.str.104, i32 noundef %conv192.i.i, i32 noundef %.pre.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m187.i.i) #10
  br label %sw.epilog.i.i

do.body198.i.i:                                   ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m199.i.i) #10
  %323 = ptrtoint ptr %_m199.i.i to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 1088, ptr %_m199.i.i, align 8
  %324 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %node_num.i288.i, align 4
  %conv204.i.i = zext i8 %325 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m199.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 621, ptr noundef nonnull @.str.105, i32 noundef %conv204.i.i, i32 noundef %.pre.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m199.i.i) #10
  br label %sw.epilog.i.i

do.body210.i.i:                                   ; preds = %do.end164.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m211.i.i) #10
  %326 = ptrtoint ptr %_m211.i.i to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 1088, ptr %_m211.i.i, align 8
  %327 = ptrtoint ptr %node_num.i288.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %node_num.i288.i, align 4
  %conv216.i.i = zext i8 %328 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m211.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 626, ptr noundef nonnull @.str.106, i32 noundef %conv216.i.i, i32 noundef %.pre.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m211.i.i) #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.body210.i.i, %do.body198.i.i, %sw.bb184.i.i, %do.body173.i.i, %do.end164.i.i.sw.epilog.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_reco_state_lock) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.epilog.i.i, %if.then41.i.i
  %329 = ptrtoint ptr %.pn75.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %.pn.i.i = load ptr, ptr %.pn75.i.i, align 4
  %cmp9.not.i.i = icmp eq ptr %.pn.i.i, %node_data.i.i.i
  br i1 %cmp9.not.i.i, label %for.inc.i.i.do.body227.i.i_crit_edge, label %for.inc.i.i.do.body10.i.i_crit_edge

for.inc.i.i.do.body10.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i

for.inc.i.i.do.body227.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body227.i.i

do.body227.i.i:                                   ; preds = %for.inc.i.i.do.body227.i.i_crit_edge, %do.end6.i.i.do.body227.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m228.i.i) #10
  %330 = ptrtoint ptr %_m228.i.i to i32
  call void @__asan_store8_noabort(i32 %330)
  store i64 1088, ptr %_m228.i.i, align 8
  %331 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m228.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 632, ptr noundef nonnull @.str.107, ptr noundef %332) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m228.i.i) #10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %do.body227.i.i
  %pass.0.i.i = phi i32 [ 0, %do.body227.i.i ], [ %inc.i.i, %while.cond.i.i.backedge ]
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_reco_state_lock) #10
  %333 = ptrtoint ptr %node_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %.pn178.i.i = load ptr, ptr %node_data.i.i.i, align 4
  %cmp246.not80.i.i = icmp eq ptr %.pn178.i.i, %node_data.i.i.i
  br i1 %cmp246.not80.i.i, label %while.cond.i.i.for.end339.i.i_crit_edge, label %while.cond.i.i.do.body251.i.i_crit_edge

while.cond.i.i.do.body251.i.i_crit_edge:          ; preds = %while.cond.i.i
  br label %do.body251.i.i

while.cond.i.i.for.end339.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end339.i.i

do.body251.i.i:                                   ; preds = %for.inc333.i.i.do.body251.i.i_crit_edge, %while.cond.i.i.do.body251.i.i_crit_edge
  %.pn182.i.i = phi ptr [ %.pn1.i.i, %for.inc333.i.i.do.body251.i.i_crit_edge ], [ %.pn178.i.i, %while.cond.i.i.do.body251.i.i_crit_edge ]
  %all_nodes_done.081.i.i = phi i32 [ %all_nodes_done.1.i.i, %for.inc333.i.i.do.body251.i.i_crit_edge ], [ 1, %while.cond.i.i.do.body251.i.i_crit_edge ]
  %ndata.183.i.i = getelementptr i8, ptr %.pn182.i.i, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m252.i.i) #10
  %334 = ptrtoint ptr %_m252.i.i to i32
  call void @__asan_store8_noabort(i32 %334)
  store i64 1088, ptr %_m252.i.i, align 8
  %node_num256.i.i = getelementptr i8, ptr %.pn182.i.i, i32 -4
  %335 = ptrtoint ptr %node_num256.i.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %node_num256.i.i, align 4
  %conv257.i.i = zext i8 %336 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m252.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 644, ptr noundef nonnull @.str.108, i32 noundef %conv257.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m252.i.i) #10
  %337 = ptrtoint ptr %ndata.183.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %ndata.183.i.i, align 4
  %339 = zext i32 %338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %339, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %338, label %do.body251.i.i.for.inc333.i.i_crit_edge [
    i32 0, label %do.body251.i.i.do.body263.i.i_crit_edge
    i32 1, label %do.body251.i.i.do.body263.i.i_crit_edge199
    i32 -1, label %do.body281.i.i
    i32 3, label %do.body251.i.i.do.body293.i.i_crit_edge
    i32 2, label %do.body251.i.i.do.body293.i.i_crit_edge200
    i32 4, label %do.body309.i.i
    i32 5, label %do.body321.i.i
  ]

do.body251.i.i.do.body293.i.i_crit_edge200:       ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body293.i.i

do.body251.i.i.do.body293.i.i_crit_edge:          ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body293.i.i

do.body251.i.i.do.body263.i.i_crit_edge199:       ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body263.i.i

do.body251.i.i.do.body263.i.i_crit_edge:          ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body263.i.i

do.body251.i.i.for.inc333.i.i_crit_edge:          ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc333.i.i

do.body263.i.i:                                   ; preds = %do.body251.i.i.do.body263.i.i_crit_edge, %do.body251.i.i.do.body263.i.i_crit_edge199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m264.i.i) #10
  %340 = ptrtoint ptr %_m264.i.i to i32
  call void @__asan_store8_noabort(i32 %340)
  store i64 1152921504606848064, ptr %_m264.i.i, align 8
  %341 = ptrtoint ptr %node_num256.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %node_num256.i.i, align 4
  %conv269.i.i = zext i8 %342 to i32
  %343 = ptrtoint ptr %ndata.183.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %ndata.183.i.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m264.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 650, ptr noundef nonnull @.str.15, i32 noundef %conv269.i.i, i32 noundef %344) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m264.i.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 651, 0\0A.popsection", ""() #10, !srcloc !448
  unreachable

do.body281.i.i:                                   ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m282.i.i) #10
  %345 = ptrtoint ptr %_m282.i.i to i32
  call void @__asan_store8_noabort(i32 %345)
  store i64 1088, ptr %_m282.i.i, align 8
  %346 = ptrtoint ptr %node_num256.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %node_num256.i.i, align 4
  %conv287.i.i = zext i8 %347 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m282.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 657, ptr noundef nonnull @.str.103, i32 noundef %conv287.i.i, i32 noundef %.pre.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m282.i.i) #10
  br label %for.inc333.i.i

do.body293.i.i:                                   ; preds = %do.body251.i.i.do.body293.i.i_crit_edge, %do.body251.i.i.do.body293.i.i_crit_edge200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m294.i.i) #10
  %348 = ptrtoint ptr %_m294.i.i to i32
  call void @__asan_store8_noabort(i32 %348)
  store i64 1088, ptr %_m294.i.i, align 8
  %349 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %name, align 4
  %351 = ptrtoint ptr %node_num256.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %node_num256.i.i, align 4
  %conv300.i.i = zext i8 %352 to i32
  %353 = ptrtoint ptr %ndata.183.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %ndata.183.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %354)
  %cmp302.i.i = icmp eq i32 %354, 3
  %cond304.i.i = select i1 %cmp302.i.i, ptr @.str.110, ptr @.str.111
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m294.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 664, ptr noundef nonnull @.str.109, ptr noundef %350, i32 noundef %conv300.i.i, ptr noundef nonnull %cond304.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m294.i.i) #10
  br label %for.inc333.i.i

do.body309.i.i:                                   ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m310.i.i) #10
  %355 = ptrtoint ptr %_m310.i.i to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 1088, ptr %_m310.i.i, align 8
  %356 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %name, align 4
  %358 = ptrtoint ptr %node_num256.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %node_num256.i.i, align 4
  %conv316.i.i = zext i8 %359 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m310.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 669, ptr noundef nonnull @.str.112, ptr noundef %357, i32 noundef %conv316.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m310.i.i) #10
  br label %for.inc333.i.i

do.body321.i.i:                                   ; preds = %do.body251.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m322.i.i) #10
  %360 = ptrtoint ptr %_m322.i.i to i32
  call void @__asan_store8_noabort(i32 %360)
  store i64 1088, ptr %_m322.i.i, align 8
  %361 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %name, align 4
  %363 = ptrtoint ptr %node_num256.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %node_num256.i.i, align 4
  %conv328.i.i = zext i8 %364 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m322.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 673, ptr noundef nonnull @.str.113, ptr noundef %362, i32 noundef %conv328.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m322.i.i) #10
  br label %for.inc333.i.i

for.inc333.i.i:                                   ; preds = %do.body321.i.i, %do.body309.i.i, %do.body293.i.i, %do.body281.i.i, %do.body251.i.i.for.inc333.i.i_crit_edge
  %all_nodes_done.1.i.i = phi i32 [ %all_nodes_done.081.i.i, %do.body251.i.i.for.inc333.i.i_crit_edge ], [ %all_nodes_done.081.i.i, %do.body321.i.i ], [ %all_nodes_done.081.i.i, %do.body309.i.i ], [ 0, %do.body293.i.i ], [ %all_nodes_done.081.i.i, %do.body281.i.i ]
  %365 = ptrtoint ptr %.pn182.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %.pn1.i.i = load ptr, ptr %.pn182.i.i, align 4
  %cmp246.not.i.i = icmp eq ptr %.pn1.i.i, %node_data.i.i.i
  br i1 %cmp246.not.i.i, label %for.inc333.i.i.for.end339.i.i_crit_edge, label %for.inc333.i.i.do.body251.i.i_crit_edge

for.inc333.i.i.do.body251.i.i_crit_edge:          ; preds = %for.inc333.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body251.i.i

for.inc333.i.i.for.end339.i.i_crit_edge:          ; preds = %for.inc333.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end339.i.i

for.end339.i.i:                                   ; preds = %for.inc333.i.i.for.end339.i.i_crit_edge, %while.cond.i.i.for.end339.i.i_crit_edge
  %all_nodes_done.0.lcssa.i.i = phi i32 [ 1, %while.cond.i.i.for.end339.i.i_crit_edge ], [ %all_nodes_done.1.i.i, %for.inc333.i.i.for.end339.i.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_reco_state_lock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m341.i.i) #10
  %366 = ptrtoint ptr %_m341.i.i to i32
  call void @__asan_store8_noabort(i32 %366)
  store i64 1088, ptr %_m341.i.i, align 8
  %inc.i.i = add i32 %pass.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %all_nodes_done.0.lcssa.i.i)
  %tobool345.not.i.i = icmp eq i32 %all_nodes_done.0.lcssa.i.i, 0
  %cond346.i.i = select i1 %tobool345.not.i.i, ptr @.str.101, ptr @.str.100
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m341.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 680, ptr noundef nonnull @.str.114, i32 noundef %inc.i.i, ptr noundef nonnull %cond346.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m341.i.i) #10
  br i1 %tobool345.not.i.i, label %if.end425.i.i, label %if.then351.i.i

if.then351.i.i:                                   ; preds = %for.end339.i.i
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %367 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %state.i.i, align 2
  %369 = or i16 %368, 2
  store i16 %369, ptr %state.i.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m358.i.i) #10
  %370 = ptrtoint ptr %_m358.i.i to i32
  call void @__asan_store8_noabort(i32 %370)
  store i64 1088, ptr %_m358.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m358.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 695, ptr noundef nonnull @.str.115) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m358.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fr.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter.i.i276.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i21.i.i) #10
  %371 = ptrtoint ptr %status.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 -1, ptr %status.i21.i.i, align 4, !annotation !441
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i22.i.i) #10
  %372 = ptrtoint ptr %_m.i22.i.i to i32
  call void @__asan_store8_noabort(i32 %372)
  store i64 1088, ptr %_m.i22.i.i, align 8
  %373 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %name, align 4
  %375 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %dead_node.i, align 1
  %conv.i24.i.i = zext i8 %376 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i22.i.i, ptr noundef nonnull @__func__.dlm_send_finalize_reco_message, i32 noundef 2841, ptr noundef nonnull @.str.121, ptr noundef %374, i32 noundef %conv.i24.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i22.i.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %377 = call ptr @memcpy(ptr %iter.i.i276.i, ptr %domain_map.i.i.i, i32 32)
  %378 = ptrtoint ptr %curnode.i.i.i293.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 -1, ptr %curnode.i.i.i293.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %379 = ptrtoint ptr %fr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 0, ptr %fr.i.i.i, align 8
  %380 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %node_num.i, align 4
  store i8 %381, ptr %fr.i.i.i, align 8
  %382 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %dead_node.i, align 1
  %384 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %383, ptr %5, align 1
  br label %while.cond.outer.i.i.i

while.cond.outer.i.i.i:                           ; preds = %while.cond.outer.i.i.i.backedge, %if.then351.i.i
  %ret.1.ph.i.i.i = phi i32 [ 0, %if.then351.i.i ], [ %ret.1.ph.i.i.i.be, %while.cond.outer.i.i.i.backedge ]
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i296.i.while.cond.i.i.i_crit_edge, %while.cond.outer.i.i.i
  %385 = ptrtoint ptr %curnode.i.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %curnode.i.i.i293.i, align 4
  %add.i.i.i294.i = add i32 %386, 1
  %call.i.i.i295.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter.i.i276.i, i32 noundef 255, i32 noundef %add.i.i.i294.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i.i.i295.i)
  %cmp.i.i.i.i = icmp sgt i32 %call.i.i.i295.i, 254
  %.call.i.i.i.i = select i1 %cmp.i.i.i.i, i32 255, i32 %call.i.i.i295.i
  %.call8.i.i.i.i = select i1 %cmp.i.i.i.i, i32 -2, i32 %call.i.i.i295.i
  %387 = ptrtoint ptr %curnode.i.i.i293.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %.call.i.i.i.i, ptr %curnode.i.i.i293.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.call8.i.i.i.i)
  %cmp10.i.i.i = icmp sgt i32 %.call8.i.i.i.i, -1
  br i1 %cmp10.i.i.i, label %while.body.i.i296.i, label %while.cond.i.i.i.if.end9.1.i.i.i_crit_edge

while.cond.i.i.i.if.end9.1.i.i.i_crit_edge:       ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.1.i.i.i

while.body.i.i296.i:                              ; preds = %while.cond.i.i.i
  %388 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %node_num.i, align 4
  %conv13.i.i.i = zext i8 %389 to i32
  %cmp14.i.i.i = icmp eq i32 %.call8.i.i.i.i, %conv13.i.i.i
  br i1 %cmp14.i.i.i, label %while.body.i.i296.i.while.cond.i.i.i_crit_edge, label %if.end17.i.i.i

while.body.i.i296.i.while.cond.i.i.i_crit_edge:   ; preds = %while.body.i.i296.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i

if.end17.i.i.i:                                   ; preds = %while.body.i.i296.i
  %390 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %key.i.i.i, align 4
  %conv18.i.i.i = trunc i32 %.call8.i.i.i.i to i8
  %call19.i.i.i = call i32 @o2net_send_message(i32 noundef 518, i32 noundef %391, ptr noundef nonnull %fr.i.i.i, i32 noundef 8, i8 noundef zeroext %conv18.i.i.i, ptr noundef nonnull %status.i21.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i.i.i)
  %cmp20.i.i.i = icmp sgt i32 %call19.i.i.i, -1
  br i1 %cmp20.i.i.i, label %if.end23.i.i.i, label %if.end17.i.i.i.do.body27.i.i.i_crit_edge

if.end17.i.i.i.do.body27.i.i.i_crit_edge:         ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end17.i.i.i
  %392 = ptrtoint ptr %status.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %status.i21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %cmp24.i.i.i = icmp slt i32 %393, 0
  br i1 %cmp24.i.i.i, label %if.end23.i.i.i.do.body27.i.i.i_crit_edge, label %if.end23.i.i.i.while.cond.outer.i.i.i.backedge_crit_edge

if.end23.i.i.i.while.cond.outer.i.i.i.backedge_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.i.i.i.backedge

if.end23.i.i.i.do.body27.i.i.i_crit_edge:         ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %if.end23.i.i.i.do.body27.i.i.i_crit_edge, %if.end17.i.i.i.do.body27.i.i.i_crit_edge
  %ret.274.i.i.i = phi i32 [ %393, %if.end23.i.i.i.do.body27.i.i.i_crit_edge ], [ %call19.i.i.i, %if.end17.i.i.i.do.body27.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m28.i.i.i) #10
  %394 = ptrtoint ptr %_m28.i.i.i to i32
  call void @__asan_store8_noabort(i32 %394)
  store i64 1152921504606848064, ptr %_m28.i.i.i, align 8
  %395 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %key.i.i.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m28.i.i.i, ptr noundef nonnull @__func__.dlm_send_finalize_reco_message, i32 noundef 2864, ptr noundef nonnull @.str.33, i32 noundef %ret.274.i.i.i, i32 noundef 518, i32 noundef %396, i32 noundef %.call8.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m28.i.i.i) #10
  %call36.i.i.i = call i32 @dlm_is_host_down(i32 noundef %ret.274.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %do.body27.i.i.i.if.end9.1.i.i.i_crit_edge, label %do.body39.i.i.i

do.body27.i.i.i.if.end9.1.i.i.i_crit_edge:        ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.1.i.i.i

do.body39.i.i.i:                                  ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i.i.i) #10
  %397 = ptrtoint ptr %_m40.i.i.i to i32
  call void @__asan_store8_noabort(i32 %397)
  store i64 1152921504606848064, ptr %_m40.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i.i.i, ptr noundef nonnull @__func__.dlm_send_finalize_reco_message, i32 noundef 2870, ptr noundef nonnull @.str.122, i32 noundef %.call8.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i.i.i) #10
  br label %while.cond.outer.i.i.i.backedge

while.cond.outer.i.i.i.backedge:                  ; preds = %do.body39.i.i.i, %if.end23.i.i.i.while.cond.outer.i.i.i.backedge_crit_edge
  %ret.1.ph.i.i.i.be = phi i32 [ %393, %if.end23.i.i.i.while.cond.outer.i.i.i.backedge_crit_edge ], [ 0, %do.body39.i.i.i ]
  br label %while.cond.outer.i.i.i

if.end9.1.i.i.i:                                  ; preds = %do.body27.i.i.i.if.end9.1.i.i.i_crit_edge, %while.cond.i.i.i.if.end9.1.i.i.i_crit_edge
  %ret.3.i.i.i = phi i32 [ %ret.1.ph.i.i.i, %while.cond.i.i.i.if.end9.1.i.i.i_crit_edge ], [ %ret.274.i.i.i, %do.body27.i.i.i.if.end9.1.i.i.i_crit_edge ]
  %398 = ptrtoint ptr %curnode.i.i.i293.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 -1, ptr %curnode.i.i.i293.i, align 4
  %399 = ptrtoint ptr %fr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 1099511627776, ptr %fr.i.i.i, align 8
  %400 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %node_num.i, align 4
  store i8 %401, ptr %fr.i.i.i, align 8
  %402 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %dead_node.i, align 1
  %404 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %403, ptr %5, align 1
  br label %while.cond.outer.1.i.i.i

while.cond.outer.1.i.i.i:                         ; preds = %while.cond.outer.1.i.i.i.backedge, %if.end9.1.i.i.i
  %ret.1.ph.1.i.i.i = phi i32 [ %ret.3.i.i.i, %if.end9.1.i.i.i ], [ %ret.1.ph.1.i.i.i.be, %while.cond.outer.1.i.i.i.backedge ]
  br label %while.cond.1.i.i.i

while.cond.1.i.i.i:                               ; preds = %while.body.1.i.i.i.while.cond.1.i.i.i_crit_edge, %while.cond.outer.1.i.i.i
  %405 = ptrtoint ptr %curnode.i.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %curnode.i.i.i293.i, align 4
  %add.i.1.i.i.i = add i32 %406, 1
  %call.i.1.i.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter.i.i276.i, i32 noundef 255, i32 noundef %add.i.1.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i.1.i.i.i)
  %cmp.i.1.i.i.i = icmp sgt i32 %call.i.1.i.i.i, 254
  %.call.i.1.i.i.i = select i1 %cmp.i.1.i.i.i, i32 255, i32 %call.i.1.i.i.i
  %.call8.i.1.i.i.i = select i1 %cmp.i.1.i.i.i, i32 -2, i32 %call.i.1.i.i.i
  %407 = ptrtoint ptr %curnode.i.i.i293.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %.call.i.1.i.i.i, ptr %curnode.i.i.i293.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.call8.i.1.i.i.i)
  %cmp10.1.i.i.i = icmp sgt i32 %.call8.i.1.i.i.i, -1
  br i1 %cmp10.1.i.i.i, label %while.body.1.i.i.i, label %dlm_send_finalize_reco_message.exit.i.i

while.body.1.i.i.i:                               ; preds = %while.cond.1.i.i.i
  %408 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %node_num.i, align 4
  %conv13.1.i.i.i = zext i8 %409 to i32
  %cmp14.1.i.i.i = icmp eq i32 %.call8.i.1.i.i.i, %conv13.1.i.i.i
  br i1 %cmp14.1.i.i.i, label %while.body.1.i.i.i.while.cond.1.i.i.i_crit_edge, label %if.end17.1.i.i.i

while.body.1.i.i.i.while.cond.1.i.i.i_crit_edge:  ; preds = %while.body.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.1.i.i.i

if.end17.1.i.i.i:                                 ; preds = %while.body.1.i.i.i
  %410 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %key.i.i.i, align 4
  %conv18.1.i.i.i = trunc i32 %.call8.i.1.i.i.i to i8
  %call19.1.i.i.i = call i32 @o2net_send_message(i32 noundef 518, i32 noundef %411, ptr noundef nonnull %fr.i.i.i, i32 noundef 8, i8 noundef zeroext %conv18.1.i.i.i, ptr noundef nonnull %status.i21.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.1.i.i.i)
  %cmp20.1.i.i.i = icmp sgt i32 %call19.1.i.i.i, -1
  br i1 %cmp20.1.i.i.i, label %if.end23.1.i.i.i, label %if.end17.1.i.i.i.do.body27.1.i.i.i_crit_edge

if.end17.1.i.i.i.do.body27.1.i.i.i_crit_edge:     ; preds = %if.end17.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.1.i.i.i

if.end23.1.i.i.i:                                 ; preds = %if.end17.1.i.i.i
  %412 = ptrtoint ptr %status.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %status.i21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %cmp24.1.i.i.i = icmp slt i32 %413, 0
  br i1 %cmp24.1.i.i.i, label %if.end23.1.i.i.i.do.body27.1.i.i.i_crit_edge, label %if.end23.1.i.i.i.while.cond.outer.1.i.i.i.backedge_crit_edge

if.end23.1.i.i.i.while.cond.outer.1.i.i.i.backedge_crit_edge: ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.1.i.i.i.backedge

if.end23.1.i.i.i.do.body27.1.i.i.i_crit_edge:     ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.1.i.i.i

do.body27.1.i.i.i:                                ; preds = %if.end23.1.i.i.i.do.body27.1.i.i.i_crit_edge, %if.end17.1.i.i.i.do.body27.1.i.i.i_crit_edge
  %ret.274.1.i.i.i = phi i32 [ %413, %if.end23.1.i.i.i.do.body27.1.i.i.i_crit_edge ], [ %call19.1.i.i.i, %if.end17.1.i.i.i.do.body27.1.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m28.i.i.i) #10
  %414 = ptrtoint ptr %_m28.i.i.i to i32
  call void @__asan_store8_noabort(i32 %414)
  store i64 1152921504606848064, ptr %_m28.i.i.i, align 8
  %415 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %key.i.i.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m28.i.i.i, ptr noundef nonnull @__func__.dlm_send_finalize_reco_message, i32 noundef 2864, ptr noundef nonnull @.str.33, i32 noundef %ret.274.1.i.i.i, i32 noundef 518, i32 noundef %416, i32 noundef %.call8.i.1.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m28.i.i.i) #10
  %call36.1.i.i.i = call i32 @dlm_is_host_down(i32 noundef %ret.274.1.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.1.i.i.i)
  %tobool37.not.1.i.i.i = icmp eq i32 %call36.1.i.i.i, 0
  br i1 %tobool37.not.1.i.i.i, label %dlm_send_finalize_reco_message.exit.thread.i.i, label %do.body39.1.i.i.i

dlm_send_finalize_reco_message.exit.thread.i.i:   ; preds = %do.body27.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i21.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter.i.i276.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fr.i.i.i) #10
  br label %if.then368.i.i

do.body39.1.i.i.i:                                ; preds = %do.body27.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i.i.i) #10
  %417 = ptrtoint ptr %_m40.i.i.i to i32
  call void @__asan_store8_noabort(i32 %417)
  store i64 1152921504606848064, ptr %_m40.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i.i.i, ptr noundef nonnull @__func__.dlm_send_finalize_reco_message, i32 noundef 2870, ptr noundef nonnull @.str.122, i32 noundef %.call8.i.1.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i.i.i) #10
  br label %while.cond.outer.1.i.i.i.backedge

while.cond.outer.1.i.i.i.backedge:                ; preds = %do.body39.1.i.i.i, %if.end23.1.i.i.i.while.cond.outer.1.i.i.i.backedge_crit_edge
  %ret.1.ph.1.i.i.i.be = phi i32 [ %413, %if.end23.1.i.i.i.while.cond.outer.1.i.i.i.backedge_crit_edge ], [ 0, %do.body39.1.i.i.i ]
  br label %while.cond.outer.1.i.i.i

dlm_send_finalize_reco_message.exit.i.i:          ; preds = %while.cond.1.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i21.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter.i.i276.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fr.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.ph.1.i.i.i)
  %cmp366.i.i = icmp slt i32 %ret.1.ph.1.i.i.i, 0
  br i1 %cmp366.i.i, label %dlm_send_finalize_reco_message.exit.i.i.if.then368.i.i_crit_edge, label %dlm_send_finalize_reco_message.exit.i.i.dlm_remaster_locks.exit.i_crit_edge

dlm_send_finalize_reco_message.exit.i.i.dlm_remaster_locks.exit.i_crit_edge: ; preds = %dlm_send_finalize_reco_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_remaster_locks.exit.i

dlm_send_finalize_reco_message.exit.i.i.if.then368.i.i_crit_edge: ; preds = %dlm_send_finalize_reco_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then368.i.i

if.then368.i.i:                                   ; preds = %dlm_send_finalize_reco_message.exit.i.i.if.then368.i.i_crit_edge, %dlm_send_finalize_reco_message.exit.thread.i.i
  %ret.3.1.i45.i.i = phi i32 [ %ret.274.1.i.i.i, %dlm_send_finalize_reco_message.exit.thread.i.i ], [ %ret.1.ph.1.i.i.i, %dlm_send_finalize_reco_message.exit.i.i.if.then368.i.i_crit_edge ]
  %418 = zext i32 %ret.3.1.i45.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %418, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %ret.3.1.i45.i.i, label %do.body385.i.i [
    i32 -512, label %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge
    i32 -4, label %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge201
    i32 -28, label %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge202
    i32 -122, label %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge203
  ]

if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge203: ; preds = %if.then368.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_remaster_locks.exit.i

if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge202: ; preds = %if.then368.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_remaster_locks.exit.i

if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge201: ; preds = %if.then368.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_remaster_locks.exit.i

if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge: ; preds = %if.then368.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_remaster_locks.exit.i

do.body385.i.i:                                   ; preds = %if.then368.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m386.i.i) #10
  %419 = ptrtoint ptr %_m386.i.i to i32
  call void @__asan_store8_noabort(i32 %419)
  store i64 1152921504606848064, ptr %_m386.i.i, align 8
  %conv390.i.i = sext i32 %ret.3.1.i45.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m386.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 698, ptr noundef nonnull @.str.3, i64 noundef %conv390.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m386.i.i) #10
  br label %dlm_remaster_locks.exit.i

if.end425.i.i:                                    ; preds = %for.end339.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 720) #10
  %call435.i.i = call zeroext i1 @kthread_should_stop() #10
  br i1 %call435.i.i, label %if.end425.i.i.while.cond.i.i.backedge_crit_edge, label %if.then453.i.i

if.end425.i.i.while.cond.i.i.backedge_crit_edge:  ; preds = %if.end425.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.backedge

if.then453.i.i:                                   ; preds = %if.end425.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry454.i.i) #10
  %420 = call ptr @memset(ptr %__wq_entry454.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry454.i.i, i32 noundef 0) #10
  %call46085.i.i = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry454.i.i, i32 noundef 1) #10
  %call46286.i.i = call zeroext i1 @kthread_should_stop() #10
  br i1 %call46286.i.i, label %if.then453.i.i.for.end489.i.i_crit_edge, label %if.then453.i.i.if.end481.i.i_crit_edge

if.then453.i.i.if.end481.i.i_crit_edge:           ; preds = %if.then453.i.i
  br label %if.end481.i.i

if.then453.i.i.for.end489.i.i_crit_edge:          ; preds = %if.then453.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end489.i.i

if.end481.i.i:                                    ; preds = %cleanup486.i.i.if.end481.i.i_crit_edge, %if.then453.i.i.if.end481.i.i_crit_edge
  %__ret455.188.i.i = phi i32 [ %__ret455.1.i.i, %cleanup486.i.i.if.end481.i.i_crit_edge ], [ 500, %if.then453.i.i.if.end481.i.i_crit_edge ]
  %call46087.i.i = phi i32 [ %call460.i.i, %cleanup486.i.i.if.end481.i.i_crit_edge ], [ %call46085.i.i, %if.then453.i.i.if.end481.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46087.i.i)
  %tobool482.not.i.i = icmp eq i32 %call46087.i.i, 0
  br i1 %tobool482.not.i.i, label %cleanup486.i.i, label %if.end481.i.i.__out491.i.i_crit_edge

if.end481.i.i.__out491.i.i_crit_edge:             ; preds = %if.end481.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out491.i.i

cleanup486.i.i:                                   ; preds = %if.end481.i.i
  %call485.i.i = call i32 @schedule_timeout(i32 noundef %__ret455.188.i.i) #10
  %call460.i.i = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry454.i.i, i32 noundef 1) #10
  %call462.i.i = call zeroext i1 @kthread_should_stop() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call485.i.i)
  %tobool467.not.i.i = icmp eq i32 %call485.i.i, 0
  %421 = select i1 %call462.i.i, i1 %tobool467.not.i.i, i1 false
  %__ret455.1.i.i = select i1 %421, i32 1, i32 %call485.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret455.1.i.i)
  %tobool474.not.i.i = icmp eq i32 %__ret455.1.i.i, 0
  %422 = select i1 %call462.i.i, i1 true, i1 %tobool474.not.i.i
  br i1 %422, label %cleanup486.i.i.for.end489.i.i_crit_edge, label %cleanup486.i.i.if.end481.i.i_crit_edge

cleanup486.i.i.if.end481.i.i_crit_edge:           ; preds = %cleanup486.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end481.i.i

cleanup486.i.i.for.end489.i.i_crit_edge:          ; preds = %cleanup486.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end489.i.i

for.end489.i.i:                                   ; preds = %cleanup486.i.i.for.end489.i.i_crit_edge, %if.then453.i.i.for.end489.i.i_crit_edge
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry454.i.i) #10
  br label %__out491.i.i

__out491.i.i:                                     ; preds = %for.end489.i.i, %if.end481.i.i.__out491.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry454.i.i) #10
  br label %while.cond.i.i.backedge

while.cond.i.i.backedge:                          ; preds = %__out491.i.i, %if.end425.i.i.while.cond.i.i.backedge_crit_edge
  br label %while.cond.i.i

dlm_remaster_locks.exit.i:                        ; preds = %do.body385.i.i, %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge, %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge201, %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge202, %if.then368.i.i.dlm_remaster_locks.exit.i_crit_edge203, %dlm_send_finalize_reco_message.exit.i.i.dlm_remaster_locks.exit.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %423 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %node_num.i, align 4
  call fastcc void @dlm_finish_local_lockres_recovery(ptr noundef %data, i8 noundef zeroext %238, i8 noundef zeroext %424) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m401.i.i) #10
  %425 = ptrtoint ptr %_m401.i.i to i32
  call void @__asan_store8_noabort(i32 %425)
  store i64 1088, ptr %_m401.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m401.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 704, ptr noundef nonnull @.str.116) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m401.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m409.i.i) #10
  %426 = ptrtoint ptr %_m409.i.i to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 1088, ptr %_m409.i.i, align 8
  %427 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %429 = load volatile i32, ptr @jiffies, align 128
  %430 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %dead_node.i, align 1
  %conv416.i.i = zext i8 %431 to i32
  %432 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %node_num.i, align 4
  %conv418.i.i = zext i8 %433 to i32
  %434 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %new_master.i, align 4
  %conv420.i.i = zext i8 %435 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m409.i.i, ptr noundef nonnull @__func__.dlm_remaster_locks, i32 noundef 709, ptr noundef nonnull @.str.117, ptr noundef %428, i32 noundef %429, i32 noundef %conv416.i.i, i32 noundef %conv418.i.i, i32 noundef %conv420.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m409.i.i) #10
  call void @dlm_kick_thread(ptr noundef %data, ptr noundef null) #10
  call fastcc void @dlm_destroy_recovery_area(ptr noundef %data) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m132.i) #10
  %436 = ptrtoint ptr %_m132.i to i32
  call void @__asan_store8_noabort(i32 %436)
  store i64 1088, ptr %_m132.i, align 8
  %437 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %name, align 4
  %439 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %dead_node.i, align 1
  %conv139.i = zext i8 %440 to i32
  %441 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %node_num.i, align 4
  %conv141.i = zext i8 %442 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m132.i, ptr noundef nonnull @__func__.dlm_do_recovery, i32 noundef 522, ptr noundef nonnull @.str.62, ptr noundef %438, i32 noundef %conv139.i, i32 noundef %conv141.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m132.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i300.i)
  %443 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %agg.tmp.sroa.0.0.copyload.i.i302.i = load volatile i32, ptr %spinlock.i, align 4
  %444 = ptrtoint ptr %agg.tmp.sroa.0.i.i300.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i302.i, ptr %agg.tmp.sroa.0.i.i300.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i303.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i302.i, 16
  %conv.i.i.i304.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i302.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i304.i, i32 %lock.sroa.0.0.extract.shift.i.i.i303.i)
  %cmp.i.i.not.i305.i = icmp eq i32 %conv.i.i.i304.i, %lock.sroa.0.0.extract.shift.i.i.i303.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i300.i)
  br i1 %cmp.i.i.not.i305.i, label %do.body4.i306.i, label %do.end7.i313.i, !prof !435

do.body4.i306.i:                                  ; preds = %dlm_remaster_locks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #10, !srcloc !449
  unreachable

do.end7.i313.i:                                   ; preds = %dlm_remaster_locks.exit.i
  %445 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %dead_node.i, align 1
  %conv.i308.i = zext i8 %446 to i32
  call void @_clear_bit(i32 noundef %conv.i308.i, ptr noundef %recovery_map.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i298.i)
  %447 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %agg.tmp.sroa.0.0.copyload.i.i.i309.i = load volatile i32, ptr %spinlock.i, align 4
  %448 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i298.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i309.i, ptr %agg.tmp.sroa.0.i.i.i298.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i310.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i309.i, 16
  %conv.i.i.i.i311.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i309.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i311.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i310.i)
  %cmp.i.i.not.i.i312.i = icmp eq i32 %conv.i.i.i.i311.i, %lock.sroa.0.0.extract.shift.i.i.i.i310.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i298.i)
  br i1 %cmp.i.i.not.i.i312.i, label %do.body4.i.i314.i, label %do.end7.i.i.i, !prof !435

do.body4.i.i314.i:                                ; preds = %do.end7.i313.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

do.end7.i.i.i:                                    ; preds = %do.end7.i313.i
  %449 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %dead_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %450)
  %cmp.not.i.i.i = icmp eq i8 %450, -1
  br i1 %cmp.not.i.i.i, label %do.end7.i.i.i.dlm_set_reco_dead_node.exit.i.i_crit_edge, label %do.body12.i.i.i

do.end7.i.i.i.dlm_set_reco_dead_node.exit.i.i_crit_edge: ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_set_reco_dead_node.exit.i.i

do.body12.i.i.i:                                  ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i299.i) #10
  %451 = ptrtoint ptr %_m.i.i299.i to i32
  call void @__asan_store8_noabort(i32 %451)
  store i64 1088, ptr %_m.i.i299.i, align 8
  %452 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %name, align 4
  %conv17.i.i.i = zext i8 %450 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i299.i, ptr noundef nonnull @__func__.dlm_set_reco_dead_node, i32 noundef 106, ptr noundef nonnull @.str.193, ptr noundef %453, i32 noundef %conv17.i.i.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i299.i) #10
  br label %dlm_set_reco_dead_node.exit.i.i

dlm_set_reco_dead_node.exit.i.i:                  ; preds = %do.body12.i.i.i, %do.end7.i.i.i.dlm_set_reco_dead_node.exit.i.i_crit_edge
  %454 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 -1, ptr %dead_node.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12.i.i)
  %455 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %agg.tmp.sroa.0.0.copyload.i.i15.i.i = load volatile i32, ptr %spinlock.i, align 4
  %456 = ptrtoint ptr %agg.tmp.sroa.0.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i15.i.i, ptr %agg.tmp.sroa.0.i.i12.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i16.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i15.i.i, 16
  %conv.i.i.i17.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i15.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i17.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i16.i.i)
  %cmp.i.i.not.i18.i.i = icmp eq i32 %conv.i.i.i17.i.i, %lock.sroa.0.0.extract.shift.i.i.i16.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12.i.i)
  br i1 %cmp.i.i.not.i18.i.i, label %do.body4.i19.i.i, label %__dlm_reset_recovery.exit.i, !prof !435

do.body4.i19.i.i:                                 ; preds = %dlm_set_reco_dead_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

__dlm_reset_recovery.exit.i:                      ; preds = %dlm_set_reco_dead_node.exit.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i13.i.i) #10
  %457 = ptrtoint ptr %_m.i13.i.i to i32
  call void @__asan_store8_noabort(i32 %457)
  store i64 1088, ptr %_m.i13.i.i, align 8
  %458 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %name, align 4
  %460 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %new_master.i, align 4
  %conv.i.i315.i = zext i8 %461 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i13.i.i, ptr noundef nonnull @__func__.dlm_set_reco_master, i32 noundef 115, ptr noundef nonnull @.str.192, ptr noundef %459, i32 noundef %conv.i.i315.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i13.i.i) #10
  %462 = ptrtoint ptr %new_master.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 -1, ptr %new_master.i, align 4
  %463 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %state.i.i, align 2
  %465 = and i16 %464, -3
  store i16 %465, ptr %state.i.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %466 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %state.i.i, align 2
  %468 = and i16 %467, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %tobool.not.i319.i = icmp eq i16 %468, 0
  br i1 %tobool.not.i319.i, label %do.body4.i320.i, label %dlm_do_recovery.exit, !prof !435

do.body4.i320.i:                                  ; preds = %__dlm_reset_recovery.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 412, 0\0A.popsection", ""() #10, !srcloc !444
  unreachable

dlm_do_recovery.exit:                             ; preds = %__dlm_reset_recovery.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %and11.i321.i = and i16 %467, -2
  %469 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 %and11.i321.i, ptr %state.i.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %470 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %name, align 4
  %call.i323.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %471) #13
  call void @__wake_up(ptr noundef %event.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %while.cond.backedge

if.end29:                                         ; preds = %dlm_end_recovery.exit.i, %if.then68.i, %do.body.i, %while.body.if.end29_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 298) #10
  %call36 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call36, label %if.end29.while.cond.backedge_crit_edge, label %if.then49

if.end29.while.cond.backedge_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then49:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %472 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call51133 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call53134 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call53134, label %if.then49.for.end_crit_edge, label %if.then49.if.end71_crit_edge

if.then49.if.end71_crit_edge:                     ; preds = %if.then49
  br label %if.end71

if.then49.for.end_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end71:                                         ; preds = %cleanup.if.end71_crit_edge, %if.then49.if.end71_crit_edge
  %__ret50.1136 = phi i32 [ %__ret50.1, %cleanup.if.end71_crit_edge ], [ 500, %if.then49.if.end71_crit_edge ]
  %call51135 = phi i32 [ %call51, %cleanup.if.end71_crit_edge ], [ %call51133, %if.then49.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51135)
  %tobool72.not = icmp eq i32 %call51135, 0
  br i1 %tobool72.not, label %cleanup, label %if.end71.__out_crit_edge

if.end71.__out_crit_edge:                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end71
  %call75 = call i32 @schedule_timeout(i32 noundef %__ret50.1136) #10
  %call51 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call53 = call zeroext i1 @kthread_should_stop() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool58.not = icmp eq i32 %call75, 0
  %473 = select i1 %call53, i1 %tobool58.not, i1 false
  %__ret50.1 = select i1 %473, i32 1, i32 %call75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret50.1)
  %tobool65.not = icmp eq i32 %__ret50.1, 0
  %474 = select i1 %call53, i1 true, i1 %tobool65.not
  br i1 %474, label %cleanup.for.end_crit_edge, label %cleanup.if.end71_crit_edge

cleanup.if.end71_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then49.for.end_crit_edge
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq.i.i, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end71.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %__out, %if.end29.while.cond.backedge_crit_edge, %dlm_do_recovery.exit
  %call1 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call1, label %while.cond.backedge.do.body80_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.do.body80_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

do.body80:                                        ; preds = %while.cond.backedge.do.body80_crit_edge, %entry.do.body80_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81) #10
  %475 = ptrtoint ptr %_m81 to i32
  call void @__asan_store8_noabort(i32 %475)
  store i64 1088, ptr %_m81, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81, ptr noundef nonnull @__func__.dlm_recovery_thread, i32 noundef 301, ptr noundef nonnull @.str.55) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_complete_recovery_thread(ptr nocapture noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm_reco_thread_task = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 36
  %0 = ptrtoint ptr %dlm_reco_thread_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm_reco_thread_task, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1088, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_complete_recovery_thread, i32 noundef 197, ptr noundef nonnull @.str.4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %dlm_reco_thread_task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dlm_reco_thread_task, align 4
  %call = call i32 @kthread_stop(ptr noundef %4) #10
  %5 = ptrtoint ptr %dlm_reco_thread_task to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dlm_reco_thread_task, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.body, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_is_node_dead(ptr noundef %dlm, i8 noundef zeroext %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %conv = zext i8 %node to i32
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %domain_map, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = xor i32 %1, -1
  %3 = lshr i32 %2, %and.i
  %4 = and i32 %3, 1
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_wait_for_node_death(ptr noundef %dlm, i8 noundef zeroext %node, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry63 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %conv.i = zext i8 %node to i32
  %domain_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %domain_map.i, i32 %div3.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %2 = shl nuw i32 1, %and.i.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %entry.if.end82_crit_edge, label %do.end

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i, ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool2.not = icmp eq i32 %timeout, 0
  br i1 %tobool2.not, label %do.body53, label %if.else.i

if.else.i:                                        ; preds = %do.end
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 349) #10
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %8 = and i32 %7, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.not = icmp eq i32 %8, 0
  %not.tobool11.not.not = xor i1 %tobool11.not.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool20.not147 = icmp eq i32 %call2.i, 0
  %tobool20.not = select i1 %not.tobool11.not.not, i1 %tobool20.not147, i1 false
  %9 = select i1 %tobool11.not.not, i1 true, i1 %tobool20.not
  br i1 %9, label %if.else.i.if.end82_crit_edge, label %if.then22

if.else.i.if.end82_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then22:                                        ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i114 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #10
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %dlm_reco_thread_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 39
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then22
  %__ret23.0 = phi i32 [ %call2.i114, %if.then22 ], [ %call47, %cleanup ]
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %13 = and i32 %12, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.0)
  %tobool33.not = icmp eq i32 %__ret23.0, 0
  %14 = select i1 %tobool28.not.not, i1 %tobool33.not, i1 false
  %__ret23.1 = select i1 %14, i32 1, i32 %__ret23.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool40.not = icmp eq i32 %__ret23.1, 0
  %15 = select i1 %tobool28.not.not, i1 true, i1 %tobool40.not
  br i1 %15, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = call i32 @schedule_timeout(i32 noundef %__ret23.1) #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end82

do.body53:                                        ; preds = %do.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 352) #10
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %18 = and i32 %17, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool60.not.not = icmp eq i32 %18, 0
  br i1 %tobool60.not.not, label %do.body53.if.end82_crit_edge, label %if.end62

do.body53.if.end82_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end62:                                         ; preds = %do.body53
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry63) #10
  %19 = call ptr @memset(ptr %__wq_entry63, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry63, i32 noundef 0) #10
  %dlm_reco_thread_wq67 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 39
  %call68148 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq67, ptr noundef nonnull %__wq_entry63, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %22 = and i32 %21, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool70.not.not149 = icmp eq i32 %22, 0
  br i1 %tobool70.not.not149, label %if.end62.for.end76_crit_edge, label %if.end62.cleanup73_crit_edge

if.end62.cleanup73_crit_edge:                     ; preds = %if.end62
  br label %cleanup73

if.end62.for.end76_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76

cleanup73:                                        ; preds = %cleanup73.cleanup73_crit_edge, %if.end62.cleanup73_crit_edge
  call void @schedule() #10
  %call68 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq67, ptr noundef nonnull %__wq_entry63, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %25 = and i32 %24, %2
  %tobool70.not.not = icmp eq i32 %25, 0
  br i1 %tobool70.not.not, label %cleanup73.for.end76_crit_edge, label %cleanup73.cleanup73_crit_edge

cleanup73.cleanup73_crit_edge:                    ; preds = %cleanup73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

cleanup73.for.end76_crit_edge:                    ; preds = %cleanup73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76

for.end76:                                        ; preds = %cleanup73.for.end76_crit_edge, %if.end62.for.end76_crit_edge
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq67, ptr noundef nonnull %__wq_entry63) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry63) #10
  br label %if.end82

if.end82:                                         ; preds = %for.end76, %do.body53.if.end82_crit_edge, %for.end, %if.else.i.if.end82_crit_edge, %entry.if.end82_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_wait_for_node_recovery(ptr noundef %dlm, i8 noundef zeroext %node, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry63 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %conv.i = zext i8 %node to i32
  %recovery_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 20
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %recovery_map.i, i32 %div3.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %2 = shl nuw i32 1, %and.i.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %entry.if.end82_crit_edge, label %do.end

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i, ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool2.not = icmp eq i32 %timeout, 0
  br i1 %tobool2.not, label %do.body53, label %if.else.i

if.else.i:                                        ; preds = %do.end
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 366) #10
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %8 = and i32 %7, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.not = icmp eq i32 %8, 0
  %not.tobool11.not.not = xor i1 %tobool11.not.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool20.not147 = icmp eq i32 %call2.i, 0
  %tobool20.not = select i1 %not.tobool11.not.not, i1 %tobool20.not147, i1 false
  %9 = select i1 %tobool11.not.not, i1 true, i1 %tobool20.not
  br i1 %9, label %if.else.i.if.end82_crit_edge, label %if.then22

if.else.i.if.end82_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then22:                                        ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i114 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #10
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %dlm_reco_thread_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 39
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then22
  %__ret23.0 = phi i32 [ %call2.i114, %if.then22 ], [ %call47, %cleanup ]
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %13 = and i32 %12, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.0)
  %tobool33.not = icmp eq i32 %__ret23.0, 0
  %14 = select i1 %tobool28.not.not, i1 %tobool33.not, i1 false
  %__ret23.1 = select i1 %14, i32 1, i32 %__ret23.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool40.not = icmp eq i32 %__ret23.1, 0
  %15 = select i1 %tobool28.not.not, i1 true, i1 %tobool40.not
  br i1 %15, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = call i32 @schedule_timeout(i32 noundef %__ret23.1) #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end82

do.body53:                                        ; preds = %do.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 369) #10
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %18 = and i32 %17, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool60.not.not = icmp eq i32 %18, 0
  br i1 %tobool60.not.not, label %do.body53.if.end82_crit_edge, label %if.end62

do.body53.if.end82_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end62:                                         ; preds = %do.body53
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry63) #10
  %19 = call ptr @memset(ptr %__wq_entry63, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry63, i32 noundef 0) #10
  %dlm_reco_thread_wq67 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 39
  %call68148 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq67, ptr noundef nonnull %__wq_entry63, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %22 = and i32 %21, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool70.not.not149 = icmp eq i32 %22, 0
  br i1 %tobool70.not.not149, label %if.end62.for.end76_crit_edge, label %if.end62.cleanup73_crit_edge

if.end62.cleanup73_crit_edge:                     ; preds = %if.end62
  br label %cleanup73

if.end62.for.end76_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76

cleanup73:                                        ; preds = %cleanup73.cleanup73_crit_edge, %if.end62.cleanup73_crit_edge
  call void @schedule() #10
  %call68 = call i32 @prepare_to_wait_event(ptr noundef %dlm_reco_thread_wq67, ptr noundef nonnull %__wq_entry63, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %25 = and i32 %24, %2
  %tobool70.not.not = icmp eq i32 %25, 0
  br i1 %tobool70.not.not, label %cleanup73.for.end76_crit_edge, label %cleanup73.cleanup73_crit_edge

cleanup73.cleanup73_crit_edge:                    ; preds = %cleanup73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

cleanup73.for.end76_crit_edge:                    ; preds = %cleanup73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76

for.end76:                                        ; preds = %cleanup73.for.end76_crit_edge, %if.end62.for.end76_crit_edge
  call void @finish_wait(ptr noundef %dlm_reco_thread_wq67, ptr noundef nonnull %__wq_entry63) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry63) #10
  br label %if.end82

if.end82:                                         ; preds = %for.end76, %do.body53.if.end82_crit_edge, %for.end, %if.else.i.if.end82_crit_edge, %entry.if.end82_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_wait_for_recovery(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %state.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state.i, align 2
  %2 = and i16 %1, 1
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.body

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %dlm_reco_thread_task = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 36
  %6 = ptrtoint ptr %dlm_reco_thread_task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dlm_reco_thread_task, align 4
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %state.i, align 2
  %conv = zext i16 %11 to i32
  %new_master = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %new_master, align 4
  %conv5 = zext i8 %13 to i32
  %dead_node = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 3
  %14 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dead_node, align 1
  %conv7 = zext i8 %15 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_wait_for_recovery, i32 noundef 395, ptr noundef nonnull @.str.10, ptr noundef %5, i32 noundef %9, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %do.body10

do.body10:                                        ; preds = %do.body, %entry.do.body10_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 397) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state.i, align 2
  %18 = and i16 %17, 1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool15.not = icmp eq i16 %18, 0
  br i1 %tobool15.not, label %do.body10.do.end26_crit_edge, label %if.end17

do.body10.do.end26_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

if.end17:                                         ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %event = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 6
  %call1942 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %state.i, align 2
  %22 = and i16 %21, 1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool21.not43 = icmp eq i16 %22, 0
  br i1 %tobool21.not43, label %if.end17.for.end_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  br label %cleanup

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  call void @schedule() #10
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %state.i, align 2
  %25 = and i16 %24, 1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %tobool21.not = icmp eq i16 %25, 0
  br i1 %tobool21.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end17.for.end_crit_edge
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end26

do.end26:                                         ; preds = %for.end, %do.body10.do.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_request_all_locks_handler(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dead_node = getelementptr inbounds %struct.dlm_lock_request, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dead_node, align 1
  %dead_node2 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %dead_node2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dead_node2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %do.end35, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606848064, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 4
  %conv8 = zext i8 %8 to i32
  %conv10 = zext i8 %1 to i32
  %conv13 = zext i8 %3 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_request_all_locks_handler, i32 noundef 827, ptr noundef nonnull @.str.11, ptr noundef %6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call fastcc void @dlm_print_reco_node_status(ptr noundef %data)
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

do.end35:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 36) #14
  %tobool37.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

if.end39:                                         ; preds = %do.end35
  %call40 = tail call i32 @__get_free_pages(i32 noundef 3136, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %10 = inttoptr i32 %call40 to ptr
  %call44 = tail call ptr @dlm_grab(ptr noundef %data) #10
  %11 = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %func.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dlm_request_all_locks_worker, ptr %func.i, align 8
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %data1.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %data1.i, align 8
  %dlm2.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %dlm2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %dlm2.i, align 4
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %11, align 4
  %21 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dead_node, align 1
  %dead_node48 = getelementptr inbounds i8, ptr %call7.i.i, i32 21
  %23 = ptrtoint ptr %dead_node48 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %dead_node48, align 1
  %work_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_list = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 43
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 43, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %25, ptr noundef %work_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.list_add_tail.exit_crit_edge

if.end43.list_add_tail.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %work_list, ptr %call7.i.i, align 8
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end43.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  %dlm_worker = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 37
  %30 = ptrtoint ptr %dlm_worker to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dlm_worker, align 4
  %dispatched_work = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 42
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %dispatched_work) #10
  tail call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then42, %if.then38, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.body ], [ 0, %list_add_tail.exit ], [ -12, %if.then42 ], [ -12, %if.then38 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_grab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_print_reco_node_status(ptr noundef readonly %dlm) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m19 = alloca i64, align 8
  %_m46 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 2305843009213695040, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %dlm_reco_thread_task = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 36
  %3 = ptrtoint ptr %dlm_reco_thread_task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dlm_reco_thread_task, align 4
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid.i, align 8
  %state = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not = icmp eq i16 %9, 0
  %cond = select i1 %tobool2.not, ptr @.str.125, ptr @.str.124
  %dead_node = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 3
  %10 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dead_node, align 1
  %conv4 = zext i8 %11 to i32
  %new_master = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %new_master, align 4
  %conv6 = zext i8 %13 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_print_reco_node_status, i32 noundef 236, ptr noundef nonnull @.str.123, ptr noundef %2, i32 noundef %6, ptr noundef nonnull %cond, i32 noundef %conv4, i32 noundef %conv6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %reco7 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21
  %node_data = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %node_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn80 = load ptr, ptr %node_data, align 4
  %cmp.not81 = icmp eq ptr %.pn80, %node_data
  br i1 %cmp.not81, label %entry.for.cond38.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond38.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %do.body18.for.cond38.preheader_crit_edge, %entry.for.cond38.preheader_crit_edge
  %15 = ptrtoint ptr %reco7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn7983 = load ptr, ptr %reco7, align 4
  %cmp41.not84 = icmp eq ptr %.pn7983, %reco7
  br i1 %cmp41.not84, label %for.cond38.preheader.for.end62_crit_edge, label %for.cond38.preheader.do.body45_crit_edge

for.cond38.preheader.do.body45_crit_edge:         ; preds = %for.cond38.preheader
  br label %do.body45

for.cond38.preheader.for.end62_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end62

for.body:                                         ; preds = %do.body18.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn82 = phi ptr [ %.pn, %do.body18.for.body_crit_edge ], [ %.pn80, %entry.for.body_crit_edge ]
  %ndata.0 = getelementptr i8, ptr %.pn82, i32 -8
  %16 = ptrtoint ptr %ndata.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ndata.0, align 4
  %switch.tableidx = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 7
  br i1 %18, label %switch.lookup, label %for.body.do.body18_crit_edge

for.body.do.body18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_print_reco_node_status, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.body18

do.body18:                                        ; preds = %switch.lookup, %for.body.do.body18_crit_edge
  %st.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.132, %for.body.do.body18_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m19) #10
  %20 = ptrtoint ptr %_m19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 2305843009213695040, ptr %_m19, align 8
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %node_num = getelementptr i8, ptr %.pn82, i32 -4
  %23 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %node_num, align 4
  %conv24 = zext i8 %24 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m19, ptr noundef nonnull @__func__.dlm_print_reco_node_status, i32 noundef 267, ptr noundef nonnull @.str.133, ptr noundef %22, i32 noundef %conv24, ptr noundef nonnull %st.0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m19) #10
  %25 = ptrtoint ptr %.pn82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn82, align 4
  %cmp.not = icmp eq ptr %.pn, %node_data
  br i1 %cmp.not, label %do.body18.for.cond38.preheader_crit_edge, label %do.body18.for.body_crit_edge

do.body18.for.body_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body18.for.cond38.preheader_crit_edge:         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond38.preheader

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %for.cond38.preheader.do.body45_crit_edge
  %.pn7985 = phi ptr [ %.pn79, %do.body45.do.body45_crit_edge ], [ %.pn7983, %for.cond38.preheader.do.body45_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46) #10
  %26 = ptrtoint ptr %_m46 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 2305843009213695040, ptr %_m46, align 8
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  %lockname = getelementptr i8, ptr %.pn7985, i32 -60
  %29 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lockname, align 8
  %name52 = getelementptr i8, ptr %.pn7985, i32 -52
  %31 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name52, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46, ptr noundef nonnull @__func__.dlm_print_reco_node_status, i32 noundef 271, ptr noundef nonnull @.str.134, ptr noundef %28, i32 noundef %30, ptr noundef %32) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46) #10
  %33 = ptrtoint ptr %.pn7985 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn79 = load ptr, ptr %.pn7985, align 4
  %cmp41.not = icmp eq ptr %.pn79, %reco7
  br i1 %cmp41.not, label %do.body45.for.end62_crit_edge, label %do.body45.do.body45_crit_edge

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

do.body45.for.end62_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end62

for.end62:                                        ; preds = %do.body45.for.end62_crit_edge, %for.cond38.preheader.for.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_request_all_locks_worker(ptr nocapture noundef readonly %item, ptr noundef %data) #0 align 64 {
entry:
  %tmpret.i = alloca i32, align 4
  %done_msg.i = alloca %struct.dlm_reco_data_done, align 4
  %_m.i152 = alloca i64, align 8
  %_m9.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m44.i = alloca i64, align 8
  %_m59.i = alloca i64, align 8
  %resources = alloca %struct.list_head, align 4
  %_m = alloca i64, align 8
  %_m23 = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %_m66 = alloca i64, align 8
  %_m92 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resources) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 1
  %1 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %resources, ptr %resources, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %resources, ptr %0, align 4
  %dlm1 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 2
  %3 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dlm1, align 4
  %u = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4
  %dead_node2 = getelementptr inbounds %struct.dlm_request_all_locks_priv, ptr %u, i32 0, i32 1
  %5 = ptrtoint ptr %dead_node2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dead_node2, align 1
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %u, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 11
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %conv = zext i8 %6 to i32
  %conv5 = zext i8 %8 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_request_all_locks_worker, i32 noundef 879, ptr noundef nonnull @.str.135, ptr noundef %11, i32 noundef %conv, i32 noundef %conv5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %reco = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 21
  %dead_node7 = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 21, i32 3
  %12 = ptrtoint ptr %dead_node7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dead_node7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %13)
  %cmp.not = icmp eq i8 %6, %13
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then15_crit_edge

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

lor.lhs.false:                                    ; preds = %entry
  %new_master = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %new_master, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %15)
  %cmp13.not = icmp eq i8 %8, %15
  br i1 %cmp13.not, label %if.end58, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %entry.if.then15_crit_edge
  %new_master17 = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 21, i32 2
  %16 = ptrtoint ptr %new_master17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %new_master17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp19 = icmp eq i8 %17, -1
  br i1 %cmp19, label %do.body22, label %do.body40

do.body22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m23) #10
  %18 = ptrtoint ptr %_m23 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 2305843009213695040, ptr %_m23, align 8
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %conv33 = zext i8 %13 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m23, ptr noundef nonnull @__func__.dlm_request_all_locks_worker, i32 noundef 890, ptr noundef nonnull @.str.136, ptr noundef %20, i32 noundef %conv5, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv33, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m23) #10
  br label %leave

do.body40:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #10
  %21 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 2305843009213695040, ptr %_m41, align 8
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %conv48 = zext i8 %13 to i32
  %conv51 = zext i8 %17 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.dlm_request_all_locks_worker, i32 noundef 895, ptr noundef nonnull @.str.137, ptr noundef %23, i32 noundef %conv48, i32 noundef %conv51, i32 noundef %conv, i32 noundef %conv5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #10
  br label %leave

if.end58:                                         ; preds = %lor.lhs.false
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %24 = ptrtoint ptr %reco to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reco, align 4
  %cmp.not126.i = icmp eq ptr %25, %reco
  br i1 %cmp.not126.i, label %if.end58.dlm_move_reco_locks_to_list.exit_crit_edge, label %if.end58.for.body.i_crit_edge

if.end58.for.body.i_crit_edge:                    ; preds = %if.end58
  br label %for.body.i

if.end58.dlm_move_reco_locks_to_list.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_move_reco_locks_to_list.exit

for.body.i:                                       ; preds = %for.inc70.i.for.body.i_crit_edge, %if.end58.for.body.i_crit_edge
  %.pn.in127.i = phi ptr [ %.pn130.i, %for.inc70.i.for.body.i_crit_edge ], [ %25, %if.end58.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %.pn.in127.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn130.i = load ptr, ptr %.pn.in127.i, align 4
  %lockname.i = getelementptr i8, ptr %.pn.in127.i, i32 -60
  %27 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lockname.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 9
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.if.end37.i_crit_edge

for.body.i.if.end37.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %name.i = getelementptr i8, ptr %.pn.in127.i, i32 -52
  %29 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name.i, align 8
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(9) %30, ptr noundef nonnull dereferenceable(9) @.str.66, i32 9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp1.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp1.i.i, label %if.then.i, label %land.lhs.true.i.i.if.end37.i_crit_edge

land.lhs.true.i.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then.i:                                        ; preds = %land.lhs.true.i.i
  %spinlock10.i = getelementptr i8, ptr %.pn.in127.i, i32 32
  call void @_raw_spin_lock(ptr noundef %spinlock10.i) #10
  %granted.i = getelementptr i8, ptr %.pn.in127.i, i32 -40
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.body20.i.for.cond15.i_crit_edge, %if.then.i
  %.pn104.in.i = phi ptr [ %granted.i, %if.then.i ], [ %.pn104.i, %for.body20.i.for.cond15.i_crit_edge ]
  %31 = ptrtoint ptr %.pn104.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn104.i = load ptr, ptr %.pn104.in.i, align 4
  %cmp18.not.i = icmp eq ptr %.pn104.i, %granted.i
  br i1 %cmp18.not.i, label %for.cond15.i.for.end.i_crit_edge, label %for.body20.i

for.cond15.i.for.end.i_crit_edge:                 ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body20.i:                                     ; preds = %for.cond15.i
  %node.i = getelementptr i8, ptr %.pn104.i, i32 -1
  %32 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %node.i, align 1
  %cmp22.i = icmp eq i8 %33, %6
  br i1 %cmp22.i, label %do.body.i, label %for.body20.i.for.cond15.i_crit_edge

for.body20.i.for.cond15.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond15.i

do.body.i:                                        ; preds = %for.body20.i
  %lock.0.le.i = getelementptr i8, ptr %.pn104.i, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %34 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1088, ptr %_m.i, align 8
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_move_reco_locks_to_list, i32 noundef 1053, ptr noundef nonnull @.str.140, i32 noundef %conv, ptr noundef %36) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn104.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.i.list_del_init.exit.i_crit_edge

do.body.i.list_del_init.exit.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn104.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %.pn104.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn104.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.body.i.list_del_init.exit.i_crit_edge
  %43 = ptrtoint ptr %.pn104.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %.pn104.i, ptr %.pn104.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn104.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn104.i, ptr %prev.i3.i.i, align 4
  call void @dlm_lock_put(ptr noundef %lock.0.le.i) #10
  call void @dlm_lock_put(ptr noundef %lock.0.le.i) #10
  br label %for.end.i

for.end.i:                                        ; preds = %list_del_init.exit.i, %for.cond15.i.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock10.i) #10
  br label %for.inc70.i

if.end37.i:                                       ; preds = %land.lhs.true.i.i.if.end37.i_crit_edge, %for.body.i.if.end37.i_crit_edge
  %owner.i = getelementptr i8, ptr %.pn.in127.i, i32 128
  %45 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %6)
  %cmp40.i = icmp eq i8 %46, %6
  br i1 %cmp40.i, label %do.body43.i, label %if.else.i

do.body43.i:                                      ; preds = %if.end37.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44.i) #10
  %47 = ptrtoint ptr %_m44.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1088, ptr %_m44.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44.i, ptr noundef nonnull @__func__.dlm_move_reco_locks_to_list, i32 noundef 1069, ptr noundef nonnull @.str.141, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44.i) #10
  %call.i.i106.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in127.i) #10
  br i1 %call.i.i106.i, label %if.end.i.i109.i, label %do.body43.i.__list_del_entry.exit.i.i_crit_edge

do.body43.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i109.i:                                  ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i107.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i107.i, align 4
  %50 = ptrtoint ptr %.pn.in127.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in127.i, align 4
  %prev1.i.i.i108.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i108.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i109.i, %do.body43.i.__list_del_entry.exit.i.i_crit_edge
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %0, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in127.i, ptr noundef %55, ptr noundef nonnull %resources) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc70.i_crit_edge

__list_del_entry.exit.i.i.for.inc70.i_crit_edge:  ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %.pn.in127.i, ptr %0, align 4
  %57 = ptrtoint ptr %.pn.in127.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources, ptr %.pn.in127.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %.pn.in127.i, ptr %55, align 4
  br label %for.inc70.i

if.else.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp55.i = icmp eq i8 %46, -1
  br i1 %cmp55.i, label %do.body58.i, label %if.else.i.for.inc70.i_crit_edge

if.else.i.for.inc70.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70.i

do.body58.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m59.i) #10
  %60 = ptrtoint ptr %_m59.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 1088, ptr %_m59.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m59.i, ptr noundef nonnull @__func__.dlm_move_reco_locks_to_list, i32 noundef 1073, ptr noundef nonnull @.str.142, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m59.i) #10
  %call.i.i110.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in127.i) #10
  br i1 %call.i.i110.i, label %if.end.i.i113.i, label %do.body58.i.__list_del_entry.exit.i116.i_crit_edge

do.body58.i.__list_del_entry.exit.i116.i_crit_edge: ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i116.i

if.end.i.i113.i:                                  ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i111.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i111.i, align 4
  %63 = ptrtoint ptr %.pn.in127.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %.pn.in127.i, align 4
  %prev1.i.i.i112.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i112.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %__list_del_entry.exit.i116.i

__list_del_entry.exit.i116.i:                     ; preds = %if.end.i.i113.i, %do.body58.i.__list_del_entry.exit.i116.i_crit_edge
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %0, align 4
  %call.i.i.i115.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in127.i, ptr noundef %68, ptr noundef nonnull %resources) #10
  br i1 %call.i.i.i115.i, label %if.end.i.i.i118.i, label %__list_del_entry.exit.i116.i.for.inc70.i_crit_edge

__list_del_entry.exit.i116.i.for.inc70.i_crit_edge: ; preds = %__list_del_entry.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70.i

if.end.i.i.i118.i:                                ; preds = %__list_del_entry.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %.pn.in127.i, ptr %0, align 4
  %70 = ptrtoint ptr %.pn.in127.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources, ptr %.pn.in127.i, align 4
  %prev3.i.i.i117.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i117.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %.pn.in127.i, ptr %68, align 4
  br label %for.inc70.i

for.inc70.i:                                      ; preds = %if.end.i.i.i118.i, %__list_del_entry.exit.i116.i.for.inc70.i_crit_edge, %if.else.i.for.inc70.i_crit_edge, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc70.i_crit_edge, %for.end.i
  %cmp.not.i = icmp eq ptr %.pn130.i, %reco
  br i1 %cmp.not.i, label %for.inc70.i.dlm_move_reco_locks_to_list.exit_crit_edge, label %for.inc70.i.for.body.i_crit_edge

for.inc70.i.for.body.i_crit_edge:                 ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc70.i.dlm_move_reco_locks_to_list.exit_crit_edge: ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_move_reco_locks_to_list.exit

dlm_move_reco_locks_to_list.exit:                 ; preds = %for.inc70.i.dlm_move_reco_locks_to_list.exit_crit_edge, %if.end58.dlm_move_reco_locks_to_list.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %dlm_move_reco_locks_to_list.exit
  %.pn.in = phi ptr [ %resources, %dlm_move_reco_locks_to_list.exit ], [ %.pn, %for.body.for.cond_crit_edge ]
  %73 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp60.not = icmp eq ptr %.pn, %resources
  br i1 %cmp60.not, label %if.then86.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %res.0 = getelementptr i8, ptr %.pn, i32 -68
  %call = call i32 @dlm_send_one_lockres(ptr noundef %4, ptr noundef %res.0, ptr noundef %data, i8 noundef zeroext %8, i8 noundef zeroext 1)
  %cmp62 = icmp slt i32 %call, 0
  br i1 %cmp62, label %do.body65, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.body65:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m66) #10
  %74 = ptrtoint ptr %_m66 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 1152921504606848064, ptr %_m66, align 8
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m66, ptr noundef nonnull @__func__.dlm_request_all_locks_worker, i32 noundef 918, ptr noundef nonnull @.str.138, ptr noundef %76, i32 noundef %conv5, i32 noundef %conv, i32 noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m66) #10
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %77 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %resources, align 4
  %cmp.i.not.i = icmp eq ptr %78, %resources
  br i1 %cmp.i.not.i, label %do.body65.list_splice_init.exit_crit_edge, label %if.then.i145

do.body65.list_splice_init.exit_crit_edge:        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i145:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %reco to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reco, align 4
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %reco, ptr %prev3.i.i, align 4
  store ptr %78, ptr %reco, align 4
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %80, ptr %82, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev6.i.i, align 4
  %86 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %resources, ptr %resources, align 4
  store ptr %resources, ptr %0, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i145, %do.body65.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %leave

if.then86.critedge:                               ; preds = %for.cond
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %87 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %resources, align 4
  %cmp.i.not.i146 = icmp eq ptr %88, %resources
  br i1 %cmp.i.not.i146, label %if.then86.critedge.list_splice_init.exit151_crit_edge, label %if.then.i150

if.then86.critedge.list_splice_init.exit151_crit_edge: ; preds = %if.then86.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit151

if.then.i150:                                     ; preds = %if.then86.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %reco to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reco, align 4
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %0, align 4
  %prev3.i.i148 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i148 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %reco, ptr %prev3.i.i148, align 4
  store ptr %88, ptr %reco, align 4
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %90, ptr %92, align 4
  %prev6.i.i149 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %prev6.i.i149 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev6.i.i149, align 4
  %96 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %resources, ptr %resources, align 4
  store ptr %resources, ptr %0, align 4
  br label %list_splice_init.exit151

list_splice_init.exit151:                         ; preds = %if.then.i150, %if.then86.critedge.list_splice_init.exit151_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpret.i) #10
  %97 = ptrtoint ptr %tmpret.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %tmpret.i, align 4, !annotation !441
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %done_msg.i) #10
  %98 = call ptr @memset(ptr %done_msg.i, i32 0, i32 72)
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 12
  %99 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %node_num.i, align 4
  %101 = ptrtoint ptr %done_msg.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %done_msg.i, align 4
  %dead_node1.i = getelementptr inbounds %struct.dlm_reco_data_done, ptr %done_msg.i, i32 0, i32 1
  %102 = ptrtoint ptr %dead_node1.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %6, ptr %dead_node1.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i152) #10
  %103 = ptrtoint ptr %_m.i152 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 1088, ptr %_m.i152, align 8
  %conv3.i = zext i8 %100 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i152, ptr noundef nonnull @__func__.dlm_send_all_done_msg, i32 noundef 952, ptr noundef nonnull @.str.143, i32 noundef %conv5, i32 noundef %conv3.i, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i152) #10
  %key.i = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 13
  %104 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %key.i, align 4
  %call.i = call i32 @o2net_send_message(i32 noundef 516, i32 noundef %105, ptr noundef nonnull %done_msg.i, i32 noundef 72, i8 noundef zeroext %8, ptr noundef nonnull %tmpret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body8.i, label %dlm_send_all_done_msg.exit

do.body8.i:                                       ; preds = %list_splice_init.exit151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m9.i) #10
  %106 = ptrtoint ptr %_m9.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 1152921504606848064, ptr %_m9.i, align 8
  %107 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m9.i, ptr noundef nonnull @__func__.dlm_send_all_done_msg, i32 noundef 959, ptr noundef nonnull @.str.144, ptr noundef %108, i32 noundef %call.i, i32 noundef %conv5, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m9.i) #10
  %call18.i = call i32 @dlm_is_host_down(i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body21.i, label %dlm_send_all_done_msg.exit.thread

dlm_send_all_done_msg.exit.thread:                ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %done_msg.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpret.i) #10
  br label %do.body91

do.body21.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 961, 0\0A.popsection", ""() #10, !srcloc !450
  unreachable

dlm_send_all_done_msg.exit:                       ; preds = %list_splice_init.exit151
  %109 = ptrtoint ptr %tmpret.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tmpret.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %done_msg.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp88 = icmp slt i32 %110, 0
  br i1 %cmp88, label %dlm_send_all_done_msg.exit.do.body91_crit_edge, label %dlm_send_all_done_msg.exit.leave_crit_edge

dlm_send_all_done_msg.exit.leave_crit_edge:       ; preds = %dlm_send_all_done_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

dlm_send_all_done_msg.exit.do.body91_crit_edge:   ; preds = %dlm_send_all_done_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body91

do.body91:                                        ; preds = %dlm_send_all_done_msg.exit.do.body91_crit_edge, %dlm_send_all_done_msg.exit.thread
  %ret.0.i157 = phi i32 [ %call.i, %dlm_send_all_done_msg.exit.thread ], [ %110, %dlm_send_all_done_msg.exit.do.body91_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m92) #10
  %111 = ptrtoint ptr %_m92 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 1152921504606848064, ptr %_m92, align 8
  %112 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m92, ptr noundef nonnull @__func__.dlm_request_all_locks_worker, i32 noundef 934, ptr noundef nonnull @.str.139, ptr noundef %113, i32 noundef %conv5, i32 noundef %conv, i32 noundef %ret.0.i157) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m92) #10
  br label %leave

leave:                                            ; preds = %do.body91, %dlm_send_all_done_msg.exit.leave_crit_edge, %list_splice_init.exit, %do.body40, %do.body22
  %114 = ptrtoint ptr %data to i32
  call void @free_pages(i32 noundef %114, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resources) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_reco_data_done_handler(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m17 = alloca i64, align 8
  %_m25 = alloca i64, align 8
  %_m64 = alloca i64, align 8
  %_m82 = alloca i64, align 8
  %_m104 = alloca i64, align 8
  %_m115 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1088, ptr %_m, align 8
  %dead_node = getelementptr inbounds %struct.dlm_reco_data_done, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dead_node, align 1
  %conv = zext i8 %2 to i32
  %dead_node3 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 3
  %3 = ptrtoint ptr %dead_node3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dead_node3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 4
  %conv5 = zext i8 %6 to i32
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %7 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %node_num, align 4
  %conv6 = zext i8 %8 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_reco_data_done_handler, i32 noundef 982, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %9 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dead_node, align 1
  %11 = ptrtoint ptr %dead_node3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dead_node3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not = icmp eq i8 %10, %12
  br i1 %cmp.not, label %do.end49, label %do.body16

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m17) #10
  %13 = ptrtoint ptr %_m17 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606848064, ptr %_m17, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m17, ptr noundef nonnull @__func__.dlm_reco_data_done_handler, i32 noundef 987, ptr noundef nonnull @.str.13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m17) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m25) #10
  %14 = ptrtoint ptr %_m25 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606848064, ptr %_m25, align 8
  %15 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dead_node, align 1
  %conv30 = zext i8 %16 to i32
  %17 = ptrtoint ptr %dead_node3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dead_node3, align 1
  %conv33 = zext i8 %18 to i32
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf, align 4
  %conv35 = zext i8 %20 to i32
  %21 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %node_num, align 4
  %conv37 = zext i8 %22 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m25, ptr noundef nonnull @__func__.dlm_reco_data_done_handler, i32 noundef 987, ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %conv37) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m25) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 987, 0\0A.popsection", ""() #10, !srcloc !451
  unreachable

do.end49:                                         ; preds = %do.body
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_reco_state_lock) #10
  %node_data = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 1
  %23 = ptrtoint ptr %node_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn153 = load ptr, ptr %node_data, align 4
  %cmp53.not155 = icmp eq ptr %.pn153, %node_data
  br i1 %cmp53.not155, label %if.end99.thread165, label %do.end49.for.body_crit_edge

do.end49.for.body_crit_edge:                      ; preds = %do.end49
  br label %for.body

if.end99.thread165:                               ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_reco_state_lock) #10
  br label %do.body103

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end49.for.body_crit_edge
  %.pn157 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn153, %do.end49.for.body_crit_edge ]
  %ret.0156 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ -22, %do.end49.for.body_crit_edge ]
  %ndata.0158 = getelementptr i8, ptr %.pn157, i32 -8
  %node_num55 = getelementptr i8, ptr %.pn157, i32 -4
  %24 = ptrtoint ptr %node_num55 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %node_num55, align 4
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp59.not = icmp eq i8 %25, %27
  br i1 %cmp59.not, label %if.end62, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end62:                                         ; preds = %for.body
  %28 = ptrtoint ptr %ndata.0158 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndata.0158, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %29, label %if.end62.for.inc_crit_edge [
    i32 0, label %if.end62.do.body63_crit_edge
    i32 -1, label %if.end62.do.body63_crit_edge177
    i32 5, label %if.end62.do.body63_crit_edge178
    i32 4, label %if.end62.do.body81_crit_edge
    i32 3, label %if.end62.do.body81_crit_edge179
    i32 2, label %if.end62.do.body81_crit_edge180
    i32 1, label %if.end62.do.body81_crit_edge181
  ]

if.end62.do.body81_crit_edge181:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body81

if.end62.do.body81_crit_edge180:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body81

if.end62.do.body81_crit_edge179:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body81

if.end62.do.body81_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body81

if.end62.do.body63_crit_edge178:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end62.do.body63_crit_edge177:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end62.do.body63_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end62.for.inc_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body63:                                        ; preds = %if.end62.do.body63_crit_edge, %if.end62.do.body63_crit_edge177, %if.end62.do.body63_crit_edge178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m64) #10
  %31 = ptrtoint ptr %_m64 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606848064, ptr %_m64, align 8
  %32 = ptrtoint ptr %node_num55 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %node_num55, align 4
  %conv69 = zext i8 %33 to i32
  %34 = ptrtoint ptr %ndata.0158 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ndata.0158, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m64, ptr noundef nonnull @__func__.dlm_reco_data_done_handler, i32 noundef 1001, ptr noundef nonnull @.str.15, i32 noundef %conv69, i32 noundef %35) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m64) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1002, 0\0A.popsection", ""() #10, !srcloc !452
  unreachable

do.body81:                                        ; preds = %if.end62.do.body81_crit_edge, %if.end62.do.body81_crit_edge179, %if.end62.do.body81_crit_edge180, %if.end62.do.body81_crit_edge181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m82) #10
  %36 = ptrtoint ptr %_m82 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1088, ptr %_m82, align 8
  %37 = ptrtoint ptr %node_num55 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %node_num55, align 4
  %conv87 = zext i8 %38 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m82, ptr noundef nonnull @__func__.dlm_reco_data_done_handler, i32 noundef 1012, ptr noundef nonnull @.str.16, i32 noundef %conv87) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m82) #10
  %39 = ptrtoint ptr %ndata.0158 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %ndata.0158, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.body81, %if.end62.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0156, %for.body.for.inc_crit_edge ], [ %ret.0156, %if.end62.for.inc_crit_edge ], [ 0, %do.body81 ]
  %40 = ptrtoint ptr %.pn157 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn157, align 4
  %cmp53.not = icmp eq ptr %.pn, %node_data
  br i1 %cmp53.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_reco_state_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool97.not = icmp eq i32 %ret.1, 0
  br i1 %tobool97.not, label %if.end99.thread, label %if.end99

if.end99.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dlm_reco_thread_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 39
  call void @__wake_up(ptr noundef %dlm_reco_thread_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end113

if.end99:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp100 = icmp slt i32 %ret.1, 0
  br i1 %cmp100, label %if.end99.do.body103_crit_edge, label %if.end99.if.end113_crit_edge

if.end99.if.end113_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.end99.do.body103_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body103

do.body103:                                       ; preds = %if.end99.do.body103_crit_edge, %if.end99.thread165
  %ret.0.lcssa164168 = phi i32 [ -22, %if.end99.thread165 ], [ %ret.1, %if.end99.do.body103_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m104) #10
  %41 = ptrtoint ptr %_m104 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606848064, ptr %_m104, align 8
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buf, align 4
  %conv109 = zext i8 %43 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m104, ptr noundef nonnull @__func__.dlm_reco_data_done_handler, i32 noundef 1027, ptr noundef nonnull @.str.17, i32 noundef %conv109) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m104) #10
  br label %if.end113

if.end113:                                        ; preds = %do.body103, %if.end99.if.end113_crit_edge, %if.end99.thread
  %ret.0.lcssa163 = phi i32 [ 0, %if.end99.thread ], [ %ret.0.lcssa164168, %do.body103 ], [ %ret.1, %if.end99.if.end113_crit_edge ]
  call void @dlm_put(ptr noundef %data) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m115) #10
  %44 = ptrtoint ptr %_m115 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 1088, ptr %_m115, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m115, ptr noundef nonnull @__func__.dlm_reco_data_done_handler, i32 noundef 1030, ptr noundef nonnull @.str.18, i32 noundef %ret.0.lcssa163) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m115) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa163, %if.end113 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_send_one_lockres(ptr nocapture noundef readonly %dlm, ptr noundef readonly %res, ptr noundef %mres, i8 noundef zeroext %send_to, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %_m.i.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m61 = alloca i64, align 8
  %_m84 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %flags to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !435

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1270, 0\0A.popsection", ""() #10, !srcloc !453
  unreachable

do.body10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1088, ptr %_m, align 8
  %conv14 = zext i8 %send_to to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_send_one_lockres, i32 noundef 1272, ptr noundef nonnull @.str.19, i32 noundef %conv14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond1.i.for.cond1.i_crit_edge, %do.body10
  %total_locks.1.i = phi i32 [ %inc.i, %for.cond1.i.for.cond1.i_crit_edge ], [ 0, %do.body10 ]
  %iter.0.in.i = phi ptr [ %iter.0.i, %for.cond1.i.for.cond1.i_crit_edge ], [ %granted.i, %do.body10 ]
  %1 = ptrtoint ptr %iter.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %iter.0.i = load ptr, ptr %iter.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %iter.0.i, %granted.i
  %inc.i = add i32 %total_locks.1.i, 1
  br i1 %cmp.i.not.i, label %for.end.i, label %for.cond1.i.for.cond1.i_crit_edge

for.cond1.i.for.cond1.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.i

for.end.i:                                        ; preds = %for.cond1.i
  %incdec.ptr.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  br label %for.cond1.1.i

for.cond1.1.i:                                    ; preds = %for.cond1.1.i.for.cond1.1.i_crit_edge, %for.end.i
  %total_locks.1.1.i = phi i32 [ %inc.1.i, %for.cond1.1.i.for.cond1.1.i_crit_edge ], [ %total_locks.1.i, %for.end.i ]
  %iter.0.in.1.i = phi ptr [ %iter.0.1.i, %for.cond1.1.i.for.cond1.1.i_crit_edge ], [ %incdec.ptr.i, %for.end.i ]
  %2 = ptrtoint ptr %iter.0.in.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %iter.0.1.i = load ptr, ptr %iter.0.in.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %iter.0.1.i, %incdec.ptr.i
  %inc.1.i = add i32 %total_locks.1.1.i, 1
  br i1 %cmp.i.not.1.i, label %for.end.1.i, label %for.cond1.1.i.for.cond1.1.i_crit_edge

for.cond1.1.i.for.cond1.1.i_crit_edge:            ; preds = %for.cond1.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.1.i

for.end.1.i:                                      ; preds = %for.cond1.1.i
  %incdec.ptr.1.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  br label %for.cond1.2.i

for.cond1.2.i:                                    ; preds = %for.cond1.2.i.for.cond1.2.i_crit_edge, %for.end.1.i
  %total_locks.1.2.i = phi i32 [ %inc.2.i, %for.cond1.2.i.for.cond1.2.i_crit_edge ], [ %total_locks.1.1.i, %for.end.1.i ]
  %iter.0.in.2.i = phi ptr [ %iter.0.2.i, %for.cond1.2.i.for.cond1.2.i_crit_edge ], [ %incdec.ptr.1.i, %for.end.1.i ]
  %3 = ptrtoint ptr %iter.0.in.2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %iter.0.2.i = load ptr, ptr %iter.0.in.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %iter.0.2.i, %incdec.ptr.1.i
  %inc.2.i = add i32 %total_locks.1.2.i, 1
  br i1 %cmp.i.not.2.i, label %dlm_num_locks_in_lockres.exit, label %for.cond1.2.i.for.cond1.2.i_crit_edge

for.cond1.2.i.for.cond1.2.i_crit_edge:            ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.2.i

dlm_num_locks_in_lockres.exit:                    ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %total_locks.1.2.i)
  %cmp = icmp sgt i32 %total_locks.1.2.i, 240
  br i1 %cmp, label %do.body20, label %dlm_num_locks_in_lockres.exit.if.end29_crit_edge

dlm_num_locks_in_lockres.exit.if.end29_crit_edge: ; preds = %dlm_num_locks_in_lockres.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.body20:                                        ; preds = %dlm_num_locks_in_lockres.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #10
  %4 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1088, ptr %_m21, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.dlm_send_one_lockres, i32 noundef 1279, ptr noundef nonnull @.str.20, i32 noundef %total_locks.1.2.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #10
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_mig_cookie_lock) #10
  %5 = load i64, ptr @dlm_mig_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp.i = icmp eq i64 %5, -1
  %inc.i168 = add i64 %5, 1
  %storemerge.i = select i1 %cmp.i, i64 1, i64 %inc.i168
  store i64 %storemerge.i, ptr @dlm_mig_cookie, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_mig_cookie_lock) #10
  br label %if.end29

if.end29:                                         ; preds = %do.body20, %dlm_num_locks_in_lockres.exit.if.end29_crit_edge
  %mig_cookie.0 = phi i64 [ %5, %do.body20 ], [ 0, %dlm_num_locks_in_lockres.exit.if.end29_crit_edge ]
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lockname, align 8
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %owner, align 4
  %12 = call ptr @memset(ptr %mres, i32 0, i32 4096)
  %conv.i = trunc i32 %9 to i8
  %lockname_len.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 1
  %13 = ptrtoint ptr %lockname_len.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %lockname_len.i, align 1
  %lockname1.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %lockname1.i, ptr %7, i32 %9)
  %num_locks.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 2
  %15 = ptrtoint ptr %num_locks.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %num_locks.i, align 2
  %total_locks2.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 4
  %16 = ptrtoint ptr %total_locks2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %total_locks.1.2.i, ptr %total_locks2.i, align 4
  %mig_cookie.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 5
  %17 = ptrtoint ptr %mig_cookie.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mig_cookie.0, ptr %mig_cookie.i, align 8
  %flags3.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 3
  %18 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %flags, ptr %flags3.i, align 1
  %19 = ptrtoint ptr %mres to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %11, ptr %mres, align 8
  %lvb.i.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc54.for.body_crit_edge, %if.end29
  %total_locks.0189 = phi i32 [ 0, %if.end29 ], [ %total_locks.1.lcssa, %for.inc54.for.body_crit_edge ]
  %i.0187 = phi i32 [ 0, %if.end29 ], [ %inc55, %for.inc54.for.body_crit_edge ]
  %20 = zext i32 %i.0187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %i.0187, label %do.body.i [
    i32 0, label %for.body.dlm_list_idx_to_ptr.exit_crit_edge
    i32 1, label %if.then2.i
    i32 2, label %if.then5.i
  ]

for.body.dlm_list_idx_to_ptr.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit

if.then2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit

if.then5.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 398, 0\0A.popsection", ""() #10, !srcloc !454
  unreachable

dlm_list_idx_to_ptr.exit:                         ; preds = %if.then5.i, %if.then2.i, %for.body.dlm_list_idx_to_ptr.exit_crit_edge
  %ret.0.i = phi ptr [ %incdec.ptr.i, %if.then2.i ], [ %incdec.ptr.1.i, %if.then5.i ], [ %granted.i, %for.body.dlm_list_idx_to_ptr.exit_crit_edge ]
  %21 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn183 = load ptr, ptr %ret.0.i, align 4
  %cmp35.not184 = icmp eq ptr %.pn183, %ret.0.i
  br i1 %cmp35.not184, label %dlm_list_idx_to_ptr.exit.for.inc54_crit_edge, label %for.body39.lr.ph

dlm_list_idx_to_ptr.exit.for.inc54_crit_edge:     ; preds = %dlm_list_idx_to_ptr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

for.body39.lr.ph:                                 ; preds = %dlm_list_idx_to_ptr.exit
  %conv10.i = trunc i32 %i.0187 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0187)
  %cmp.i.i = icmp eq i32 %i.0187, 2
  br label %for.body39

for.body39:                                       ; preds = %for.inc.for.body39_crit_edge, %for.body39.lr.ph
  %.pn186 = phi ptr [ %.pn183, %for.body39.lr.ph ], [ %.pn, %for.inc.for.body39_crit_edge ]
  %total_locks.1185 = phi i32 [ %total_locks.0189, %for.body39.lr.ph ], [ %inc, %for.inc.for.body39_crit_edge ]
  %lock.0 = getelementptr i8, ptr %.pn186, i32 -16
  %inc = add i32 %total_locks.1185, 1
  %22 = ptrtoint ptr %num_locks.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_locks.i, align 2
  %conv.i171 = zext i8 %23 to i32
  %arrayidx.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i171
  %24 = ptrtoint ptr %lock.0 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lock.0, align 8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx.i, align 8
  %type.i = getelementptr i8, ptr %.pn186, i32 -4
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type.i, align 4
  %type5.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i171, i32 4
  %29 = ptrtoint ptr %type5.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %type5.i, align 4
  %convert_type.i = getelementptr i8, ptr %.pn186, i32 -3
  %30 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %convert_type.i, align 1
  %convert_type7.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i171, i32 5
  %32 = ptrtoint ptr %convert_type7.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %convert_type7.i, align 1
  %highest_blocked.i = getelementptr i8, ptr %.pn186, i32 -2
  %33 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %highest_blocked.i, align 2
  %highest_blocked9.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i171, i32 6
  %35 = ptrtoint ptr %highest_blocked9.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %highest_blocked9.i, align 2
  %list.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i171, i32 2
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv10.i, ptr %list.i, align 2
  %lksb.i = getelementptr i8, ptr %.pn186, i32 88
  %37 = ptrtoint ptr %lksb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lksb.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %for.body39.dlm_add_lock_to_array.exit_crit_edge, label %if.then.i172

for.body39.dlm_add_lock_to_array.exit_crit_edge:  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_add_lock_to_array.exit

if.then.i172:                                     ; preds = %for.body39
  %flags.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %conv12.i = trunc i32 %40 to i8
  %flags13.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i171, i32 3
  %41 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv12.i, ptr %flags13.i, align 1
  %42 = ptrtoint ptr %lksb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lksb.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  %or.cond.i.i = or i1 %cmp.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then.i172.dlm_add_lock_to_array.exit_crit_edge, label %if.end2.i.i

if.then.i172.dlm_add_lock_to_array.exit_crit_edge: ; preds = %if.then.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_add_lock_to_array.exit

if.end2.i.i:                                      ; preds = %if.then.i172
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type.i, align 4
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %45, label %if.end2.i.i.dlm_add_lock_to_array.exit_crit_edge [
    i8 5, label %if.end2.i.i.for.body.i.i.i.preheader_crit_edge
    i8 3, label %if.end2.i.i.for.body.i.i.i.preheader_crit_edge213
  ]

if.end2.i.i.for.body.i.i.i.preheader_crit_edge213: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.preheader

if.end2.i.i.for.body.i.i.i.preheader_crit_edge:   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.preheader

if.end2.i.i.dlm_add_lock_to_array.exit_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_add_lock_to_array.exit

for.body.i.i.i.preheader:                         ; preds = %if.end2.i.i.for.body.i.i.i.preheader_crit_edge, %if.end2.i.i.for.body.i.i.i.preheader_crit_edge213
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %if.then13.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %i.03.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.preheader ]
  %arrayidx.i.i.i = getelementptr i8, ptr %lvb.i.i, i32 %i.03.i.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %if.end19.i.i

if.then13.i.i:                                    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lvb17.i.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %43, i32 0, i32 3
  %49 = call ptr @memcpy(ptr %lvb.i.i, ptr %lvb17.i.i, i32 64)
  br label %dlm_add_lock_to_array.exit

if.end19.i.i:                                     ; preds = %for.body.i.i.i
  %lvb23.i.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %43, i32 0, i32 3
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(64) %lvb.i.i, ptr noundef dereferenceable(64) %lvb23.i.i, i32 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end19.i.i.dlm_add_lock_to_array.exit_crit_edge, label %do.body.i.i

if.end19.i.i.dlm_add_lock_to_array.exit_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_add_lock_to_array.exit

do.body.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.0.le = getelementptr i8, ptr %.pn186, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %50 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1152921504606848064, ptr %_m.i.i, align 8
  %51 = ptrtoint ptr %lock.0.le to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %lock.0.le, align 8
  %shr.i.i.i = lshr i64 %52, 56
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %and.i.i.i = and i64 %52, 72057594037927935
  %lockres.i.i = getelementptr i8, ptr %.pn186, i32 24
  %53 = ptrtoint ptr %lockres.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lockres.i.i, align 8
  %lockname.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lockname.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %54, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name.i.i, align 8
  %node.i.i = getelementptr i8, ptr %.pn186, i32 -1
  %59 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %node.i.i, align 1
  %conv40.i.i = zext i8 %60 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_prepare_lvb_for_migration, i32 noundef 1200, ptr noundef nonnull @.str.147, i32 noundef %conv.i.i.i, i64 noundef %and.i.i.i, i32 noundef %56, ptr noundef %58, i32 noundef %conv40.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  %61 = ptrtoint ptr %lockres.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lockres.i.i, align 8
  call void @dlm_print_one_lock_resource(ptr noundef %62) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1202, 0\0A.popsection", ""() #10, !srcloc !455
  unreachable

dlm_add_lock_to_array.exit:                       ; preds = %if.end19.i.i.dlm_add_lock_to_array.exit_crit_edge, %if.then13.i.i, %if.end2.i.i.dlm_add_lock_to_array.exit_crit_edge, %if.then.i172.dlm_add_lock_to_array.exit_crit_edge, %for.body39.dlm_add_lock_to_array.exit_crit_edge
  %node.i = getelementptr i8, ptr %.pn186, i32 -1
  %63 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %node.i, align 1
  %node15.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i171, i32 7
  %65 = ptrtoint ptr %node15.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %node15.i, align 1
  %inc.i173 = add i8 %23, 1
  %66 = ptrtoint ptr %num_locks.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %inc.i173, ptr %num_locks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %inc.i173)
  %cmp.i174.not = icmp eq i8 %inc.i173, -16
  br i1 %cmp.i174.not, label %if.end43, label %dlm_add_lock_to_array.exit.for.inc_crit_edge

dlm_add_lock_to_array.exit.for.inc_crit_edge:     ; preds = %dlm_add_lock_to_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end43:                                         ; preds = %dlm_add_lock_to_array.exit
  %call44 = call fastcc i32 @dlm_send_mig_lockres_msg(ptr noundef %dlm, ptr noundef %mres, i8 noundef zeroext %send_to, ptr noundef %res, i32 noundef %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.do.body83_crit_edge, label %if.end43.for.inc_crit_edge

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end43.do.body83_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body83

for.inc:                                          ; preds = %if.end43.for.inc_crit_edge, %dlm_add_lock_to_array.exit.for.inc_crit_edge
  %67 = ptrtoint ptr %.pn186 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn = load ptr, ptr %.pn186, align 4
  %cmp35.not = icmp eq ptr %.pn, %ret.0.i
  br i1 %cmp35.not, label %for.inc.for.inc54_crit_edge, label %for.inc.for.body39_crit_edge

for.inc.for.body39_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39

for.inc.for.inc54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

for.inc54:                                        ; preds = %for.inc.for.inc54_crit_edge, %dlm_list_idx_to_ptr.exit.for.inc54_crit_edge
  %total_locks.1.lcssa = phi i32 [ %total_locks.0189, %dlm_list_idx_to_ptr.exit.for.inc54_crit_edge ], [ %inc, %for.inc.for.inc54_crit_edge ]
  %inc55 = add nuw nsw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc55, 3
  br i1 %exitcond.not, label %for.end56, label %for.inc54.for.body_crit_edge

for.inc54.for.body_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end56:                                        ; preds = %for.inc54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_locks.1.lcssa)
  %cmp57 = icmp eq i32 %total_locks.1.lcssa, 0
  br i1 %cmp57, label %do.body60, label %for.end56.if.end77_crit_edge

for.end56.if.end77_crit_edge:                     ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

do.body60:                                        ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61) #10
  %68 = ptrtoint ptr %_m61 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 1088, ptr %_m61, align 8
  %name65 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %69 = ptrtoint ptr %name65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name65, align 4
  %71 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lockname, align 8
  %73 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name, align 8
  %and72 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %cond = select i1 %tobool73.not, ptr @.str.23, ptr @.str.22
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61, ptr noundef nonnull @__func__.dlm_send_one_lockres, i32 noundef 1309, ptr noundef nonnull @.str.21, ptr noundef %70, i32 noundef %72, ptr noundef %74, i32 noundef %conv14, ptr noundef nonnull %cond) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61) #10
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %75 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %node_num.i, align 4
  %77 = ptrtoint ptr %num_locks.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_locks.i, align 2
  %conv.i.i = zext i8 %78 to i32
  %arrayidx.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i.i
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 0, ptr %arrayidx.i.i, align 8
  %type5.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i.i, i32 4
  %80 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %type5.i.i, align 4
  %convert_type7.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i.i, i32 5
  %81 = ptrtoint ptr %convert_type7.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %convert_type7.i.i, align 1
  %highest_blocked9.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i.i, i32 6
  %82 = ptrtoint ptr %highest_blocked9.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -1, ptr %highest_blocked9.i.i, align 2
  %list.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i.i, i32 2
  %83 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 2, ptr %list.i.i, align 2
  %node15.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 8, i32 %conv.i.i, i32 7
  %84 = ptrtoint ptr %node15.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %76, ptr %node15.i.i, align 1
  %inc.i.i = add i8 %78, 1
  store i8 %inc.i.i, ptr %num_locks.i, align 2
  br label %if.end77

if.end77:                                         ; preds = %do.body60, %for.end56.if.end77_crit_edge
  %call78 = call fastcc i32 @dlm_send_mig_lockres_msg(ptr noundef %dlm, ptr noundef %mres, i8 noundef zeroext %send_to, ptr noundef %res, i32 noundef %total_locks.1.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end77.do.body83_crit_edge, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end77.do.body83_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body83

do.body83:                                        ; preds = %if.end77.do.body83_crit_edge, %if.end43.do.body83_crit_edge
  %ret.0 = phi i32 [ %call78, %if.end77.do.body83_crit_edge ], [ %call44, %if.end43.do.body83_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m84) #10
  %85 = ptrtoint ptr %_m84 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 1152921504606848064, ptr %_m84, align 8
  %name88 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %86 = ptrtoint ptr %name88 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name88, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m84, ptr noundef nonnull @__func__.dlm_send_one_lockres, i32 noundef 1320, ptr noundef nonnull @.str.24, ptr noundef %87, i32 noundef %ret.0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m84) #10
  %call92 = call i32 @dlm_is_host_down(i32 noundef %ret.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.body95, label %do.body102

do.body95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #10, !srcloc !456
  unreachable

do.body102:                                       ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #10
  %88 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 1088, ptr %_m103, align 8
  %89 = ptrtoint ptr %name88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name88, align 4
  %and110 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  %cond112 = select i1 %tobool111.not, ptr @.str.23, ptr @.str.22
  %91 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lockname, align 8
  %93 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.dlm_send_one_lockres, i32 noundef 1326, ptr noundef nonnull @.str.25, ptr noundef %90, i32 noundef %conv14, ptr noundef nonnull %cond112, i32 noundef %92, ptr noundef %94) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body102, %if.end77.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body102 ], [ %call78, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_send_mig_lockres_msg(ptr nocapture noundef readonly %dlm, ptr noundef %mres, i8 noundef zeroext %send_to, ptr nocapture noundef readonly %res, i32 noundef %total_locks) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m61 = alloca i64, align 8
  %_m94 = alloca i64, align 8
  %_m107 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mig_cookie1 = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 5
  %0 = ptrtoint ptr %mig_cookie1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mig_cookie1, align 8
  %total_locks2 = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 4
  %2 = ptrtoint ptr %total_locks2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_locks2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  %flags = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 3
  %5 = ptrtoint ptr %mres to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mres, align 8
  %num_locks = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 2
  %7 = ptrtoint ptr %num_locks to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_locks, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %8)
  %cmp = icmp ugt i8 %8, -16
  br i1 %cmp, label %do.body5, label %do.end10, !prof !435

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1107, 0\0A.popsection", ""() #10, !srcloc !457
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %total_locks)
  %cmp17 = icmp slt i32 %3, %total_locks
  br i1 %cmp17, label %do.body26, label %do.end34, !prof !435

do.body26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1113, 0\0A.popsection", ""() #10, !srcloc !458
  unreachable

do.end34:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %total_locks)
  %cmp35 = icmp eq i32 %3, %total_locks
  br i1 %cmp35, label %if.then37, label %do.end34.do.body42_crit_edge

do.end34.do.body42_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

if.then37:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  %11 = or i8 %10, 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %flags, align 1
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %do.end34.do.body42_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %16 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lockname, align 8
  %name46 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name46, align 8
  %20 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool49.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool49.not, ptr @.str.22, ptr @.str.23
  %conv50 = zext i8 %send_to to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_send_mig_lockres_msg, i32 noundef 1120, ptr noundef nonnull @.str.148, ptr noundef %15, i32 noundef %17, ptr noundef %19, ptr noundef nonnull %cond, i32 noundef %conv50) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %21 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key, align 4
  %23 = ptrtoint ptr %num_locks to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_locks, align 2
  %conv55 = zext i8 %24 to i32
  %25 = shl nuw nsw i32 %conv55, 4
  %spec.select.i170 = add nuw nsw i32 %25, 112
  %call56 = call i32 @o2net_send_message(i32 noundef 509, i32 noundef %22, ptr noundef %mres, i32 noundef %spec.select.i170, i8 noundef zeroext %send_to, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.body60, label %if.else

do.body60:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61) #10
  %26 = ptrtoint ptr %_m61 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606848064, ptr %_m61, align 8
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  %lockname_len = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 1
  %29 = ptrtoint ptr %lockname_len to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %lockname_len, align 1
  %conv66 = zext i8 %30 to i32
  %lockname67 = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61, ptr noundef nonnull @__func__.dlm_send_mig_lockres_msg, i32 noundef 1133, ptr noundef nonnull @.str.149, ptr noundef %28, i32 noundef %conv66, ptr noundef %lockname67, i32 noundef %call56, i32 noundef %conv50, ptr noundef nonnull %cond) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61) #10
  br label %if.end123

if.else:                                          ; preds = %do.body42
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp76 = icmp slt i32 %32, 0
  br i1 %cmp76, label %if.then78, label %if.else.if.end123_crit_edge

if.else.if.end123_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then78:                                        ; preds = %if.else
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %32, label %do.body93 [
    i32 -512, label %if.then78.if.end123_crit_edge
    i32 -122, label %if.then78.if.end123_crit_edge171
    i32 -28, label %if.then78.if.end123_crit_edge172
    i32 -4, label %if.then78.if.end123_crit_edge173
  ]

if.then78.if.end123_crit_edge173:                 ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then78.if.end123_crit_edge172:                 ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then78.if.end123_crit_edge171:                 ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then78.if.end123_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

do.body93:                                        ; preds = %if.then78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m94) #10
  %34 = ptrtoint ptr %_m94 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606848064, ptr %_m94, align 8
  %conv98 = sext i32 %32 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m94, ptr noundef nonnull @__func__.dlm_send_mig_lockres_msg, i32 noundef 1138, ptr noundef nonnull @.str.3, i64 noundef %conv98) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %32)
  %cmp103 = icmp eq i32 %32, -14
  br i1 %cmp103, label %do.body106, label %do.body93.if.end123_crit_edge

do.body93.if.end123_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

do.body106:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m107) #10
  %35 = ptrtoint ptr %_m107 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606848064, ptr %_m107, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m107, ptr noundef nonnull @__func__.dlm_send_mig_lockres_msg, i32 noundef 1142, ptr noundef nonnull @.str.150, i32 noundef %conv50) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m107) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1143, 0\0A.popsection", ""() #10, !srcloc !459
  unreachable

if.end123:                                        ; preds = %do.body93.if.end123_crit_edge, %if.then78.if.end123_crit_edge, %if.then78.if.end123_crit_edge171, %if.then78.if.end123_crit_edge172, %if.then78.if.end123_crit_edge173, %if.else.if.end123_crit_edge, %do.body60
  %ret.0 = phi i32 [ %call56, %do.body60 ], [ %32, %do.body93.if.end123_crit_edge ], [ %32, %if.else.if.end123_crit_edge ], [ %32, %if.then78.if.end123_crit_edge ], [ %32, %if.then78.if.end123_crit_edge171 ], [ %32, %if.then78.if.end123_crit_edge172 ], [ %32, %if.then78.if.end123_crit_edge173 ]
  %36 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name46, align 8
  %38 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lockname, align 8
  %40 = call ptr @memset(ptr %mres, i32 0, i32 4096)
  %conv.i = trunc i32 %39 to i8
  %lockname_len.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 1
  %41 = ptrtoint ptr %lockname_len.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i, ptr %lockname_len.i, align 1
  %lockname1.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %mres, i32 0, i32 6
  %42 = call ptr @memcpy(ptr %lockname1.i, ptr %37, i32 %39)
  %43 = ptrtoint ptr %num_locks to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %num_locks, align 2
  %44 = ptrtoint ptr %total_locks2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %3, ptr %total_locks2, align 4
  %45 = ptrtoint ptr %mig_cookie1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %1, ptr %mig_cookie1, align 8
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %10, ptr %flags, align 1
  %47 = ptrtoint ptr %mres to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %6, ptr %mres, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end123 ], [ 0, %do.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_host_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_mig_lockres_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m57 = alloca i64, align 8
  %_m76 = alloca i64, align 8
  %_m109 = alloca i64, align 8
  %_m138 = alloca i64, align 8
  %_m156 = alloca i64, align 8
  %_m242 = alloca i64, align 8
  %_m287 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #10
  %dlm_state.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 31
  %0 = ptrtoint ptr %dlm_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i407.not = icmp eq i32 %1, 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #10
  br i1 %cmp.i407.not, label %do.body11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606848064, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %lockname_len = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %lockname_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lockname_len, align 1
  %conv = zext i8 %6 to i32
  %lockname = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 6
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 8
  %conv8 = zext i8 %8 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1366, ptr noundef nonnull @.str.26, ptr noundef %4, i32 noundef %conv, ptr noundef %lockname, i32 noundef %conv8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

do.body11:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %buf, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %conv12 = zext i8 %10 to i32
  %and13 = and i32 %conv12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body19, label %do.end27, !prof !435

do.body19:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1371, 0\0A.popsection", ""() #10, !srcloc !460
  unreachable

do.end27:                                         ; preds = %do.body11
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp = icmp eq i8 %12, -1
  %and35 = and i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %or.cond = select i1 %cmp, i1 %tobool36.not, i1 false
  br i1 %or.cond, label %do.body46, label %do.body56, !prof !461

do.body46:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1376, 0\0A.popsection", ""() #10, !srcloc !462
  unreachable

do.body56:                                        ; preds = %do.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57) #10
  %13 = ptrtoint ptr %_m57 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1088, ptr %_m57, align 8
  %14 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool64.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool64.not, ptr @.str.23, ptr @.str.22
  %conv66 = zext i8 %12 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1381, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond, i32 noundef %conv66) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57) #10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 1
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool73.not = icmp eq i8 %17, 0
  br i1 %tobool73.not, label %do.body56.if.end83_crit_edge, label %do.body75

do.body56.if.end83_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

do.body75:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m76) #10
  %18 = ptrtoint ptr %_m76 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1088, ptr %_m76, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m76, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1383, ptr noundef nonnull @.str.28) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m76) #10
  br label %if.end83

if.end83:                                         ; preds = %do.body75, %do.body56.if.end83_crit_edge
  %data_len = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_len, align 2
  %conv84 = zext i16 %20 to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv84, i32 noundef 3136) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3392, i32 noundef 36) #14
  %tobool87.not = icmp eq ptr %call9.i, null
  %tobool88.not = icmp eq ptr %call7.i.i, null
  %or.cond406 = select i1 %tobool87.not, i1 true, i1 %tobool88.not
  br i1 %or.cond406, label %if.end83.if.then271_crit_edge, label %if.end90

if.end83.if.then271_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then271

if.end90:                                         ; preds = %if.end83
  %lockname91 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 6
  %lockname_len93 = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %buf, i32 0, i32 1
  %22 = ptrtoint ptr %lockname_len93 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lockname_len93, align 1
  %conv94 = zext i8 %23 to i32
  %call95 = call i32 @full_name_hash(ptr noundef null, ptr noundef %lockname91, i32 noundef %conv94) #17
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %24 = ptrtoint ptr %lockname_len93 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lockname_len93, align 1
  %conv99 = zext i8 %25 to i32
  %call100 = call ptr @__dlm_lookup_lockres_full(ptr noundef %data, ptr noundef %lockname91, i32 noundef %conv99, i32 noundef %call95) #10
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.else178, label %if.then102

if.then102:                                       ; preds = %if.end90
  %spinlock103 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call100, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock103) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call100, i32 0, i32 17
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %state, align 2
  %conv104 = zext i16 %27 to i32
  %and105 = and i32 %conv104, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end123, label %do.body108

do.body108:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m109) #10
  %28 = ptrtoint ptr %_m109 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1088, ptr %_m109, align 8
  %name113 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %29 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name113, align 4
  %31 = ptrtoint ptr %lockname_len93 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lockname_len93, align 1
  %conv115 = zext i8 %32 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m109, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1406, ptr noundef nonnull @.str.29, ptr noundef %30, i32 noundef %conv115, ptr noundef %lockname91) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m109) #10
  br label %if.then271.sink.split

if.end123:                                        ; preds = %if.then102
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool127.not = icmp eq i8 %35, 0
  br i1 %tobool127.not, label %if.else, label %if.then128

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i16 %27, 2
  br label %if.end175

if.else:                                          ; preds = %if.end123
  %and134 = and i32 %conv104, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.else149, label %do.body137

do.body137:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m138) #10
  %36 = ptrtoint ptr %_m138 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1088, ptr %_m138, align 8
  %37 = ptrtoint ptr %lockname_len93 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lockname_len93, align 1
  %conv143 = zext i8 %38 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m138, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1422, ptr noundef nonnull @.str.30, i32 noundef %conv143, ptr noundef %lockname91) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m138) #10
  br label %if.end170

if.else149:                                       ; preds = %if.else
  %and152 = and i32 %conv104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.else149.if.end170_crit_edge, label %do.body155

if.else149.if.end170_crit_edge:                   ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

do.body155:                                       ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m156) #10
  %39 = ptrtoint ptr %_m156 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606848064, ptr %_m156, align 8
  %40 = ptrtoint ptr %lockname_len93 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %lockname_len93, align 1
  %conv161 = zext i8 %41 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m156, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1427, ptr noundef nonnull @.str.31, i32 noundef %conv161, ptr noundef %lockname91) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m156) #10
  br label %if.then271.sink.split

if.end170:                                        ; preds = %if.else149.if.end170_crit_edge, %do.body137
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %state, align 2
  %44 = or i16 %43, 32
  br label %if.end175

if.end175:                                        ; preds = %if.end170, %if.then128
  %storemerge = phi i16 [ %44, %if.end170 ], [ %or, %if.then128 ]
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %storemerge, ptr %state, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock103) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %if.end211

if.else178:                                       ; preds = %if.end90
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %46 = ptrtoint ptr %lockname_len93 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %lockname_len93, align 1
  %conv183 = zext i8 %47 to i32
  %call184 = call ptr @dlm_new_lockres(ptr noundef %data, ptr noundef %lockname91, i32 noundef %conv183) #10
  %tobool185.not = icmp eq ptr %call184, null
  br i1 %tobool185.not, label %if.else178.if.then271_crit_edge, label %if.end187

if.else178.if.then271_crit_edge:                  ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then271

if.end187:                                        ; preds = %if.else178
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call184, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #10
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #10, !srcloc !463
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end187.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !435

if.end187.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end187
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %49 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !433

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end187.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end187.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool191.not = icmp eq i8 %52, 0
  %state198 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call184, i32 0, i32 17
  %53 = ptrtoint ptr %state198 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %state198, align 2
  %. = select i1 %tobool191.not, i16 32, i16 2
  %55 = or i16 %54, %.
  store i16 %55, ptr %state198, align 2
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  call void @__dlm_insert_lockres(ptr noundef %data, ptr noundef nonnull %call184) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %call.i.i.i.i.i.i.i410 = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #10
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #10, !srcloc !463
  %asmresult.i.i.i.i.i.i.i411 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i411)
  %tobool1.not.i.i.i.i.i412 = icmp eq i32 %asmresult.i.i.i.i.i.i.i411, 0
  br i1 %tobool1.not.i.i.i.i.i412, label %dlm_lockres_get.exit.if.end15.sink.split.i.i.i.i.i417_crit_edge, label %if.else.i.i.i.i.i415, !prof !435

dlm_lockres_get.exit.if.end15.sink.split.i.i.i.i.i417_crit_edge: ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i417

if.else.i.i.i.i.i415:                             ; preds = %dlm_lockres_get.exit
  %add.i.i.i.i.i413 = add i32 %asmresult.i.i.i.i.i.i.i411, 1
  %57 = or i32 %add.i.i.i.i.i413, %asmresult.i.i.i.i.i.i.i411
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i.i414 = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i.i414, label %if.else.i.i.i.i.i415.dlm_lockres_get.exit418_crit_edge, label %if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge, !prof !433

if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge: ; preds = %if.else.i.i.i.i.i415
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i417

if.else.i.i.i.i.i415.dlm_lockres_get.exit418_crit_edge: ; preds = %if.else.i.i.i.i.i415
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lockres_get.exit418

if.end15.sink.split.i.i.i.i.i417:                 ; preds = %if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge, %dlm_lockres_get.exit.if.end15.sink.split.i.i.i.i.i417_crit_edge
  %.sink.i.i.i.i.i416 = phi i32 [ 2, %dlm_lockres_get.exit.if.end15.sink.split.i.i.i.i.i417_crit_edge ], [ 1, %if.else.i.i.i.i.i415.if.end15.sink.split.i.i.i.i.i417_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i416) #10
  br label %dlm_lockres_get.exit418

dlm_lockres_get.exit418:                          ; preds = %if.end15.sink.split.i.i.i.i.i417, %if.else.i.i.i.i.i415.dlm_lockres_get.exit418_crit_edge
  %spinlock205 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call184, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock205) #10
  %state206 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call184, i32 0, i32 17
  %58 = ptrtoint ptr %state206 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %state206, align 2
  %60 = and i16 %59, -17
  store i16 %60, ptr %state206, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock205) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %call184, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end211

if.end211:                                        ; preds = %dlm_lockres_get.exit418, %if.end175
  %extra_refs.0 = phi i8 [ 0, %if.end175 ], [ 1, %dlm_lockres_get.exit418 ]
  %res.0 = phi ptr [ %call100, %if.end175 ], [ %call184, %dlm_lockres_get.exit418 ]
  %spinlock212 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock212) #10
  call void @dlm_lockres_grab_inflight_ref(ptr noundef %data, ptr noundef nonnull %res.0) #10
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %cmp215 = icmp eq i8 %62, -1
  br i1 %cmp215, label %do.body218, label %if.else253

do.body218:                                       ; preds = %if.end211
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags, align 1
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool222.not = icmp eq i8 %65, 0
  br i1 %tobool222.not, label %do.body232, label %do.body241, !prof !435

do.body232:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1494, 0\0A.popsection", ""() #10, !srcloc !464
  unreachable

do.body241:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m242) #10
  %66 = ptrtoint ptr %_m242 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 1088, ptr %_m242, align 8
  %67 = ptrtoint ptr %lockname_len93 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lockname_len93, align 1
  %conv247 = zext i8 %68 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m242, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1497, ptr noundef nonnull @.str.32, i32 noundef %conv247, ptr noundef %lockname91) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m242) #10
  br label %if.end254

if.else253:                                       ; preds = %if.end211
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %69 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %node_num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %71 = ptrtoint ptr %spinlock212 to i32
  call void @__asan_load4_noabort(i32 %71)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock212, align 4
  %72 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !435

do.body4.i:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #10, !srcloc !465
  unreachable

do.end7.i:                                        ; preds = %if.else253
  %owner8.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 16
  %73 = ptrtoint ptr %owner8.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %owner8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %70)
  %cmp.not.i = icmp eq i8 %74, %70
  br i1 %cmp.not.i, label %do.end7.i.if.end254_crit_edge, label %if.then11.i

do.end7.i.if.end254_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.then11.i:                                      ; preds = %do.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %75 = ptrtoint ptr %spinlock212 to i32
  call void @__asan_load4_noabort(i32 %75)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock212, align 4
  %76 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %dlm_set_lockres_owner.exit.i, !prof !435

do.body4.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !466
  unreachable

dlm_set_lockres_owner.exit.i:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %owner8.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %70, ptr %owner8.i, align 4
  br label %if.end254

if.end254:                                        ; preds = %dlm_set_lockres_owner.exit.i, %do.end7.i.if.end254_crit_edge, %do.body241
  call void @_raw_spin_unlock(ptr noundef %spinlock212) #10
  %call256 = call ptr @dlm_grab(ptr noundef %data) #10
  %78 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %data_len, align 2
  %conv260 = zext i16 %79 to i32
  %80 = call ptr @memcpy(ptr %call9.i, ptr %buf, i32 %conv260)
  %81 = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %82 = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %83 = call ptr @memset(ptr %82, i32 0, i32 12)
  %func.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @dlm_mig_lockres_worker, ptr %func.i, align 8
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %data1.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call9.i, ptr %data1.i, align 8
  %dlm2.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %dlm2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %data, ptr %dlm2.i, align 4
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %res.0, ptr %81, align 4
  %real_master262 = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %90 = ptrtoint ptr %real_master262 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %12, ptr %real_master262, align 8
  %extra_ref = getelementptr inbounds i8, ptr %call7.i.i, i32 25
  %91 = ptrtoint ptr %extra_ref to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %extra_refs.0, ptr %extra_ref, align 1
  %work_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 44
  call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_list = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 43
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 43, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %93, ptr noundef %work_list) #10
  br i1 %call.i.i, label %if.end.i.i419, label %if.end254.leave_crit_edge

if.end254.leave_crit_edge:                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.i.i419:                                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %95 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %work_list, ptr %call7.i.i, align 8
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %call7.i.i, ptr %93, align 4
  br label %leave

leave:                                            ; preds = %if.end.i.i419, %if.end254.leave_crit_edge
  call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  %dlm_worker = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 37
  %98 = ptrtoint ptr %dlm_worker to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dlm_worker, align 4
  %dispatched_work = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 42
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %99, ptr noundef %dispatched_work) #10
  br i1 %tobool101.not, label %if.then267, label %leave.if.end268.thread_crit_edge

leave.if.end268.thread_crit_edge:                 ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end268.thread

if.then267:                                       ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_lockres_put(ptr noundef nonnull %res.0) #10
  br label %if.end268.thread

if.end268.thread:                                 ; preds = %if.then267, %leave.if.end268.thread_crit_edge
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

if.then271.sink.split:                            ; preds = %do.body155, %do.body108
  %ret.0.ph.ph = phi i32 [ -14, %do.body155 ], [ -22, %do.body108 ]
  call void @_raw_spin_unlock(ptr noundef %spinlock103) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call100) #10
  br label %if.then271

if.then271:                                       ; preds = %if.then271.sink.split, %if.else178.if.then271_crit_edge, %if.end83.if.then271_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end83.if.then271_crit_edge ], [ -12, %if.else178.if.then271_crit_edge ], [ %ret.0.ph.ph, %if.then271.sink.split ]
  call void @dlm_put(ptr noundef %data) #10
  call void @kfree(ptr noundef %call9.i) #10
  call void @kfree(ptr noundef %call7.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m287) #10
  %100 = ptrtoint ptr %_m287 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 1152921504606848064, ptr %_m287, align 8
  %conv291 = sext i32 %ret.0.ph to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m287, ptr noundef nonnull @__func__.dlm_mig_lockres_handler, i32 noundef 1526, ptr noundef nonnull @.str.3, i64 noundef %conv291) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m287) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then271, %if.end268.thread, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.ph, %if.then271 ], [ 0, %if.end268.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dlm_lookup_lockres_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_new_lockres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_insert_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_grab_inflight_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_mig_lockres_worker(ptr nocapture noundef readonly %item, ptr noundef %data) #0 align 64 {
entry:
  %_m.i136 = alloca i64, align 8
  %_m25.i = alloca i64, align 8
  %_m114.i = alloca i64, align 8
  %_m152.i = alloca i64, align 8
  %_m170.i = alloca i64, align 8
  %_m204.i = alloca i64, align 8
  %_m225.i = alloca i64, align 8
  %_m344.i = alloca i64, align 8
  %_m437.i = alloca i64, align 8
  %_m453.i = alloca i64, align 8
  %_m507.i = alloca i64, align 8
  %_m529.i = alloca i64, align 8
  %_m557.i = alloca i64, align 8
  %iter.i = alloca %struct.dlm_node_iter, align 4
  %_m.i = alloca i64, align 8
  %_m43.i = alloca i64, align 8
  %real_master = alloca i8, align 1
  %_m = alloca i64, align 8
  %_m17 = alloca i64, align 8
  %_m27 = alloca i64, align 8
  %_m46 = alloca i64, align 8
  %_m55 = alloca i64, align 8
  %_m87 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %real_master) #10
  %dlm1 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  %u = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %real_master3 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %real_master3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %real_master3, align 4
  %6 = ptrtoint ptr %real_master to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %real_master, align 1
  %extra_ref5 = getelementptr inbounds %struct.dlm_mig_lockres_priv, ptr %u, i32 0, i32 2
  %7 = ptrtoint ptr %extra_ref5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %extra_ref5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %again.preheader, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

again.preheader:                                  ; preds = %entry
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 8
  %domain_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 18
  %curnode.i.i = getelementptr inbounds %struct.dlm_node_iter, ptr %iter.i, i32 0, i32 1
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 12
  br label %again

again:                                            ; preds = %do.body, %again.preheader
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter.i) #10
  %9 = ptrtoint ptr %real_master to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %real_master, align 1
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %10 = call ptr @memcpy(ptr %iter.i, ptr %domain_map.i, i32 32)
  %11 = ptrtoint ptr %curnode.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %curnode.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end37.i.while.cond.outer.i_crit_edge, %again
  %ret.0.ph.i = phi i32 [ %call5.i, %if.end37.i.while.cond.outer.i_crit_edge ], [ 0, %again ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %12 = ptrtoint ptr %curnode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %curnode.i.i, align 4
  %add.i.i = add i32 %13, 1
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter.i, i32 noundef 255, i32 noundef %add.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 254
  %.call.i.i = select i1 %cmp.i.i, i32 255, i32 %call.i.i
  %.call8.i.i = select i1 %cmp.i.i, i32 -2, i32 %call.i.i
  %14 = ptrtoint ptr %curnode.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.call.i.i, ptr %curnode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.call8.i.i)
  %cmp.i = icmp sgt i32 %.call8.i.i, -1
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.dlm_lockres_master_requery.exit_crit_edge

while.cond.i.dlm_lockres_master_requery.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lockres_master_requery.exit

while.body.i:                                     ; preds = %while.cond.i
  %15 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %node_num.i, align 4
  %conv.i = zext i8 %16 to i32
  %cmp2.i = icmp eq i32 %.call8.i.i, %conv.i
  br i1 %cmp2.i, label %while.body.i.while.cond.i_crit_edge, label %if.end.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end.i:                                         ; preds = %while.body.i
  %conv4.i = trunc i32 %.call8.i.i to i8
  %call5.i = call i32 @dlm_do_master_requery(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %conv4.i, ptr noundef nonnull %real_master) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end37.i_crit_edge

if.end.i.if.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.end.i
  %17 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %call5.i, label %do.body.i [
    i32 -512, label %if.then8.i.if.end26.i_crit_edge
    i32 -4, label %if.then8.i.if.end26.i_crit_edge609
    i32 -28, label %if.then8.i.if.end26.i_crit_edge610
    i32 -122, label %if.then8.i.if.end26.i_crit_edge611
  ]

if.then8.i.if.end26.i_crit_edge611:               ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then8.i.if.end26.i_crit_edge610:               ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then8.i.if.end26.i_crit_edge609:               ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then8.i.if.end26.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

do.body.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %18 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606848064, ptr %_m.i, align 8
  %conv24.i = sext i32 %call5.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_lockres_master_requery, i32 noundef 1644, ptr noundef nonnull @.str.3, i64 noundef %conv24.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.then8.i.if.end26.i_crit_edge, %if.then8.i.if.end26.i_crit_edge609, %if.then8.i.if.end26.i_crit_edge610, %if.then8.i.if.end26.i_crit_edge611
  %call27.i = call i32 @dlm_is_host_down(i32 noundef %call5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.body30.i, label %if.end26.i.if.end37.i_crit_edge

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

do.body30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1646, 0\0A.popsection", ""() #10, !srcloc !467
  unreachable

if.end37.i:                                       ; preds = %if.end26.i.if.end37.i_crit_edge, %if.end.i.if.end37.i_crit_edge
  %19 = ptrtoint ptr %real_master to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %real_master, align 1
  %cmp39.not.i = icmp eq i8 %20, -1
  br i1 %cmp39.not.i, label %if.end37.i.while.cond.outer.i_crit_edge, label %do.body42.i

if.end37.i.while.cond.outer.i_crit_edge:          ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.i

do.body42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43.i) #10
  %21 = ptrtoint ptr %_m43.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1088, ptr %_m43.i, align 8
  %conv47.i = zext i8 %20 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43.i, ptr noundef nonnull @__func__.dlm_lockres_master_requery, i32 noundef 1651, ptr noundef nonnull @.str.156, i32 noundef %conv47.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43.i) #10
  br label %dlm_lockres_master_requery.exit

dlm_lockres_master_requery.exit:                  ; preds = %do.body42.i, %while.cond.i.dlm_lockres_master_requery.exit_crit_edge
  %ret.1.i = phi i32 [ %call5.i, %do.body42.i ], [ %ret.0.ph.i, %while.cond.i.dlm_lockres_master_requery.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter.i) #10
  %cmp7 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp7, label %do.body, label %if.end11

do.body:                                          ; preds = %dlm_lockres_master_requery.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %22 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1088, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_mig_lockres_worker, i32 noundef 1556, ptr noundef nonnull @.str.151, i32 noundef %ret.1.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %again

if.end11:                                         ; preds = %dlm_lockres_master_requery.exit
  %23 = ptrtoint ptr %real_master to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %real_master, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp13 = icmp eq i8 %24, -1
  br i1 %cmp13, label %do.body16, label %if.else

do.body16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m17) #10
  %25 = ptrtoint ptr %_m17 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1088, ptr %_m17, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m17, ptr noundef nonnull @__func__.dlm_mig_lockres_worker, i32 noundef 1562, ptr noundef nonnull @.str.152, i32 noundef %27, ptr noundef %29) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m17) #10
  br label %if.end40

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  call void @dlm_lockres_drop_inflight_ref(ptr noundef %1, ptr noundef %3) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27) #10
  %30 = ptrtoint ptr %_m27 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1088, ptr %_m27, align 8
  %conv31 = zext i8 %24 to i32
  %lockname32 = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %lockname32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lockname32, align 8
  %name35 = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name35, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27, ptr noundef nonnull @__func__.dlm_mig_lockres_worker, i32 noundef 1570, ptr noundef nonnull @.str.153, i32 noundef %conv31, i32 noundef %32, ptr noundef %34) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27) #10
  br label %leave

if.end40:                                         ; preds = %do.body16, %entry.if.end40_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i136) #10
  %35 = ptrtoint ptr %_m.i136 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1088, ptr %_m.i136, align 8
  %num_locks.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 2
  %36 = ptrtoint ptr %num_locks.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_locks.i, align 2
  %conv.i137 = zext i8 %37 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i136, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1802, ptr noundef nonnull @.str.157, i32 noundef %conv.i137) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i136) #10
  %38 = ptrtoint ptr %num_locks.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_locks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp840.not.i = icmp eq i8 %39, 0
  br i1 %cmp840.not.i, label %if.end40.do.body528.i_crit_edge, label %for.body.lr.ph.i

if.end40.do.body528.i_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body528.i

for.body.lr.ph.i:                                 ; preds = %if.end40
  %granted.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 3
  %node_num.i138 = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 12
  %converting.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 4
  %lvb.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 7
  %lvb298.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 18
  %spinlock416.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 14
  %name441.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %lockname442.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %name445.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %flags483.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 3
  %blocked.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc525.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %40 = phi i8 [ %39, %for.body.lr.ph.i ], [ %237, %for.inc525.i.for.body.i_crit_edge ]
  %i.0841.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc526.i, %for.inc525.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp.i.i139 = icmp eq i64 %42, 0
  br i1 %cmp.i.i139, label %land.lhs.true.i.i, label %for.body.i.do.body37.i_crit_edge

for.body.i.do.body37.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %type.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 4
  %43 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp1.i.i = icmp eq i8 %44, -1
  br i1 %cmp1.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.do.body37.i_crit_edge

land.lhs.true.i.i.do.body37.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %convert_type.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 5
  %45 = ptrtoint ptr %convert_type.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %convert_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp5.i.i = icmp eq i8 %46, -1
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true3.i.i.do.body37.i_crit_edge

land.lhs.true3.i.i.do.body37.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true3.i.i
  %highest_blocked.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 6
  %47 = ptrtoint ptr %highest_blocked.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %highest_blocked.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp9.i.i = icmp eq i8 %48, -1
  br i1 %cmp9.i.i, label %land.rhs.i.i, label %land.lhs.true7.i.i.do.body37.i_crit_edge

land.lhs.true7.i.i.do.body37.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37.i

land.rhs.i.i:                                     ; preds = %land.lhs.true7.i.i
  %list.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 2
  %49 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %list.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp12.i.i = icmp eq i8 %50, 2
  br i1 %cmp12.i.i, label %do.body7.i, label %land.rhs.i.i.do.body37.i_crit_edge, !prof !435

land.rhs.i.i.do.body37.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37.i

do.body7.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp10.not.i = icmp eq i8 %40, 1
  br i1 %cmp10.not.i, label %do.body24.i, label %do.body15.i, !prof !433

do.body15.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1808, 0\0A.popsection", ""() #10, !srcloc !468
  unreachable

do.body24.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %node.i.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 7
  %51 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %node.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m25.i) #10
  %53 = ptrtoint ptr %_m25.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1088, ptr %_m25.i, align 8
  %54 = ptrtoint ptr %name441.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name441.i, align 4
  %lockname_len.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 1
  %56 = ptrtoint ptr %lockname_len.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %lockname_len.i, align 1
  %conv29.i = zext i8 %57 to i32
  %lockname.i = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 6
  %conv30.i = zext i8 %52 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m25.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1811, ptr noundef nonnull @.str.158, ptr noundef %55, i32 noundef %conv29.i, ptr noundef %lockname.i, i32 noundef %conv30.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m25.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock416.i) #10
  call void @dlm_lockres_set_refmap_bit(ptr noundef %1, ptr noundef %3, i32 noundef %conv30.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock416.i) #10
  br label %do.body528.i

do.body37.i:                                      ; preds = %land.rhs.i.i.do.body37.i_crit_edge, %land.lhs.true7.i.i.do.body37.i_crit_edge, %land.lhs.true3.i.i.do.body37.i_crit_edge, %land.lhs.true.i.i.do.body37.i_crit_edge, %for.body.i.do.body37.i_crit_edge
  %highest_blocked.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 6
  %58 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %highest_blocked.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp39.not.i140 = icmp eq i8 %59, -1
  br i1 %cmp39.not.i140, label %do.end56.i, label %do.body48.i, !prof !433

do.body48.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1817, 0\0A.popsection", ""() #10, !srcloc !469
  unreachable

do.end56.i:                                       ; preds = %do.body37.i
  %list.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 2
  %60 = ptrtoint ptr %list.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %list.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp9.i724.i = icmp ugt i8 %61, 2
  br i1 %cmp9.i724.i, label %do.body17.i.i, label %dlm_list_num_to_pointer.exit.i, !prof !435

do.body17.i.i:                                    ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1755, 0\0A.popsection", ""() #10, !srcloc !470
  unreachable

dlm_list_num_to_pointer.exit.i:                   ; preds = %do.end56.i
  %conv57.i = zext i8 %61 to i32
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %granted.i.i, i32 %conv57.i
  %node.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 7
  %62 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %node.i, align 1
  %64 = ptrtoint ptr %node_num.i138 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %node_num.i138, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp61.i = icmp eq i8 %63, %65
  br i1 %cmp61.i, label %do.body64.i, label %if.end232.i

do.body64.i:                                      ; preds = %dlm_list_num_to_pointer.exit.i
  %66 = ptrtoint ptr %flags483.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %flags483.i, align 1
  %68 = and i8 %67, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool67.not.i = icmp eq i8 %68, 0
  br i1 %tobool67.not.i, label %do.body77.i, label %dlm_list_idx_to_ptr.exit.i, !prof !435

do.body77.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1829, 0\0A.popsection", ""() #10, !srcloc !471
  unreachable

dlm_list_idx_to_ptr.exit.i:                       ; preds = %do.body64.i
  call void @_raw_spin_lock(ptr noundef %spinlock416.i) #10
  br label %for.cond92.i

for.cond92.i:                                     ; preds = %for.body97.i.for.cond92.i_crit_edge, %dlm_list_idx_to_ptr.exit.i
  %iter.0.in.i = phi ptr [ %granted.i.i, %dlm_list_idx_to_ptr.exit.i ], [ %iter.0.i, %for.body97.i.for.cond92.i_crit_edge ]
  %69 = ptrtoint ptr %iter.0.in.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %iter.0.i = load ptr, ptr %iter.0.in.i, align 4
  %cmp.i727.not.i = icmp eq ptr %iter.0.i, %granted.i.i
  br i1 %cmp.i727.not.i, label %for.cond92.i.for.cond92.1.i.preheader_crit_edge, label %for.body97.i

for.cond92.i.for.cond92.1.i.preheader_crit_edge:  ; preds = %for.cond92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92.1.i.preheader

for.body97.i:                                     ; preds = %for.cond92.i
  %add.ptr.i = getelementptr i8, ptr %iter.0.i, i32 -16
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr.i, align 8
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.i, align 8
  %cmp100.i = icmp eq i64 %71, %73
  br i1 %cmp100.i, label %for.end.i, label %for.body97.i.for.cond92.i_crit_edge

for.body97.i.for.cond92.i_crit_edge:              ; preds = %for.body97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92.i

for.end.i:                                        ; preds = %for.body97.i
  %add.ptr.i.le = getelementptr i8, ptr %iter.0.i, i32 -16
  %tobool105.not.i = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool105.not.i, label %for.end.i.for.cond92.1.i.preheader_crit_edge, label %for.end.i.if.end140.i_crit_edge

for.end.i.if.end140.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

for.end.i.for.cond92.1.i.preheader_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92.1.i.preheader

for.cond92.1.i.preheader:                         ; preds = %for.end.i.for.cond92.1.i.preheader_crit_edge, %for.cond92.i.for.cond92.1.i.preheader_crit_edge
  br label %for.cond92.1.i

for.cond92.1.i:                                   ; preds = %for.body97.1.i.for.cond92.1.i_crit_edge, %for.cond92.1.i.preheader
  %iter.0.in.1.i = phi ptr [ %iter.0.1.i, %for.body97.1.i.for.cond92.1.i_crit_edge ], [ %converting.i, %for.cond92.1.i.preheader ]
  %74 = ptrtoint ptr %iter.0.in.1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %iter.0.1.i = load ptr, ptr %iter.0.in.1.i, align 4
  %cmp.i727.not.1.i = icmp eq ptr %iter.0.1.i, %converting.i
  br i1 %cmp.i727.not.1.i, label %for.cond92.1.i.for.cond92.2.i.preheader_crit_edge, label %for.body97.1.i

for.cond92.1.i.for.cond92.2.i.preheader_crit_edge: ; preds = %for.cond92.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92.2.i.preheader

for.body97.1.i:                                   ; preds = %for.cond92.1.i
  %add.ptr.1.i = getelementptr i8, ptr %iter.0.1.i, i32 -16
  %75 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.1.i, align 8
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx.i, align 8
  %cmp100.1.i = icmp eq i64 %76, %78
  br i1 %cmp100.1.i, label %for.end.1.i, label %for.body97.1.i.for.cond92.1.i_crit_edge

for.body97.1.i.for.cond92.1.i_crit_edge:          ; preds = %for.body97.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92.1.i

for.end.1.i:                                      ; preds = %for.body97.1.i
  %add.ptr.1.i.le = getelementptr i8, ptr %iter.0.1.i, i32 -16
  %tobool105.not.1.i = icmp eq ptr %add.ptr.1.i.le, null
  br i1 %tobool105.not.1.i, label %for.end.1.i.for.cond92.2.i.preheader_crit_edge, label %for.end.1.i.if.end140.i_crit_edge

for.end.1.i.if.end140.i_crit_edge:                ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

for.end.1.i.for.cond92.2.i.preheader_crit_edge:   ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92.2.i.preheader

for.cond92.2.i.preheader:                         ; preds = %for.end.1.i.for.cond92.2.i.preheader_crit_edge, %for.cond92.1.i.for.cond92.2.i.preheader_crit_edge
  br label %for.cond92.2.i

for.cond92.2.i:                                   ; preds = %for.body97.2.i.for.cond92.2.i_crit_edge, %for.cond92.2.i.preheader
  %iter.0.in.2.i = phi ptr [ %iter.0.2.i, %for.body97.2.i.for.cond92.2.i_crit_edge ], [ %blocked.i.i, %for.cond92.2.i.preheader ]
  %79 = ptrtoint ptr %iter.0.in.2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %iter.0.2.i = load ptr, ptr %iter.0.in.2.i, align 4
  %cmp.i727.not.2.i = icmp eq ptr %iter.0.2.i, %blocked.i.i
  br i1 %cmp.i727.not.2.i, label %for.cond92.2.i.for.inc108.2.i_crit_edge, label %for.body97.2.i

for.cond92.2.i.for.inc108.2.i_crit_edge:          ; preds = %for.cond92.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc108.2.i

for.body97.2.i:                                   ; preds = %for.cond92.2.i
  %add.ptr.2.i = getelementptr i8, ptr %iter.0.2.i, i32 -16
  %80 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %add.ptr.2.i, align 8
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx.i, align 8
  %cmp100.2.i = icmp eq i64 %81, %83
  br i1 %cmp100.2.i, label %for.end.2.i, label %for.body97.2.i.for.cond92.2.i_crit_edge

for.body97.2.i.for.cond92.2.i_crit_edge:          ; preds = %for.body97.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond92.2.i

for.end.2.i:                                      ; preds = %for.body97.2.i
  %add.ptr.2.i.le = getelementptr i8, ptr %iter.0.2.i, i32 -16
  %tobool105.not.2.i = icmp eq ptr %add.ptr.2.i.le, null
  br i1 %tobool105.not.2.i, label %for.end.2.i.for.inc108.2.i_crit_edge, label %for.end.2.i.if.end140.i_crit_edge

for.end.2.i.if.end140.i_crit_edge:                ; preds = %for.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

for.end.2.i.for.inc108.2.i_crit_edge:             ; preds = %for.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc108.2.i

for.inc108.2.i:                                   ; preds = %for.end.2.i.for.inc108.2.i_crit_edge, %for.cond92.2.i.for.inc108.2.i_crit_edge
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m114.i) #10
  %86 = ptrtoint ptr %_m114.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 1152921504606848064, ptr %_m114.i, align 8
  %shr.i.i = lshr i64 %85, 56
  %conv.i728.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i64 %85, 72057594037927935
  %87 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %node.i, align 1
  %conv122.i = zext i8 %88 to i32
  %89 = ptrtoint ptr %list.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %list.i, align 2
  %conv124.i = zext i8 %90 to i32
  %flags125.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 3
  %91 = ptrtoint ptr %flags125.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags125.i, align 1
  %conv126.i = zext i8 %92 to i32
  %type.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 4
  %93 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %type.i, align 4
  %conv127.i = sext i8 %94 to i32
  %convert_type.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 5
  %95 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %convert_type.i, align 1
  %conv128.i = sext i8 %96 to i32
  %97 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %highest_blocked.i, align 2
  %conv130.i = sext i8 %98 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m114.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1857, ptr noundef nonnull @.str.159, i32 noundef %conv.i728.i, i64 noundef %and.i.i, i32 noundef %conv122.i, i32 noundef %conv124.i, i32 noundef %conv126.i, i32 noundef %conv127.i, i32 noundef %conv128.i, i32 noundef %conv130.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m114.i) #10
  call void @__dlm_print_one_lock_resource(ptr noundef %3) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1859, 0\0A.popsection", ""() #10, !srcloc !472
  unreachable

if.end140.i:                                      ; preds = %for.end.2.i.if.end140.i_crit_edge, %for.end.1.i.if.end140.i_crit_edge, %for.end.i.if.end140.i_crit_edge
  %ret.0.i.lcssa.i = phi ptr [ %granted.i.i, %for.end.i.if.end140.i_crit_edge ], [ %converting.i, %for.end.1.i.if.end140.i_crit_edge ], [ %blocked.i.i, %for.end.2.i.if.end140.i_crit_edge ]
  %j.0837.lcssa846.i = phi i32 [ 0, %for.end.i.if.end140.i_crit_edge ], [ 1, %for.end.1.i.if.end140.i_crit_edge ], [ 2, %for.end.2.i.if.end140.i_crit_edge ]
  %add.ptr.le.lcssa.i = phi ptr [ %add.ptr.i.le, %for.end.i.if.end140.i_crit_edge ], [ %add.ptr.1.i.le, %for.end.1.i.if.end140.i_crit_edge ], [ %add.ptr.2.i.le, %for.end.2.i.if.end140.i_crit_edge ]
  %iter.0.lcssa845.lcssa.i = phi ptr [ %iter.0.i, %for.end.i.if.end140.i_crit_edge ], [ %iter.0.1.i, %for.end.1.i.if.end140.i_crit_edge ], [ %iter.0.2.i, %for.end.2.i.if.end140.i_crit_edge ]
  %node142.i = getelementptr i8, ptr %iter.0.lcssa845.lcssa.i, i32 -1
  %99 = ptrtoint ptr %node142.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %node142.i, align 1
  %101 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %node.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %102)
  %cmp146.not.i = icmp eq i8 %100, %102
  br i1 %cmp146.not.i, label %if.end198.i, label %if.then148.i

if.then148.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %add.ptr.le.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %add.ptr.le.lcssa.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m152.i) #10
  %105 = ptrtoint ptr %_m152.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 1152921504606848064, ptr %_m152.i, align 8
  %shr.i729.i = lshr i64 %104, 56
  %conv.i730.i = trunc i64 %shr.i729.i to i32
  %and.i731.i = and i64 %104, 72057594037927935
  %106 = ptrtoint ptr %lockname442.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lockname442.i, align 8
  %108 = ptrtoint ptr %name445.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name445.i, align 8
  %conv164.i = zext i8 %100 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m152.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1869, ptr noundef nonnull @.str.160, i32 noundef %conv.i730.i, i64 noundef %and.i731.i, i32 noundef %107, ptr noundef %109, i32 noundef %conv164.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m152.i) #10
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m170.i) #10
  %112 = ptrtoint ptr %_m170.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 1152921504606848064, ptr %_m170.i, align 8
  %shr.i732.i = lshr i64 %111, 56
  %conv.i733.i = trunc i64 %shr.i732.i to i32
  %and.i734.i = and i64 %111, 72057594037927935
  %113 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %node.i, align 1
  %conv178.i = zext i8 %114 to i32
  %115 = ptrtoint ptr %list.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %list.i, align 2
  %conv180.i = zext i8 %116 to i32
  %flags181.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 3
  %117 = ptrtoint ptr %flags181.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags181.i, align 1
  %conv182.i = zext i8 %118 to i32
  %type183.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 4
  %119 = ptrtoint ptr %type183.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %type183.i, align 4
  %conv184.i = sext i8 %120 to i32
  %convert_type185.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 5
  %121 = ptrtoint ptr %convert_type185.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %convert_type185.i, align 1
  %conv186.i = sext i8 %122 to i32
  %123 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %highest_blocked.i, align 2
  %conv188.i = sext i8 %124 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m170.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1877, ptr noundef nonnull @.str.161, i32 noundef %conv.i733.i, i64 noundef %and.i734.i, i32 noundef %conv178.i, i32 noundef %conv180.i, i32 noundef %conv182.i, i32 noundef %conv184.i, i32 noundef %conv186.i, i32 noundef %conv188.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m170.i) #10
  call void @__dlm_print_one_lock_resource(ptr noundef %3) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1879, 0\0A.popsection", ""() #10, !srcloc !473
  unreachable

if.end198.i:                                      ; preds = %if.end140.i
  %cmp199.not.i = icmp eq ptr %ret.0.i.lcssa.i, %add.ptr.i.i
  br i1 %cmp199.not.i, label %if.end221.i, label %if.then201.i

if.then201.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m204.i) #10
  %127 = ptrtoint ptr %_m204.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 1088, ptr %_m204.i, align 8
  %shr.i735.i = lshr i64 %126, 56
  %conv.i736.i = trunc i64 %shr.i735.i to i32
  %and.i737.i = and i64 %126, 72057594037927935
  %128 = ptrtoint ptr %list.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %list.i, align 2
  %conv212.i = zext i8 %129 to i32
  %130 = ptrtoint ptr %lockname442.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %lockname442.i, align 8
  %132 = ptrtoint ptr %name445.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name445.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m204.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1889, ptr noundef nonnull @.str.162, i32 noundef %conv.i736.i, i64 noundef %and.i737.i, i32 noundef %j.0837.lcssa846.i, i32 noundef %conv212.i, i32 noundef %131, ptr noundef %133) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m204.i) #10
  call void @__dlm_print_one_lock_resource(ptr noundef %3) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock416.i) #10
  br label %for.inc525.i

if.end221.i:                                      ; preds = %if.end198.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.0.lcssa845.lcssa.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end221.i.__list_del_entry.exit.i.i_crit_edge

if.end221.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %iter.0.lcssa845.lcssa.i, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i.i, align 4
  %136 = ptrtoint ptr %iter.0.lcssa845.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %iter.0.lcssa845.lcssa.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end221.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr %struct.list_head, ptr %granted.i.i, i32 %conv57.i, i32 1
  %140 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %iter.0.lcssa845.lcssa.i, ptr noundef %141, ptr noundef %add.ptr.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %iter.0.lcssa845.lcssa.i, ptr %prev.i2.i.i, align 4
  %143 = ptrtoint ptr %iter.0.lcssa845.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %add.ptr.i.i, ptr %iter.0.lcssa845.lcssa.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %iter.0.lcssa845.lcssa.i, i32 0, i32 1
  %144 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %prev3.i.i.i.i, align 4
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %iter.0.lcssa845.lcssa.i, ptr %141, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock416.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m225.i) #10
  %146 = ptrtoint ptr %_m225.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 1088, ptr %_m225.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m225.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1903, ptr noundef nonnull @.str.163) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m225.i) #10
  br label %for.inc525.i

if.end232.i:                                      ; preds = %dlm_list_num_to_pointer.exit.i
  %type233.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 4
  %147 = ptrtoint ptr %type233.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %type233.i, align 4
  %conv234.i = sext i8 %148 to i32
  %call237.i = call ptr @dlm_new_lock(i32 noundef %conv234.i, i8 noundef zeroext %63, i64 noundef %42, ptr noundef null) #10
  %tobool238.not.i = icmp eq ptr %call237.i, null
  br i1 %tobool238.not.i, label %if.end232.i.leave.i_crit_edge, label %if.end240.i

if.end232.i.leave.i_crit_edge:                    ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave.i

if.end240.i:                                      ; preds = %if.end232.i
  %lksb241.i = getelementptr inbounds %struct.dlm_lock, ptr %call237.i, i32 0, i32 10
  %149 = ptrtoint ptr %lksb241.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lksb241.i, align 8
  call void @dlm_lock_attach_lockres(ptr noundef nonnull %call237.i, ptr noundef %3) #10
  %convert_type242.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 5
  %151 = ptrtoint ptr %convert_type242.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %convert_type242.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %152)
  %cmp244.not.i = icmp eq i8 %152, -1
  br i1 %cmp244.not.i, label %if.end240.i.if.end269.i_crit_edge, label %do.body247.i

if.end240.i.if.end269.i_crit_edge:                ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269.i

do.body247.i:                                     ; preds = %if.end240.i
  %cmp248.not.i = icmp eq ptr %add.ptr.i.i, %converting.i
  br i1 %cmp248.not.i, label %do.end265.i, label %do.body257.i, !prof !433

do.body257.i:                                     ; preds = %do.body247.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1918, 0\0A.popsection", ""() #10, !srcloc !474
  unreachable

do.end265.i:                                      ; preds = %do.body247.i
  call void @__sanitizer_cov_trace_pc() #12
  %convert_type268.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call237.i, i32 0, i32 5
  %153 = ptrtoint ptr %convert_type268.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %convert_type268.i, align 1
  br label %if.end269.i

if.end269.i:                                      ; preds = %do.end265.i, %if.end240.i.if.end269.i_crit_edge
  %flags270.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 8, i32 %i.0841.i, i32 3
  %154 = ptrtoint ptr %flags270.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %flags270.i, align 1
  %156 = and i8 %155, 6
  %and272.i = zext i8 %156 to i32
  %flags273.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %150, i32 0, i32 1
  %157 = ptrtoint ptr %flags273.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags273.i, align 4
  %or.i = or i32 %158, %and272.i
  store i32 %or.i, ptr %flags273.i, align 4
  %159 = ptrtoint ptr %type233.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %type233.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp276.i = icmp eq i8 %160, 0
  br i1 %cmp276.i, label %if.end269.i.skip_lvb.i_crit_edge, label %if.end279.i

if.end269.i.skip_lvb.i_crit_edge:                 ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_lvb.i

if.end279.i:                                      ; preds = %if.end269.i
  %161 = ptrtoint ptr %list.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %list.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %162)
  %cmp282.i = icmp eq i8 %162, 2
  br i1 %cmp282.i, label %if.end279.i.skip_lvb.i_crit_edge, label %if.end279.i.for.body.i.i_crit_edge

if.end279.i.for.body.i.i_crit_edge:               ; preds = %if.end279.i
  br label %for.body.i.i

if.end279.i.skip_lvb.i_crit_edge:                 ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_lvb.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.cond.i.i.skip_lvb.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.skip_lvb.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_lvb.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end279.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end279.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %lvb.i, i32 %i.03.i.i
  %163 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.then289.i

if.then289.i:                                     ; preds = %for.body.i.i
  %and291.i = and i32 %or.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291.i)
  %tobool292.not.i = icmp eq i32 %and291.i, 0
  br i1 %tobool292.not.i, label %do.body302.i, label %if.then293.i

if.then293.i:                                     ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #12
  %lvb294.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %150, i32 0, i32 3
  %165 = call ptr @memcpy(ptr %lvb294.i, ptr %lvb.i, i32 64)
  br label %skip_lvb.sink.split.i

do.body302.i:                                     ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %160)
  %cmp305.not.not.i = icmp eq i8 %160, 5
  %166 = zext i8 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %160, label %do.body318.i [
    i8 5, label %do.body302.i.for.body.i745.i.preheader_crit_edge
    i8 3, label %do.body302.i.for.body.i745.i.preheader_crit_edge612
  ]

do.body302.i.for.body.i745.i.preheader_crit_edge612: ; preds = %do.body302.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i745.i.preheader

do.body302.i.for.body.i745.i.preheader_crit_edge: ; preds = %do.body302.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i745.i.preheader

for.body.i745.i.preheader:                        ; preds = %do.body302.i.for.body.i745.i.preheader_crit_edge, %do.body302.i.for.body.i745.i.preheader_crit_edge612
  br label %for.body.i745.i

do.body318.i:                                     ; preds = %do.body302.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1949, 0\0A.popsection", ""() #10, !srcloc !475
  unreachable

for.cond.i741.i:                                  ; preds = %for.body.i745.i
  %inc.i739.i = add nuw nsw i32 %i.03.i742.i, 1
  %exitcond.not.i740.i = icmp eq i32 %inc.i739.i, 64
  br i1 %exitcond.not.i740.i, label %for.cond.i741.i.skip_lvb.sink.split.i_crit_edge, label %for.cond.i741.i.for.body.i745.i_crit_edge

for.cond.i741.i.for.body.i745.i_crit_edge:        ; preds = %for.cond.i741.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i745.i

for.cond.i741.i.skip_lvb.sink.split.i_crit_edge:  ; preds = %for.cond.i741.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_lvb.sink.split.i

for.body.i745.i:                                  ; preds = %for.cond.i741.i.for.body.i745.i_crit_edge, %for.body.i745.i.preheader
  %i.03.i742.i = phi i32 [ %inc.i739.i, %for.cond.i741.i.for.body.i745.i_crit_edge ], [ 0, %for.body.i745.i.preheader ]
  %arrayidx.i743.i = getelementptr i8, ptr %lvb298.i, i32 %i.03.i742.i
  %167 = ptrtoint ptr %arrayidx.i743.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx.i743.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i744.i = icmp eq i8 %168, 0
  br i1 %tobool.not.i744.i, label %for.cond.i741.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i745.i
  br i1 %cmp305.not.not.i, label %land.lhs.true.i.if.then341.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then341.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then341.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(64) %lvb298.i, ptr noundef dereferenceable(64) %lvb.i, i32 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool340.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool340.not.i, label %lor.lhs.false.i.skip_lvb.sink.split.i_crit_edge, label %lor.lhs.false.i.if.then341.i_crit_edge

lor.lhs.false.i.if.then341.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then341.i

lor.lhs.false.i.skip_lvb.sink.split.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_lvb.sink.split.i

if.then341.i:                                     ; preds = %lor.lhs.false.i.if.then341.i_crit_edge, %land.lhs.true.i.if.then341.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m344.i) #10
  %169 = ptrtoint ptr %_m344.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 1152921504606848064, ptr %_m344.i, align 8
  %170 = ptrtoint ptr %name441.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %name441.i, align 4
  %172 = ptrtoint ptr %lockname442.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %lockname442.i, align 8
  %174 = ptrtoint ptr %name445.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %name445.i, align 8
  %conv354.i = sext i8 %160 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m344.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1957, ptr noundef nonnull @.str.164, ptr noundef %171, i32 noundef %173, ptr noundef %175, i32 noundef %conv354.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m344.i) #10
  %call362.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #13
  br label %do.end369.i

do.end369.i:                                      ; preds = %do.end369.i.do.end369.i_crit_edge, %if.then341.i
  %i342.0843.i = phi i32 [ 0, %if.then341.i ], [ %inc376.i, %do.end369.i.do.end369.i_crit_edge ]
  %arrayidx372.i = getelementptr %struct.dlm_lock_resource, ptr %3, i32 0, i32 18, i32 %i342.0843.i
  %176 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx372.i, align 1
  %conv373.i = zext i8 %177 to i32
  %call374.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %conv373.i) #13
  %inc376.i = add nuw nsw i32 %i342.0843.i, 1
  %exitcond.not.i = icmp eq i32 %inc376.i, 64
  br i1 %exitcond.not.i, label %do.end380.i, label %do.end369.i.do.end369.i_crit_edge

do.end369.i.do.end369.i_crit_edge:                ; preds = %do.end369.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end369.i

do.end380.i:                                      ; preds = %do.end369.i
  %call382.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #13
  br label %do.end389.i

do.end389.i:                                      ; preds = %do.end389.i.do.end389.i_crit_edge, %do.end380.i
  %i342.1844.i = phi i32 [ 0, %do.end380.i ], [ %inc396.i, %do.end389.i.do.end389.i_crit_edge ]
  %arrayidx392.i = getelementptr %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 7, i32 %i342.1844.i
  %178 = ptrtoint ptr %arrayidx392.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx392.i, align 1
  %conv393.i = zext i8 %179 to i32
  %call394.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %conv393.i) #13
  %inc396.i = add nuw nsw i32 %i342.1844.i, 1
  %exitcond968.not.i = icmp eq i32 %inc396.i, 64
  br i1 %exitcond968.not.i, label %do.end400.i, label %do.end389.i.do.end389.i_crit_edge

do.end389.i.do.end389.i_crit_edge:                ; preds = %do.end389.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end389.i

do.end400.i:                                      ; preds = %do.end389.i
  call void @__sanitizer_cov_trace_pc() #12
  %call402.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #13
  call void @dlm_print_one_lock_resource(ptr noundef %3) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1966, 0\0A.popsection", ""() #10, !srcloc !476
  unreachable

skip_lvb.sink.split.i:                            ; preds = %lor.lhs.false.i.skip_lvb.sink.split.i_crit_edge, %for.cond.i741.i.skip_lvb.sink.split.i_crit_edge, %if.then293.i
  %180 = call ptr @memcpy(ptr %lvb298.i, ptr %lvb.i, i32 64)
  br label %skip_lvb.i

skip_lvb.i:                                       ; preds = %skip_lvb.sink.split.i, %for.cond.i.i.skip_lvb.i_crit_edge, %if.end279.i.skip_lvb.i_crit_edge, %if.end269.i.skip_lvb.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %spinlock416.i) #10
  br label %for.cond421.i

for.cond421.i:                                    ; preds = %for.body427.i.for.cond421.i_crit_edge, %skip_lvb.i
  %.pn.in.i = phi ptr [ %add.ptr.i.i, %skip_lvb.i ], [ %.pn.i, %for.body427.i.for.cond421.i_crit_edge ]
  %181 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp423.not.i = icmp eq ptr %.pn.i, %add.ptr.i.i
  br i1 %cmp423.not.i, label %if.then482.critedge.i, label %for.body427.i

for.body427.i:                                    ; preds = %for.cond421.i
  %lock.4.i = getelementptr i8, ptr %.pn.i, i32 -16
  %182 = ptrtoint ptr %lock.4.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %lock.4.i, align 8
  %184 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %arrayidx.i, align 8
  %cmp431.i = icmp eq i64 %183, %185
  br i1 %cmp431.i, label %if.then433.i, label %for.body427.i.for.cond421.i_crit_edge

for.body427.i.for.cond421.i_crit_edge:            ; preds = %for.body427.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond421.i

if.then433.i:                                     ; preds = %for.body427.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m437.i) #10
  %186 = ptrtoint ptr %_m437.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 1152921504606848064, ptr %_m437.i, align 8
  %187 = ptrtoint ptr %name441.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %name441.i, align 4
  %189 = ptrtoint ptr %lockname442.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %lockname442.i, align 8
  %191 = ptrtoint ptr %name445.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %name445.i, align 8
  %shr.i748.i = lshr i64 %183, 56
  %conv.i749.i = trunc i64 %shr.i748.i to i32
  %and.i750.i = and i64 %183, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m437.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 1998, ptr noundef nonnull @.str.177, ptr noundef %188, i32 noundef %190, ptr noundef %192, i32 noundef %conv.i749.i, i64 noundef %and.i750.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m437.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m453.i) #10
  %193 = ptrtoint ptr %_m453.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 2305843009213695040, ptr %_m453.i, align 8
  %194 = ptrtoint ptr %type233.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %type233.i, align 4
  %conv458.i = sext i8 %195 to i32
  %196 = ptrtoint ptr %convert_type242.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %convert_type242.i, align 1
  %conv460.i = sext i8 %197 to i32
  %198 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %node.i, align 1
  %conv462.i = zext i8 %199 to i32
  %200 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %arrayidx.i, align 8
  %shr.i751.i = lshr i64 %201, 56
  %conv.i752.i = trunc i64 %shr.i751.i to i32
  %and.i753.i = and i64 %201, 72057594037927935
  %202 = ptrtoint ptr %list.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %list.i, align 2
  %conv469.i = zext i8 %203 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m453.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 2005, ptr noundef nonnull @.str.178, i32 noundef %conv458.i, i32 noundef %conv460.i, i32 noundef %conv462.i, i32 noundef %conv.i752.i, i64 noundef %and.i753.i, i32 noundef %conv469.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m453.i) #10
  call void @__dlm_print_one_lock_resource(ptr noundef %3) #10
  br label %if.end523.i

if.then482.critedge.i:                            ; preds = %for.cond421.i
  call void @dlm_lock_get(ptr noundef nonnull %call237.i) #10
  %204 = ptrtoint ptr %flags483.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %flags483.i, align 1
  %206 = and i8 %205, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool486.not.i = icmp eq i8 %206, 0
  br i1 %tobool486.not.i, label %if.then482.critedge.i.if.else503.i_crit_edge, label %land.lhs.true487.i

if.then482.critedge.i.if.else503.i_crit_edge:     ; preds = %if.then482.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else503.i

land.lhs.true487.i:                               ; preds = %if.then482.critedge.i
  %207 = ptrtoint ptr %list.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %list.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %208)
  %cmp490.i = icmp eq i8 %208, 1
  br i1 %cmp490.i, label %land.lhs.true492.i, label %land.lhs.true487.i.if.else503.i_crit_edge

land.lhs.true487.i.if.else503.i_crit_edge:        ; preds = %land.lhs.true487.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else503.i

land.lhs.true492.i:                               ; preds = %land.lhs.true487.i
  %type494.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call237.i, i32 0, i32 4
  %209 = ptrtoint ptr %type494.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %type494.i, align 4
  %convert_type497.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call237.i, i32 0, i32 5
  %211 = ptrtoint ptr %convert_type497.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %convert_type497.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %210, i8 %212)
  %cmp499.i = icmp sgt i8 %210, %212
  br i1 %cmp499.i, label %if.then501.i, label %land.lhs.true492.i.if.else503.i_crit_edge

land.lhs.true492.i.if.else503.i_crit_edge:        ; preds = %land.lhs.true492.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else503.i

if.then501.i:                                     ; preds = %land.lhs.true492.i
  %list502.i = getelementptr inbounds %struct.dlm_lock, ptr %call237.i, i32 0, i32 1
  %213 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %add.ptr.i.i, align 4
  %call.i.i754.i = call zeroext i1 @__list_add_valid(ptr noundef %list502.i, ptr noundef %add.ptr.i.i, ptr noundef %214) #10
  br i1 %call.i.i754.i, label %if.end.i.i755.i, label %if.then501.i.do.body506.i_crit_edge

if.then501.i.do.body506.i_crit_edge:              ; preds = %if.then501.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body506.i

if.end.i.i755.i:                                  ; preds = %if.then501.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %list502.i, ptr %prev1.i.i.i, align 4
  %216 = ptrtoint ptr %list502.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %214, ptr %list502.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dlm_lock, ptr %call237.i, i32 0, i32 1, i32 1
  %217 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %add.ptr.i.i, ptr %prev3.i.i.i, align 4
  %218 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %list502.i, ptr %add.ptr.i.i, align 4
  br label %do.body506.i

if.else503.i:                                     ; preds = %land.lhs.true492.i.if.else503.i_crit_edge, %land.lhs.true487.i.if.else503.i_crit_edge, %if.then482.critedge.i.if.else503.i_crit_edge
  %list504.i = getelementptr inbounds %struct.dlm_lock, ptr %call237.i, i32 0, i32 1
  %prev.i.i = getelementptr %struct.list_head, ptr %granted.i.i, i32 %conv57.i, i32 1
  %219 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %prev.i.i, align 4
  %call.i.i756.i = call zeroext i1 @__list_add_valid(ptr noundef %list504.i, ptr noundef %220, ptr noundef %add.ptr.i.i) #10
  br i1 %call.i.i756.i, label %if.end.i.i758.i, label %if.else503.i.do.body506.i_crit_edge

if.else503.i.do.body506.i_crit_edge:              ; preds = %if.else503.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body506.i

if.end.i.i758.i:                                  ; preds = %if.else503.i
  call void @__sanitizer_cov_trace_pc() #12
  %221 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %list504.i, ptr %prev.i.i, align 4
  %222 = ptrtoint ptr %list504.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %add.ptr.i.i, ptr %list504.i, align 4
  %prev3.i.i757.i = getelementptr inbounds %struct.dlm_lock, ptr %call237.i, i32 0, i32 1, i32 1
  %223 = ptrtoint ptr %prev3.i.i757.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %220, ptr %prev3.i.i757.i, align 4
  %224 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %list504.i, ptr %220, align 4
  br label %do.body506.i

do.body506.i:                                     ; preds = %if.end.i.i758.i, %if.else503.i.do.body506.i_crit_edge, %if.end.i.i755.i, %if.then501.i.do.body506.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m507.i) #10
  %225 = ptrtoint ptr %_m507.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 1088, ptr %_m507.i, align 8
  %226 = ptrtoint ptr %name441.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %name441.i, align 4
  %228 = ptrtoint ptr %lockname442.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %lockname442.i, align 8
  %230 = ptrtoint ptr %name445.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name445.i, align 8
  %232 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %node.i, align 1
  %conv517.i = zext i8 %233 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m507.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 2025, ptr noundef nonnull @.str.179, ptr noundef %227, i32 noundef %229, ptr noundef %231, i32 noundef %conv517.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m507.i) #10
  %234 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %node.i, align 1
  %conv522.i = zext i8 %235 to i32
  call void @dlm_lockres_set_refmap_bit(ptr noundef %1, ptr noundef %3, i32 noundef %conv522.i) #10
  br label %if.end523.i

if.end523.i:                                      ; preds = %do.body506.i, %if.then433.i
  call void @_raw_spin_unlock(ptr noundef %spinlock416.i) #10
  br label %for.inc525.i

for.inc525.i:                                     ; preds = %if.end523.i, %list_move_tail.exit.i, %if.then201.i
  %inc526.i = add nuw nsw i32 %i.0841.i, 1
  %236 = ptrtoint ptr %num_locks.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %num_locks.i, align 2
  %conv2.i = zext i8 %237 to i32
  %cmp.i141 = icmp ult i32 %inc526.i, %conv2.i
  br i1 %cmp.i141, label %for.inc525.i.for.body.i_crit_edge, label %for.inc525.i.do.body528.i_crit_edge

for.inc525.i.do.body528.i_crit_edge:              ; preds = %for.inc525.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body528.i

for.inc525.i.for.body.i_crit_edge:                ; preds = %for.inc525.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.body528.i:                                     ; preds = %for.inc525.i.do.body528.i_crit_edge, %do.body24.i, %if.end40.do.body528.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m529.i) #10
  %238 = ptrtoint ptr %_m529.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 1088, ptr %_m529.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m529.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 2030, ptr noundef nonnull @.str.180) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m529.i) #10
  br label %leave.i

leave.i:                                          ; preds = %do.body528.i, %if.end232.i.leave.i_crit_edge
  %cmp538.i = phi i1 [ false, %do.body528.i ], [ true, %if.end232.i.leave.i_crit_edge ]
  %ret.0.i = phi i32 [ 0, %do.body528.i ], [ -12, %if.end232.i.leave.i_crit_edge ]
  %spinlock536.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock536.i) #10
  call void @dlm_lockres_drop_inflight_ref(ptr noundef %1, ptr noundef %3) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock536.i) #10
  br i1 %cmp538.i, label %do.body556.i, label %do.body54

do.body556.i:                                     ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m557.i) #10
  %239 = ptrtoint ptr %_m557.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 1152921504606848064, ptr %_m557.i, align 8
  %conv561.i = sext i32 %ret.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m557.i, ptr noundef nonnull @__func__.dlm_process_recovery_data, i32 noundef 2039, ptr noundef nonnull @.str.3, i64 noundef %conv561.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m557.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46) #10
  %240 = ptrtoint ptr %_m46 to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 1088, ptr %_m46, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46, ptr noundef nonnull @__func__.dlm_mig_lockres_worker, i32 noundef 1578, ptr noundef nonnull @.str.154, i32 noundef %ret.0.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46) #10
  br label %if.end62

do.body54:                                        ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #10
  %241 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 1088, ptr %_m55, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.dlm_mig_lockres_worker, i32 noundef 1580, ptr noundef nonnull @.str.155) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #10
  br label %if.end62

if.end62:                                         ; preds = %do.body54, %do.body556.i
  %flags = getelementptr inbounds %struct.dlm_migratable_lockres, ptr %data, i32 0, i32 3
  %242 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %flags, align 1
  %244 = and i8 %243, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %244)
  %cmp65 = icmp eq i8 %244, 6
  br i1 %cmp65, label %if.then67, label %if.end62.leave_crit_edge

if.end62.leave_crit_edge:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then67:                                        ; preds = %if.end62
  %245 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %data, align 8
  %call68 = call i32 @dlm_finish_migration(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %246) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.then67.leave_crit_edge

if.then67.leave_crit_edge:                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then71:                                        ; preds = %if.then67
  %247 = zext i32 %call68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %call68, label %do.body86 [
    i32 -512, label %if.then71.leave_crit_edge
    i32 -4, label %if.then71.leave_crit_edge613
    i32 -28, label %if.then71.leave_crit_edge614
    i32 -122, label %if.then71.leave_crit_edge615
  ]

if.then71.leave_crit_edge615:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then71.leave_crit_edge614:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then71.leave_crit_edge613:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then71.leave_crit_edge:                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body86:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m87) #10
  %248 = ptrtoint ptr %_m87 to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 1152921504606848064, ptr %_m87, align 8
  %conv91 = sext i32 %call68 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m87, ptr noundef nonnull @__func__.dlm_mig_lockres_worker, i32 noundef 1586, ptr noundef nonnull @.str.3, i64 noundef %conv91) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m87) #10
  br label %leave

leave:                                            ; preds = %do.body86, %if.then71.leave_crit_edge, %if.then71.leave_crit_edge613, %if.then71.leave_crit_edge614, %if.then71.leave_crit_edge615, %if.then67.leave_crit_edge, %if.end62.leave_crit_edge, %if.else
  %tobool98.not = icmp eq ptr %3, null
  br i1 %tobool98.not, label %leave.if.end103_crit_edge, label %if.then99

leave.if.end103_crit_edge:                        ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then99:                                        ; preds = %leave
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool100.not = icmp eq i8 %8, 0
  br i1 %tobool100.not, label %if.then99.if.end102_crit_edge, label %if.then101

if.then99.if.end102_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then101:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_lockres_put(ptr noundef nonnull %3) #10
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.then99.if.end102_crit_edge
  call void @dlm_lockres_put(ptr noundef nonnull %3) #10
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %leave.if.end103_crit_edge
  call void @kfree(ptr noundef %data) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %real_master) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_do_master_requery(ptr nocapture noundef readonly %dlm, ptr nocapture noundef readonly %res, i8 noundef zeroext %nodenum, ptr nocapture noundef %real_master) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.dlm_master_requery, align 4
  %status = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m27 = alloca i64, align 8
  %_m74 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %req) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %status, align 4
  %1 = call ptr @memset(ptr %req, i32 0, i32 72)
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %2 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %node_num, align 4
  %node_idx = getelementptr inbounds %struct.dlm_master_requery, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %node_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %node_idx, align 2
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %5 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lockname, align 8
  %conv = trunc i32 %6 to i8
  %namelen = getelementptr inbounds %struct.dlm_master_requery, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %namelen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %namelen, align 1
  %name = getelementptr inbounds %struct.dlm_master_requery, ptr %req, i32 0, i32 5
  %name2 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name2, align 8
  %10 = call ptr @memcpy(ptr %name, ptr %9, i32 %6)
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key, align 4
  %call102 = call i32 @o2net_send_message(i32 noundef 514, i32 noundef %12, ptr noundef nonnull %req, i32 noundef 72, i8 noundef zeroext %nodenum, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %entry.do.body_crit_edge, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  br label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %do.body26.do.body_crit_edge, %entry.do.body_crit_edge
  %call.lcssa = phi i32 [ %call102, %entry.do.body_crit_edge ], [ %call, %do.body26.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606848064, ptr %_m, align 8
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key, align 4
  %conv8 = zext i8 %nodenum to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_do_master_requery, i32 noundef 1677, ptr noundef nonnull @.str.33, i32 noundef %call.lcssa, i32 noundef 514, i32 noundef %15, i32 noundef %conv8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end84

if.else:                                          ; preds = %do.body26.if.else_crit_edge, %entry.if.else_crit_edge
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %17)
  %cmp9 = icmp eq i32 %17, -12
  br i1 %cmp9, label %do.body26, label %do.body37

do.body26:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27) #10
  %18 = ptrtoint ptr %_m27 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606848064, ptr %_m27, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27, ptr noundef nonnull @__func__.dlm_do_master_requery, i32 noundef 1679, ptr noundef nonnull @.str.3, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27) #10
  call void @msleep(i32 noundef 50) #10
  %19 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key, align 4
  %call = call i32 @o2net_send_message(i32 noundef 514, i32 noundef %20, ptr noundef nonnull %req, i32 noundef 72, i8 noundef zeroext %nodenum, ptr noundef nonnull %status) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body26.do.body_crit_edge, label %do.body26.if.else_crit_edge

do.body26.if.else_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body26.do.body_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp38 = icmp slt i32 %17, 0
  br i1 %cmp38, label %do.body43, label %do.body52, !prof !435

do.body43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1683, 0\0A.popsection", ""() #10, !srcloc !477
  unreachable

do.body52:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp53 = icmp ugt i32 %17, 255
  br i1 %cmp53, label %do.body62, label %do.end70, !prof !435

do.body62:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1684, 0\0A.popsection", ""() #10, !srcloc !478
  unreachable

do.end70:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %conv72 = trunc i32 %17 to i8
  %21 = ptrtoint ptr %real_master to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv72, ptr %real_master, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #10
  %22 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1088, ptr %_m74, align 8
  %conv78 = zext i8 %nodenum to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.dlm_do_master_requery, i32 noundef 1687, ptr noundef nonnull @.str.34, i32 noundef %conv78, i32 noundef %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #10
  br label %if.end84

if.end84:                                         ; preds = %do.end70, %do.body
  %ret.0 = phi i32 [ %call.lcssa, %do.body ], [ 0, %do.end70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %req) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_send_message(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_master_requery_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup50_crit_edge, label %if.end

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %name = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %namelen = getelementptr inbounds %struct.dlm_master_requery, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %namelen, align 1
  %conv = zext i8 %1 to i32
  %call2 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name, i32 noundef %conv) #17
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %2 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %namelen, align 1
  %conv6 = zext i8 %3 to i32
  %call7 = tail call ptr @__dlm_lookup_lockres(ptr noundef %data, ptr noundef %name, i32 noundef %conv6, i32 noundef %call2) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.if.then48_crit_edge, label %if.then9

if.end.if.then48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.then9:                                         ; preds = %if.end
  %spinlock10 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7, i32 0, i32 16
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %owner, align 4
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %6 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp = icmp eq i8 %5, %7
  br i1 %cmp, label %if.then14, label %if.else42

if.then14:                                        ; preds = %if.then9
  %call15 = tail call i32 @dlm_dispatch_assert_master(ptr noundef %data, ptr noundef nonnull %call7, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end45

if.then18:                                        ; preds = %if.then14
  %8 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %call15, label %do.body [
    i32 -512, label %if.then18.cleanup.thread_crit_edge
    i32 -4, label %if.then18.cleanup.thread_crit_edge94
    i32 -28, label %if.then18.cleanup.thread_crit_edge95
    i32 -122, label %if.then18.cleanup.thread_crit_edge96
  ]

if.then18.cleanup.thread_crit_edge96:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then18.cleanup.thread_crit_edge95:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then18.cleanup.thread_crit_edge94:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then18.cleanup.thread_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.body:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606848064, ptr %_m, align 8
  %conv35 = sext i32 %call15 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_master_requery_handler, i32 noundef 1725, ptr noundef nonnull @.str.3, i64 noundef %conv35) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.body, %if.then18.cleanup.thread_crit_edge, %if.then18.cleanup.thread_crit_edge94, %if.then18.cleanup.thread_crit_edge95, %if.then18.cleanup.thread_crit_edge96
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call7) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup50

if.else42:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  tail call void @dlm_lockres_put(ptr noundef nonnull %call7) #10
  %phi.cast = zext i8 %5 to i32
  br label %if.then48

if.end45:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dlm_lockres_grab_inflight_worker(ptr noundef %data, ptr noundef nonnull %call7) #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  %master.0 = zext i8 %5 to i32
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %cleanup50

if.then48:                                        ; preds = %if.else42, %if.end.if.then48_crit_edge
  %master.0.shrunk.ph = phi i32 [ 255, %if.end.if.then48_crit_edge ], [ %phi.cast, %if.else42 ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  tail call void @dlm_put(ptr noundef %data) #10
  br label %cleanup50

cleanup50:                                        ; preds = %if.then48, %if.end45, %cleanup.thread, %entry.cleanup50_crit_edge
  %retval.1 = phi i32 [ 255, %entry.cleanup50_crit_edge ], [ %master.0.shrunk.ph, %if.then48 ], [ %master.0, %if.end45 ], [ %call15, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dlm_lookup_lockres(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_dispatch_assert_master(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_lockres_grab_inflight_worker(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_move_lockres_to_recovery_list(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i261 = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m65 = alloca i64, align 8
  %_m105 = alloca i64, align 8
  %_m147 = alloca i64, align 8
  %_m189 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body10, !prof !435

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2051, 0\0A.popsection", ""() #10, !srcloc !479
  unreachable

do.body10:                                        ; preds = %entry
  %spinlock11 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i261)
  %2 = ptrtoint ptr %spinlock11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i262 = load volatile i32, ptr %spinlock11, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i261 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i262, ptr %agg.tmp.sroa.0.i261, align 4
  %lock.sroa.0.0.extract.shift.i.i263 = lshr i32 %agg.tmp.sroa.0.0.copyload.i262, 16
  %conv.i.i264 = and i32 %agg.tmp.sroa.0.0.copyload.i262, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i264, i32 %lock.sroa.0.0.extract.shift.i.i263)
  %cmp.i.i265.not = icmp eq i32 %conv.i.i264, %lock.sroa.0.0.extract.shift.i.i263
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i261)
  br i1 %cmp.i.i265.not, label %do.body24, label %do.end32, !prof !435

do.body24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2052, 0\0A.popsection", ""() #10, !srcloc !480
  unreachable

do.end32:                                         ; preds = %do.body10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %state, align 2
  %6 = or i16 %5, 2
  store i16 %6, ptr %state, align 2
  %recovering = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 8
  %7 = ptrtoint ptr %recovering to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %recovering, align 4
  %cmp.i.not = icmp eq ptr %8, %recovering
  br i1 %cmp.i.not, label %do.end32.if.end46_crit_edge, label %do.body37

do.end32.if.end46_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body37:                                        ; preds = %do.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %12 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lockname, align 8
  %name41 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name41, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_move_lockres_to_recovery_list, i32 noundef 2057, ptr noundef nonnull @.str.35, ptr noundef %11, i32 noundef %13, ptr noundef %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %recovering) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body37.list_del_init.exit_crit_edge

do.body37.list_del_init.exit_crit_edge:           ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %recovering to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recovering, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body37.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %recovering to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %recovering, ptr %recovering, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %recovering, ptr %prev.i3.i, align 4
  call void @dlm_lockres_put(ptr noundef %res) #10
  br label %if.end46

if.end46:                                         ; preds = %list_del_init.exit, %do.end32.if.end46_crit_edge
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #10
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #10, !srcloc !463
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end46.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !435

if.end46.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end46
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !433

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end46.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end46.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %reco = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i267 = call zeroext i1 @__list_add_valid(ptr noundef %recovering, ptr noundef %27, ptr noundef %reco) #10
  br i1 %call.i.i267, label %if.end.i.i268, label %dlm_lockres_get.exit.list_add_tail.exit_crit_edge

dlm_lockres_get.exit.list_add_tail.exit_crit_edge: ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i268:                                    ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %recovering, ptr %prev.i, align 4
  %29 = ptrtoint ptr %recovering to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %reco, ptr %recovering, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %recovering, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i268, %dlm_lockres_get.exit.list_add_tail.exit_crit_edge
  %blocked.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %converting.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %lockname69 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %name72 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc213.for.body_crit_edge, %list_add_tail.exit
  %i.0276 = phi i32 [ 2, %list_add_tail.exit ], [ %dec, %for.inc213.for.body_crit_edge ]
  %32 = zext i32 %i.0276 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %i.0276, label %do.body.i [
    i32 0, label %for.body.dlm_list_idx_to_ptr.exit_crit_edge
    i32 1, label %if.then2.i
    i32 2, label %if.then5.i
  ]

for.body.dlm_list_idx_to_ptr.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit

if.then2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit

if.then5.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 398, 0\0A.popsection", ""() #10, !srcloc !454
  unreachable

dlm_list_idx_to_ptr.exit:                         ; preds = %if.then5.i, %if.then2.i, %for.body.dlm_list_idx_to_ptr.exit_crit_edge
  %ret.0.i = phi ptr [ %converting.i, %if.then2.i ], [ %blocked.i, %if.then5.i ], [ %granted.i, %for.body.dlm_list_idx_to_ptr.exit_crit_edge ]
  %33 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ret.0.i, align 4
  %cmp57.not271 = icmp eq ptr %34, %ret.0.i
  br i1 %cmp57.not271, label %dlm_list_idx_to_ptr.exit.for.inc213_crit_edge, label %for.body61.lr.ph

dlm_list_idx_to_ptr.exit.for.inc213_crit_edge:    ; preds = %dlm_list_idx_to_ptr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc213

for.body61.lr.ph:                                 ; preds = %dlm_list_idx_to_ptr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0276)
  %cmp86.not = icmp eq i32 %i.0276, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0276)
  %cmp128.not = icmp eq i32 %i.0276, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0276)
  %cmp170.not = icmp eq i32 %i.0276, 1
  br label %for.body61

for.body61:                                       ; preds = %if.end207.for.body61_crit_edge, %for.body61.lr.ph
  %.pn.in272 = phi ptr [ %34, %for.body61.lr.ph ], [ %.pn275, %if.end207.for.body61_crit_edge ]
  %lock.0273 = getelementptr i8, ptr %.pn.in272, i32 -16
  %35 = ptrtoint ptr %.pn.in272 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn275 = load ptr, ptr %.pn.in272, align 8
  call void @dlm_lock_get(ptr noundef %lock.0273) #10
  %convert_pending = getelementptr i8, ptr %.pn.in272, i32 92
  %36 = ptrtoint ptr %convert_pending to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %convert_pending, align 4
  %37 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool62.not = icmp eq i8 %37, 0
  br i1 %tobool62.not, label %if.else, label %do.body64

do.body64:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #10
  %38 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1088, ptr %_m65, align 8
  %39 = ptrtoint ptr %lockname69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lockname69, align 8
  %41 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name72, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @__func__.dlm_move_lockres_to_recovery_list, i32 noundef 2074, ptr noundef nonnull @.str.36, i32 noundef %40, ptr noundef %42) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #10
  call void @dlm_revert_pending_convert(ptr noundef %res, ptr noundef %lock.0273) #10
  br label %if.end207.sink.split

if.else:                                          ; preds = %for.body61
  %43 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool83.not = icmp eq i8 %43, 0
  br i1 %tobool83.not, label %if.else120, label %do.body85

do.body85:                                        ; preds = %if.else
  br i1 %cmp86.not, label %do.body104, label %do.body95, !prof !433

do.body95:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2079, 0\0A.popsection", ""() #10, !srcloc !481
  unreachable

do.body104:                                       ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m105) #10
  %44 = ptrtoint ptr %_m105 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 1088, ptr %_m105, align 8
  %45 = ptrtoint ptr %lockname69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lockname69, align 8
  %47 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name72, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m105, ptr noundef nonnull @__func__.dlm_move_lockres_to_recovery_list, i32 noundef 2082, ptr noundef nonnull @.str.37, i32 noundef %46, ptr noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m105) #10
  call void @dlm_revert_pending_lock(ptr noundef %res, ptr noundef %lock.0273) #10
  br label %if.end207.sink.split

if.else120:                                       ; preds = %if.else
  %49 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool125.not = icmp eq i8 %49, 0
  br i1 %tobool125.not, label %if.else162, label %do.body127

do.body127:                                       ; preds = %if.else120
  br i1 %cmp128.not, label %do.body146, label %do.body137, !prof !433

do.body137:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2100, 0\0A.popsection", ""() #10, !srcloc !482
  unreachable

do.body146:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m147) #10
  %50 = ptrtoint ptr %_m147 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1088, ptr %_m147, align 8
  %51 = ptrtoint ptr %lockname69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lockname69, align 8
  %53 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name72, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m147, ptr noundef nonnull @__func__.dlm_move_lockres_to_recovery_list, i32 noundef 2103, ptr noundef nonnull @.str.38, i32 noundef %52, ptr noundef %54) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m147) #10
  call void @dlm_commit_pending_unlock(ptr noundef %res, ptr noundef %lock.0273) #10
  br label %if.end207.sink.split

if.else162:                                       ; preds = %if.else120
  %55 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool167.not = icmp eq i8 %55, 0
  br i1 %tobool167.not, label %if.else162.if.end207_crit_edge, label %do.body169

if.else162.if.end207_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

do.body169:                                       ; preds = %if.else162
  br i1 %cmp170.not, label %do.body188, label %do.body179, !prof !433

do.body179:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2111, 0\0A.popsection", ""() #10, !srcloc !483
  unreachable

do.body188:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m189) #10
  %56 = ptrtoint ptr %_m189 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1088, ptr %_m189, align 8
  %57 = ptrtoint ptr %lockname69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lockname69, align 8
  %59 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name72, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m189, ptr noundef nonnull @__func__.dlm_move_lockres_to_recovery_list, i32 noundef 2114, ptr noundef nonnull @.str.39, i32 noundef %58, ptr noundef %60) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m189) #10
  call void @dlm_commit_pending_cancel(ptr noundef %res, ptr noundef %lock.0273) #10
  br label %if.end207.sink.split

if.end207.sink.split:                             ; preds = %do.body188, %do.body146, %do.body104, %do.body64
  %.sink = phi i8 [ -17, %do.body104 ], [ -9, %do.body188 ], [ -5, %do.body146 ], [ -33, %do.body64 ]
  %61 = ptrtoint ptr %convert_pending to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load117 = load i8, ptr %convert_pending, align 4
  %bf.clear118 = and i8 %bf.load117, %.sink
  store i8 %bf.clear118, ptr %convert_pending, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.end207.sink.split, %if.else162.if.end207_crit_edge
  call void @dlm_lock_put(ptr noundef %lock.0273) #10
  %cmp57.not = icmp eq ptr %.pn275, %ret.0.i
  br i1 %cmp57.not, label %if.end207.for.inc213_crit_edge, label %if.end207.for.body61_crit_edge

if.end207.for.body61_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body61

if.end207.for.inc213_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc213

for.inc213:                                       ; preds = %if.end207.for.inc213_crit_edge, %dlm_list_idx_to_ptr.exit.for.inc213_crit_edge
  %dec = add nsw i32 %i.0276, -1
  %cmp = icmp sgt i32 %i.0276, 0
  br i1 %cmp, label %for.inc213.for.body_crit_edge, label %for.end214

for.inc213.for.body_crit_edge:                    ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end214:                                       ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_revert_pending_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_revert_pending_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_commit_pending_unlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_commit_pending_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_hb_node_down_cb(ptr nocapture noundef readnone %node, i32 noundef %idx, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 18
  %div3.i = lshr i32 %idx, 5
  %arrayidx.i = getelementptr i32, ptr %domain_map, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %idx, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dlm_fire_domain_eviction_callbacks(ptr noundef %data, i32 noundef %idx) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  tail call fastcc void @__dlm_hb_node_down(ptr noundef %data, i32 noundef %idx)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  tail call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_fire_domain_eviction_callbacks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dlm_hb_node_down(ptr noundef %dlm, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i248.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i221.i = alloca i32, align 4
  %_m.i222.i = alloca i64, align 8
  %_m137.i.i = alloca i64, align 8
  %_m161.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i92.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i145 = alloca i32, align 4
  %_m.i.i146 = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m67.i = alloca i64, align 8
  %_m102.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i137 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i12.i = alloca i32, align 4
  %_m.i13.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m51 = alloca i64, align 8
  %_m64 = alloca i64, align 8
  %_m80 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !435

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2422, 0\0A.popsection", ""() #10, !srcloc !484
  unreachable

do.end7:                                          ; preds = %entry
  %new_master = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %new_master, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp eq i32 %conv, %idx
  br i1 %cmp, label %do.body10, label %do.end7.if.end34_crit_edge

do.end7.if.end34_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body10:                                        ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_hb_node_down, i32 noundef 2426, ptr noundef nonnull @.str.181, ptr noundef %6, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %state = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state, align 2
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool18.not = icmp eq i16 %9, 0
  br i1 %tobool18.not, label %do.body10.if.end34_crit_edge, label %do.body20

do.body10.if.end34_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body20:                                        ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #10
  %10 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1088, ptr %_m21, align 8
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.__dlm_hb_node_down, i32 noundef 2432, ptr noundef nonnull @.str.182, ptr noundef %12, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #10
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %state, align 2
  %15 = and i16 %14, -3
  store i16 %15, ptr %state, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %16 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %17 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !435

do.body4.i:                                       ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #10, !srcloc !449
  unreachable

do.end7.i:                                        ; preds = %do.body20
  %dead_node.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 3
  %18 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dead_node.i, align 1
  %conv.i = zext i8 %19 to i32
  %recovery_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 20
  call void @_clear_bit(i32 noundef %conv.i, ptr noundef %recovery_map.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %20 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %20)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock, align 4
  %21 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !435

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

do.end7.i.i:                                      ; preds = %do.end7.i
  %22 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dead_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp.not.i.i = icmp eq i8 %23, -1
  br i1 %cmp.not.i.i, label %do.end7.i.i.dlm_set_reco_dead_node.exit.i_crit_edge, label %do.body12.i.i

do.end7.i.i.dlm_set_reco_dead_node.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_set_reco_dead_node.exit.i

do.body12.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %24 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1088, ptr %_m.i.i, align 8
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %conv17.i.i = zext i8 %23 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_set_reco_dead_node, i32 noundef 106, ptr noundef nonnull @.str.193, ptr noundef %26, i32 noundef %conv17.i.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  br label %dlm_set_reco_dead_node.exit.i

dlm_set_reco_dead_node.exit.i:                    ; preds = %do.body12.i.i, %do.end7.i.i.dlm_set_reco_dead_node.exit.i_crit_edge
  %27 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %dead_node.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12.i)
  %28 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %28)
  %agg.tmp.sroa.0.0.copyload.i.i15.i = load volatile i32, ptr %spinlock, align 4
  %29 = ptrtoint ptr %agg.tmp.sroa.0.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i15.i, ptr %agg.tmp.sroa.0.i.i12.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i16.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i15.i, 16
  %conv.i.i.i17.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i15.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i17.i, i32 %lock.sroa.0.0.extract.shift.i.i.i16.i)
  %cmp.i.i.not.i18.i = icmp eq i32 %conv.i.i.i17.i, %lock.sroa.0.0.extract.shift.i.i.i16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12.i)
  br i1 %cmp.i.i.not.i18.i, label %do.body4.i19.i, label %__dlm_reset_recovery.exit, !prof !435

do.body4.i19.i:                                   ; preds = %dlm_set_reco_dead_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

__dlm_reset_recovery.exit:                        ; preds = %dlm_set_reco_dead_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i13.i) #10
  %30 = ptrtoint ptr %_m.i13.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1088, ptr %_m.i13.i, align 8
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %33 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %new_master, align 4
  %conv.i.i136 = zext i8 %34 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i13.i, ptr noundef nonnull @__func__.dlm_set_reco_master, i32 noundef 115, ptr noundef nonnull @.str.192, ptr noundef %32, i32 noundef %conv.i.i136, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i13.i) #10
  %35 = ptrtoint ptr %new_master to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %new_master, align 4
  br label %if.end34

if.end34:                                         ; preds = %__dlm_reset_recovery.exit, %do.body10.if.end34_crit_edge, %do.end7.if.end34_crit_edge
  %joining_node = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 14
  %36 = ptrtoint ptr %joining_node to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %joining_node, align 4
  %conv35 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35, i32 %idx)
  %cmp36 = icmp eq i32 %conv35, %idx
  br i1 %cmp36, label %do.body39, label %if.end34.if.end46_crit_edge

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body39:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #10
  %38 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1088, ptr %_m40, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.__dlm_hb_node_down, i32 noundef 2440, ptr noundef nonnull @.str.183, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i137)
  %39 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %39)
  %agg.tmp.sroa.0.0.copyload.i.i139 = load volatile i32, ptr %spinlock, align 4
  %40 = ptrtoint ptr %agg.tmp.sroa.0.i.i137 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i139, ptr %agg.tmp.sroa.0.i.i137, align 4
  %lock.sroa.0.0.extract.shift.i.i.i140 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i139, 16
  %conv.i.i.i141 = and i32 %agg.tmp.sroa.0.0.copyload.i.i139, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i141, i32 %lock.sroa.0.0.extract.shift.i.i.i140)
  %cmp.i.i.not.i142 = icmp eq i32 %conv.i.i.i141, %lock.sroa.0.0.extract.shift.i.i.i140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i137)
  br i1 %cmp.i.i.not.i142, label %do.body4.i143, label %__dlm_set_joining_node.exit, !prof !435

do.body4.i143:                                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #10, !srcloc !485
  unreachable

__dlm_set_joining_node.exit:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %joining_node to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %joining_node, align 4
  %dlm_join_events.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 16
  call void @__wake_up(ptr noundef %dlm_join_events.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end46

if.end46:                                         ; preds = %__dlm_set_joining_node.exit, %if.end34.if.end46_crit_edge
  %live_nodes_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 17
  %div3.i = lshr i32 %idx, 5
  %arrayidx.i = getelementptr i32, ptr %live_nodes_map, i32 %div3.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %idx, 31
  %44 = shl nuw i32 1, %and.i
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool48.not = icmp eq i32 %45, 0
  br i1 %tobool48.not, label %do.body50, label %if.end58

do.body50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m51) #10
  %46 = ptrtoint ptr %_m51 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1088, ptr %_m51, align 8
  %name55 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %47 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name55, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m51, ptr noundef nonnull @__func__.__dlm_hb_node_down, i32 noundef 2448, ptr noundef nonnull @.str.184, ptr noundef %48, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m51) #10
  br label %return

if.end58:                                         ; preds = %if.end46
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %arrayidx.i127 = getelementptr i32, ptr %domain_map, i32 %div3.i
  %49 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i127, align 4
  %51 = and i32 %50, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool61.not = icmp eq i32 %51, 0
  br i1 %tobool61.not, label %do.body63, label %if.end70

do.body63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m64) #10
  %52 = ptrtoint ptr %_m64 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1088, ptr %_m64, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m64, ptr noundef nonnull @__func__.__dlm_hb_node_down, i32 noundef 2456, ptr noundef nonnull @.str.185, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m64) #10
  br label %return

if.end70:                                         ; preds = %if.end58
  call void @_clear_bit(i32 noundef %idx, ptr noundef %live_nodes_map) #10
  %recovery_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 20
  %arrayidx.i132 = getelementptr i32, ptr %recovery_map, i32 %div3.i
  %53 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i132, align 4
  %55 = and i32 %54, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool75.not = icmp eq i32 %55, 0
  br i1 %tobool75.not, label %if.then76, label %if.end70.if.end78_crit_edge

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then76:                                        ; preds = %if.end70
  %conv77 = trunc i32 %idx to i8
  call void @dlm_clean_master_list(ptr noundef %dlm, i8 noundef zeroext %conv77) #10
  %lockres_hash.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 1
  %node_num.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %conv70.i.i = and i32 %idx, 255
  %div3.i.i = lshr i32 %conv70.i.i, 5
  %name106.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc133.i.for.body.i_crit_edge, %if.then76
  %i.0247.i = phi i32 [ 0, %if.then76 ], [ %inc.i, %for.inc133.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %lockres_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lockres_hash.i.i, align 4
  %div3.i208.i = lshr i32 %i.0247.i, 10
  %arrayidx.i209.i = getelementptr ptr, ptr %57, i32 %div3.i208.i
  %58 = ptrtoint ptr %arrayidx.i209.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i209.i, align 4
  %rem1.i.i = and i32 %i.0247.i, 1023
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %59, i32 %rem1.i.i
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool4.not241.i = icmp eq ptr %61, null
  br i1 %tobool4.not241.i, label %for.body.i.for.inc133.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc133.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133.i

land.rhs.i:                                       ; preds = %for.inc121.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %res.0242.i = phi ptr [ %63, %for.inc121.i.land.rhs.i_crit_edge ], [ %61, %for.body.i.land.rhs.i_crit_edge ]
  %62 = ptrtoint ptr %res.0242.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %res.0242.i, align 8
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lockname.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %65)
  %cmp.i.i147 = icmp eq i32 %65, 9
  br i1 %cmp.i.i147, label %land.lhs.true.i.i, label %land.rhs.i.if.end53.i_crit_edge

land.rhs.i.if.end53.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

land.lhs.true.i.i:                                ; preds = %land.rhs.i
  %66 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name.i, align 8
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(9) %67, ptr noundef nonnull dereferenceable(9) @.str.66, i32 9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp1.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp1.i.i, label %if.then.i, label %land.lhs.true.i.i.if.end53.i_crit_edge

land.lhs.true.i.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then.i:                                        ; preds = %land.lhs.true.i.i
  %spinlock.i148 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock.i148) #10
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 3
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.body18.i.for.cond15.i_crit_edge, %if.then.i
  %.pn.in.i = phi ptr [ %granted.i, %if.then.i ], [ %.pn.i, %for.body18.i.for.cond15.i_crit_edge ]
  %68 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp17.not.i = icmp eq ptr %.pn.i, %granted.i
  br i1 %cmp17.not.i, label %for.cond15.i.for.end.i_crit_edge, label %for.body18.i

for.cond15.i.for.end.i_crit_edge:                 ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body18.i:                                     ; preds = %for.cond15.i
  %node.i = getelementptr i8, ptr %.pn.i, i32 -1
  %69 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %node.i, align 1
  %cmp20.i = icmp eq i8 %70, %conv77
  br i1 %cmp20.i, label %do.body.i, label %for.body18.i.for.cond15.i_crit_edge

for.body18.i.for.cond15.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond15.i

do.body.i:                                        ; preds = %for.body18.i
  %lock.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %71 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 1088, ptr %_m.i, align 8
  %72 = ptrtoint ptr %name106.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name106.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_do_local_recovery_cleanup, i32 noundef 2359, ptr noundef nonnull @.str.140, i32 noundef %conv70.i.i, ptr noundef %73) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.i.list_del_init.exit.i_crit_edge

do.body.i.list_del_init.exit.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i, align 4
  %76 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.body.i.list_del_init.exit.i_crit_edge
  %80 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %.pn.i, ptr %.pn.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %.pn.i, ptr %prev.i3.i.i, align 4
  call void @dlm_lock_put(ptr noundef %lock.0.le.i) #10
  call void @dlm_lock_put(ptr noundef %lock.0.le.i) #10
  br label %for.end.i

for.end.i:                                        ; preds = %list_del_init.exit.i, %for.cond15.i.for.end.i_crit_edge
  %owner.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 16
  %82 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv77)
  %cmp36.i = icmp eq i8 %83, %conv77
  br i1 %cmp36.i, label %land.lhs.true.i, label %for.end.i.if.else.i_crit_edge

for.end.i.if.else.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 17
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %state.i, align 2
  %86 = and i16 %85, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool40.not.i = icmp eq i16 %86, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then41.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then41.i:                                      ; preds = %land.lhs.true.i
  %refs.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refs.i.i, i32 1, i32 3, i32 1) #10
  %87 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i, ptr %refs.i.i, i32 1, ptr elementtype(i32) %refs.i.i) #10, !srcloc !463
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !435

if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then41.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %88 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %.not.i.i.i.i.i.i = icmp sgt i32 %88, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !433

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lockres_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %dlm_lockres_get.exit.i

dlm_lockres_get.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge
  call void @__dlm_do_purge_lockres(ptr noundef %dlm, ptr noundef %res.0242.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i148) #10
  %wq.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @dlm_lockres_put(ptr noundef %res.0242.i) #10
  br label %for.inc121.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.end.i.if.else.i_crit_edge
  %89 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %90)
  %cmp46.i = icmp eq i8 %83, %90
  br i1 %cmp46.i, label %if.then48.i, label %if.else.i.if.end51.i_crit_edge

if.else.i.if.end51.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then48.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_lockres_clear_refmap_bit(ptr noundef %dlm, ptr noundef %res.0242.i, i32 noundef %conv70.i.i) #10
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then48.i, %if.else.i.if.end51.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i148) #10
  br label %for.inc121.i

if.end53.i:                                       ; preds = %land.lhs.true.i.i.if.end53.i_crit_edge, %land.rhs.i.if.end53.i_crit_edge
  %spinlock54.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock54.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i145)
  %91 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %91)
  %agg.tmp.sroa.0.0.copyload.i.i.i149 = load volatile i32, ptr %spinlock, align 4
  %92 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i149, ptr %agg.tmp.sroa.0.i.i.i145, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i150 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i149, 16
  %conv.i.i.i.i151 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i149, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i151, i32 %lock.sroa.0.0.extract.shift.i.i.i.i150)
  %cmp.i.i.not.i.i152 = icmp eq i32 %conv.i.i.i.i151, %lock.sroa.0.0.extract.shift.i.i.i.i150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i145)
  br i1 %cmp.i.i.not.i.i152, label %do.body4.i.i153, label %do.body10.i.i, !prof !435

do.body4.i.i153:                                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2218, 0\0A.popsection", ""() #10, !srcloc !486
  unreachable

do.body10.i.i:                                    ; preds = %if.end53.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i92.i.i)
  %93 = ptrtoint ptr %spinlock54.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %agg.tmp.sroa.0.0.copyload.i93.i.i = load volatile i32, ptr %spinlock54.i, align 4
  %94 = ptrtoint ptr %agg.tmp.sroa.0.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i93.i.i, ptr %agg.tmp.sroa.0.i92.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i94.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i93.i.i, 16
  %conv.i.i95.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i93.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i95.i.i, i32 %lock.sroa.0.0.extract.shift.i.i94.i.i)
  %cmp.i.i96.not.i.i = icmp eq i32 %conv.i.i95.i.i, %lock.sroa.0.0.extract.shift.i.i94.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i92.i.i)
  br i1 %cmp.i.i96.not.i.i, label %do.body24.i.i, label %dlm_list_idx_to_ptr.exit.i.i, !prof !435

do.body24.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2219, 0\0A.popsection", ""() #10, !srcloc !487
  unreachable

dlm_list_idx_to_ptr.exit.i.i:                     ; preds = %do.body10.i.i
  %owner.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 16
  %95 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %owner.i.i, align 4
  %97 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %98)
  %cmp.i210.i = icmp eq i8 %96, %98
  %dead_node..i.i = select i1 %cmp.i210.i, i8 %conv77, i8 %98
  %converting.i.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 4
  %granted.i.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 3
  %99 = ptrtoint ptr %granted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn99.i.i = load ptr, ptr %granted.i.i.i, align 4
  %cmp42.not100.i.i = icmp eq ptr %.pn99.i.i, %granted.i.i.i
  br i1 %cmp42.not100.i.i, label %dlm_list_idx_to_ptr.exit.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge, label %dlm_list_idx_to_ptr.exit.i.i.for.body46.i.i_crit_edge

dlm_list_idx_to_ptr.exit.i.i.for.body46.i.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.i.i
  br label %for.body46.i.i

dlm_list_idx_to_ptr.exit.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.1.i.i

for.body46.i.i:                                   ; preds = %for.inc.i.i.for.body46.i.i_crit_edge, %dlm_list_idx_to_ptr.exit.i.i.for.body46.i.i_crit_edge
  %.pn102.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body46.i.i_crit_edge ], [ %.pn99.i.i, %dlm_list_idx_to_ptr.exit.i.i.for.body46.i.i_crit_edge ]
  %blank_lvb.1101.i.i = phi i32 [ %blank_lvb.2.i.i, %for.inc.i.i.for.body46.i.i_crit_edge ], [ 0, %dlm_list_idx_to_ptr.exit.i.i.for.body46.i.i_crit_edge ]
  %node.i.i = getelementptr i8, ptr %.pn102.i.i, i32 -1
  %100 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %node.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %dead_node..i.i)
  %cmp49.i.i = icmp eq i8 %101, %dead_node..i.i
  br i1 %cmp49.i.i, label %if.then51.i.i, label %for.body46.i.i.for.inc.i.i_crit_edge

for.body46.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then51.i.i:                                    ; preds = %for.body46.i.i
  %type9.i.i.i = getelementptr i8, ptr %.pn102.i.i, i32 -4
  %102 = ptrtoint ptr %type9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %type9.i.i.i, align 4
  %104 = add i8 %103, -3
  %switch.and.i.i.i = and i8 %104, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i8 %switch.and.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %103)
  %cmp11.i.i.i = icmp ne i8 %103, 5
  %retval.0.in.i.i.i = select i1 %cmp.i210.i, i1 %cmp11.i.i.i, i1 %switch.selectcmp.i.i.i
  br i1 %retval.0.in.i.i.i, label %if.then51.i.i.for.inc.i.i_crit_edge, label %if.then54.i.i

if.then51.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then54.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lksb.i.i = getelementptr i8, ptr %.pn102.i.i, i32 88
  %105 = ptrtoint ptr %lksb.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lksb.i.i, align 8
  %lvb.i.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %106, i32 0, i32 3
  %107 = call ptr @memset(ptr %lvb.i.i, i32 0, i32 64)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then54.i.i, %if.then51.i.i.for.inc.i.i_crit_edge, %for.body46.i.i.for.inc.i.i_crit_edge
  %blank_lvb.2.i.i = phi i32 [ 1, %if.then54.i.i ], [ %blank_lvb.1101.i.i, %if.then51.i.i.for.inc.i.i_crit_edge ], [ %blank_lvb.1101.i.i, %for.body46.i.i.for.inc.i.i_crit_edge ]
  %108 = ptrtoint ptr %.pn102.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn.i.i = load ptr, ptr %.pn102.i.i, align 4
  %cmp42.not.i.i = icmp eq ptr %.pn.i.i, %granted.i.i.i
  br i1 %cmp42.not.i.i, label %for.inc.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge, label %for.inc.i.i.for.body46.i.i_crit_edge

for.inc.i.i.for.body46.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46.i.i

for.inc.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.1.i.i

dlm_list_idx_to_ptr.exit.1.i.i:                   ; preds = %for.inc.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge, %dlm_list_idx_to_ptr.exit.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge
  %blank_lvb.1.lcssa.i.i = phi i32 [ 0, %dlm_list_idx_to_ptr.exit.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge ], [ %blank_lvb.2.i.i, %for.inc.i.i.dlm_list_idx_to_ptr.exit.1.i.i_crit_edge ]
  %109 = ptrtoint ptr %converting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pn99.1.i.i = load ptr, ptr %converting.i.i.i, align 4
  %cmp42.not100.1.i.i = icmp eq ptr %.pn99.1.i.i, %converting.i.i.i
  br i1 %cmp42.not100.1.i.i, label %dlm_list_idx_to_ptr.exit.1.i.i.for.inc62.1.i.i_crit_edge, label %dlm_list_idx_to_ptr.exit.1.i.i.for.body46.1.i.i_crit_edge

dlm_list_idx_to_ptr.exit.1.i.i.for.body46.1.i.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.1.i.i
  br label %for.body46.1.i.i

dlm_list_idx_to_ptr.exit.1.i.i.for.inc62.1.i.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc62.1.i.i

for.body46.1.i.i:                                 ; preds = %for.inc.1.i.i.for.body46.1.i.i_crit_edge, %dlm_list_idx_to_ptr.exit.1.i.i.for.body46.1.i.i_crit_edge
  %.pn102.1.i.i = phi ptr [ %.pn.1.i.i, %for.inc.1.i.i.for.body46.1.i.i_crit_edge ], [ %.pn99.1.i.i, %dlm_list_idx_to_ptr.exit.1.i.i.for.body46.1.i.i_crit_edge ]
  %blank_lvb.1101.1.i.i = phi i32 [ %blank_lvb.2.1.i.i, %for.inc.1.i.i.for.body46.1.i.i_crit_edge ], [ %blank_lvb.1.lcssa.i.i, %dlm_list_idx_to_ptr.exit.1.i.i.for.body46.1.i.i_crit_edge ]
  %node.1.i.i = getelementptr i8, ptr %.pn102.1.i.i, i32 -1
  %110 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %node.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %dead_node..i.i)
  %cmp49.1.i.i = icmp eq i8 %111, %dead_node..i.i
  br i1 %cmp49.1.i.i, label %if.then51.1.i.i, label %for.body46.1.i.i.for.inc.1.i.i_crit_edge

for.body46.1.i.i.for.inc.1.i.i_crit_edge:         ; preds = %for.body46.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

if.then51.1.i.i:                                  ; preds = %for.body46.1.i.i
  %type9.i.1.i.i = getelementptr i8, ptr %.pn102.1.i.i, i32 -4
  %112 = ptrtoint ptr %type9.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %type9.i.1.i.i, align 4
  %114 = add i8 %113, -3
  %switch.and.i.1.i.i = and i8 %114, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.1.i.i)
  %switch.selectcmp.i.1.i.i = icmp eq i8 %switch.and.i.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %113)
  %cmp11.i.1.i.i = icmp ne i8 %113, 5
  %retval.0.in.i.1.i.i = select i1 %cmp.i210.i, i1 %cmp11.i.1.i.i, i1 %switch.selectcmp.i.1.i.i
  br i1 %retval.0.in.i.1.i.i, label %if.then51.1.i.i.for.inc.1.i.i_crit_edge, label %if.then54.1.i.i

if.then51.1.i.i.for.inc.1.i.i_crit_edge:          ; preds = %if.then51.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

if.then54.1.i.i:                                  ; preds = %if.then51.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lksb.1.i.i = getelementptr i8, ptr %.pn102.1.i.i, i32 88
  %115 = ptrtoint ptr %lksb.1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lksb.1.i.i, align 8
  %lvb.1.i.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %116, i32 0, i32 3
  %117 = call ptr @memset(ptr %lvb.1.i.i, i32 0, i32 64)
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then54.1.i.i, %if.then51.1.i.i.for.inc.1.i.i_crit_edge, %for.body46.1.i.i.for.inc.1.i.i_crit_edge
  %blank_lvb.2.1.i.i = phi i32 [ 1, %if.then54.1.i.i ], [ %blank_lvb.1101.1.i.i, %if.then51.1.i.i.for.inc.1.i.i_crit_edge ], [ %blank_lvb.1101.1.i.i, %for.body46.1.i.i.for.inc.1.i.i_crit_edge ]
  %118 = ptrtoint ptr %.pn102.1.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pn.1.i.i = load ptr, ptr %.pn102.1.i.i, align 4
  %cmp42.not.1.i.i = icmp eq ptr %.pn.1.i.i, %converting.i.i.i
  br i1 %cmp42.not.1.i.i, label %for.inc.1.i.i.for.inc62.1.i.i_crit_edge, label %for.inc.1.i.i.for.body46.1.i.i_crit_edge

for.inc.1.i.i.for.body46.1.i.i_crit_edge:         ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46.1.i.i

for.inc.1.i.i.for.inc62.1.i.i_crit_edge:          ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc62.1.i.i

for.inc62.1.i.i:                                  ; preds = %for.inc.1.i.i.for.inc62.1.i.i_crit_edge, %dlm_list_idx_to_ptr.exit.1.i.i.for.inc62.1.i.i_crit_edge
  %blank_lvb.1.lcssa.1.i.i = phi i32 [ %blank_lvb.1.lcssa.i.i, %dlm_list_idx_to_ptr.exit.1.i.i.for.inc62.1.i.i_crit_edge ], [ %blank_lvb.2.1.i.i, %for.inc.1.i.i.for.inc62.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank_lvb.1.lcssa.1.i.i)
  %tobool64.not.i.i = icmp eq i32 %blank_lvb.1.lcssa.1.i.i, 0
  br i1 %tobool64.not.i.i, label %for.inc62.1.i.i.dlm_revalidate_lvb.exit.i_crit_edge, label %do.body66.i.i

for.inc62.1.i.i.dlm_revalidate_lvb.exit.i_crit_edge: ; preds = %for.inc62.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_revalidate_lvb.exit.i

do.body66.i.i:                                    ; preds = %for.inc62.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i146) #10
  %119 = ptrtoint ptr %_m.i.i146 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 1088, ptr %_m.i.i146, align 8
  %120 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %lockname.i, align 8
  %122 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i146, ptr noundef nonnull @__func__.dlm_revalidate_lvb, i32 noundef 2247, ptr noundef nonnull @.str.189, i32 noundef %121, ptr noundef %123, i32 noundef %conv70.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i146) #10
  %lvb74.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 18
  %124 = call ptr @memset(ptr %lvb74.i.i, i32 0, i32 64)
  br label %dlm_revalidate_lvb.exit.i

dlm_revalidate_lvb.exit.i:                        ; preds = %do.body66.i.i, %for.inc62.1.i.i.dlm_revalidate_lvb.exit.i_crit_edge
  %125 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %owner.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %conv77)
  %cmp58.i = icmp eq i8 %126, %conv77
  br i1 %cmp58.i, label %if.then60.i, label %if.else83.i

if.then60.i:                                      ; preds = %dlm_revalidate_lvb.exit.i
  %state61.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 17
  %127 = ptrtoint ptr %state61.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %state61.i, align 2
  %129 = and i16 %128, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool64.not.i = icmp eq i16 %129, 0
  br i1 %tobool64.not.i, label %if.end82.i, label %do.body66.i

do.body66.i:                                      ; preds = %if.then60.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67.i) #10
  %130 = ptrtoint ptr %_m67.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 1088, ptr %_m67.i, align 8
  %131 = ptrtoint ptr %name106.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name106.i, align 4
  %133 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %lockname.i, align 8
  %135 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67.i, ptr noundef nonnull @__func__.dlm_do_local_recovery_cleanup, i32 noundef 2393, ptr noundef nonnull @.str.187, ptr noundef %132, i32 noundef %134, ptr noundef %136, i32 noundef %conv70.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67.i) #10
  %refs.i211.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i212.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i211.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refs.i211.i, i32 1, i32 3, i32 1) #10
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i211.i, ptr %refs.i211.i, i32 1, ptr elementtype(i32) %refs.i211.i) #10, !srcloc !463
  %asmresult.i.i.i.i.i.i.i213.i = extractvalue { i32, i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i213.i)
  %tobool1.not.i.i.i.i.i214.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i213.i, 0
  br i1 %tobool1.not.i.i.i.i.i214.i, label %do.body66.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge, label %if.else.i.i.i.i.i217.i, !prof !435

do.body66.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge: ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i219.i

if.else.i.i.i.i.i217.i:                           ; preds = %do.body66.i
  %add.i.i.i.i.i215.i = add i32 %asmresult.i.i.i.i.i.i.i213.i, 1
  %138 = or i32 %add.i.i.i.i.i215.i, %asmresult.i.i.i.i.i.i.i213.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %138)
  %.not.i.i.i.i.i216.i = icmp sgt i32 %138, -1
  br i1 %.not.i.i.i.i.i216.i, label %if.else.i.i.i.i.i217.i.dlm_lockres_get.exit220.i_crit_edge, label %if.else.i.i.i.i.i217.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge, !prof !433

if.else.i.i.i.i.i217.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge: ; preds = %if.else.i.i.i.i.i217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i219.i

if.else.i.i.i.i.i217.i.dlm_lockres_get.exit220.i_crit_edge: ; preds = %if.else.i.i.i.i.i217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_lockres_get.exit220.i

if.end15.sink.split.i.i.i.i.i219.i:               ; preds = %if.else.i.i.i.i.i217.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge, %do.body66.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge
  %.sink.i.i.i.i.i218.i = phi i32 [ 2, %do.body66.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge ], [ 1, %if.else.i.i.i.i.i217.i.if.end15.sink.split.i.i.i.i.i219.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i211.i, i32 noundef %.sink.i.i.i.i.i218.i) #10
  br label %dlm_lockres_get.exit220.i

dlm_lockres_get.exit220.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i219.i, %if.else.i.i.i.i.i217.i.dlm_lockres_get.exit220.i_crit_edge
  call void @__dlm_do_purge_lockres(ptr noundef %dlm, ptr noundef %res.0242.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock54.i) #10
  %wq81.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq81.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @dlm_lockres_put(ptr noundef %res.0242.i) #10
  br label %for.inc121.i

if.end82.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_move_lockres_to_recovery_list(ptr noundef %dlm, ptr noundef %res.0242.i) #10
  br label %if.end119.i

if.else83.i:                                      ; preds = %dlm_revalidate_lvb.exit.i
  %139 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %node_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %140)
  %cmp88.i = icmp eq i8 %126, %140
  br i1 %cmp88.i, label %if.then90.i, label %if.else91.i

if.then90.i:                                      ; preds = %if.else83.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i221.i)
  %141 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %141)
  %agg.tmp.sroa.0.0.copyload.i.i224.i = load volatile i32, ptr %spinlock, align 4
  %142 = ptrtoint ptr %agg.tmp.sroa.0.i.i221.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i224.i, ptr %agg.tmp.sroa.0.i.i221.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i225.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i224.i, 16
  %conv.i.i.i226.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i224.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i226.i, i32 %lock.sroa.0.0.extract.shift.i.i.i225.i)
  %cmp.i.i.not.i227.i = icmp eq i32 %conv.i.i.i226.i, %lock.sroa.0.0.extract.shift.i.i.i225.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i221.i)
  br i1 %cmp.i.i.not.i227.i, label %do.body4.i228.i, label %do.body10.i230.i, !prof !435

do.body4.i228.i:                                  ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2262, 0\0A.popsection", ""() #10, !srcloc !488
  unreachable

do.body10.i230.i:                                 ; preds = %if.then90.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i248.i.i)
  %143 = ptrtoint ptr %spinlock54.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %agg.tmp.sroa.0.0.copyload.i249.i.i = load volatile i32, ptr %spinlock54.i, align 4
  %144 = ptrtoint ptr %agg.tmp.sroa.0.i248.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i249.i.i, ptr %agg.tmp.sroa.0.i248.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i250.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i249.i.i, 16
  %conv.i.i251.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i249.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i251.i.i, i32 %lock.sroa.0.0.extract.shift.i.i250.i.i)
  %cmp.i.i252.not.i.i = icmp eq i32 %conv.i.i251.i.i, %lock.sroa.0.0.extract.shift.i.i250.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i248.i.i)
  br i1 %cmp.i.i252.not.i.i, label %do.body24.i231.i, label %do.end32.i.i, !prof !435

do.body24.i231.i:                                 ; preds = %do.body10.i230.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2263, 0\0A.popsection", ""() #10, !srcloc !489
  unreachable

do.end32.i.i:                                     ; preds = %do.body10.i230.i
  %145 = ptrtoint ptr %granted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %granted.i.i.i, align 4
  %cmp.not268.i.i = icmp eq ptr %146, %granted.i.i.i
  br i1 %cmp.not268.i.i, label %do.end32.i.i.for.end.i.i_crit_edge, label %do.end32.i.i.for.body.i.i_crit_edge

do.end32.i.i.for.body.i.i_crit_edge:              ; preds = %do.end32.i.i
  br label %for.body.i.i

do.end32.i.i.for.end.i.i_crit_edge:               ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i233.i.for.body.i.i_crit_edge, %do.end32.i.i.for.body.i.i_crit_edge
  %.pn.in270.i.i = phi ptr [ %.pn273.i.i, %for.inc.i233.i.for.body.i.i_crit_edge ], [ %146, %do.end32.i.i.for.body.i.i_crit_edge ]
  %freed.0269.i.i = phi i32 [ %freed.1.i.i, %for.inc.i233.i.for.body.i.i_crit_edge ], [ 0, %do.end32.i.i.for.body.i.i_crit_edge ]
  %lock.0272.i.i = getelementptr i8, ptr %.pn.in270.i.i, i32 -16
  %147 = ptrtoint ptr %.pn.in270.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn273.i.i = load ptr, ptr %.pn.in270.i.i, align 8
  %node.i232.i = getelementptr i8, ptr %.pn.in270.i.i, i32 -1
  %148 = ptrtoint ptr %node.i232.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %node.i232.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %149, i8 %conv77)
  %cmp43.i.i = icmp eq i8 %149, %conv77
  br i1 %cmp43.i.i, label %if.then45.i.i, label %for.body.i.i.for.inc.i233.i_crit_edge

for.body.i.i.for.inc.i233.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i233.i

if.then45.i.i:                                    ; preds = %for.body.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in270.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then45.i.i.list_del_init.exit.i.i_crit_edge

if.then45.i.i.list_del_init.exit.i.i_crit_edge:   ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in270.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i.i.i.i, align 4
  %152 = ptrtoint ptr %.pn.in270.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %.pn.in270.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev1.i.i.i.i.i, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %153, ptr %151, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then45.i.i.list_del_init.exit.i.i_crit_edge
  %156 = ptrtoint ptr %.pn.in270.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %.pn.in270.i.i, ptr %.pn.in270.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in270.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %.pn.in270.i.i, ptr %prev.i3.i.i.i, align 4
  call void @dlm_lock_put(ptr noundef %lock.0272.i.i) #10
  call void @dlm_lock_put(ptr noundef %lock.0272.i.i) #10
  %inc.i.i = add i32 %freed.0269.i.i, 1
  br label %for.inc.i233.i

for.inc.i233.i:                                   ; preds = %list_del_init.exit.i.i, %for.body.i.i.for.inc.i233.i_crit_edge
  %freed.1.i.i = phi i32 [ %inc.i.i, %list_del_init.exit.i.i ], [ %freed.0269.i.i, %for.body.i.i.for.inc.i233.i_crit_edge ]
  %cmp.not.i.i154 = icmp eq ptr %.pn273.i.i, %granted.i.i.i
  br i1 %cmp.not.i.i154, label %for.inc.i233.i.for.end.i.i_crit_edge, label %for.inc.i233.i.for.body.i.i_crit_edge

for.inc.i233.i.for.body.i.i_crit_edge:            ; preds = %for.inc.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i233.i.for.end.i.i_crit_edge:             ; preds = %for.inc.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i233.i.for.end.i.i_crit_edge, %do.end32.i.i.for.end.i.i_crit_edge
  %freed.0.lcssa.i.i = phi i32 [ 0, %do.end32.i.i.for.end.i.i_crit_edge ], [ %freed.1.i.i, %for.inc.i233.i.for.end.i.i_crit_edge ]
  %158 = ptrtoint ptr %converting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %converting.i.i.i, align 4
  %cmp65.not276.i.i = icmp eq ptr %159, %converting.i.i.i
  br i1 %cmp65.not276.i.i, label %for.end.i.i.for.end86.i.i_crit_edge, label %for.end.i.i.for.body69.i.i_crit_edge

for.end.i.i.for.body69.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body69.i.i

for.end.i.i.for.end86.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end86.i.i

for.body69.i.i:                                   ; preds = %for.inc80.i.i.for.body69.i.i_crit_edge, %for.end.i.i.for.body69.i.i_crit_edge
  %.pn238.in278.i.i = phi ptr [ %.pn238281.i.i, %for.inc80.i.i.for.body69.i.i_crit_edge ], [ %159, %for.end.i.i.for.body69.i.i_crit_edge ]
  %freed.2277.i.i = phi i32 [ %freed.3.i.i, %for.inc80.i.i.for.body69.i.i_crit_edge ], [ %freed.0.lcssa.i.i, %for.end.i.i.for.body69.i.i_crit_edge ]
  %lock.1280.i.i = getelementptr i8, ptr %.pn238.in278.i.i, i32 -16
  %160 = ptrtoint ptr %.pn238.in278.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pn238281.i.i = load ptr, ptr %.pn238.in278.i.i, align 8
  %node71.i.i = getelementptr i8, ptr %.pn238.in278.i.i, i32 -1
  %161 = ptrtoint ptr %node71.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %node71.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %conv77)
  %cmp74.i.i = icmp eq i8 %162, %conv77
  br i1 %cmp74.i.i, label %if.then76.i.i, label %for.body69.i.i.for.inc80.i.i_crit_edge

for.body69.i.i.for.inc80.i.i_crit_edge:           ; preds = %for.body69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80.i.i

if.then76.i.i:                                    ; preds = %for.body69.i.i
  %call.i.i254.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn238.in278.i.i) #10
  br i1 %call.i.i254.i.i, label %if.end.i.i257.i.i, label %if.then76.i.i.list_del_init.exit259.i.i_crit_edge

if.then76.i.i.list_del_init.exit259.i.i_crit_edge: ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit259.i.i

if.end.i.i257.i.i:                                ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i255.i.i = getelementptr inbounds %struct.list_head, ptr %.pn238.in278.i.i, i32 0, i32 1
  %163 = ptrtoint ptr %prev.i.i255.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %prev.i.i255.i.i, align 4
  %165 = ptrtoint ptr %.pn238.in278.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %.pn238.in278.i.i, align 4
  %prev1.i.i.i256.i.i = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %prev1.i.i.i256.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %164, ptr %prev1.i.i.i256.i.i, align 4
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %166, ptr %164, align 4
  br label %list_del_init.exit259.i.i

list_del_init.exit259.i.i:                        ; preds = %if.end.i.i257.i.i, %if.then76.i.i.list_del_init.exit259.i.i_crit_edge
  %169 = ptrtoint ptr %.pn238.in278.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %.pn238.in278.i.i, ptr %.pn238.in278.i.i, align 4
  %prev.i3.i258.i.i = getelementptr inbounds %struct.list_head, ptr %.pn238.in278.i.i, i32 0, i32 1
  %170 = ptrtoint ptr %prev.i3.i258.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %.pn238.in278.i.i, ptr %prev.i3.i258.i.i, align 4
  call void @dlm_lock_put(ptr noundef %lock.1280.i.i) #10
  call void @dlm_lock_put(ptr noundef %lock.1280.i.i) #10
  %inc78.i.i = add i32 %freed.2277.i.i, 1
  br label %for.inc80.i.i

for.inc80.i.i:                                    ; preds = %list_del_init.exit259.i.i, %for.body69.i.i.for.inc80.i.i_crit_edge
  %freed.3.i.i = phi i32 [ %inc78.i.i, %list_del_init.exit259.i.i ], [ %freed.2277.i.i, %for.body69.i.i.for.inc80.i.i_crit_edge ]
  %cmp65.not.i.i = icmp eq ptr %.pn238281.i.i, %converting.i.i.i
  br i1 %cmp65.not.i.i, label %for.inc80.i.i.for.end86.i.i_crit_edge, label %for.inc80.i.i.for.body69.i.i_crit_edge

for.inc80.i.i.for.body69.i.i_crit_edge:           ; preds = %for.inc80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69.i.i

for.inc80.i.i.for.end86.i.i_crit_edge:            ; preds = %for.inc80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end86.i.i

for.end86.i.i:                                    ; preds = %for.inc80.i.i.for.end86.i.i_crit_edge, %for.end.i.i.for.end86.i.i_crit_edge
  %freed.2.lcssa.i.i = phi i32 [ %freed.0.lcssa.i.i, %for.end.i.i.for.end86.i.i_crit_edge ], [ %freed.3.i.i, %for.inc80.i.i.for.end86.i.i_crit_edge ]
  %blocked.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 5
  %171 = ptrtoint ptr %blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %blocked.i.i, align 4
  %cmp99.not285.i.i = icmp eq ptr %172, %blocked.i.i
  br i1 %cmp99.not285.i.i, label %for.end86.i.i.for.end120.i.i_crit_edge, label %for.end86.i.i.for.body103.i.i_crit_edge

for.end86.i.i.for.body103.i.i_crit_edge:          ; preds = %for.end86.i.i
  br label %for.body103.i.i

for.end86.i.i.for.end120.i.i_crit_edge:           ; preds = %for.end86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end120.i.i

for.body103.i.i:                                  ; preds = %for.inc114.i.i.for.body103.i.i_crit_edge, %for.end86.i.i.for.body103.i.i_crit_edge
  %.pn239.in287.i.i = phi ptr [ %.pn239290.i.i, %for.inc114.i.i.for.body103.i.i_crit_edge ], [ %172, %for.end86.i.i.for.body103.i.i_crit_edge ]
  %freed.4286.i.i = phi i32 [ %freed.5.i.i, %for.inc114.i.i.for.body103.i.i_crit_edge ], [ %freed.2.lcssa.i.i, %for.end86.i.i.for.body103.i.i_crit_edge ]
  %lock.2289.i.i = getelementptr i8, ptr %.pn239.in287.i.i, i32 -16
  %173 = ptrtoint ptr %.pn239.in287.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %.pn239290.i.i = load ptr, ptr %.pn239.in287.i.i, align 8
  %node105.i.i = getelementptr i8, ptr %.pn239.in287.i.i, i32 -1
  %174 = ptrtoint ptr %node105.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %node105.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %175, i8 %conv77)
  %cmp108.i.i = icmp eq i8 %175, %conv77
  br i1 %cmp108.i.i, label %if.then110.i.i, label %for.body103.i.i.for.inc114.i.i_crit_edge

for.body103.i.i.for.inc114.i.i_crit_edge:         ; preds = %for.body103.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc114.i.i

if.then110.i.i:                                   ; preds = %for.body103.i.i
  %call.i.i260.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn239.in287.i.i) #10
  br i1 %call.i.i260.i.i, label %if.end.i.i263.i.i, label %if.then110.i.i.list_del_init.exit265.i.i_crit_edge

if.then110.i.i.list_del_init.exit265.i.i_crit_edge: ; preds = %if.then110.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit265.i.i

if.end.i.i263.i.i:                                ; preds = %if.then110.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i261.i.i = getelementptr inbounds %struct.list_head, ptr %.pn239.in287.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %prev.i.i261.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %prev.i.i261.i.i, align 4
  %178 = ptrtoint ptr %.pn239.in287.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %.pn239.in287.i.i, align 4
  %prev1.i.i.i262.i.i = getelementptr inbounds %struct.list_head, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %prev1.i.i.i262.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %177, ptr %prev1.i.i.i262.i.i, align 4
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %179, ptr %177, align 4
  br label %list_del_init.exit265.i.i

list_del_init.exit265.i.i:                        ; preds = %if.end.i.i263.i.i, %if.then110.i.i.list_del_init.exit265.i.i_crit_edge
  %182 = ptrtoint ptr %.pn239.in287.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %.pn239.in287.i.i, ptr %.pn239.in287.i.i, align 4
  %prev.i3.i264.i.i = getelementptr inbounds %struct.list_head, ptr %.pn239.in287.i.i, i32 0, i32 1
  %183 = ptrtoint ptr %prev.i3.i264.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %.pn239.in287.i.i, ptr %prev.i3.i264.i.i, align 4
  call void @dlm_lock_put(ptr noundef %lock.2289.i.i) #10
  call void @dlm_lock_put(ptr noundef %lock.2289.i.i) #10
  %inc112.i.i = add i32 %freed.4286.i.i, 1
  br label %for.inc114.i.i

for.inc114.i.i:                                   ; preds = %list_del_init.exit265.i.i, %for.body103.i.i.for.inc114.i.i_crit_edge
  %freed.5.i.i = phi i32 [ %inc112.i.i, %list_del_init.exit265.i.i ], [ %freed.4286.i.i, %for.body103.i.i.for.inc114.i.i_crit_edge ]
  %cmp99.not.i.i = icmp eq ptr %.pn239290.i.i, %blocked.i.i
  br i1 %cmp99.not.i.i, label %for.inc114.i.i.for.end120.i.i_crit_edge, label %for.inc114.i.i.for.body103.i.i_crit_edge

for.inc114.i.i.for.body103.i.i_crit_edge:         ; preds = %for.inc114.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body103.i.i

for.inc114.i.i.for.end120.i.i_crit_edge:          ; preds = %for.inc114.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end120.i.i

for.end120.i.i:                                   ; preds = %for.inc114.i.i.for.end120.i.i_crit_edge, %for.end86.i.i.for.end120.i.i_crit_edge
  %freed.4.lcssa.i.i = phi i32 [ %freed.2.lcssa.i.i, %for.end86.i.i.for.end120.i.i_crit_edge ], [ %freed.5.i.i, %for.inc114.i.i.for.end120.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freed.4.lcssa.i.i)
  %tobool121.not.i.i = icmp eq i32 %freed.4.lcssa.i.i, 0
  br i1 %tobool121.not.i.i, label %if.else.i.i, label %do.body123.i.i

do.body123.i.i:                                   ; preds = %for.end120.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i222.i) #10
  %184 = ptrtoint ptr %_m.i222.i to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 1088, ptr %_m.i222.i, align 8
  %185 = ptrtoint ptr %name106.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %name106.i, align 4
  %187 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %lockname.i, align 8
  %189 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i222.i, ptr noundef nonnull @__func__.dlm_free_dead_locks, i32 noundef 2300, ptr noundef nonnull @.str.190, ptr noundef %186, i32 noundef %188, ptr noundef %190, i32 noundef %freed.4.lcssa.i.i, i32 noundef %conv70.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i222.i) #10
  %refmap.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 21
  %arrayidx.i.i.i = getelementptr i32, ptr %refmap.i.i, i32 %div3.i.i
  %191 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %193 = and i32 %192, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool134.not.i.i = icmp eq i32 %193, 0
  br i1 %tobool134.not.i.i, label %do.body136.i.i, label %do.body123.i.i.if.end150.i.i_crit_edge

do.body123.i.i.if.end150.i.i_crit_edge:           ; preds = %do.body123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150.i.i

do.body136.i.i:                                   ; preds = %do.body123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m137.i.i) #10
  %194 = ptrtoint ptr %_m137.i.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 1152921504606848064, ptr %_m137.i.i, align 8
  %195 = ptrtoint ptr %name106.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %name106.i, align 4
  %197 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %lockname.i, align 8
  %199 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m137.i.i, ptr noundef nonnull @__func__.dlm_free_dead_locks, i32 noundef 2304, ptr noundef nonnull @.str.191, ptr noundef %196, i32 noundef %198, ptr noundef %200, i32 noundef %freed.4.lcssa.i.i, i32 noundef %conv70.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m137.i.i) #10
  call void @__dlm_print_one_lock_resource(ptr noundef %res.0242.i) #10
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %do.body136.i.i, %do.body123.i.i.if.end150.i.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 17
  %201 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %state.i.i, align 2
  %203 = or i16 %202, 16384
  store i16 %203, ptr %state.i.i, align 2
  br label %if.end176.sink.split.i.i

if.else.i.i:                                      ; preds = %for.end120.i.i
  %refmap155.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 21
  %arrayidx.i244.i.i = getelementptr i32, ptr %refmap155.i.i, i32 %div3.i.i
  %204 = ptrtoint ptr %arrayidx.i244.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %arrayidx.i244.i.i, align 4
  %206 = and i32 %205, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool158.not.i.i = icmp eq i32 %206, 0
  br i1 %tobool158.not.i.i, label %if.else.i.i.dlm_free_dead_locks.exit.i_crit_edge, label %do.body160.i.i

if.else.i.i.dlm_free_dead_locks.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_free_dead_locks.exit.i

do.body160.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m161.i.i) #10
  %207 = ptrtoint ptr %_m161.i.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 1088, ptr %_m161.i.i, align 8
  %208 = ptrtoint ptr %name106.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name106.i, align 4
  %210 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %lockname.i, align 8
  %212 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m161.i.i, ptr noundef nonnull @__func__.dlm_free_dead_locks, i32 noundef 2312, ptr noundef nonnull @.str.188, ptr noundef %209, i32 noundef %211, ptr noundef %213, i32 noundef %conv70.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m161.i.i) #10
  br label %if.end176.sink.split.i.i

if.end176.sink.split.i.i:                         ; preds = %do.body160.i.i, %if.end150.i.i
  call void @dlm_lockres_clear_refmap_bit(ptr noundef %dlm, ptr noundef %res.0242.i, i32 noundef %conv70.i.i) #10
  br label %dlm_free_dead_locks.exit.i

dlm_free_dead_locks.exit.i:                       ; preds = %if.end176.sink.split.i.i, %if.else.i.i.dlm_free_dead_locks.exit.i_crit_edge
  call void @__dlm_dirty_lockres(ptr noundef %dlm, ptr noundef %res.0242.i) #10
  call void @__dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef %res.0242.i) #10
  br label %if.end119.i

if.else91.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp94.i = icmp eq i8 %126, -1
  br i1 %cmp94.i, label %if.then96.i, label %if.else91.i.if.end119.i_crit_edge

if.else91.i.if.end119.i_crit_edge:                ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

if.then96.i:                                      ; preds = %if.else91.i
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0242.i, i32 0, i32 21
  %arrayidx.i.i = getelementptr i32, ptr %refmap.i, i32 %div3.i.i
  %214 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %arrayidx.i.i, align 4
  %216 = and i32 %215, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool99.not.i = icmp eq i32 %216, 0
  br i1 %tobool99.not.i, label %if.then96.i.if.end119.i_crit_edge, label %do.body101.i

if.then96.i.if.end119.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

do.body101.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m102.i) #10
  %217 = ptrtoint ptr %_m102.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 1088, ptr %_m102.i, align 8
  %218 = ptrtoint ptr %name106.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %name106.i, align 4
  %220 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %lockname.i, align 8
  %222 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m102.i, ptr noundef nonnull @__func__.dlm_do_local_recovery_cleanup, i32 noundef 2410, ptr noundef nonnull @.str.188, ptr noundef %219, i32 noundef %221, ptr noundef %223, i32 noundef %conv70.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m102.i) #10
  call void @dlm_lockres_clear_refmap_bit(ptr noundef %dlm, ptr noundef %res.0242.i, i32 noundef %conv70.i.i) #10
  br label %if.end119.i

if.end119.i:                                      ; preds = %do.body101.i, %if.then96.i.if.end119.i_crit_edge, %if.else91.i.if.end119.i_crit_edge, %dlm_free_dead_locks.exit.i, %if.end82.i
  call void @_raw_spin_unlock(ptr noundef %spinlock54.i) #10
  br label %for.inc121.i

for.inc121.i:                                     ; preds = %if.end119.i, %dlm_lockres_get.exit220.i, %if.end51.i, %dlm_lockres_get.exit.i
  %tobool4.not.i = icmp eq ptr %63, null
  br i1 %tobool4.not.i, label %for.inc121.i.for.inc133.i_crit_edge, label %for.inc121.i.land.rhs.i_crit_edge

for.inc121.i.land.rhs.i_crit_edge:                ; preds = %for.inc121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.inc121.i.for.inc133.i_crit_edge:              ; preds = %for.inc121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133.i

for.inc133.i:                                     ; preds = %for.inc121.i.for.inc133.i_crit_edge, %for.body.i.for.inc133.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0247.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32768
  br i1 %exitcond.not.i, label %for.inc133.i.if.end78_crit_edge, label %for.inc133.i.for.body.i_crit_edge

for.inc133.i.for.body.i_crit_edge:                ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc133.i.if.end78_crit_edge:                  ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.end78:                                         ; preds = %for.inc133.i.if.end78_crit_edge, %if.end70.if.end78_crit_edge
  call void @dlm_hb_event_notify_attached(ptr noundef %dlm, i32 noundef %idx, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80) #10
  %224 = ptrtoint ptr %_m80 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 1088, ptr %_m80, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80, ptr noundef nonnull @__func__.__dlm_hb_node_down, i32 noundef 2469, ptr noundef nonnull @.str.186, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80) #10
  call void @_clear_bit(i32 noundef %idx, ptr noundef %domain_map) #10
  %exit_domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 19
  call void @_clear_bit(i32 noundef %idx, ptr noundef %exit_domain_map) #10
  %migration_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 41
  call void @__wake_up(ptr noundef %migration_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @_set_bit(i32 noundef %idx, ptr noundef %recovery_map) #10
  br label %return

return:                                           ; preds = %if.end78, %do.body63, %do.body50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_hb_node_up_cb(ptr nocapture noundef readnone %node, i32 noundef %idx, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %live_nodes_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 17
  tail call void @_set_bit(i32 noundef %idx, ptr noundef %live_nodes_map) #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  tail call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_begin_reco_handler(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i255 = alloca i32, align 4
  %_m.i256 = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m18 = alloca i64, align 8
  %_m52 = alloca i64, align 8
  %_m66 = alloca i64, align 8
  %_m88 = alloca i64, align 8
  %_m114 = alloca i64, align 8
  %_m139 = alloca i64, align 8
  %_m162 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %state = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 4
  %conv6 = zext i8 %7 to i32
  %dead_node = getelementptr inbounds %struct.dlm_begin_reco, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dead_node, align 1
  %conv7 = zext i8 %9 to i32
  %dead_node9 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 3
  %10 = ptrtoint ptr %dead_node9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dead_node9, align 1
  %conv10 = zext i8 %11 to i32
  %new_master = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %new_master, align 4
  %conv12 = zext i8 %13 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2770, ptr noundef nonnull @.str.40, ptr noundef %5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m18) #10
  %14 = ptrtoint ptr %_m18 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1088, ptr %_m18, align 8
  %name22 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %15 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name22, align 4
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 4
  %conv24 = zext i8 %18 to i32
  %dead_node25 = getelementptr inbounds %struct.dlm_begin_reco, ptr %buf, i32 0, i32 1
  %19 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dead_node25, align 1
  %conv26 = zext i8 %20 to i32
  %dead_node28 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 3
  %21 = ptrtoint ptr %dead_node28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dead_node28, align 1
  %conv29 = zext i8 %22 to i32
  %new_master31 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 2
  %23 = ptrtoint ptr %new_master31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %new_master31, align 4
  %conv32 = zext i8 %24 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m18, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2779, ptr noundef nonnull @.str.41, ptr noundef %16, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %conv29, i32 noundef %conv32) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m18) #10
  %25 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dead_node25, align 1
  %conv37 = zext i8 %26 to i32
  call void @dlm_fire_domain_eviction_callbacks(ptr noundef %data, i32 noundef %conv37) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %27 = ptrtoint ptr %new_master31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %new_master31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp.not = icmp eq i8 %28, -1
  br i1 %cmp.not, label %if.end15.if.end80_crit_edge, label %if.then43

if.end15.if.end80_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then43:                                        ; preds = %if.end15
  %conv41 = zext i8 %28 to i32
  %recovery_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 20
  %div3.i = lshr i32 %conv41, 5
  %arrayidx.i = getelementptr i32, ptr %recovery_map, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv41, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool49.not = icmp eq i32 %32, 0
  br i1 %tobool49.not, label %do.body65, label %do.body51

do.body51:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #10
  %33 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1088, ptr %_m52, align 8
  %34 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name22, align 4
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buf, align 4
  %conv61 = zext i8 %37 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2788, ptr noundef nonnull @.str.42, ptr noundef %35, i32 noundef %conv41, i32 noundef %conv61) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #10
  br label %if.end80

do.body65:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m66) #10
  %38 = ptrtoint ptr %_m66 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1088, ptr %_m66, align 8
  %39 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name22, align 4
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buf, align 4
  %conv75 = zext i8 %42 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m66, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2792, ptr noundef nonnull @.str.43, ptr noundef %40, i32 noundef %conv41, i32 noundef %conv75) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m66) #10
  br label %if.end80

if.end80:                                         ; preds = %do.body65, %do.body51, %if.end15.if.end80_crit_edge
  %43 = ptrtoint ptr %dead_node28 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dead_node28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp84.not = icmp eq i8 %44, -1
  br i1 %cmp84.not, label %if.end80.if.end103_crit_edge, label %do.body87

if.end80.if.end103_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

do.body87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m88) #10
  %45 = ptrtoint ptr %_m88 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 2305843009213695040, ptr %_m88, align 8
  %46 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name22, align 4
  %conv95 = zext i8 %44 to i32
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf, align 4
  %conv97 = zext i8 %49 to i32
  %50 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dead_node25, align 1
  %conv99 = zext i8 %51 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m88, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2799, ptr noundef nonnull @.str.44, ptr noundef %47, i32 noundef %conv95, i32 noundef %conv97, i32 noundef %conv99) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m88) #10
  br label %if.end103

if.end103:                                        ; preds = %do.body87, %if.end80.if.end103_crit_edge
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %54 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %54)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %55 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %dlm_set_reco_master.exit, !prof !435

do.body4.i:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

dlm_set_reco_master.exit:                         ; preds = %if.end103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %56 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1088, ptr %_m.i, align 8
  %57 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name22, align 4
  %59 = ptrtoint ptr %new_master31 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %new_master31, align 4
  %conv.i = zext i8 %60 to i32
  %conv11.i = zext i8 %53 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_set_reco_master, i32 noundef 115, ptr noundef nonnull @.str.192, ptr noundef %58, i32 noundef %conv.i, i32 noundef %conv11.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %61 = ptrtoint ptr %new_master31 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %53, ptr %new_master31, align 4
  %62 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dead_node25, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i255)
  %64 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %64)
  %agg.tmp.sroa.0.0.copyload.i.i258 = load volatile i32, ptr %spinlock, align 4
  %65 = ptrtoint ptr %agg.tmp.sroa.0.i.i255 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i258, ptr %agg.tmp.sroa.0.i.i255, align 4
  %lock.sroa.0.0.extract.shift.i.i.i259 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i258, 16
  %conv.i.i.i260 = and i32 %agg.tmp.sroa.0.0.copyload.i.i258, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i260, i32 %lock.sroa.0.0.extract.shift.i.i.i259)
  %cmp.i.i.not.i261 = icmp eq i32 %conv.i.i.i260, %lock.sroa.0.0.extract.shift.i.i.i259
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i255)
  br i1 %cmp.i.i.not.i261, label %do.body4.i262, label %do.end7.i, !prof !435

do.body4.i262:                                    ; preds = %dlm_set_reco_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

do.end7.i:                                        ; preds = %dlm_set_reco_master.exit
  %66 = ptrtoint ptr %dead_node28 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dead_node28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %63)
  %cmp.not.i = icmp eq i8 %67, %63
  br i1 %cmp.not.i, label %do.end7.i.dlm_set_reco_dead_node.exit_crit_edge, label %do.body12.i

do.end7.i.dlm_set_reco_dead_node.exit_crit_edge:  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_set_reco_dead_node.exit

do.body12.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i = zext i8 %63 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i256) #10
  %68 = ptrtoint ptr %_m.i256 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 1088, ptr %_m.i256, align 8
  %69 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name22, align 4
  %conv17.i = zext i8 %67 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i256, ptr noundef nonnull @__func__.dlm_set_reco_dead_node, i32 noundef 106, ptr noundef nonnull @.str.193, ptr noundef %70, i32 noundef %conv17.i, i32 noundef %conv9.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i256) #10
  br label %dlm_set_reco_dead_node.exit

dlm_set_reco_dead_node.exit:                      ; preds = %do.body12.i, %do.end7.i.dlm_set_reco_dead_node.exit_crit_edge
  %71 = ptrtoint ptr %dead_node28 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %63, ptr %dead_node28, align 1
  %72 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dead_node25, align 1
  %conv107 = zext i8 %73 to i32
  %recovery_map108 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 20
  %div3.i240 = lshr i32 %conv107, 5
  %arrayidx.i241 = getelementptr i32, ptr %recovery_map108, i32 %div3.i240
  %74 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %arrayidx.i241, align 4
  %and.i242 = and i32 %conv107, 31
  %76 = shl nuw i32 1, %and.i242
  %77 = and i32 %76, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool111.not = icmp eq i32 %77, 0
  br i1 %tobool111.not, label %do.body113, label %dlm_set_reco_dead_node.exit.if.end159_crit_edge

dlm_set_reco_dead_node.exit.if.end159_crit_edge:  ; preds = %dlm_set_reco_dead_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

do.body113:                                       ; preds = %dlm_set_reco_dead_node.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m114) #10
  %78 = ptrtoint ptr %_m114 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 1088, ptr %_m114, align 8
  %79 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buf, align 4
  %conv119 = zext i8 %80 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m114, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2806, ptr noundef nonnull @.str.45, i32 noundef %conv119, i32 noundef %conv107, i32 noundef %conv107) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m114) #10
  %81 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dead_node25, align 1
  %conv128 = zext i8 %82 to i32
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 18
  %div3.i245 = lshr i32 %conv128, 5
  %arrayidx.i246 = getelementptr i32, ptr %domain_map, i32 %div3.i245
  %83 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %arrayidx.i246, align 4
  %and.i247 = and i32 %conv128, 31
  %85 = shl nuw i32 1, %and.i247
  %86 = and i32 %85, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool131.not = icmp eq i32 %86, 0
  br i1 %tobool131.not, label %do.body113.do.body138_crit_edge, label %lor.lhs.false

do.body113.do.body138_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body138

lor.lhs.false:                                    ; preds = %do.body113
  %live_nodes_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 17
  %arrayidx.i251 = getelementptr i32, ptr %live_nodes_map, i32 %div3.i245
  %87 = ptrtoint ptr %arrayidx.i251 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i251, align 4
  %89 = and i32 %88, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool136.not = icmp eq i32 %89, 0
  br i1 %tobool136.not, label %lor.lhs.false.do.body138_crit_edge, label %lor.lhs.false.if.end148_crit_edge

lor.lhs.false.if.end148_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

lor.lhs.false.do.body138_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body138

do.body138:                                       ; preds = %lor.lhs.false.do.body138_crit_edge, %do.body113.do.body138_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m139) #10
  %90 = ptrtoint ptr %_m139 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 1088, ptr %_m139, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m139, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2811, ptr noundef nonnull @.str.46, i32 noundef %conv128) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m139) #10
  br label %if.end148

if.end148:                                        ; preds = %do.body138, %lor.lhs.false.if.end148_crit_edge
  %91 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dead_node25, align 1
  %conv150 = zext i8 %92 to i32
  call void @_set_bit(i32 noundef %conv150, ptr noundef %domain_map) #10
  %93 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dead_node25, align 1
  %conv154 = zext i8 %94 to i32
  %live_nodes_map155 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 17
  call void @_set_bit(i32 noundef %conv154, ptr noundef %live_nodes_map155) #10
  %95 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %dead_node25, align 1
  %conv158 = zext i8 %96 to i32
  call fastcc void @__dlm_hb_node_down(ptr noundef %data, i32 noundef %conv158)
  br label %if.end159

if.end159:                                        ; preds = %if.end148, %dlm_set_reco_dead_node.exit.if.end159_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %dlm_reco_thread_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 39
  call void @__wake_up(ptr noundef %dlm_reco_thread_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m162) #10
  %97 = ptrtoint ptr %_m162 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 1088, ptr %_m162, align 8
  %98 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name22, align 4
  %100 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %buf, align 4
  %conv168 = zext i8 %101 to i32
  %102 = ptrtoint ptr %dead_node25 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dead_node25, align 1
  %conv170 = zext i8 %103 to i32
  %104 = ptrtoint ptr %dead_node28 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %dead_node28, align 1
  %conv173 = zext i8 %105 to i32
  %106 = ptrtoint ptr %new_master31 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %new_master31, align 4
  %conv176 = zext i8 %107 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m162, ptr noundef nonnull @__func__.dlm_begin_reco_handler, i32 noundef 2824, ptr noundef nonnull @.str.47, ptr noundef %99, i32 noundef %conv168, i32 noundef %conv170, i32 noundef %conv173, i32 noundef %conv176) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m162) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end159, %do.body
  %retval.0.ph = phi i32 [ 0, %if.end159 ], [ -11, %do.body ]
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_finalize_reco_handler(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i12.i = alloca i32, align 4
  %_m.i13.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m22 = alloca i64, align 8
  %_m52 = alloca i64, align 8
  %_m81 = alloca i64, align 8
  %_m113 = alloca i64, align 8
  %_m139 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool1.not, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1088, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 4
  %conv7 = zext i8 %7 to i32
  %dead_node = getelementptr inbounds %struct.dlm_finalize_reco, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dead_node, align 1
  %conv8 = zext i8 %9 to i32
  %dead_node9 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 3
  %10 = ptrtoint ptr %dead_node9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dead_node9, align 1
  %conv10 = zext i8 %11 to i32
  %new_master = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %new_master, align 4
  %conv12 = zext i8 %13 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_finalize_reco_handler, i32 noundef 2903, ptr noundef nonnull @.str.48, ptr noundef %5, i32 noundef %conv7, i32 noundef %spec.select, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %14 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %new_master, align 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp.not = icmp eq i8 %15, %17
  br i1 %cmp.not, label %if.end42, label %do.body21

do.body21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m22) #10
  %18 = ptrtoint ptr %_m22 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606848064, ptr %_m22, align 8
  %conv27 = zext i8 %17 to i32
  %conv30 = zext i8 %15 to i32
  %19 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dead_node, align 1
  %conv32 = zext i8 %20 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m22, ptr noundef nonnull @__func__.dlm_finalize_reco_handler, i32 noundef 2910, ptr noundef nonnull @.str.49, i32 noundef %conv27, i32 noundef %conv30, i32 noundef %conv32) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m22) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2911, 0\0A.popsection", ""() #10, !srcloc !490
  unreachable

if.end42:                                         ; preds = %if.end
  %21 = ptrtoint ptr %dead_node9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dead_node9, align 1
  %23 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dead_node, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp48.not = icmp eq i8 %22, %24
  br i1 %cmp48.not, label %if.end72, label %do.body51

do.body51:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #10
  %25 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606848064, ptr %_m52, align 8
  %conv57 = zext i8 %15 to i32
  %conv59 = zext i8 %24 to i32
  %conv62 = zext i8 %22 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.dlm_finalize_reco_handler, i32 noundef 2916, ptr noundef nonnull @.str.50, i32 noundef %conv57, i32 noundef %conv59, i32 noundef %conv62) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2917, 0\0A.popsection", ""() #10, !srcloc !491
  unreachable

if.end72:                                         ; preds = %if.end42
  br i1 %tobool1.not, label %sw.bb, label %sw.bb105

sw.bb:                                            ; preds = %if.end72
  call fastcc void @dlm_finish_local_lockres_recovery(ptr noundef %data, i8 noundef zeroext %22, i8 noundef zeroext %15)
  %state = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 4
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %state, align 2
  %28 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool78.not = icmp eq i16 %28, 0
  br i1 %tobool78.not, label %if.end99, label %do.body80

do.body80:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81) #10
  %29 = ptrtoint ptr %_m81 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1152921504606848064, ptr %_m81, align 8
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 4
  %conv87 = zext i8 %33 to i32
  %34 = ptrtoint ptr %dead_node to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dead_node, align 1
  %conv89 = zext i8 %35 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81, ptr noundef nonnull @__func__.dlm_finalize_reco_handler, i32 noundef 2927, ptr noundef nonnull @.str.51, ptr noundef %31, i32 noundef %conv87, i32 noundef %conv89) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81) #10
  call fastcc void @dlm_print_reco_node_status(ptr noundef %data)
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2929, 0\0A.popsection", ""() #10, !srcloc !492
  unreachable

if.end99:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i16 %27, 2
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %or, ptr %state, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %do.body138

sw.bb105:                                         ; preds = %if.end72
  %state107 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 21, i32 4
  %37 = ptrtoint ptr %state107 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %state107, align 2
  %39 = and i16 %38, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool110.not = icmp eq i16 %39, 0
  br i1 %tobool110.not, label %do.body112, label %if.end131

do.body112:                                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m113) #10
  %40 = ptrtoint ptr %_m113 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606848064, ptr %_m113, align 8
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  %conv119 = zext i8 %15 to i32
  %conv121 = zext i8 %22 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m113, ptr noundef nonnull @__func__.dlm_finalize_reco_handler, i32 noundef 2939, ptr noundef nonnull @.str.52, ptr noundef %42, i32 noundef %conv119, i32 noundef %conv121) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m113) #10
  call fastcc void @dlm_print_reco_node_status(ptr noundef %data)
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2941, 0\0A.popsection", ""() #10, !srcloc !493
  unreachable

if.end131:                                        ; preds = %sw.bb105
  %and135 = and i16 %38, -3
  %43 = ptrtoint ptr %state107 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %and135, ptr %state107, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %44 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %44)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %45 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !435

do.body4.i:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #10, !srcloc !449
  unreachable

do.end7.i:                                        ; preds = %if.end131
  %conv.i = zext i8 %22 to i32
  %recovery_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 20
  call void @_clear_bit(i32 noundef %conv.i, ptr noundef %recovery_map.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %46 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %46)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock, align 4
  %47 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !435

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

do.end7.i.i:                                      ; preds = %do.end7.i
  %48 = ptrtoint ptr %dead_node9 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dead_node9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp.not.i.i = icmp eq i8 %49, -1
  br i1 %cmp.not.i.i, label %do.end7.i.i.dlm_set_reco_dead_node.exit.i_crit_edge, label %do.body12.i.i

do.end7.i.i.dlm_set_reco_dead_node.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_set_reco_dead_node.exit.i

do.body12.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %50 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1088, ptr %_m.i.i, align 8
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 4
  %conv17.i.i = zext i8 %49 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_set_reco_dead_node, i32 noundef 106, ptr noundef nonnull @.str.193, ptr noundef %52, i32 noundef %conv17.i.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  br label %dlm_set_reco_dead_node.exit.i

dlm_set_reco_dead_node.exit.i:                    ; preds = %do.body12.i.i, %do.end7.i.i.dlm_set_reco_dead_node.exit.i_crit_edge
  %53 = ptrtoint ptr %dead_node9 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %dead_node9, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12.i)
  %54 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %54)
  %agg.tmp.sroa.0.0.copyload.i.i15.i = load volatile i32, ptr %spinlock, align 4
  %55 = ptrtoint ptr %agg.tmp.sroa.0.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i15.i, ptr %agg.tmp.sroa.0.i.i12.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i16.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i15.i, 16
  %conv.i.i.i17.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i15.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i17.i, i32 %lock.sroa.0.0.extract.shift.i.i.i16.i)
  %cmp.i.i.not.i18.i = icmp eq i32 %conv.i.i.i17.i, %lock.sroa.0.0.extract.shift.i.i.i16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12.i)
  br i1 %cmp.i.i.not.i18.i, label %do.body4.i19.i, label %__dlm_reset_recovery.exit, !prof !435

do.body4.i19.i:                                   ; preds = %dlm_set_reco_dead_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

__dlm_reset_recovery.exit:                        ; preds = %dlm_set_reco_dead_node.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i13.i) #10
  %56 = ptrtoint ptr %_m.i13.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1088, ptr %_m.i13.i, align 8
  %57 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name, align 4
  %59 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %new_master, align 4
  %conv.i.i = zext i8 %60 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i13.i, ptr noundef nonnull @__func__.dlm_set_reco_master, i32 noundef 115, ptr noundef nonnull @.str.192, ptr noundef %58, i32 noundef %conv.i.i, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i13.i) #10
  %61 = ptrtoint ptr %new_master to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %new_master, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %dlm_reco_thread_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 39
  call void @__wake_up(ptr noundef %dlm_reco_thread_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %do.body138

do.body138:                                       ; preds = %__dlm_reset_recovery.exit, %if.end99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m139) #10
  %62 = ptrtoint ptr %_m139 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1088, ptr %_m139, align 8
  %63 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name, align 4
  %65 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %buf, align 4
  %conv145 = zext i8 %66 to i32
  %67 = ptrtoint ptr %dead_node9 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %dead_node9, align 1
  %conv148 = zext i8 %68 to i32
  %69 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %new_master, align 4
  %conv151 = zext i8 %70 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m139, ptr noundef nonnull @__func__.dlm_finalize_reco_handler, i32 noundef 2951, ptr noundef nonnull @.str.53, ptr noundef %64, i32 noundef %conv145, i32 noundef %conv148, i32 noundef %conv151) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m139) #10
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body138, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_finish_local_lockres_recovery(ptr noundef %dlm, i8 noundef zeroext %dead_node, i8 noundef zeroext %new_master) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i208 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i209 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m102 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !435

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmrecovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2135, 0\0A.popsection", ""() #10, !srcloc !494
  unreachable

do.end9:                                          ; preds = %entry
  %reco = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21
  %2 = ptrtoint ptr %reco to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reco, align 4
  %cmp.not229 = icmp eq ptr %3, %reco
  br i1 %cmp.not229, label %do.end9.for.cond51.preheader_crit_edge, label %for.body.lr.ph

do.end9.for.cond51.preheader_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i8 %new_master to i32
  br label %for.cond51.preheader

for.body.lr.ph:                                   ; preds = %do.end9
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %conv31 = zext i8 %new_master to i32
  br label %for.body

for.cond51.preheader:                             ; preds = %for.inc.for.cond51.preheader_crit_edge, %do.end9.for.cond51.preheader_crit_edge
  %conv113.pre-phi = phi i32 [ %.pre, %do.end9.for.cond51.preheader_crit_edge ], [ %conv31, %for.inc.for.cond51.preheader_crit_edge ]
  %lockres_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 1
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %name106 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  br label %for.body54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in230 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn233, %for.inc.for.body_crit_edge ]
  %res.0231 = getelementptr i8, ptr %.pn.in230, i32 -68
  %4 = ptrtoint ptr %.pn.in230 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn233 = load ptr, ptr %.pn.in230, align 4
  %owner = getelementptr i8, ptr %.pn.in230, i32 128
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %owner, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %dead_node)
  %cmp21 = icmp eq i8 %6, %dead_node
  br i1 %cmp21, label %do.body24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body24:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1088, ptr %_m, align 8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %lockname = getelementptr i8, ptr %.pn.in230, i32 -60
  %10 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lockname, align 8
  %name28 = getelementptr i8, ptr %.pn.in230, i32 -52
  %12 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name28, align 8
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %owner, align 4
  %conv30 = zext i8 %15 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_finish_local_lockres_recovery, i32 noundef 2141, ptr noundef nonnull @.str.194, ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %conv30, i32 noundef %conv31) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in230) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body24.list_del_init.exit_crit_edge

do.body24.list_del_init.exit_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in230, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in230 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in230, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body24.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %.pn.in230 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in230, ptr %.pn.in230, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in230, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.pn.in230, ptr %prev.i3.i, align 4
  %spinlock36 = getelementptr i8, ptr %.pn.in230, i32 32
  call void @_raw_spin_lock(ptr noundef %spinlock36) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %24 = ptrtoint ptr %spinlock36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock36, align 4
  %25 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !435

do.body4.i:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #10, !srcloc !465
  unreachable

do.end7.i:                                        ; preds = %list_del_init.exit
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %owner, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %new_master)
  %cmp.not.i = icmp eq i8 %27, %new_master
  br i1 %cmp.not.i, label %do.end7.i.dlm_change_lockres_owner.exit_crit_edge, label %if.then11.i

do.end7.i.dlm_change_lockres_owner.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_change_lockres_owner.exit

if.then11.i:                                      ; preds = %do.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %28 = ptrtoint ptr %spinlock36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock36, align 4
  %29 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %dlm_set_lockres_owner.exit.i, !prof !435

do.body4.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !466
  unreachable

dlm_set_lockres_owner.exit.i:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %owner to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %new_master, ptr %owner, align 4
  br label %dlm_change_lockres_owner.exit

dlm_change_lockres_owner.exit:                    ; preds = %dlm_set_lockres_owner.exit.i, %do.end7.i.dlm_change_lockres_owner.exit_crit_edge
  %state = getelementptr i8, ptr %.pn.in230, i32 130
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %state, align 2
  %33 = and i16 %32, -3
  store i16 %33, ptr %state, align 2
  %call40 = call i32 @__dlm_lockres_has_locks(ptr noundef %res.0231) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %dlm_change_lockres_owner.exit.if.end43_crit_edge, label %if.then42

dlm_change_lockres_owner.exit.if.end43_crit_edge: ; preds = %dlm_change_lockres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %dlm_change_lockres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dlm_dirty_lockres(ptr noundef %dlm, ptr noundef %res.0231) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %dlm_change_lockres_owner.exit.if.end43_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock36) #10
  %wq = getelementptr i8, ptr %.pn.in230, i32 76
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @dlm_lockres_put(ptr noundef %res.0231) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn233, %reco
  br i1 %cmp.not, label %for.inc.for.cond51.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.cond51.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond51.preheader

for.body54:                                       ; preds = %for.inc141.for.body54_crit_edge, %for.cond51.preheader
  %i.0237 = phi i32 [ 0, %for.cond51.preheader ], [ %inc, %for.inc141.for.body54_crit_edge ]
  %34 = ptrtoint ptr %lockres_hash.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lockres_hash.i, align 4
  %div3.i = lshr i32 %i.0237, 10
  %arrayidx.i = getelementptr ptr, ptr %35, i32 %div3.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %rem1.i = and i32 %i.0237, 1023
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %37, i32 %rem1.i
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %res.1234 = load ptr, ptr %add.ptr.i, align 4
  %tobool62.not235 = icmp eq ptr %res.1234, null
  br i1 %tobool62.not235, label %for.body54.for.inc141_crit_edge, label %for.body54.for.body63_crit_edge

for.body54.for.body63_crit_edge:                  ; preds = %for.body54
  br label %for.body63

for.body54.for.inc141_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc141

for.body63:                                       ; preds = %for.inc128.for.body63_crit_edge, %for.body54.for.body63_crit_edge
  %res.1236 = phi ptr [ %res.1, %for.inc128.for.body63_crit_edge ], [ %res.1234, %for.body54.for.body63_crit_edge ]
  %state64 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 17
  %39 = ptrtoint ptr %state64 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %state64, align 2
  %41 = and i16 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool67.not = icmp eq i16 %41, 0
  br i1 %tobool67.not, label %for.body63.if.end76_crit_edge, label %if.then68

for.body63.if.end76_crit_edge:                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then68:                                        ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  %spinlock69 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock69) #10
  %42 = ptrtoint ptr %state64 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %state64, align 2
  %44 = and i16 %43, -16385
  store i16 %44, ptr %state64, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock69) #10
  %wq75 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq75, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then68, %for.body63.if.end76_crit_edge
  %45 = ptrtoint ptr %state64 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %state64, align 2
  %47 = and i16 %46, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool80.not = icmp eq i16 %47, 0
  br i1 %tobool80.not, label %if.end76.for.inc128_crit_edge, label %if.end82

if.end76.for.inc128_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc128

if.end82:                                         ; preds = %if.end76
  %owner83 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 16
  %48 = ptrtoint ptr %owner83 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %owner83, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %dead_node)
  %cmp86.not = icmp eq i8 %49, %dead_node
  br i1 %cmp86.not, label %if.end82.if.end94_crit_edge, label %land.lhs.true

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true:                                    ; preds = %if.end82
  %50 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp91.not = icmp eq i8 %49, %51
  br i1 %cmp91.not, label %land.lhs.true.if.end94_crit_edge, label %land.lhs.true.for.inc128_crit_edge

land.lhs.true.for.inc128_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc128

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.end94:                                         ; preds = %land.lhs.true.if.end94_crit_edge, %if.end82.if.end94_crit_edge
  %recovering95 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 8
  %52 = ptrtoint ptr %recovering95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %recovering95, align 4
  %cmp.i.not = icmp eq ptr %53, %recovering95
  br i1 %cmp.i.not, label %if.end94.do.body101_crit_edge, label %if.then98

if.end94.do.body101_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body101

if.then98:                                        ; preds = %if.end94
  %call.i.i202 = call zeroext i1 @__list_del_entry_valid(ptr noundef %recovering95) #10
  br i1 %call.i.i202, label %if.end.i.i205, label %if.then98.list_del_init.exit207_crit_edge

if.then98.list_del_init.exit207_crit_edge:        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit207

if.end.i.i205:                                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i203 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %prev.i.i203 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i203, align 4
  %56 = ptrtoint ptr %recovering95 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %recovering95, align 4
  %prev1.i.i.i204 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i204 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i204, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit207

list_del_init.exit207:                            ; preds = %if.end.i.i205, %if.then98.list_del_init.exit207_crit_edge
  %60 = ptrtoint ptr %recovering95 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %recovering95, ptr %recovering95, align 4
  %prev.i3.i206 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %prev.i3.i206 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %recovering95, ptr %prev.i3.i206, align 4
  call void @dlm_lockres_put(ptr noundef nonnull %res.1236) #10
  br label %do.body101

do.body101:                                       ; preds = %list_del_init.exit207, %if.end94.do.body101_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m102) #10
  %62 = ptrtoint ptr %_m102 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1088, ptr %_m102, align 8
  %63 = ptrtoint ptr %name106 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name106, align 4
  %lockname107 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 1
  %65 = ptrtoint ptr %lockname107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lockname107, align 8
  %name110 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %name110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name110, align 8
  %69 = ptrtoint ptr %owner83 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %owner83, align 4
  %conv112 = zext i8 %70 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m102, ptr noundef nonnull @__func__.dlm_finish_local_lockres_recovery, i32 noundef 2186, ptr noundef nonnull @.str.194, ptr noundef %64, i32 noundef %66, ptr noundef %68, i32 noundef %conv112, i32 noundef %conv113.pre-phi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m102) #10
  %spinlock117 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock117) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i209)
  %71 = ptrtoint ptr %spinlock117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %agg.tmp.sroa.0.0.copyload.i.i211 = load volatile i32, ptr %spinlock117, align 4
  %72 = ptrtoint ptr %agg.tmp.sroa.0.i.i209 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i211, ptr %agg.tmp.sroa.0.i.i209, align 4
  %lock.sroa.0.0.extract.shift.i.i.i212 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i211, 16
  %conv.i.i.i213 = and i32 %agg.tmp.sroa.0.0.copyload.i.i211, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i213, i32 %lock.sroa.0.0.extract.shift.i.i.i212)
  %cmp.i.i.not.i214 = icmp eq i32 %conv.i.i.i213, %lock.sroa.0.0.extract.shift.i.i.i212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i209)
  br i1 %cmp.i.i.not.i214, label %do.body4.i215, label %do.end7.i218, !prof !435

do.body4.i215:                                    ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #10, !srcloc !465
  unreachable

do.end7.i218:                                     ; preds = %do.body101
  %73 = ptrtoint ptr %owner83 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %owner83, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %new_master)
  %cmp.not.i217 = icmp eq i8 %74, %new_master
  br i1 %cmp.not.i217, label %do.end7.i218.dlm_change_lockres_owner.exit226_crit_edge, label %if.then11.i223

do.end7.i218.dlm_change_lockres_owner.exit226_crit_edge: ; preds = %do.end7.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_change_lockres_owner.exit226

if.then11.i223:                                   ; preds = %do.end7.i218
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i208)
  %75 = ptrtoint ptr %spinlock117 to i32
  call void @__asan_load4_noabort(i32 %75)
  %agg.tmp.sroa.0.0.copyload.i.i.i219 = load volatile i32, ptr %spinlock117, align 4
  %76 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i219, ptr %agg.tmp.sroa.0.i.i.i208, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i220 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i219, 16
  %conv.i.i.i.i221 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i219, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i221, i32 %lock.sroa.0.0.extract.shift.i.i.i.i220)
  %cmp.i.i.not.i.i222 = icmp eq i32 %conv.i.i.i.i221, %lock.sroa.0.0.extract.shift.i.i.i.i220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i208)
  br i1 %cmp.i.i.not.i.i222, label %do.body4.i.i224, label %dlm_set_lockres_owner.exit.i225, !prof !435

do.body4.i.i224:                                  ; preds = %if.then11.i223
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !466
  unreachable

dlm_set_lockres_owner.exit.i225:                  ; preds = %if.then11.i223
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %owner83 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %new_master, ptr %owner83, align 4
  br label %dlm_change_lockres_owner.exit226

dlm_change_lockres_owner.exit226:                 ; preds = %dlm_set_lockres_owner.exit.i225, %do.end7.i218.dlm_change_lockres_owner.exit226_crit_edge
  %78 = ptrtoint ptr %state64 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %state64, align 2
  %80 = and i16 %79, -3
  store i16 %80, ptr %state64, align 2
  %call122 = call i32 @__dlm_lockres_has_locks(ptr noundef nonnull %res.1236) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %dlm_change_lockres_owner.exit226.if.end125_crit_edge, label %if.then124

dlm_change_lockres_owner.exit226.if.end125_crit_edge: ; preds = %dlm_change_lockres_owner.exit226
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then124:                                       ; preds = %dlm_change_lockres_owner.exit226
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dlm_dirty_lockres(ptr noundef %dlm, ptr noundef nonnull %res.1236) #10
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %dlm_change_lockres_owner.exit226.if.end125_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock117) #10
  %wq127 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.1236, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq127, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %for.inc128

for.inc128:                                       ; preds = %if.end125, %land.lhs.true.for.inc128_crit_edge, %if.end76.for.inc128_crit_edge
  %81 = ptrtoint ptr %res.1236 to i32
  call void @__asan_load4_noabort(i32 %81)
  %res.1 = load ptr, ptr %res.1236, align 4
  %tobool62.not = icmp eq ptr %res.1, null
  br i1 %tobool62.not, label %for.inc128.for.inc141_crit_edge, label %for.inc128.for.body63_crit_edge

for.inc128.for.body63_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.inc128.for.inc141_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc141

for.inc141:                                       ; preds = %for.inc128.for.inc141_crit_edge, %for.body54.for.inc141_crit_edge
  %inc = add nuw nsw i32 %i.0237, 1
  %exitcond.not = icmp eq i32 %inc, 32768
  br i1 %exitcond.not, label %for.end142, label %for.inc141.for.body54_crit_edge

for.inc141.for.body54_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

for.end142:                                       ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_domain_fully_joined(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlmlock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_reco_ast(ptr nocapture noundef readonly %astdata) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1088, ptr %_m, align 8
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %astdata, i32 0, i32 12
  %1 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %node_num, align 4
  %conv = zext i8 %2 to i32
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %astdata, i32 0, i32 11
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_reco_ast, i32 noundef 2520, ptr noundef nonnull @.str.81, i32 noundef %conv, ptr noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_reco_bast(ptr nocapture noundef readonly %astdata, i32 noundef %blocked_type) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1088, ptr %_m, align 8
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %astdata, i32 0, i32 12
  %1 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %node_num, align 4
  %conv = zext i8 %2 to i32
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %astdata, i32 0, i32 11
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_reco_bast, i32 noundef 2526, ptr noundef nonnull @.str.82, i32 noundef %conv, ptr noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlmunlock(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_reco_unlock_ast(ptr nocapture noundef readnone %astdata, i32 noundef %st) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1088, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_reco_unlock_ast, i32 noundef 2530, ptr noundef nonnull @.str.90) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_errname(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lookup_lockres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_kick_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_destroy_recovery_area(ptr noundef %dlm) unnamed_addr #0 align 64 {
entry:
  %tmplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmplist) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %tmplist, i32 0, i32 1
  %1 = ptrtoint ptr %tmplist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmplist, ptr %tmplist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmplist, ptr %0, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_reco_state_lock) #10
  %node_data = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 1
  %3 = ptrtoint ptr %node_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %node_data, align 4
  %cmp.i.not.i = icmp eq ptr %4, %node_data
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %tmplist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmplist, align 4
  %prev2.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 1, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tmplist, ptr %prev3.i.i, align 4
  store ptr %4, ptr %tmplist, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %node_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node_data, ptr %node_data, align 4
  store ptr %node_data, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_reco_state_lock) #10
  %13 = ptrtoint ptr %tmplist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmplist, align 4
  %cmp.not19 = icmp eq ptr %14, %tmplist
  br i1 %cmp.not19, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %14, %list_splice_init.exit.for.body_crit_edge ]
  %ndata.0 = getelementptr i8, ptr %.pn.in20, i32 -8
  %15 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in20, ptr %.pn.in20, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.pn.in20, ptr %prev.i3.i, align 4
  call void @kfree(ptr noundef %ndata.0) #10
  %cmp.not = icmp eq ptr %.pn, %tmplist
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmplist) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_drop_inflight_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_finish_migration(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_set_refmap_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_new_lock(i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_attach_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_hb_event_notify_attached(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_clean_master_list(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_do_purge_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_clear_refmap_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_lockres_calc_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_dirty_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dlm_lockres_has_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !47, !49, !51, !52, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !183, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !202, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !219, !221, !222, !223, !225, !227, !229, !231, !233, !235, !237, !239, !240, !241, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !262, !263, !265, !267, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !291, !293, !295, !297, !299, !301, !302, !304, !306, !308, !309, !311, !313, !314, !316, !317, !319, !321, !322, !324, !325, !327, !329, !331, !332, !334, !336, !338, !340, !342, !344, !346, !347, !349, !351, !353, !355, !357, !359, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !378, !379, !380, !382, !384, !386, !388, !390, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !410, !412, !413, !415, !417, !418, !420, !421, !423}
!llvm.module.flags = !{!424, !425, !426, !427, !428, !429, !430, !431}
!llvm.ident = !{!432}

!0 = !{ptr @__func__.dlm_dispatch_work, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 144, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dlm_launch_recovery_thread, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 181, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 183, i32 30}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 186, i32 3}
!10 = !{ptr @__func__.dlm_complete_recovery_thread, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 197, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 343, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dlm_wait_for_node_death._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @dlm_wait_for_node_death._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 360, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dlm_wait_for_node_recovery._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @dlm_wait_for_node_recovery._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__func__.dlm_wait_for_recovery, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 391, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__func__.dlm_request_all_locks_handler, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 825, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.dlm_reco_data_done_handler, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 980, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 984, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 999, i32 5}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1010, i32 5}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1026, i32 3}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1030, i32 2}
!44 = !{ptr @__func__.dlm_send_one_lockres, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1272, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1277, i32 3}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1306, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1319, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1323, i32 2}
!57 = !{ptr @__func__.dlm_mig_lockres_handler, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1363, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1379, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1383, i32 3}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1403, i32 4}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1420, i32 5}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1425, i32 5}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1495, i32 3}
!72 = !{ptr @__func__.dlm_do_master_requery, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1675, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1686, i32 3}
!77 = !{ptr @__func__.dlm_master_requery_handler, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1725, i32 5}
!79 = !{ptr @__func__.dlm_move_lockres_to_recovery_list, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2055, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2072, i32 5}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2080, i32 5}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2101, i32 5}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2112, i32 5}
!90 = !{ptr @__func__.dlm_begin_reco_handler, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2767, i32 3}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2777, i32 2}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2786, i32 4}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2790, i32 4}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2797, i32 3}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2804, i32 3}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2809, i32 4}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2822, i32 2}
!107 = !{ptr @__func__.dlm_finalize_reco_handler, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2901, i32 2}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2908, i32 3}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2914, i32 3}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2924, i32 5}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2936, i32 5}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2950, i32 2}
!120 = !{ptr @__func__.dlm_recovery_thread, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 283, i32 2}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 301, i32 2}
!125 = !{ptr @__func__.dlm_do_recovery, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 435, i32 3}
!127 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 444, i32 3}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 461, i32 3}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 472, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 495, i32 3}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 514, i32 3}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 521, i32 3}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 404, i32 2}
!142 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @dlm_begin_recovery._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @dlm_begin_recovery._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @__func__.dlm_pick_recovery_master, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2551, i32 2}
!147 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2557, i32 9}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2560, i32 2}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2564, i32 3}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2570, i32 4}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2581, i32 5}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2584, i32 6}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2596, i32 4}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2614, i32 4}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2624, i32 4}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2627, i32 3}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2636, i32 4}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2641, i32 3}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2645, i32 3}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2652, i32 3}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2661, i32 4}
!178 = !{ptr @__func__.dlm_reco_ast, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2519, i32 2}
!180 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @__func__.dlm_reco_bast, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2525, i32 2}
!183 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__func__.dlm_send_begin_reco_message, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2677, i32 2}
!186 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2692, i32 4}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2697, i32 4}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2701, i32 3}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2711, i32 4}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2722, i32 4}
!197 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2735, i32 4}
!199 = !{ptr @__func__.dlm_reco_unlock_ast, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2530, i32 2}
!201 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 421, i32 2}
!204 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @dlm_print_recovery_master._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @dlm_print_recovery_master._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 415, i32 2}
!211 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @dlm_end_recovery._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @dlm_end_recovery._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @__func__.dlm_remaster_locks, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 547, i32 4}
!216 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 559, i32 3}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 582, i32 6}
!221 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 588, i32 6}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 606, i32 5}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 614, i32 5}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 619, i32 5}
!231 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 624, i32 5}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 632, i32 2}
!235 = !{ptr @.str.108, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 643, i32 4}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 661, i32 6}
!239 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 668, i32 6}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 672, i32 6}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 679, i32 3}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 695, i32 4}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 704, i32 4}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 706, i32 4}
!253 = !{ptr @__func__.dlm_request_all_locks, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 786, i32 2}
!255 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.119, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 789, i32 2}
!258 = !{ptr @.str.120, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 802, i32 3}
!260 = !{ptr @__func__.dlm_send_finalize_reco_message, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2840, i32 2}
!262 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.122, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2869, i32 5}
!265 = !{ptr @__func__.dlm_print_reco_node_status, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 233, i32 2}
!267 = !{ptr @.str.123, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!270 = distinct !{null, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 239, i32 14}
!272 = !{ptr @.str.127, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 242, i32 10}
!274 = !{ptr @.str.128, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 245, i32 10}
!276 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 248, i32 10}
!278 = !{ptr @.str.130, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 257, i32 10}
!280 = !{ptr @.str.131, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 260, i32 10}
!282 = !{ptr @.str.132, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 263, i32 10}
!284 = !{ptr @.str.133, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 266, i32 3}
!286 = !{ptr @.str.134, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 270, i32 3}
!288 = !{ptr @__func__.dlm_request_all_locks_worker, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 878, i32 2}
!290 = !{ptr @.str.135, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.136, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 886, i32 4}
!293 = !{ptr @.str.137, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 892, i32 4}
!295 = !{ptr @.str.138, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 916, i32 4}
!297 = !{ptr @.str.139, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 932, i32 4}
!299 = !{ptr @__func__.dlm_move_reco_locks_to_list, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1050, i32 6}
!301 = !{ptr @.str.140, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.141, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1067, i32 4}
!304 = !{ptr @.str.142, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1072, i32 4}
!306 = !{ptr @__func__.dlm_send_all_done_msg, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 950, i32 2}
!308 = !{ptr @.str.143, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.144, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 957, i32 3}
!311 = !{ptr @.str.145, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 83, i32 8}
!313 = !{ptr @dlm_reco_state_lock, !312, !"dlm_reco_state_lock", i1 false, i1 false}
!314 = !{ptr @.str.146, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 84, i32 8}
!316 = !{ptr @dlm_mig_cookie_lock, !315, !"dlm_mig_cookie_lock", i1 false, i1 false}
!317 = !{ptr @dlm_mig_cookie, !318, !"dlm_mig_cookie", i1 false, i1 false}
!318 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 85, i32 12}
!319 = !{ptr @__func__.dlm_prepare_lvb_for_migration, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1195, i32 2}
!321 = !{ptr @.str.147, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @__func__.dlm_send_mig_lockres_msg, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1117, i32 2}
!324 = !{ptr @.str.148, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.149, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1129, i32 3}
!327 = !{ptr @.str.150, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1141, i32 5}
!329 = !{ptr @__func__.dlm_mig_lockres_worker, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1555, i32 4}
!331 = !{ptr @.str.151, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.152, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1560, i32 4}
!334 = !{ptr @.str.153, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1567, i32 4}
!336 = !{ptr @.str.154, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1578, i32 3}
!338 = !{ptr @.str.155, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1580, i32 3}
!340 = !{ptr @__func__.dlm_lockres_master_requery, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1644, i32 4}
!342 = !{ptr @.str.156, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1651, i32 4}
!344 = !{ptr @__func__.dlm_process_recovery_data, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1802, i32 2}
!346 = !{ptr @.str.157, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.158, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1809, i32 4}
!349 = !{ptr @.str.159, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1850, i32 5}
!351 = !{ptr @.str.160, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1864, i32 5}
!353 = !{ptr @.str.161, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1871, i32 5}
!355 = !{ptr @.str.162, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1884, i32 5}
!357 = !{ptr @.str.163, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1903, i32 4}
!359 = !{ptr @.str.164, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1954, i32 7}
!361 = !{ptr @.str.165, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1958, i32 7}
!363 = !{ptr @dlm_process_recovery_data._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @dlm_process_recovery_data._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.167, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1960, i32 8}
!367 = !{ptr @dlm_process_recovery_data._entry.166, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @dlm_process_recovery_data._entry_ptr.168, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.170, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1961, i32 7}
!371 = !{ptr @dlm_process_recovery_data._entry.169, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @dlm_process_recovery_data._entry_ptr.171, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @dlm_process_recovery_data._entry.172, !374, !"_entry", i1 false, i1 false}
!374 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1963, i32 8}
!375 = !{ptr @dlm_process_recovery_data._entry_ptr.173, !374, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1964, i32 7}
!378 = !{ptr @dlm_process_recovery_data._entry.174, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @dlm_process_recovery_data._entry_ptr.176, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.177, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 1994, i32 5}
!382 = !{ptr @.str.178, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2000, i32 5}
!384 = !{ptr @.str.179, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2023, i32 4}
!386 = !{ptr @.str.180, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2030, i32 2}
!388 = !{ptr @__func__.__dlm_hb_node_down, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2425, i32 3}
!390 = !{ptr @.str.181, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.182, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2431, i32 4}
!393 = !{ptr @.str.183, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2440, i32 3}
!395 = !{ptr @.str.184, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2446, i32 3}
!397 = !{ptr @.str.185, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2456, i32 3}
!399 = !{ptr @.str.186, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2469, i32 2}
!401 = !{ptr @__func__.dlm_do_local_recovery_cleanup, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2356, i32 7}
!403 = !{ptr @.str.187, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2388, i32 6}
!405 = !{ptr @.str.188, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2407, i32 6}
!407 = !{ptr @__func__.dlm_revalidate_lvb, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2246, i32 3}
!409 = !{ptr @.str.189, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @__func__.dlm_free_dead_locks, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2298, i32 3}
!412 = !{ptr @.str.190, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.191, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2302, i32 4}
!415 = !{ptr @__func__.dlm_set_reco_master, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 114, i32 2}
!417 = !{ptr @.str.192, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @__func__.dlm_set_reco_dead_node, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 105, i32 3}
!420 = !{ptr @.str.193, !419, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @__func__.dlm_finish_local_lockres_recovery, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../fs/ocfs2/dlm/dlmrecovery.c", i32 2139, i32 4}
!423 = !{ptr @.str.194, !422, !"<string literal>", i1 false, i1 false}
!424 = !{i32 1, !"wchar_size", i32 2}
!425 = !{i32 1, !"min_enum_size", i32 4}
!426 = !{i32 8, !"branch-target-enforcement", i32 0}
!427 = !{i32 8, !"sign-return-address", i32 0}
!428 = !{i32 8, !"sign-return-address-all", i32 0}
!429 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!430 = !{i32 7, !"uwtable", i32 1}
!431 = !{i32 7, !"frame-pointer", i32 2}
!432 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!433 = !{!"branch_weights", i32 2000, i32 1}
!434 = !{i64 2157264498, i64 2157264989, i64 2157264535, i64 2157264591, i64 2157264625, i64 2157264649, i64 2157264690, i64 2157264711, i64 2157264739, i64 2157264773}
!435 = !{!"branch_weights", i32 1, i32 2000}
!436 = !{i64 2157250782, i64 2157251273, i64 2157250819, i64 2157250875, i64 2157250909, i64 2157250933, i64 2157250974, i64 2157250995, i64 2157251023, i64 2157251057}
!437 = !{i64 2157248386, i64 2157248877, i64 2157248423, i64 2157248479, i64 2157248513, i64 2157248537, i64 2157248578, i64 2157248599, i64 2157248627, i64 2157248661}
!438 = !{i64 2157291543, i64 2157292034, i64 2157291580, i64 2157291636, i64 2157291670, i64 2157291694, i64 2157291735, i64 2157291756, i64 2157291784, i64 2157291818}
!439 = !{i64 2157293175, i64 2157297727, i64 2157293212, i64 2157293268, i64 2157293302, i64 2157293326, i64 2157293367, i64 2157293388, i64 2157293416, i64 2157293450}
!440 = !{i64 2157522333, i64 2157526886, i64 2157522370, i64 2157522426, i64 2157522460, i64 2157522484, i64 2157522525, i64 2157522546, i64 2157522574, i64 2157522608}
!441 = !{!"auto-init"}
!442 = !{i64 2157528362, i64 2157528854, i64 2157528399, i64 2157528455, i64 2157528489, i64 2157528513, i64 2157528554, i64 2157528575, i64 2157528603, i64 2157528637}
!443 = !{i64 2157534674, i64 2157535166, i64 2157534711, i64 2157534767, i64 2157534801, i64 2157534825, i64 2157534866, i64 2157534887, i64 2157534915, i64 2157534949}
!444 = !{i64 2157300500, i64 2157300991, i64 2157300537, i64 2157300593, i64 2157300627, i64 2157300651, i64 2157300692, i64 2157300713, i64 2157300741, i64 2157300775}
!445 = !{i64 2157332112, i64 2157332603, i64 2157332149, i64 2157332205, i64 2157332239, i64 2157332263, i64 2157332304, i64 2157332325, i64 2157332353, i64 2157332387}
!446 = !{i64 2157312194, i64 2157312685, i64 2157312231, i64 2157312287, i64 2157312321, i64 2157312345, i64 2157312386, i64 2157312407, i64 2157312435, i64 2157312469}
!447 = !{i64 2157317589, i64 2157318080, i64 2157317626, i64 2157317682, i64 2157317716, i64 2157317740, i64 2157317781, i64 2157317802, i64 2157317830, i64 2157317864}
!448 = !{i64 2157324959, i64 2157325450, i64 2157324996, i64 2157325052, i64 2157325086, i64 2157325110, i64 2157325151, i64 2157325172, i64 2157325200, i64 2157325234}
!449 = !{i64 2157253177, i64 2157253668, i64 2157253214, i64 2157253270, i64 2157253304, i64 2157253328, i64 2157253369, i64 2157253390, i64 2157253418, i64 2157253452}
!450 = !{i64 2157348730, i64 2157349221, i64 2157348767, i64 2157348823, i64 2157348857, i64 2157348881, i64 2157348922, i64 2157348943, i64 2157348971, i64 2157349005}
!451 = !{i64 2157351883, i64 2157352374, i64 2157351920, i64 2157351976, i64 2157352010, i64 2157352034, i64 2157352075, i64 2157352096, i64 2157352124, i64 2157352158}
!452 = !{i64 2157357180, i64 2157357672, i64 2157357217, i64 2157357273, i64 2157357307, i64 2157357331, i64 2157357372, i64 2157357393, i64 2157357421, i64 2157357455}
!453 = !{i64 2157383799, i64 2157384291, i64 2157383836, i64 2157383892, i64 2157383926, i64 2157383950, i64 2157383991, i64 2157384012, i64 2157384040, i64 2157384074}
!454 = !{i64 2157224955, i64 2157225444, i64 2157224992, i64 2157225048, i64 2157225082, i64 2157225106, i64 2157225147, i64 2157225168, i64 2157225196, i64 2157225230}
!455 = !{i64 2157381768, i64 2157382260, i64 2157381805, i64 2157381861, i64 2157381895, i64 2157381919, i64 2157381960, i64 2157381981, i64 2157382009, i64 2157382043}
!456 = !{i64 2157389892, i64 2157390384, i64 2157389929, i64 2157389985, i64 2157390019, i64 2157390043, i64 2157390084, i64 2157390105, i64 2157390133, i64 2157390167}
!457 = !{i64 2157373859, i64 2157374351, i64 2157373896, i64 2157373952, i64 2157373986, i64 2157374010, i64 2157374051, i64 2157374072, i64 2157374100, i64 2157374134}
!458 = !{i64 2157375499, i64 2157375991, i64 2157375536, i64 2157375592, i64 2157375626, i64 2157375650, i64 2157375691, i64 2157375712, i64 2157375740, i64 2157375774}
!459 = !{i64 2157379360, i64 2157379852, i64 2157379397, i64 2157379453, i64 2157379487, i64 2157379511, i64 2157379552, i64 2157379573, i64 2157379601, i64 2157379635}
!460 = !{i64 2157392472, i64 2157392964, i64 2157392509, i64 2157392565, i64 2157392599, i64 2157392623, i64 2157392664, i64 2157392685, i64 2157392713, i64 2157392747}
!461 = !{!"branch_weights", i32 1, i32 4001}
!462 = !{i64 2157394120, i64 2157394612, i64 2157394157, i64 2157394213, i64 2157394247, i64 2157394271, i64 2157394312, i64 2157394333, i64 2157394361, i64 2157394395}
!463 = !{i64 2148428683, i64 2148428715, i64 2148428744, i64 2148428778, i64 2148428809, i64 2148428832}
!464 = !{i64 2157398260, i64 2157398752, i64 2157398297, i64 2157398353, i64 2157398387, i64 2157398411, i64 2157398452, i64 2157398473, i64 2157398501, i64 2157398535}
!465 = !{i64 2157236949, i64 2157237439, i64 2157236986, i64 2157237042, i64 2157237076, i64 2157237100, i64 2157237141, i64 2157237162, i64 2157237190, i64 2157237224}
!466 = !{i64 2157234900, i64 2157235390, i64 2157234937, i64 2157234993, i64 2157235027, i64 2157235051, i64 2157235092, i64 2157235113, i64 2157235141, i64 2157235175}
!467 = !{i64 2157403754, i64 2157404246, i64 2157403791, i64 2157403847, i64 2157403881, i64 2157403905, i64 2157403946, i64 2157403967, i64 2157403995, i64 2157404029}
!468 = !{i64 2157418785, i64 2157419277, i64 2157418822, i64 2157418878, i64 2157418912, i64 2157418936, i64 2157418977, i64 2157418998, i64 2157419026, i64 2157419060}
!469 = !{i64 2157420777, i64 2157421269, i64 2157420814, i64 2157420870, i64 2157420904, i64 2157420928, i64 2157420969, i64 2157420990, i64 2157421018, i64 2157421052}
!470 = !{i64 2157416809, i64 2157417301, i64 2157416846, i64 2157416902, i64 2157416936, i64 2157416960, i64 2157417001, i64 2157417022, i64 2157417050, i64 2157417084}
!471 = !{i64 2157422442, i64 2157422934, i64 2157422479, i64 2157422535, i64 2157422569, i64 2157422593, i64 2157422634, i64 2157422655, i64 2157422683, i64 2157422717}
!472 = !{i64 2157426011, i64 2157426503, i64 2157426048, i64 2157426104, i64 2157426138, i64 2157426162, i64 2157426203, i64 2157426224, i64 2157426252, i64 2157426286}
!473 = !{i64 2157428844, i64 2157429336, i64 2157428881, i64 2157428937, i64 2157428971, i64 2157428995, i64 2157429036, i64 2157429057, i64 2157429085, i64 2157429119}
!474 = !{i64 2157431435, i64 2157431927, i64 2157431472, i64 2157431528, i64 2157431562, i64 2157431586, i64 2157431627, i64 2157431648, i64 2157431676, i64 2157431710}
!475 = !{i64 2157433124, i64 2157433616, i64 2157433161, i64 2157433217, i64 2157433251, i64 2157433275, i64 2157433316, i64 2157433337, i64 2157433365, i64 2157433399}
!476 = !{i64 2157441281, i64 2157441773, i64 2157441318, i64 2157441374, i64 2157441408, i64 2157441432, i64 2157441473, i64 2157441494, i64 2157441522, i64 2157441556}
!477 = !{i64 2157406716, i64 2157407208, i64 2157406753, i64 2157406809, i64 2157406843, i64 2157406867, i64 2157406908, i64 2157406929, i64 2157406957, i64 2157406991}
!478 = !{i64 2157408339, i64 2157408831, i64 2157408376, i64 2157408432, i64 2157408466, i64 2157408490, i64 2157408531, i64 2157408552, i64 2157408580, i64 2157408614}
!479 = !{i64 2157448866, i64 2157449358, i64 2157448903, i64 2157448959, i64 2157448993, i64 2157449017, i64 2157449058, i64 2157449079, i64 2157449107, i64 2157449141}
!480 = !{i64 2157450752, i64 2157451244, i64 2157450789, i64 2157450845, i64 2157450879, i64 2157450903, i64 2157450944, i64 2157450965, i64 2157450993, i64 2157451027}
!481 = !{i64 2157457811, i64 2157458303, i64 2157457848, i64 2157457904, i64 2157457938, i64 2157457962, i64 2157458003, i64 2157458024, i64 2157458052, i64 2157458086}
!482 = !{i64 2157459821, i64 2157460313, i64 2157459858, i64 2157459914, i64 2157459948, i64 2157459972, i64 2157460013, i64 2157460034, i64 2157460062, i64 2157460096}
!483 = !{i64 2157461839, i64 2157462331, i64 2157461876, i64 2157461932, i64 2157461966, i64 2157461990, i64 2157462031, i64 2157462052, i64 2157462080, i64 2157462114}
!484 = !{i64 2157514957, i64 2157515449, i64 2157514994, i64 2157515050, i64 2157515084, i64 2157515108, i64 2157515149, i64 2157515170, i64 2157515198, i64 2157515232}
!485 = !{i64 2157218584, i64 2157219073, i64 2157218621, i64 2157218677, i64 2157218711, i64 2157218735, i64 2157218776, i64 2157218797, i64 2157218825, i64 2157218859}
!486 = !{i64 2157480043, i64 2157480535, i64 2157480080, i64 2157480136, i64 2157480170, i64 2157480194, i64 2157480235, i64 2157480256, i64 2157480284, i64 2157480318}
!487 = !{i64 2157481929, i64 2157482421, i64 2157481966, i64 2157482022, i64 2157482056, i64 2157482080, i64 2157482121, i64 2157482142, i64 2157482170, i64 2157482204}
!488 = !{i64 2157487293, i64 2157487785, i64 2157487330, i64 2157487386, i64 2157487420, i64 2157487444, i64 2157487485, i64 2157487506, i64 2157487534, i64 2157487568}
!489 = !{i64 2157489179, i64 2157489671, i64 2157489216, i64 2157489272, i64 2157489306, i64 2157489330, i64 2157489371, i64 2157489392, i64 2157489420, i64 2157489454}
!490 = !{i64 2157545264, i64 2157545756, i64 2157545301, i64 2157545357, i64 2157545391, i64 2157545415, i64 2157545456, i64 2157545477, i64 2157545505, i64 2157545539}
!491 = !{i64 2157547214, i64 2157547706, i64 2157547251, i64 2157547307, i64 2157547341, i64 2157547365, i64 2157547406, i64 2157547427, i64 2157547455, i64 2157547489}
!492 = !{i64 2157549193, i64 2157549685, i64 2157549230, i64 2157549286, i64 2157549320, i64 2157549344, i64 2157549385, i64 2157549406, i64 2157549434, i64 2157549468}
!493 = !{i64 2157551178, i64 2157551670, i64 2157551215, i64 2157551271, i64 2157551305, i64 2157551329, i64 2157551370, i64 2157551391, i64 2157551419, i64 2157551453}
!494 = !{i64 2157468168, i64 2157468660, i64 2157468205, i64 2157468261, i64 2157468295, i64 2157468319, i64 2157468360, i64 2157468381, i64 2157468409, i64 2157468443}
