; ModuleID = '/llk/IR_all_yes/security/selinux/xfrm.c_pt.bc'
source_filename = "../security/selinux/xfrm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_sec_ctx = type { i8, i8, i16, i32, [0 x i8] }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.possible_net_t = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.82, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.83, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.82 = type { %struct.hlist_node }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.83 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.sk_buff = type { %union.anon.52, %union.anon.55, %union.anon.56, [48 x i8], %union.anon.57, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.59, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr, %union.anon.54 }
%union.anon.54 = type { ptr }
%union.anon.55 = type { ptr }
%union.anon.56 = type { i64 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i32, ptr }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.61, i32, i32, i32, i16, i16, %union.anon.63, i32, %union.anon.64, %union.anon.65, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.61 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%union.anon.65 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.160, i32, i32, i8, i8 }
%struct.anon.160 = type { i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.104, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.104 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.22 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.22 = type { %struct.callback_head }
%struct.xfrm_user_sec_ctx = type { i16, i16, i8, i8, i16 }
%struct.task_security_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.xfrm_dst = type { %union.anon.161, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.161 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.73 }
%union.anon.73 = type { [4 x i32] }

@selinux_xfrm_refcount = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@selinux_state = external dso_local global %struct.selinux_state, align 4
@selinux_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@___asan_gen_ = private constant [27 x i8] c"../security/selinux/xfrm.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 1011, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_policy_lookup(ptr noundef readonly %ctx, i32 noundef %fl_secid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %selinux_authorizable_ctx.exit, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

selinux_authorizable_ctx.exit:                    ; preds = %land.lhs.true.i
  %ctx_alg.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %ctx_alg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctx_alg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3.i.not = icmp eq i8 %3, 1
  br i1 %cmp3.i.not, label %if.end3, label %selinux_authorizable_ctx.exit.cleanup_crit_edge

selinux_authorizable_ctx.exit.cleanup_crit_edge:  ; preds = %selinux_authorizable_ctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %selinux_authorizable_ctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ctx_sid = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %ctx_sid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx_sid, align 4
  %call4 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %fl_secid, i32 noundef %5, i16 noundef zeroext 42, i32 noundef 8, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call4)
  %cmp = icmp eq i32 %call4, -13
  %spec.select = select i1 %cmp, i32 -3, i32 %call4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %selinux_authorizable_ctx.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %selinux_authorizable_ctx.exit.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_has_perm(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_state_pol_flow_match(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %xp, ptr nocapture noundef readonly %flic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 23
  %0 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security, align 8
  %tobool.not = icmp eq ptr %1, null
  %security1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %2 = ptrtoint ptr %security1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %security1, align 4
  %tobool2.not = icmp eq ptr %3, null
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool2.not
  %tobool2.not.mux = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %land.lhs.true.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 1
  br i1 %cmp.i.i, label %selinux_authorizable_xfrm.exit, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

selinux_authorizable_xfrm.exit:                   ; preds = %land.lhs.true.i.i
  %ctx_alg.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctx_alg.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctx_alg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp3.i.i.not = icmp eq i8 %7, 1
  br i1 %cmp3.i.i.not, label %if.end12, label %selinux_authorizable_xfrm.exit.cleanup_crit_edge

selinux_authorizable_xfrm.exit.cleanup_crit_edge: ; preds = %selinux_authorizable_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %selinux_authorizable_xfrm.exit
  %ctx_sid = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ctx_sid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx_sid, align 4
  %flowic_secid = getelementptr inbounds %struct.flowi_common, ptr %flic, i32 0, i32 7
  %10 = ptrtoint ptr %flowic_secid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flowic_secid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not = icmp eq i32 %11, %9
  br i1 %cmp.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %9, i32 noundef %9, i16 noundef zeroext 42, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %selinux_authorizable_xfrm.exit.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %tobool17.not, %if.end15 ], [ false, %selinux_authorizable_xfrm.exit.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ], [ false, %land.lhs.true.i.i.cleanup_crit_edge ], [ %tobool2.not.mux, %entry.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_decode_session(ptr noundef readonly %skb, ptr nocapture noundef writeonly %sid, i32 noundef %ckall) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.return_crit_edge, label %skb_sec_path.exit.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

skb_sec_path.exit.i:                              ; preds = %if.end
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.return_crit_edge, label %if.then.i

skb_sec_path.exit.i.return_crit_edge:             ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i:                                        ; preds = %skb_sec_path.exit.i
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i, align 4
  %i.049.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.049.i)
  %cmp50.i = icmp sgt i32 %i.049.i, -1
  br i1 %cmp50.i, label %for.body.lr.ph.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.body.lr.ph.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ckall)
  %tobool6.not.i = icmp eq i32 %ckall, 0
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup14.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.052.i = phi i32 [ %i.049.i, %for.body.lr.ph.i ], [ %i.0.i, %cleanup14.i.for.body.i_crit_edge ]
  %sid_session.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %sid_session.4.i, %cleanup14.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %i.052.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %security.i.i = getelementptr inbounds %struct.xfrm_state, ptr %10, i32 0, i32 50
  %11 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %for.body.i.cleanup14.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.cleanup14.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i.i.i = icmp eq i8 %14, 1
  br i1 %cmp.i.i.i, label %selinux_authorizable_xfrm.exit.i, label %land.lhs.true.i.i.i.cleanup14.i_crit_edge

land.lhs.true.i.i.i.cleanup14.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

selinux_authorizable_xfrm.exit.i:                 ; preds = %land.lhs.true.i.i.i
  %ctx_alg.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %ctx_alg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctx_alg.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp3.i.i.not.i = icmp eq i8 %16, 1
  br i1 %cmp3.i.i.not.i, label %if.then3.i, label %selinux_authorizable_xfrm.exit.i.cleanup14.i_crit_edge

selinux_authorizable_xfrm.exit.i.cleanup14.i_crit_edge: ; preds = %selinux_authorizable_xfrm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

if.then3.i:                                       ; preds = %selinux_authorizable_xfrm.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sid_session.051.i)
  %cmp4.i = icmp eq i32 %sid_session.051.i, 0
  %ctx_sid.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %ctx_sid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctx_sid.i, align 4
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  br i1 %tobool6.not.i, label %if.then5.i.return_crit_edge, label %if.then5.i.cleanup14.i_crit_edge

if.then5.i.cleanup14.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

if.then5.i.return_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sid_session.051.i, i32 %18)
  %cmp9.not.i = icmp eq i32 %sid_session.051.i, %18
  br i1 %cmp9.not.i, label %if.else.i.cleanup14.i_crit_edge, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else.i.cleanup14.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

cleanup14.i:                                      ; preds = %if.else.i.cleanup14.i_crit_edge, %if.then5.i.cleanup14.i_crit_edge, %selinux_authorizable_xfrm.exit.i.cleanup14.i_crit_edge, %land.lhs.true.i.i.i.cleanup14.i_crit_edge, %for.body.i.cleanup14.i_crit_edge
  %sid_session.4.i = phi i32 [ %sid_session.051.i, %selinux_authorizable_xfrm.exit.i.cleanup14.i_crit_edge ], [ %18, %if.then5.i.cleanup14.i_crit_edge ], [ %sid_session.051.i, %if.else.i.cleanup14.i_crit_edge ], [ %sid_session.051.i, %land.lhs.true.i.i.i.cleanup14.i_crit_edge ], [ %sid_session.051.i, %for.body.i.cleanup14.i_crit_edge ]
  %i.0.i = add i32 %i.052.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %cleanup14.i.for.body.i_crit_edge, label %cleanup14.i.return_crit_edge

cleanup14.i.return_crit_edge:                     ; preds = %cleanup14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup14.i.for.body.i_crit_edge:                 ; preds = %cleanup14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

return:                                           ; preds = %cleanup14.i.return_crit_edge, %if.else.i.return_crit_edge, %if.then5.i.return_crit_edge, %if.then.i.return_crit_edge, %skb_sec_path.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %storemerge = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %skb_sec_path.exit.i.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.then.i.return_crit_edge ], [ %18, %if.then5.i.return_crit_edge ], [ %sid_session.4.i, %cleanup14.i.return_crit_edge ], [ 0, %if.else.i.return_crit_edge ]
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %skb_sec_path.exit.i.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.then.i.return_crit_edge ], [ 0, %if.then5.i.return_crit_edge ], [ 0, %cleanup14.i.return_crit_edge ], [ -22, %if.else.i.return_crit_edge ]
  %19 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %sid, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_skb_sid(ptr nocapture noundef readonly %skb, ptr nocapture noundef %sid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %entry.land.lhs.true.thread_crit_edge, label %skb_sec_path.exit.i

entry.land.lhs.true.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.thread

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.land.lhs.true.thread_crit_edge, label %if.then.i

skb_sec_path.exit.i.land.lhs.true.thread_crit_edge: ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.thread

if.then.i:                                        ; preds = %skb_sec_path.exit.i
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i, align 4
  %i.049.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.049.i)
  %cmp50.i = icmp sgt i32 %i.049.i, -1
  br i1 %cmp50.i, label %if.then.i.for.body.i_crit_edge, label %if.then.i.land.lhs.true.thread_crit_edge

if.then.i.land.lhs.true.thread_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.thread

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup14.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.052.i = phi i32 [ %i.0.i, %cleanup14.i.for.body.i_crit_edge ], [ %i.049.i, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %i.052.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %security.i.i = getelementptr inbounds %struct.xfrm_state, ptr %10, i32 0, i32 50
  %11 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %for.body.i.cleanup14.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.cleanup14.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i.i.i = icmp eq i8 %14, 1
  br i1 %cmp.i.i.i, label %selinux_authorizable_xfrm.exit.i, label %land.lhs.true.i.i.i.cleanup14.i_crit_edge

land.lhs.true.i.i.i.cleanup14.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

selinux_authorizable_xfrm.exit.i:                 ; preds = %land.lhs.true.i.i.i
  %ctx_alg.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %ctx_alg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctx_alg.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp3.i.i.not.i = icmp eq i8 %16, 1
  br i1 %cmp3.i.i.not.i, label %land.lhs.true, label %selinux_authorizable_xfrm.exit.i.cleanup14.i_crit_edge

selinux_authorizable_xfrm.exit.i.cleanup14.i_crit_edge: ; preds = %selinux_authorizable_xfrm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14.i

cleanup14.i:                                      ; preds = %selinux_authorizable_xfrm.exit.i.cleanup14.i_crit_edge, %land.lhs.true.i.i.i.cleanup14.i_crit_edge, %for.body.i.cleanup14.i_crit_edge
  %i.0.i = add i32 %i.052.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %cleanup14.i.for.body.i_crit_edge, label %cleanup14.i.land.lhs.true.thread_crit_edge

cleanup14.i.land.lhs.true.thread_crit_edge:       ; preds = %cleanup14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.thread

cleanup14.i.for.body.i_crit_edge:                 ; preds = %cleanup14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

land.lhs.true.thread:                             ; preds = %cleanup14.i.land.lhs.true.thread_crit_edge, %if.then.i.land.lhs.true.thread_crit_edge, %skb_sec_path.exit.i.land.lhs.true.thread_crit_edge, %entry.land.lhs.true.thread_crit_edge
  %17 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sid, align 4
  br label %if.then

land.lhs.true:                                    ; preds = %selinux_authorizable_xfrm.exit.i
  %ctx_sid.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %ctx_sid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctx_sid.i, align 4
  %20 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1 = icmp eq i32 %19, 0
  br i1 %cmp1, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.thread
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.skb_dst.exit.i_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !18

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.skb_dst.exit.i_crit_edge
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 8
  %and25.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %cmp.i7 = icmp eq i32 %and25.i.i, 0
  br i1 %cmp.i7, label %skb_dst.exit.i.selinux_xfrm_skb_sid_egress.exit_crit_edge, label %if.end.i

skb_dst.exit.i.selinux_xfrm_skb_sid_egress.exit_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_skb_sid_egress.exit

if.end.i:                                         ; preds = %skb_dst.exit.i
  %26 = inttoptr i32 %and25.i.i to ptr
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xfrm.i, align 4
  %cmp1.i = icmp eq ptr %28, null
  br i1 %cmp1.i, label %if.end.i.selinux_xfrm_skb_sid_egress.exit_crit_edge, label %lor.lhs.false.i

if.end.i.selinux_xfrm_skb_sid_egress.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_skb_sid_egress.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %security.i.i8 = getelementptr inbounds %struct.xfrm_state, ptr %28, i32 0, i32 50
  %29 = ptrtoint ptr %security.i.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %security.i.i8, align 4
  %tobool.not.i.i.i9 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i9, label %lor.lhs.false.i.selinux_xfrm_skb_sid_egress.exit_crit_edge, label %land.lhs.true.i.i.i11

lor.lhs.false.i.selinux_xfrm_skb_sid_egress.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_skb_sid_egress.exit

land.lhs.true.i.i.i11:                            ; preds = %lor.lhs.false.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.i.i.i10 = icmp eq i8 %32, 1
  br i1 %cmp.i.i.i10, label %selinux_authorizable_xfrm.exit.i14, label %land.lhs.true.i.i.i11.selinux_xfrm_skb_sid_egress.exit_crit_edge

land.lhs.true.i.i.i11.selinux_xfrm_skb_sid_egress.exit_crit_edge: ; preds = %land.lhs.true.i.i.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_skb_sid_egress.exit

selinux_authorizable_xfrm.exit.i14:               ; preds = %land.lhs.true.i.i.i11
  %ctx_alg.i.i.i12 = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %ctx_alg.i.i.i12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctx_alg.i.i.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp3.i.i.not.i13 = icmp eq i8 %34, 1
  br i1 %cmp3.i.i.not.i13, label %if.end4.i, label %selinux_authorizable_xfrm.exit.i14.selinux_xfrm_skb_sid_egress.exit_crit_edge

selinux_authorizable_xfrm.exit.i14.selinux_xfrm_skb_sid_egress.exit_crit_edge: ; preds = %selinux_authorizable_xfrm.exit.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_skb_sid_egress.exit

if.end4.i:                                        ; preds = %selinux_authorizable_xfrm.exit.i14
  call void @__sanitizer_cov_trace_pc() #10
  %ctx_sid.i15 = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %ctx_sid.i15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctx_sid.i15, align 4
  br label %selinux_xfrm_skb_sid_egress.exit

selinux_xfrm_skb_sid_egress.exit:                 ; preds = %if.end4.i, %selinux_authorizable_xfrm.exit.i14.selinux_xfrm_skb_sid_egress.exit_crit_edge, %land.lhs.true.i.i.i11.selinux_xfrm_skb_sid_egress.exit_crit_edge, %lor.lhs.false.i.selinux_xfrm_skb_sid_egress.exit_crit_edge, %if.end.i.selinux_xfrm_skb_sid_egress.exit_crit_edge, %skb_dst.exit.i.selinux_xfrm_skb_sid_egress.exit_crit_edge
  %retval.0.i = phi i32 [ %36, %if.end4.i ], [ 0, %skb_dst.exit.i.selinux_xfrm_skb_sid_egress.exit_crit_edge ], [ 0, %selinux_authorizable_xfrm.exit.i14.selinux_xfrm_skb_sid_egress.exit_crit_edge ], [ 0, %if.end.i.selinux_xfrm_skb_sid_egress.exit_crit_edge ], [ 0, %land.lhs.true.i.i.i11.selinux_xfrm_skb_sid_egress.exit_crit_edge ], [ 0, %lor.lhs.false.i.selinux_xfrm_skb_sid_egress.exit_crit_edge ]
  %37 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %sid, align 4
  br label %if.end

if.end:                                           ; preds = %selinux_xfrm_skb_sid_egress.exit, %land.lhs.true.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_policy_alloc(ptr noundef %ctxp, ptr noundef %uctx, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @selinux_xfrm_alloc_user(ptr noundef %ctxp, ptr noundef %uctx, i32 noundef %gfp)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @selinux_xfrm_alloc_user(ptr noundef writeonly %ctxp, ptr noundef readonly %uctx, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %8 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %cmp = icmp eq ptr %ctxp, null
  %cmp2 = icmp eq ptr %uctx, null
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %ctx_doi = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %uctx, i32 0, i32 3
  %9 = ptrtoint ptr %ctx_doi to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctx_doi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp4.not = icmp eq i8 %10, 1
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %ctx_alg = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %uctx, i32 0, i32 2
  %11 = ptrtoint ptr %ctx_alg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx_alg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp8.not = icmp eq i8 %12, 1
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %ctx_len = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %uctx, i32 0, i32 4
  %13 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ctx_len, align 2
  %conv10 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %14)
  %cmp11 = icmp ugt i16 %14, 4095
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end8.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %spec.select.i62 = add nuw nsw i32 %conv10, 9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i62, i32 noundef %gfp) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end18

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end8.i
  %15 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %call9.i, align 128
  %ctx_alg20 = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 1
  %16 = ptrtoint ptr %ctx_alg20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %ctx_alg20, align 1
  %ctx_len22 = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 2
  %17 = ptrtoint ptr %ctx_len22 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %ctx_len22, align 2
  %ctx_str = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 4
  %arrayidx = getelementptr %struct.xfrm_user_sec_ctx, ptr %uctx, i32 1
  %18 = call ptr @memcpy(ptr %ctx_str, ptr %arrayidx, i32 %conv10)
  %arrayidx24 = getelementptr %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 4, i32 %conv10
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx24, align 1
  %ctx_sid = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 3
  %call27 = tail call i32 @security_context_to_sid(ptr noundef nonnull @selinux_state, ptr noundef %ctx_str, i32 noundef %conv10, ptr noundef %ctx_sid, i32 noundef %gfp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end30:                                         ; preds = %if.end18
  %sid = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i, i32 0, i32 1
  %20 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sid, align 4
  %22 = ptrtoint ptr %ctx_sid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctx_sid, align 4
  %call32 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %21, i32 noundef %23, i16 noundef zeroext 42, i32 noundef 4, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.err_crit_edge

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ctxp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %ctxp, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @selinux_xfrm_refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @selinux_xfrm_refcount, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @selinux_xfrm_refcount, ptr nonnull @selinux_xfrm_refcount, i32 1, ptr nonnull elementtype(i32) @selinux_xfrm_refcount) #8, !srcloc !19
  br label %cleanup

err:                                              ; preds = %if.end30.err_crit_edge, %if.end18.err_crit_edge
  %rc.0 = phi i32 [ %call27, %if.end18.err_crit_edge ], [ %call32, %if.end30.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end35, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ 0, %if.end35 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_policy_clone(ptr noundef %old_ctx, ptr nocapture noundef writeonly %new_ctxp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_len = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %old_ctx, i32 0, i32 2
  %0 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ctx_len, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 8
  %call = tail call ptr @kmemdup(ptr noundef nonnull %old_ctx, i32 noundef %add, i32 noundef 2592) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @selinux_xfrm_refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @selinux_xfrm_refcount, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @selinux_xfrm_refcount, ptr nonnull @selinux_xfrm_refcount, i32 1, ptr nonnull elementtype(i32) @selinux_xfrm_refcount) #8, !srcloc !19
  %3 = ptrtoint ptr %new_ctxp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %new_ctxp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_xfrm_policy_free(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.selinux_xfrm_free.exit_crit_edge, label %if.end.i

entry.selinux_xfrm_free.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_free.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @selinux_xfrm_refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @selinux_xfrm_refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @selinux_xfrm_refcount, ptr nonnull @selinux_xfrm_refcount, i32 1, ptr nonnull elementtype(i32) @selinux_xfrm_refcount) #8, !srcloc !20
  tail call void @kfree(ptr noundef nonnull %ctx) #8
  br label %selinux_xfrm_free.exit

selinux_xfrm_free.exit:                           ; preds = %if.end.i, %entry.selinux_xfrm_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_policy_delete(ptr noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.selinux_xfrm_delete.exit_crit_edge, label %if.end.i

entry.selinux_xfrm_delete.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_delete.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %8 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sid.i, align 4
  %ctx_sid.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %ctx_sid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctx_sid.i, align 4
  %call2.i = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %10, i32 noundef %12, i16 noundef zeroext 42, i32 noundef 4, ptr noundef null) #8
  br label %selinux_xfrm_delete.exit

selinux_xfrm_delete.exit:                         ; preds = %if.end.i, %entry.selinux_xfrm_delete.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ 0, %entry.selinux_xfrm_delete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_state_alloc(ptr noundef %x, ptr noundef %uctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %call = tail call fastcc i32 @selinux_xfrm_alloc_user(ptr noundef %security, ptr noundef %uctx, i32 noundef 3264)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_state_alloc_acquire(ptr nocapture noundef writeonly %x, ptr noundef readnone %polsec, i32 noundef %secid) local_unnamed_addr #0 align 64 {
entry:
  %ctx_str = alloca ptr, align 4
  %str_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx_str) #8
  %0 = ptrtoint ptr %ctx_str to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ctx_str, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str_len) #8
  %1 = ptrtoint ptr %str_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %str_len, align 4, !annotation !21
  %tobool.not = icmp eq ptr %polsec, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secid)
  %cmp = icmp eq i32 %secid, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call = call i32 @security_sid_to_context(ptr noundef nonnull @selinux_state, i32 noundef %secid, ptr noundef nonnull %ctx_str, ptr noundef nonnull %str_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end8.i, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end2
  %2 = ptrtoint ptr %str_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %str_len, align 4
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %3, i32 8) #8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 2592) #11
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.end8.i.out_crit_edge, label %if.end10

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %call9.i, align 128
  %ctx_alg = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 1
  %5 = ptrtoint ptr %ctx_alg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ctx_alg, align 1
  %ctx_sid = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 3
  %6 = ptrtoint ptr %ctx_sid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %secid, ptr %ctx_sid, align 4
  %7 = ptrtoint ptr %str_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %str_len, align 4
  %conv = trunc i32 %8 to i16
  %ctx_len = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 2
  %9 = ptrtoint ptr %ctx_len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %ctx_len, align 2
  %ctx_str11 = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %call9.i, i32 0, i32 4
  %10 = ptrtoint ptr %ctx_str to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx_str, align 4
  %12 = call ptr @memcpy(ptr %ctx_str11, ptr %11, i32 %8)
  %security = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %13 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %security, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @selinux_xfrm_refcount, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @selinux_xfrm_refcount, i32 1, i32 3, i32 1) #8
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @selinux_xfrm_refcount, ptr nonnull @selinux_xfrm_refcount, i32 1, ptr nonnull elementtype(i32) @selinux_xfrm_refcount) #8, !srcloc !19
  br label %out

out:                                              ; preds = %if.end10, %if.end8.i.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end10 ], [ -12, %if.end8.i.out_crit_edge ]
  %15 = ptrtoint ptr %ctx_str to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx_str, align 4
  call void @kfree(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx_str) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sid_to_context(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_xfrm_state_free(ptr nocapture noundef readonly %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %0 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.selinux_xfrm_free.exit_crit_edge, label %if.end.i

entry.selinux_xfrm_free.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_free.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @selinux_xfrm_refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @selinux_xfrm_refcount, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @selinux_xfrm_refcount, ptr nonnull @selinux_xfrm_refcount, i32 1, ptr nonnull elementtype(i32) @selinux_xfrm_refcount) #8, !srcloc !20
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %selinux_xfrm_free.exit

selinux_xfrm_free.exit:                           ; preds = %if.end.i, %entry.selinux_xfrm_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_state_delete(ptr nocapture noundef readonly %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %0 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.selinux_xfrm_delete.exit_crit_edge, label %if.end.i

entry.selinux_xfrm_delete.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %selinux_xfrm_delete.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !8) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_blob_sizes to i32))
  %10 = load i32, ptr @selinux_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %10
  %sid.i = getelementptr inbounds %struct.task_security_struct, ptr %add.ptr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sid.i, align 4
  %ctx_sid.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %ctx_sid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctx_sid.i, align 4
  %call2.i = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %12, i32 noundef %14, i16 noundef zeroext 42, i32 noundef 4, ptr noundef null) #8
  br label %selinux_xfrm_delete.exit

selinux_xfrm_delete.exit:                         ; preds = %if.end.i, %entry.selinux_xfrm_delete.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ 0, %entry.selinux_xfrm_delete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_sock_rcv_skb(i32 noundef %sk_sid, ptr nocapture noundef readonly %skb, ptr noundef %ad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.if.end5_crit_edge, label %skb_sec_path.exit

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

skb_sec_path.exit:                                ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_sec_path.exit.if.end5_crit_edge, label %for.cond.preheader

skb_sec_path.exit.if.end5_crit_edge:              ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader:                               ; preds = %skb_sec_path.exit
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp23 = icmp sgt i32 %8, 0
  br i1 %cmp23, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end5_crit_edge

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sec_path, ptr %add.ptr.i.i, i32 0, i32 2, i32 %i.024
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %security.i = getelementptr inbounds %struct.xfrm_state, ptr %10, i32 0, i32 50
  %11 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.i.i

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 1
  br i1 %cmp.i.i, label %selinux_authorizable_xfrm.exit, label %land.lhs.true.i.i.for.inc_crit_edge

land.lhs.true.i.i.for.inc_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

selinux_authorizable_xfrm.exit:                   ; preds = %land.lhs.true.i.i
  %ctx_alg.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %ctx_alg.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctx_alg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp3.i.i.not = icmp eq i8 %16, 1
  br i1 %cmp3.i.i.not, label %cleanup, label %selinux_authorizable_xfrm.exit.for.inc_crit_edge

selinux_authorizable_xfrm.exit.for.inc_crit_edge: ; preds = %selinux_authorizable_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup:                                          ; preds = %selinux_authorizable_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ctx_sid = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %ctx_sid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctx_sid, align 4
  br label %if.end5

for.inc:                                          ; preds = %selinux_authorizable_xfrm.exit.for.inc_crit_edge, %land.lhs.true.i.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.if.end5_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %cleanup, %for.cond.preheader.if.end5_crit_edge, %skb_sec_path.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %peer_sid.2 = phi i32 [ %18, %cleanup ], [ 3, %skb_sec_path.exit.if.end5_crit_edge ], [ 3, %entry.if.end5_crit_edge ], [ 3, %for.cond.preheader.if.end5_crit_edge ], [ 3, %for.inc.if.end5_crit_edge ]
  %call6 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %sk_sid, i32 noundef %peer_sid.2, i16 noundef zeroext 42, i32 noundef 2, ptr noundef %ad) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_xfrm_postroute_last(i32 noundef %sk_sid, ptr nocapture noundef readonly %skb, ptr noundef %ad, i8 noundef zeroext %proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %proto, label %sw.epilog [
    i8 51, label %entry.cleanup12_crit_edge
    i8 50, label %entry.cleanup12_crit_edge27
    i8 108, label %entry.cleanup12_crit_edge28
  ]

entry.cleanup12_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

entry.cleanup12_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

sw.epilog:                                        ; preds = %entry
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.skb_dst.exit_crit_edge, label %land.lhs.true.i

sw.epilog.skb_dst.exit_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !18

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %sw.epilog.skb_dst.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %and25.i = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %cmp.not22 = icmp eq i32 %and25.i, 0
  br i1 %cmp.not22, label %skb_dst.exit.if.end10_crit_edge, label %for.body.preheader

skb_dst.exit.if.end10_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.body.preheader:                               ; preds = %skb_dst.exit
  %6 = inttoptr i32 %and25.i to ptr
  br label %for.body

for.body:                                         ; preds = %xfrm_dst_child.exit.for.body_crit_edge, %for.body.preheader
  %iter.023 = phi ptr [ %19, %xfrm_dst_child.exit.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %iter.023, i32 0, i32 4
  %7 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfrm, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.i, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %security.i = getelementptr inbounds %struct.xfrm_state, ptr %8, i32 0, i32 50
  %9 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %land.lhs.true.xfrm_dst_child.exit_crit_edge, label %land.lhs.true.i.i

land.lhs.true.xfrm_dst_child.exit_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dst_child.exit

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.i = icmp eq i8 %12, 1
  br i1 %cmp.i.i, label %selinux_authorizable_xfrm.exit, label %land.lhs.true.i.i.xfrm_dst_child.exit_crit_edge

land.lhs.true.i.i.xfrm_dst_child.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dst_child.exit

selinux_authorizable_xfrm.exit:                   ; preds = %land.lhs.true.i.i
  %ctx_alg.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ctx_alg.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctx_alg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp3.i.i.not = icmp eq i8 %14, 1
  br i1 %cmp3.i.i.not, label %selinux_authorizable_xfrm.exit.cleanup12_crit_edge, label %selinux_authorizable_xfrm.exit.xfrm_dst_child.exit_crit_edge

selinux_authorizable_xfrm.exit.xfrm_dst_child.exit_crit_edge: ; preds = %selinux_authorizable_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dst_child.exit

selinux_authorizable_xfrm.exit.cleanup12_crit_edge: ; preds = %selinux_authorizable_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

lor.lhs.false.i:                                  ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %iter.023, i32 0, i32 7
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i, align 4
  %17 = and i16 %16, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool1.not.i20 = icmp eq i16 %17, 0
  br i1 %tobool1.not.i20, label %lor.lhs.false.i.if.end10_crit_edge, label %lor.lhs.false.i.xfrm_dst_child.exit_crit_edge

lor.lhs.false.i.xfrm_dst_child.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dst_child.exit

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

xfrm_dst_child.exit:                              ; preds = %lor.lhs.false.i.xfrm_dst_child.exit_crit_edge, %selinux_authorizable_xfrm.exit.xfrm_dst_child.exit_crit_edge, %land.lhs.true.i.i.xfrm_dst_child.exit_crit_edge, %land.lhs.true.xfrm_dst_child.exit_crit_edge
  %child.i = getelementptr inbounds %struct.xfrm_dst, ptr %iter.023, i32 0, i32 2
  %18 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %child.i, align 4
  %cmp.not = icmp eq ptr %19, null
  br i1 %cmp.not, label %xfrm_dst_child.exit.if.end10_crit_edge, label %xfrm_dst_child.exit.for.body_crit_edge

xfrm_dst_child.exit.for.body_crit_edge:           ; preds = %xfrm_dst_child.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

xfrm_dst_child.exit.if.end10_crit_edge:           ; preds = %xfrm_dst_child.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %xfrm_dst_child.exit.if.end10_crit_edge, %lor.lhs.false.i.if.end10_crit_edge, %skb_dst.exit.if.end10_crit_edge
  %call11 = tail call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %sk_sid, i32 noundef 3, i16 noundef zeroext 42, i32 noundef 1, ptr noundef %ad) #8
  br label %cleanup12

cleanup12:                                        ; preds = %if.end10, %selinux_authorizable_xfrm.exit.cleanup12_crit_edge, %entry.cleanup12_crit_edge, %entry.cleanup12_crit_edge27, %entry.cleanup12_crit_edge28
  %retval.3 = phi i32 [ %call11, %if.end10 ], [ 0, %entry.cleanup12_crit_edge ], [ 0, %entry.cleanup12_crit_edge27 ], [ 0, %entry.cleanup12_crit_edge28 ], [ 0, %selinux_authorizable_xfrm.exit.cleanup12_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_context_to_sid(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @selinux_xfrm_refcount, !1, !"selinux_xfrm_refcount", i1 false, i1 false}
!1 = !{!"../security/selinux/xfrm.c", i32 50, i32 10}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../security/selinux/xfrm.c", i32 79, i32 57}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/selinux/xfrm.c", i32 138, i32 57}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2148219331, i64 2148219357, i64 2148219386, i64 2148219420, i64 2148219451, i64 2148219474}
!20 = !{i64 2148221796, i64 2148221822, i64 2148221851, i64 2148221885, i64 2148221916, i64 2148221939}
!21 = !{!"auto-init"}
