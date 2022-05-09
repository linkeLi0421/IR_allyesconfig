; ModuleID = '/llk/IR_all_yes/net/smc/smc_close.c_pt.bc'
source_filename = "../net/smc/smc_close.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.221 }
%union.anon.221 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.216, i32 }
%union.anon.216 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.125, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.125 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.223 = type { i16, i16, i32 }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.anon.220, [40 x i8] }
%struct.anon.220 = type { i16, i64, i32 }

@smc_close_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&smc->conn.close_work)\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 27]
@__sancov_gen_cov_switch_values.1 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 10, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 27]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 22]
@__sancov_gen_cov_switch_values.3 = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 2, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 20, i64 21, i64 25]
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [23 x i8] c"../net/smc/smc_close.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 498, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @smc_close_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_close_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_clcsock_release(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %listen_smc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 7
  %0 = ptrtoint ptr %listen_smc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listen_smc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call ptr @current_work() #7
  %smc_listen_work = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 10
  %cmp.not = icmp eq ptr %call, %smc_listen_work
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %smc_listen_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clcsock_release_lock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %clcsock_release_lock, i32 noundef 0) #7
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clcsock, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %clcsock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %clcsock, align 8
  tail call void @sock_release(ptr noundef nonnull %3) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %clcsock_release_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @current_work() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_close_wake_tx_prepared(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_close_tx_prepared = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 17
  %0 = ptrtoint ptr %wait_close_tx_prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %wait_close_tx_prepared, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %1 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk_state_change, align 4
  tail call void %2(ptr noundef %smc) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_close_abort(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_state_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %conn_state_flags, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %conn_state_flags, align 1
  %call = tail call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_cdc_get_slot_and_msg_send(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_close_active_abort(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clcsock, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true3

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sk5 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk5, align 16
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true3.if.end16_crit_edge, label %land.lhs.true9

land.lhs.true3.if.end16_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true9:                                   ; preds = %land.lhs.true3
  %sk_err = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %6 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 103, ptr %sk_err, align 4
  %7 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk5, align 16
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %land.lhs.true9.if.end16_crit_edge, label %if.then13

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @tcp_abort(ptr noundef nonnull %8, i32 noundef 103) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true9.if.end16_crit_edge, %land.lhs.true3.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.end59.critedge [
    i8 1, label %if.end16.sw.bb_crit_edge
    i8 22, label %if.end16.sw.bb_crit_edge124
    i8 23, label %if.end16.sw.bb_crit_edge125
    i8 20, label %if.end16.sw.bb31_crit_edge
    i8 21, label %if.end16.sw.bb31_crit_edge126
    i8 25, label %if.end16.sw.bb31_crit_edge127
    i8 27, label %if.end16.sw.bb43_crit_edge
    i8 24, label %if.end16.sw.bb43_crit_edge128
  ]

if.end16.sw.bb43_crit_edge128:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

if.end16.sw.bb43_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

if.end16.sw.bb31_crit_edge127:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end16.sw.bb31_crit_edge126:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end16.sw.bb31_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end16.sw.bb_crit_edge125:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end16.sw.bb_crit_edge124:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge124, %if.end16.sw.bb_crit_edge125
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 26, ptr %skc_state, align 2
  tail call void @release_sock(ptr noundef %smc) #7
  %close_work.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %close_work.i) #7
  %tx_work.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 23
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work.i) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %14)
  %cmp25.not = icmp eq i8 %14, 26
  br i1 %cmp25.not, label %if.end28, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end28:                                         ; preds = %sw.bb
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 7, ptr %skc_state, align 2
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !15

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %smc) #7
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end16.sw.bb31_crit_edge, %if.end16.sw.bb31_crit_edge126, %if.end16.sw.bb31_crit_edge127
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 26, ptr %skc_state, align 2
  tail call void @release_sock(ptr noundef %smc) #7
  %close_work.i98 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34
  %call.i99 = tail call zeroext i1 @cancel_work_sync(ptr noundef %close_work.i98) #7
  %tx_work.i100 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 23
  %call3.i101 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work.i100) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %19)
  %cmp37.not = icmp eq i8 %19, 26
  br i1 %cmp37.not, label %if.end40, label %if.end59.critedge94

if.end40:                                         ; preds = %sw.bb31
  %20 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store volatile i8 7, ptr %skc_state, align 2
  %conn = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  tail call void @smc_conn_free(ptr noundef %conn) #7
  %skc_refcnt.i102 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i102, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i102, i32 1, i32 3, i32 1) #7
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i102, ptr %skc_refcnt.i102, i32 1, ptr elementtype(i32) %skc_refcnt.i102) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i105, label %if.then.i109, label %if.end5.i.i.i.i107

if.end5.i.i.i.i107:                               ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i104)
  %.not.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i106, label %if.end5.i.i.i.i107.if.then58_crit_edge, label %if.then10.i.i.i.i108, !prof !15

if.end5.i.i.i.i107.if.then58_crit_edge:           ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.then10.i.i.i.i108:                             ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i102, i32 noundef 3) #7
  br label %if.then58

if.then.i109:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %smc) #7
  br label %if.then58

sw.bb43:                                          ; preds = %if.end16.sw.bb43_crit_edge, %if.end16.sw.bb43_crit_edge128
  %22 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store volatile i8 26, ptr %skc_state, align 2
  tail call void @release_sock(ptr noundef %smc) #7
  %close_work.i111 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34
  %call.i112 = tail call zeroext i1 @cancel_work_sync(ptr noundef %close_work.i111) #7
  %tx_work.i113 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 23
  %call3.i114 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work.i113) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %23 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %24)
  %cmp49.not = icmp eq i8 %24, 26
  br i1 %cmp49.not, label %if.end52, label %if.end59.critedge91

if.end52:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 7, ptr %skc_state, align 2
  %conn55 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  tail call void @smc_conn_free(ptr noundef %conn55) #7
  br label %if.then58

sw.epilog:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %26 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %or.i.i116 = or i32 %28, 1
  store i32 %or.i.i116, ptr %26, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %29 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk_state_change, align 4
  tail call void %30(ptr noundef %smc) #7
  br label %if.end59

if.then58:                                        ; preds = %if.end52, %if.then.i109, %if.then10.i.i.i.i108, %if.end5.i.i.i.i107.if.then58_crit_edge
  %31 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or.i.i = or i32 %33, 1
  store i32 %or.i.i, ptr %31, align 4
  %sk_state_change.c97 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %34 = ptrtoint ptr %sk_state_change.c97 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk_state_change.c97, align 4
  tail call void %35(ptr noundef %smc) #7
  tail call void @release_sock(ptr noundef %smc) #7
  %listen_smc.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 7
  %36 = ptrtoint ptr %listen_smc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %listen_smc.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then58.if.end.i_crit_edge, label %land.lhs.true.i

if.then58.if.end.i_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then58
  %call.i117 = tail call ptr @current_work() #7
  %smc_listen_work.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 10
  %cmp.not.i = icmp eq ptr %call.i117, %smc_listen_work.i
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i118

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i118:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %smc_listen_work.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i118, %land.lhs.true.i.if.end.i_crit_edge, %if.then58.if.end.i_crit_edge
  %clcsock_release_lock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %clcsock_release_lock.i, i32 noundef 0) #7
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %38 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clcsock.i, align 8
  %tobool3.not.i = icmp eq ptr %39, null
  br i1 %tobool3.not.i, label %if.end.i.smc_clcsock_release.exit_crit_edge, label %if.then4.i

if.end.i.smc_clcsock_release.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_clcsock_release.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %clcsock.i, align 8
  tail call void @sock_release(ptr noundef nonnull %39) #7
  br label %smc_clcsock_release.exit

smc_clcsock_release.exit:                         ; preds = %if.then4.i, %if.end.i.smc_clcsock_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %clcsock_release_lock.i) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  br label %if.end59

if.end59.critedge:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %41 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %or.i.i119 = or i32 %43, 1
  store i32 %or.i.i119, ptr %41, align 4
  %sk_state_change.c = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %44 = ptrtoint ptr %sk_state_change.c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk_state_change.c, align 4
  tail call void %45(ptr noundef %smc) #7
  br label %if.end59

if.end59.critedge91:                              ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  %46 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %or.i.i120 = or i32 %48, 1
  store i32 %or.i.i120, ptr %46, align 4
  %sk_state_change.c92 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %49 = ptrtoint ptr %sk_state_change.c92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_state_change.c92, align 4
  tail call void %50(ptr noundef %smc) #7
  br label %if.end59

if.end59.critedge94:                              ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  %51 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %or.i.i121 = or i32 %53, 1
  store i32 %or.i.i121, ptr %51, align 4
  %sk_state_change.c95 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %54 = ptrtoint ptr %sk_state_change.c95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk_state_change.c95, align 4
  tail call void %55(ptr noundef %smc) #7
  br label %if.end59

if.end59:                                         ; preds = %if.end59.critedge94, %if.end59.critedge91, %if.end59.critedge, %smc_clcsock_release.exit, %sw.epilog
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_conn_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_close_active(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %conn_state_flags = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 7
  %0 = tail call i32 @llvm.read_register.i32(metadata !3) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end7_crit_edge

entry.cond.end7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end7

cond.false:                                       ; preds = %entry
  %6 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %cond.false.cond.end7_crit_edge, label %cond.true5

cond.false.cond.end7_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end7

cond.true5:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 48
  %10 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_lingertime, align 8
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true5, %cond.false.cond.end7_crit_edge, %entry.cond.end7_crit_edge
  %cond8 = phi i32 [ 0, %entry.cond.end7_crit_edge ], [ %11, %cond.true5 ], [ 200, %cond.false.cond.end7_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  %conn_state_flags.i175 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 7
  %tx_work68 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 23
  br label %again

again:                                            ; preds = %again.backedge, %cond.end7
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %15, label %again.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb14
    i8 1, label %sw.bb28
    i8 24, label %sw.bb54
    i8 22, label %again.sw.bb64_crit_edge
    i8 23, label %again.sw.bb64_crit_edge215
    i8 20, label %again.sw.bb92_crit_edge
    i8 21, label %again.sw.bb92_crit_edge216
    i8 26, label %sw.bb106
    i8 27, label %sw.bb102
  ]

again.sw.bb92_crit_edge216:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb92

again.sw.bb92_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb92

again.sw.bb64_crit_edge215:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb64

again.sw.bb64_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb64

again.sw.epilog_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 7, ptr %skc_state, align 2
  br label %sw.epilog

sw.bb14:                                          ; preds = %again
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %19 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_state_change, align 4
  tail call void %20(ptr noundef %smc) #7
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %21 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clcsock, align 8
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %sw.bb14.if.end_crit_edge, label %land.lhs.true

sw.bb14.if.end_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb14
  %sk19 = getelementptr inbounds %struct.socket, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %sk19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk19, align 16
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %clcsk_data_ready = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 3
  %25 = ptrtoint ptr %clcsk_data_ready to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clcsk_data_ready, align 8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 77
  %27 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %sk_data_ready, align 8
  %28 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clcsock, align 8
  %sk24 = getelementptr inbounds %struct.socket, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sk24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk24, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 72
  %32 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sk_user_data, align 4
  %33 = load ptr, ptr %clcsock, align 8
  %call26 = tail call i32 @kernel_sock_shutdown(ptr noundef %33, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.bb14.if.end_crit_edge
  %rc.0 = phi i32 [ %call26, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %sw.bb14.if.end_crit_edge ]
  %call1.i = tail call ptr @smc_accept_dequeue(ptr noundef %smc, ptr noundef null) #7
  %tobool.not2.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not2.i, label %if.end.smc_close_cleanup_listen.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.smc_close_cleanup_listen.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_cleanup_listen.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %if.end.while.body.i_crit_edge ]
  tail call void @smc_close_non_accepted(ptr noundef nonnull %call3.i) #7
  %call.i = tail call ptr @smc_accept_dequeue(ptr noundef %smc, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.smc_close_cleanup_listen.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.smc_close_cleanup_listen.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_cleanup_listen.exit

smc_close_cleanup_listen.exit:                    ; preds = %while.body.i.smc_close_cleanup_listen.exit_crit_edge, %if.end.smc_close_cleanup_listen.exit_crit_edge
  tail call void @release_sock(ptr noundef %smc) #7
  %tcp_listen_work = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 9
  %call27 = tail call zeroext i1 @flush_work(ptr noundef %tcp_listen_work) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  br label %sw.epilog

sw.bb28:                                          ; preds = %again
  tail call fastcc void @smc_close_stream_wait(ptr noundef %smc, i32 noundef %cond8)
  tail call void @release_sock(ptr noundef %smc) #7
  %call29 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work68) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %34 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp = icmp eq i8 %35, 1
  br i1 %cmp, label %if.then34, label %sw.bb28.again.backedge_crit_edge

sw.bb28.again.backedge_crit_edge:                 ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

again.backedge:                                   ; preds = %land.lhs.true75.again.backedge_crit_edge, %sw.bb28.again.backedge_crit_edge
  br label %again

if.then34:                                        ; preds = %sw.bb28
  %bytes_to_rcv.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv.i, i32 noundef 4) #7
  %36 = ptrtoint ptr %bytes_to_rcv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %bytes_to_rcv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i174 = icmp eq i32 %37, 0
  %38 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load3.i = load i8, ptr %conn_state_flags, align 1
  %..i = select i1 %tobool.not.i174, i8 64, i8 32
  %bf.set5.i = or i8 %..i, %bf.load3.i
  store i8 %bf.set5.i, ptr %conn_state_flags, align 1
  %killed.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %39 = ptrtoint ptr %killed.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load6.i = load i8, ptr %killed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i)
  %tobool7.not.i = icmp sgt i8 %bf.load6.i, -1
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then34.smc_close_final.exit_crit_edge

if.then34.smc_close_final.exit_crit_edge:         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_final.exit

if.end9.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) #7
  br label %smc_close_final.exit

smc_close_final.exit:                             ; preds = %if.end9.i, %if.then34.smc_close_final.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end9.i ], [ -32, %if.then34.smc_close_final.exit_crit_edge ]
  %40 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %40)
  store volatile i8 20, ptr %skc_state, align 2
  %clcsock38 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %41 = ptrtoint ptr %clcsock38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clcsock38, align 8
  %tobool39.not = icmp eq ptr %42, null
  br i1 %tobool39.not, label %smc_close_final.exit.sw.epilog_crit_edge, label %land.lhs.true40

smc_close_final.exit.sw.epilog_crit_edge:         ; preds = %smc_close_final.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true40:                                  ; preds = %smc_close_final.exit
  %sk42 = getelementptr inbounds %struct.socket, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %sk42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk42, align 16
  %tobool43.not = icmp eq ptr %44, null
  br i1 %tobool43.not, label %land.lhs.true40.sw.epilog_crit_edge, label %if.then44

land.lhs.true40.sw.epilog_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %42, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool47.not = icmp eq i32 %retval.0.i, 0
  %call46.call35 = select i1 %tobool47.not, i32 %call46, i32 %retval.0.i
  br label %sw.epilog

sw.bb54:                                          ; preds = %again
  %45 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %conn_state_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool56.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool56.not, label %sw.bb54.if.end61_crit_edge, label %land.lhs.true57

sw.bb54.if.end61_crit_edge:                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true57:                                  ; preds = %sw.bb54
  %46 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i = load i8, ptr %conn_state_flags, align 1
  %47 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %.not214 = icmp eq i8 %47, 0
  br i1 %.not214, label %if.then59, label %land.lhs.true57.if.end61_crit_edge

land.lhs.true57.if.end61_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = tail call fastcc i32 @smc_close_final(ptr noundef %conn)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %land.lhs.true57.if.end61_crit_edge, %sw.bb54.if.end61_crit_edge
  %rc.1 = phi i32 [ 0, %land.lhs.true57.if.end61_crit_edge ], [ %call60, %if.then59 ], [ 0, %sw.bb54.if.end61_crit_edge ]
  %48 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store volatile i8 7, ptr %skc_state, align 2
  br label %sw.epilog

sw.bb64:                                          ; preds = %again.sw.bb64_crit_edge, %again.sw.bb64_crit_edge215
  %49 = ptrtoint ptr %conn_state_flags.i175 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i176 = load i8, ptr %conn_state_flags.i175, align 1
  %50 = and i8 %bf.load.i176, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %.not212 = icmp eq i8 %50, 0
  br i1 %.not212, label %if.then66, label %sw.bb64.if.end67_crit_edge

sw.bb64.if.end67_crit_edge:                       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then66:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @smc_close_stream_wait(ptr noundef %smc, i32 noundef %cond8)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %sw.bb64.if.end67_crit_edge
  tail call void @release_sock(ptr noundef %smc) #7
  %call69 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work68) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %51 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %52)
  %cmp73.not = icmp eq i8 %52, 22
  br i1 %cmp73.not, label %if.end67.if.end82_crit_edge, label %land.lhs.true75

if.end67.if.end82_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

land.lhs.true75:                                  ; preds = %if.end67
  %53 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %54)
  %cmp79.not = icmp eq i8 %54, 23
  br i1 %cmp79.not, label %land.lhs.true75.if.end82_crit_edge, label %land.lhs.true75.again.backedge_crit_edge

land.lhs.true75.again.backedge_crit_edge:         ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

land.lhs.true75.if.end82_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true75.if.end82_crit_edge, %if.end67.if.end82_crit_edge
  %bytes_to_rcv.i177 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 32
  %call.i.i.i178 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv.i177, i32 noundef 4) #7
  %55 = ptrtoint ptr %bytes_to_rcv.i177 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %bytes_to_rcv.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i179 = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load3.i181 = load i8, ptr %conn_state_flags, align 1
  %..i182 = select i1 %tobool.not.i179, i8 64, i8 32
  %bf.set5.i183 = or i8 %..i182, %bf.load3.i181
  store i8 %bf.set5.i183, ptr %conn_state_flags, align 1
  %killed.i184 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %58 = ptrtoint ptr %killed.i184 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load6.i185 = load i8, ptr %killed.i184, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i185)
  %tobool7.not.i186 = icmp sgt i8 %bf.load6.i185, -1
  br i1 %tobool7.not.i186, label %if.end9.i188, label %if.end82.smc_close_final.exit190_crit_edge

if.end82.smc_close_final.exit190_crit_edge:       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_final.exit190

if.end9.i188:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i187 = tail call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) #7
  br label %smc_close_final.exit190

smc_close_final.exit190:                          ; preds = %if.end9.i188, %if.end82.smc_close_final.exit190_crit_edge
  %retval.0.i189 = phi i32 [ %call10.i187, %if.end9.i188 ], [ -32, %if.end82.smc_close_final.exit190_crit_edge ]
  %59 = ptrtoint ptr %conn_state_flags.i175 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i192 = load i8, ptr %conn_state_flags.i175, align 1
  %60 = and i8 %bf.load.i192, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %.not213 = icmp eq i8 %60, 0
  br i1 %.not213, label %if.else88, label %if.then85

if.then85:                                        ; preds = %smc_close_final.exit190
  %61 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %61)
  store volatile i8 7, ptr %skc_state, align 2
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !15

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %sw.epilog

if.then.i:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %smc) #7
  br label %sw.epilog

if.else88:                                        ; preds = %smc_close_final.exit190
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %63)
  store volatile i8 25, ptr %skc_state, align 2
  br label %sw.epilog

sw.bb92:                                          ; preds = %again.sw.bb92_crit_edge, %again.sw.bb92_crit_edge216
  %64 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load93 = load i8, ptr %conn_state_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load93)
  %tobool96.not = icmp sgt i8 %bf.load93, -1
  br i1 %tobool96.not, label %sw.bb92.sw.epilog_crit_edge, label %land.lhs.true97

sw.bb92.sw.epilog_crit_edge:                      ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true97:                                  ; preds = %sw.bb92
  %65 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i194 = load i8, ptr %conn_state_flags, align 1
  %66 = and i8 %bf.load.i194, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %.not = icmp eq i8 %66, 0
  br i1 %.not, label %if.then99, label %land.lhs.true97.sw.epilog_crit_edge

land.lhs.true97.sw.epilog_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then99:                                        ; preds = %land.lhs.true97
  %bytes_to_rcv.i195 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 32
  %call.i.i.i196 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv.i195, i32 noundef 4) #7
  %67 = ptrtoint ptr %bytes_to_rcv.i195 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %bytes_to_rcv.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i197 = icmp eq i32 %68, 0
  %69 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load3.i199 = load i8, ptr %conn_state_flags, align 1
  %..i200 = select i1 %tobool.not.i197, i8 64, i8 32
  %bf.set5.i201 = or i8 %..i200, %bf.load3.i199
  store i8 %bf.set5.i201, ptr %conn_state_flags, align 1
  %killed.i202 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %70 = ptrtoint ptr %killed.i202 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load6.i203 = load i8, ptr %killed.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i203)
  %tobool7.not.i204 = icmp sgt i8 %bf.load6.i203, -1
  br i1 %tobool7.not.i204, label %if.end9.i206, label %if.then99.sw.epilog_crit_edge

if.then99.sw.epilog_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9.i206:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i205 = tail call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) #7
  br label %sw.epilog

sw.bb102:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i210 = load i8, ptr %conn_state_flags, align 1
  %bf.set.i = or i8 %bf.load.i210, 32
  store i8 %bf.set.i, ptr %conn_state_flags, align 1
  %call.i211 = tail call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) #7
  %72 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %72)
  store volatile i8 7, ptr %skc_state, align 2
  br label %sw.epilog

sw.bb106:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %73)
  store volatile i8 7, ptr %skc_state, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb106, %sw.bb102, %if.end9.i206, %if.then99.sw.epilog_crit_edge, %land.lhs.true97.sw.epilog_crit_edge, %sw.bb92.sw.epilog_crit_edge, %if.else88, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %if.end61, %if.then44, %land.lhs.true40.sw.epilog_crit_edge, %smc_close_final.exit.sw.epilog_crit_edge, %smc_close_cleanup_listen.exit, %sw.bb, %again.sw.epilog_crit_edge
  %rc.2 = phi i32 [ %call.i211, %sw.bb102 ], [ 0, %sw.bb106 ], [ 0, %land.lhs.true97.sw.epilog_crit_edge ], [ 0, %sw.bb92.sw.epilog_crit_edge ], [ %retval.0.i189, %if.else88 ], [ %rc.1, %if.end61 ], [ %call46.call35, %if.then44 ], [ %retval.0.i, %land.lhs.true40.sw.epilog_crit_edge ], [ %retval.0.i, %smc_close_final.exit.sw.epilog_crit_edge ], [ %rc.0, %smc_close_cleanup_listen.exit ], [ 0, %sw.bb ], [ %retval.0.i189, %if.end5.i.i.i.i.sw.epilog_crit_edge ], [ %retval.0.i189, %if.then10.i.i.i.i ], [ %retval.0.i189, %if.then.i ], [ %call10.i205, %if.end9.i206 ], [ -32, %if.then99.sw.epilog_crit_edge ], [ 0, %again.sw.epilog_crit_edge ]
  %74 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %75)
  %cmp112.not = icmp eq i8 %13, %75
  br i1 %cmp112.not, label %sw.epilog.if.end116_crit_edge, label %if.then114

sw.epilog.if.end116_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then114:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %sk_state_change115 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %76 = ptrtoint ptr %sk_state_change115 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk_state_change115, align 4
  tail call void %77(ptr noundef %smc) #7
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %sw.epilog.if.end116_crit_edge
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_close_stream_wait(ptr noundef %smc, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !3) #7
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
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end:                                           ; preds = %entry
  %conn = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %call5 = call fastcc i32 @smc_tx_prepared_sends(ptr noundef %conn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup58_crit_edge, label %if.end8

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end8:                                          ; preds = %if.end
  %wait_close_tx_prepared = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 17
  %13 = ptrtoint ptr %wait_close_tx_prepared to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %wait_close_tx_prepared, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %wait_close_tx_prepared, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 8
  call void @add_wait_queue(ptr noundef %16, ptr noundef nonnull %wait) #7
  %sk_err34 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %killed43 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  br label %while.cond

while.cond:                                       ; preds = %lor.rhs41.while.cond_crit_edge, %if.end8
  %timeout.addr.0 = phi i32 [ %timeout, %if.end8 ], [ %timeout.addr.1, %lor.rhs41.while.cond_crit_edge ]
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stack.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.cond.while.end_crit_edge, !prof !15

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

signal_pending.exit:                              ; preds = %while.cond
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %20, align 4
  %and1.i.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool13.not = icmp ne i32 %and1.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.0)
  %tobool14.not = icmp eq i32 %timeout.addr.0, 0
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %signal_pending.exit.while.end_crit_edge, label %while.body

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %smc) #7
  %call16 = call fastcc i32 @smc_tx_prepared_sends(ptr noundef %conn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.body.if.end27_crit_edge, label %lor.lhs.false

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

lor.lhs.false:                                    ; preds = %while.body
  %26 = ptrtoint ptr %sk_err34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_err34, align 4
  %.off = add i32 %27, -103
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %lor.lhs.false.if.end27_crit_edge, label %lor.rhs

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

lor.rhs:                                          ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %killed43 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load22 = load i8, ptr %killed43, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load22)
  %tobool23 = icmp slt i8 %bf.load22, 0
  br i1 %tobool23, label %lor.rhs.if.end27_crit_edge, label %if.then25

lor.rhs.if.end27_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeout.addr.0) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %lor.rhs.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge, %while.body.if.end27_crit_edge
  %timeout.addr.1 = phi i32 [ %timeout.addr.0, %lor.rhs.if.end27_crit_edge ], [ %call26, %if.then25 ], [ %timeout.addr.0, %lor.lhs.false.if.end27_crit_edge ], [ %timeout.addr.0, %while.body.if.end27_crit_edge ]
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 212
  %31 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %call31 = call fastcc i32 @smc_tx_prepared_sends(ptr noundef %conn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end27.while.end_crit_edge, label %lor.lhs.false33

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

lor.lhs.false33:                                  ; preds = %if.end27
  %32 = ptrtoint ptr %sk_err34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_err34, align 4
  %.off81 = add i32 %33, -103
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off81)
  %switch82 = icmp ult i32 %.off81, 2
  br i1 %switch82, label %lor.lhs.false33.while.end_crit_edge, label %lor.rhs41

lor.lhs.false33.while.end_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

lor.rhs41:                                        ; preds = %lor.lhs.false33
  %34 = ptrtoint ptr %killed43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load44 = load i8, ptr %killed43, align 8
  %tobool47 = icmp slt i8 %bf.load44, 0
  br i1 %tobool47, label %lor.rhs41.while.end_crit_edge, label %lor.rhs41.while.cond_crit_edge

lor.rhs41.while.cond_crit_edge:                   ; preds = %lor.rhs41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

lor.rhs41.while.end_crit_edge:                    ; preds = %lor.rhs41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %lor.rhs41.while.end_crit_edge, %lor.lhs.false33.while.end_crit_edge, %if.end27.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %35 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %14, align 8
  call void @remove_wait_queue(ptr noundef %36, ptr noundef nonnull %wait) #7
  %37 = ptrtoint ptr %wait_close_tx_prepared to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load55 = load i8, ptr %wait_close_tx_prepared, align 4
  %bf.clear56 = and i8 %bf.load55, 127
  store i8 %bf.clear56, ptr %wait_close_tx_prepared, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %while.end, %if.end.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_close_final(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_to_rcv = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #7
  %0 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %conn_state_flags2 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 7
  %2 = ptrtoint ptr %conn_state_flags2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load3 = load i8, ptr %conn_state_flags2, align 1
  %. = select i1 %tobool.not, i8 64, i8 32
  %bf.set5 = or i8 %bf.load3, %.
  store i8 %bf.set5, ptr %conn_state_flags2, align 1
  %killed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 39
  %3 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load6 = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6)
  %tobool7.not = icmp sgt i8 %bf.load6, -1
  br i1 %tobool7.not, label %if.end9, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) #7
  br label %return

return:                                           ; preds = %if.end9, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -32, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_close_shutdown_write(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %0 = tail call i32 @llvm.read_register.i32(metadata !3) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end6_crit_edge

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end6

cond.false:                                       ; preds = %entry
  %6 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %cond.false.cond.end6_crit_edge, label %cond.true4

cond.false.cond.end6_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end6

cond.true4:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 48
  %10 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_lingertime, align 8
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true4, %cond.false.cond.end6_crit_edge, %entry.cond.end6_crit_edge
  %cond7 = phi i32 [ 0, %entry.cond.end6_crit_edge ], [ %11, %cond.true4 ], [ 200, %cond.false.cond.end6_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  %conn_state_flags.i65 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 7
  %tx_work23 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 23
  br label %again

again:                                            ; preds = %again.backedge, %cond.end6
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %15, label %again.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 22, label %sw.bb19
  ]

again.sw.epilog_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %again
  tail call fastcc void @smc_close_stream_wait(ptr noundef %smc, i32 noundef %cond7)
  tail call void @release_sock(ptr noundef %smc) #7
  %call11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work23) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.not = icmp eq i8 %18, 1
  br i1 %cmp.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.again.backedge_crit_edge

sw.bb.again.backedge_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

again.backedge:                                   ; preds = %if.end22.again.backedge_crit_edge, %sw.bb.again.backedge_crit_edge
  br label %again

sw.bb19:                                          ; preds = %again
  %19 = ptrtoint ptr %conn_state_flags.i65 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i66 = load i8, ptr %conn_state_flags.i65, align 1
  %20 = and i8 %bf.load.i66, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %.not = icmp eq i8 %20, 0
  br i1 %.not, label %if.then21, label %sw.bb19.if.end22_crit_edge

sw.bb19.if.end22_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @smc_close_stream_wait(ptr noundef %smc, i32 noundef %cond7)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %sw.bb19.if.end22_crit_edge
  tail call void @release_sock(ptr noundef %smc) #7
  %call24 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work23) #7
  tail call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #7
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %22)
  %cmp28.not = icmp eq i8 %22, 22
  br i1 %cmp28.not, label %if.end22.sw.epilog.sink.split_crit_edge, label %if.end22.again.backedge_crit_edge

if.end22.again.backedge_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

if.end22.sw.epilog.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end22.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 20, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 23, %if.end22.sw.epilog.sink.split_crit_edge ]
  %conn_state_flags.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 7
  %23 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i68 = load i8, ptr %conn_state_flags.i, align 1
  %bf.set.i69 = or i8 %bf.load.i68, -128
  store i8 %bf.set.i69, ptr %conn_state_flags.i, align 1
  %call.i70 = tail call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn1) #7
  %24 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 %.sink, ptr %skc_state, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %again.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call.i70, %sw.epilog.sink.split ], [ 0, %again.sw.epilog_crit_edge ]
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %26)
  %cmp39.not = icmp eq i8 %13, %26
  br i1 %cmp39.not, label %sw.epilog.if.end42_crit_edge, label %if.then41

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then41:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 76
  %27 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_state_change, align 4
  tail call void %28(ptr noundef %smc) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %sw.epilog.if.end42_crit_edge
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_close_init(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %close_work = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34
  tail call void @__init_work(ptr noundef %close_work, i32 noundef 0) #7
  %0 = ptrtoint ptr %close_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %close_work, align 8
  %lockdep_map = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @smc_close_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry7 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34, i32 1
  %1 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @smc_close_passive_work, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_close_passive_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -432
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1416
  tail call void @lock_sock_nested(ptr noundef %add.ptr3, i32 noundef 0) #7
  %skc_state = getelementptr i8, ptr %work, i32 -1398
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conn_state_flags = getelementptr i8, ptr %work, i32 -55
  %2 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %conn_state_flags, align 1
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %5, label %if.then.smc_close_passive_abort_received.exit_crit_edge [
    i8 2, label %if.then.sw.bb.i_crit_edge
    i8 1, label %if.then.sw.bb.i_crit_edge137
    i8 22, label %if.then.sw.bb.i_crit_edge138
    i8 24, label %sw.bb4.i
    i8 20, label %if.then.sw.bb7.i_crit_edge
    i8 21, label %if.then.sw.bb7.i_crit_edge139
    i8 23, label %if.then.sw.bb14.i_crit_edge
    i8 25, label %if.then.sw.bb14.i_crit_edge140
    i8 26, label %sw.bb17.i
  ]

if.then.sw.bb14.i_crit_edge140:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

if.then.sw.bb14.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

if.then.sw.bb7.i_crit_edge139:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.then.sw.bb7.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.then.sw.bb.i_crit_edge138:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge137:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.smc_close_passive_abort_received.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_passive_abort_received.exit

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge137, %if.then.sw.bb.i_crit_edge138
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 27, ptr %skc_state, align 2
  %skc_refcnt.i.i = getelementptr i8, ptr %work, i32 -1316
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.smc_close_passive_abort_received.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !15

if.end5.i.i.i.i.i.smc_close_passive_abort_received.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_passive_abort_received.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #7
  br label %smc_close_passive_abort_received.exit

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %add.ptr3) #7
  br label %smc_close_passive_abort_received.exit

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 27, ptr %skc_state, align 2
  br label %smc_close_passive_abort_received.exit

sw.bb7.i:                                         ; preds = %if.then.sw.bb7.i_crit_edge, %if.then.sw.bb7.i_crit_edge139
  %conn_state_flags.i = getelementptr i8, ptr %work, i32 -351
  %10 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %conn_state_flags.i, align 1
  %11 = and i8 %bf.load.i, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %11)
  %12 = icmp eq i8 %11, -128
  %.sink.i = select i1 %12, i8 27, i8 7
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 %.sink.i, ptr %skc_state, align 2
  %skc_refcnt.i31.i = getelementptr i8, ptr %work, i32 -1316
  %call.i.i.i.i.i.i32.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i31.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i31.i, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i31.i, ptr %skc_refcnt.i31.i, i32 1, ptr elementtype(i32) %skc_refcnt.i31.i) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i33.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i33.i)
  %cmp.i.i.i.i34.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i33.i, 1
  br i1 %cmp.i.i.i.i34.i, label %if.then.i38.i, label %if.end5.i.i.i.i36.i

if.end5.i.i.i.i36.i:                              ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i33.i)
  %.not.i.i.i.i35.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i33.i, 0
  br i1 %.not.i.i.i.i35.i, label %if.end5.i.i.i.i36.i.smc_close_passive_abort_received.exit_crit_edge, label %if.then10.i.i.i.i37.i, !prof !15

if.end5.i.i.i.i36.i.smc_close_passive_abort_received.exit_crit_edge: ; preds = %if.end5.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_passive_abort_received.exit

if.then10.i.i.i.i37.i:                            ; preds = %if.end5.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i31.i, i32 noundef 3) #7
  br label %smc_close_passive_abort_received.exit

if.then.i38.i:                                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %add.ptr3) #7
  br label %smc_close_passive_abort_received.exit

sw.bb14.i:                                        ; preds = %if.then.sw.bb14.i_crit_edge, %if.then.sw.bb14.i_crit_edge140
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 7, ptr %skc_state, align 2
  %skc_refcnt.i40.i = getelementptr i8, ptr %work, i32 -1316
  %call.i.i.i.i.i.i41.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i40.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i40.i, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i40.i, ptr %skc_refcnt.i40.i, i32 1, ptr elementtype(i32) %skc_refcnt.i40.i) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i42.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i42.i)
  %cmp.i.i.i.i43.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i42.i, 1
  br i1 %cmp.i.i.i.i43.i, label %if.then.i47.i, label %if.end5.i.i.i.i45.i

if.end5.i.i.i.i45.i:                              ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i42.i)
  %.not.i.i.i.i44.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i42.i, 0
  br i1 %.not.i.i.i.i44.i, label %if.end5.i.i.i.i45.i.smc_close_passive_abort_received.exit_crit_edge, label %if.then10.i.i.i.i46.i, !prof !15

if.end5.i.i.i.i45.i.smc_close_passive_abort_received.exit_crit_edge: ; preds = %if.end5.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_close_passive_abort_received.exit

if.then10.i.i.i.i46.i:                            ; preds = %if.end5.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i40.i, i32 noundef 3) #7
  br label %smc_close_passive_abort_received.exit

if.then.i47.i:                                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %add.ptr3) #7
  br label %smc_close_passive_abort_received.exit

sw.bb17.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 7, ptr %skc_state, align 2
  br label %smc_close_passive_abort_received.exit

smc_close_passive_abort_received.exit:            ; preds = %sw.bb17.i, %if.then.i47.i, %if.then10.i.i.i.i46.i, %if.end5.i.i.i.i45.i.smc_close_passive_abort_received.exit_crit_edge, %if.then.i38.i, %if.then10.i.i.i.i37.i, %if.end5.i.i.i.i36.i.smc_close_passive_abort_received.exit_crit_edge, %sw.bb4.i, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.smc_close_passive_abort_received.exit_crit_edge, %if.then.smc_close_passive_abort_received.exit_crit_edge
  tail call void @release_sock(ptr noundef %add.ptr3) #7
  %tx_work = getelementptr i8, ptr %work, i32 -188
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work) #7
  tail call void @lock_sock_nested(ptr noundef %add.ptr3, i32 noundef 0) #7
  br label %wakeup

if.end:                                           ; preds = %entry
  %18 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %5, label %if.end.wakeup_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb10
    i8 20, label %sw.bb13
    i8 21, label %if.end.sw.bb21_crit_edge
    i8 25, label %sw.bb35
  ]

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.wakeup_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store volatile i8 22, ptr %skc_state, align 2
  br label %wakeup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store volatile i8 22, ptr %skc_state, align 2
  br label %wakeup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool16.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool16.not, label %sw.bb13.sw.bb21_crit_edge, label %if.then17

sw.bb13.sw.bb21_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.then17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 21, ptr %skc_state, align 2
  br label %sw.bb21

sw.bb21:                                          ; preds = %if.then17, %sw.bb13.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge
  %22 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i104 = load i8, ptr %conn_state_flags, align 1
  %23 = and i8 %bf.load.i104, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %.not135 = icmp eq i8 %23, 0
  br i1 %.not135, label %sw.bb21.wakeup_crit_edge, label %if.end24

sw.bb21.wakeup_crit_edge:                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

if.end24:                                         ; preds = %sw.bb21
  %24 = getelementptr i8, ptr %work, i32 -1336
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not = icmp eq i32 %27, 0
  br i1 %tobool.i.not, label %if.end24.if.else_crit_edge, label %land.lhs.true

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %conn_state_flags.i105 = getelementptr i8, ptr %work, i32 -351
  %28 = ptrtoint ptr %conn_state_flags.i105 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i106 = load i8, ptr %conn_state_flags.i105, align 1
  %29 = and i8 %bf.load.i106, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %.not136 = icmp eq i8 %29, 0
  br i1 %.not136, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end24.if.else_crit_edge
  br label %if.end34

if.end34:                                         ; preds = %if.else, %land.lhs.true.if.end34_crit_edge
  %.sink = phi i8 [ 24, %if.else ], [ 7, %land.lhs.true.if.end34_crit_edge ]
  %30 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 %.sink, ptr %skc_state, align 2
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -1316
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.wakeup_crit_edge, label %if.then10.i.i.i.i, !prof !15

if.end5.i.i.i.i.wakeup_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %wakeup

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %add.ptr3) #7
  br label %wakeup

sw.bb35:                                          ; preds = %if.end
  %32 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i109 = load i8, ptr %conn_state_flags, align 1
  %33 = and i8 %bf.load.i109, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %.not = icmp eq i8 %33, 0
  br i1 %.not, label %sw.bb35.wakeup_crit_edge, label %if.then37

sw.bb35.wakeup_crit_edge:                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

if.then37:                                        ; preds = %sw.bb35
  %34 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %34)
  store volatile i8 7, ptr %skc_state, align 2
  %skc_refcnt.i110 = getelementptr i8, ptr %work, i32 -1316
  %call.i.i.i.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i110, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i110, i32 1, i32 3, i32 1) #7
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i110, ptr %skc_refcnt.i110, i32 1, ptr elementtype(i32) %skc_refcnt.i110) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i112 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i112)
  %cmp.i.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i.i.i.i112, 1
  br i1 %cmp.i.i.i.i113, label %if.then.i117, label %if.end5.i.i.i.i115

if.end5.i.i.i.i115:                               ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i112)
  %.not.i.i.i.i114 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i112, 0
  br i1 %.not.i.i.i.i114, label %if.end5.i.i.i.i115.wakeup_crit_edge, label %if.then10.i.i.i.i116, !prof !15

if.end5.i.i.i.i115.wakeup_crit_edge:              ; preds = %if.end5.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %wakeup

if.then10.i.i.i.i116:                             ; preds = %if.end5.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i110, i32 noundef 3) #7
  br label %wakeup

if.then.i117:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %add.ptr3) #7
  br label %wakeup

wakeup:                                           ; preds = %if.then.i117, %if.then10.i.i.i.i116, %if.end5.i.i.i.i115.wakeup_crit_edge, %sw.bb35.wakeup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.wakeup_crit_edge, %sw.bb21.wakeup_crit_edge, %sw.bb10, %sw.bb, %if.end.wakeup_crit_edge, %smc_close_passive_abort_received.exit
  %sk_data_ready = getelementptr i8, ptr %work, i32 -504
  %36 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk_data_ready, align 8
  tail call void %37(ptr noundef %add.ptr3) #7
  %sk_write_space = getelementptr i8, ptr %work, i32 -500
  %38 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk_write_space, align 4
  tail call void %39(ptr noundef %add.ptr3) #7
  %40 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %41)
  %cmp.not = icmp eq i8 %1, %41
  br i1 %cmp.not, label %if.end65.critedge102, label %if.then47

if.then47:                                        ; preds = %wakeup
  %sk_state_change = getelementptr i8, ptr %work, i32 -508
  %42 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk_state_change, align 4
  tail call void %43(ptr noundef %add.ptr3) #7
  %44 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %45)
  %cmp51 = icmp eq i8 %45, 7
  br i1 %cmp51, label %land.lhs.true53, label %if.end65.critedge101

land.lhs.true53:                                  ; preds = %if.then47
  %46 = getelementptr i8, ptr %work, i32 -1336
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i120.not = icmp eq i32 %49, 0
  br i1 %tobool.i120.not, label %lor.lhs.false, label %land.lhs.true53.if.then57_crit_edge

land.lhs.true53.if.then57_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

lor.lhs.false:                                    ; preds = %land.lhs.true53
  %sk_socket = getelementptr i8, ptr %work, i32 -536
  %50 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk_socket, align 8
  %tobool56.not = icmp eq ptr %51, null
  br i1 %tobool56.not, label %lor.lhs.false.if.then57_crit_edge, label %if.end65.critedge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false.if.then57_crit_edge, %land.lhs.true53.if.then57_crit_edge
  tail call void @smc_conn_free(ptr noundef %add.ptr) #7
  %clcsock = getelementptr i8, ptr %work, i32 -456
  %52 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clcsock, align 8
  %tobool58.not.not = icmp eq ptr %53, null
  tail call void @release_sock(ptr noundef %add.ptr3) #7
  br i1 %tobool58.not.not, label %if.then57.if.end65_crit_edge, label %if.then64

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then64:                                        ; preds = %if.then57
  %listen_smc.i = getelementptr i8, ptr %work, i32 136
  %54 = ptrtoint ptr %listen_smc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %listen_smc.i, align 8
  %tobool.not.i121 = icmp eq ptr %55, null
  br i1 %tobool.not.i121, label %if.then64.if.end.i124_crit_edge, label %land.lhs.true.i122

if.then64.if.end.i124_crit_edge:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

land.lhs.true.i122:                               ; preds = %if.then64
  %call.i = tail call ptr @current_work() #7
  %smc_listen_work.i = getelementptr i8, ptr %work, i32 228
  %cmp.not.i = icmp eq ptr %call.i, %smc_listen_work.i
  br i1 %cmp.not.i, label %land.lhs.true.i122.if.end.i124_crit_edge, label %if.then.i123

land.lhs.true.i122.if.end.i124_crit_edge:         ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

if.then.i123:                                     ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %smc_listen_work.i) #7
  br label %if.end.i124

if.end.i124:                                      ; preds = %if.then.i123, %land.lhs.true.i122.if.end.i124_crit_edge, %if.then64.if.end.i124_crit_edge
  %clcsock_release_lock.i = getelementptr i8, ptr %work, i32 344
  tail call void @mutex_lock_nested(ptr noundef %clcsock_release_lock.i, i32 noundef 0) #7
  %56 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clcsock, align 8
  %tobool3.not.i = icmp eq ptr %57, null
  br i1 %tobool3.not.i, label %if.end.i124.smc_clcsock_release.exit_crit_edge, label %if.then4.i

if.end.i124.smc_clcsock_release.exit_crit_edge:   ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_clcsock_release.exit

if.then4.i:                                       ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %clcsock to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %clcsock, align 8
  tail call void @sock_release(ptr noundef nonnull %57) #7
  br label %smc_clcsock_release.exit

smc_clcsock_release.exit:                         ; preds = %if.then4.i, %if.end.i124.smc_clcsock_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %clcsock_release_lock.i) #7
  br label %if.end65

if.end65.critedge:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @release_sock(ptr noundef %add.ptr3) #7
  br label %if.end65

if.end65.critedge101:                             ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @release_sock(ptr noundef %add.ptr3) #7
  br label %if.end65

if.end65.critedge102:                             ; preds = %wakeup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @release_sock(ptr noundef %add.ptr3) #7
  br label %if.end65

if.end65:                                         ; preds = %if.end65.critedge102, %if.end65.critedge101, %if.end65.critedge, %smc_clcsock_release.exit, %if.then57.if.end65_crit_edge
  %skc_refcnt.i125 = getelementptr i8, ptr %work, i32 -1316
  %call.i.i.i.i.i.i126 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i125, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i125, i32 1, i32 3, i32 1) #7
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i125, ptr %skc_refcnt.i125, i32 1, ptr elementtype(i32) %skc_refcnt.i125) #7, !srcloc !14
  %asmresult.i.i.i.i.i.i.i127 = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i127)
  %cmp.i.i.i.i128 = icmp eq i32 %asmresult.i.i.i.i.i.i.i127, 1
  br i1 %cmp.i.i.i.i128, label %if.then.i132, label %if.end5.i.i.i.i130

if.end5.i.i.i.i130:                               ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i127)
  %.not.i.i.i.i129 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i127, 0
  br i1 %.not.i.i.i.i129, label %if.end5.i.i.i.i130.sock_put.exit134_crit_edge, label %if.then10.i.i.i.i131, !prof !15

if.end5.i.i.i.i130.sock_put.exit134_crit_edge:    ; preds = %if.end5.i.i.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_put.exit134

if.then10.i.i.i.i131:                             ; preds = %if.end5.i.i.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i125, i32 noundef 3) #7
  br label %sock_put.exit134

if.then.i132:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @sk_free(ptr noundef %add.ptr3) #7
  br label %sock_put.exit134

sock_put.exit134:                                 ; preds = %if.then.i132, %if.then10.i.i.i.i131, %if.end5.i.i.i.i130.sock_put.exit134_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smc_accept_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_close_non_accepted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_tx_prepared_sends(ptr noundef %conn) unnamed_addr #5 align 64 {
entry:
  %sent = alloca %union.smc_host_cursor, align 8
  %prep = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sent) #7
  %0 = ptrtoint ptr %sent to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sent, align 8, !annotation !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prep) #7
  %1 = ptrtoint ptr %prep to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %prep, align 8, !annotation !17
  %tx_curs_sent = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_sent, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %tx_curs_sent) #7
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sent, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %sent, i64 noundef %call.i.i) #7
  %tx_curs_prep = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 14
  %call.i.i.i5 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_prep, i32 noundef 8) #7
  %call.i.i6 = call i64 @generic_atomic64_read(ptr noundef %tx_curs_prep) #7
  %call.i.i1.i7 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prep, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %prep, i64 noundef %call.i.i6) #7
  %wrap.i = getelementptr inbounds %struct.anon.223, ptr %sent, i32 0, i32 1
  %2 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 1
  %4 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not.i = icmp eq i16 %3, %5
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sndbuf_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 8
  %6 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sndbuf_desc, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %count.i = getelementptr inbounds %struct.anon.223, ptr %sent, i32 0, i32 2
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %sub.i = sub i32 %9, %11
  %count4.i = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 2
  %12 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i, %13
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %count7.i = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 2
  %14 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.223, ptr %sent, i32 0, i32 2
  %16 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %15, %17
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i ]
  %18 = call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prep) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sent) #7
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @smc_close_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/smc/smc_close.c", i32 498, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{!"sp"}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148441003}
!14 = !{i64 2148355443, i64 2148355475, i64 2148355504, i64 2148355538, i64 2148355569, i64 2148355592}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149745016}
!17 = !{!"auto-init"}
