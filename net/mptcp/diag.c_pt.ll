; ModuleID = '/llk/IR_all_yes/net/mptcp/diag.c_pt.bc'
source_filename = "../net/mptcp/diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.195, %struct.anon.196, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
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
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.195 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.196 = type { i32, i32, i32, i32 }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.189, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }

@subflow_get_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/mptcp/diag.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private constant [20 x i8] c"../net/mptcp/diag.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 28, i32 7 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 695, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 723, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 991, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mptcp_diag_subflow_init(ptr nocapture noundef writeonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_info = getelementptr inbounds %struct.tcp_ulp_ops, ptr %ops, i32 0, i32 4
  %0 = ptrtoint ptr %get_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @subflow_get_info, ptr %get_info, align 4
  %get_info_size = getelementptr inbounds %struct.tcp_ulp_ops, ptr %ops, i32 0, i32 5
  %1 = ptrtoint ptr %get_info_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @subflow_get_info_size, ptr %get_info_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subflow_get_info(ptr noundef %sk, ptr noundef %skb) #1 align 64 {
entry:
  %tmp.i169 = alloca i8, align 1
  %tmp.i167 = alloca i8, align 1
  %tmp.i165 = alloca i32, align 4
  %tmp.i163 = alloca i16, align 2
  %tmp.i161 = alloca i32, align 4
  %tmp.i159 = alloca i32, align 4
  %tmp.i157 = alloca i64, align 8
  %tmp.i155 = alloca i32, align 4
  %tmp.i153 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i151 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151)
  %cmp.i = icmp slt i32 %call1.i151, 0
  %tobool.not181 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not181
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %icsk_ulp_data = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %icsk_ulp_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %icsk_ulp_data, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b150 = load i1, ptr @subflow_get_info.__warned, align 1
  br i1 %.b150, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @subflow_get_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 28, ptr noundef nonnull @.str.1) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %do.end12.nla_failure_crit_edge, label %if.end16

do.end12.nla_failure_crit_edge:                   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

if.end16:                                         ; preds = %do.end12
  %mp_capable = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 13
  %8 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %mp_capable, align 8
  %9 = lshr i32 %bf.load, 28
  %.lobit = and i32 %9, 1
  %or24 = or i32 %.lobit, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load)
  %tobool22.not182 = icmp slt i32 %bf.load, 0
  %flags.1 = select i1 %tobool22.not182, i32 %or24, i32 %.lobit
  %10 = lshr i32 %bf.load, 25
  %11 = and i32 %10, 4
  %12 = lshr i32 %bf.load, 27
  %13 = and i32 %12, 8
  %14 = lshr i32 %bf.load, 15
  %15 = and i32 %14, 16
  %16 = lshr i32 %bf.load, 24
  %17 = and i32 %16, 32
  %18 = lshr i32 %bf.load, 20
  %19 = and i32 %18, 64
  %20 = lshr i32 %bf.load, 17
  %21 = and i32 %20, 128
  %22 = and i32 %14, 256
  %23 = or i32 %13, %11
  %24 = or i32 %23, %15
  %25 = or i32 %24, %17
  %26 = or i32 %25, %19
  %27 = or i32 %26, %21
  %28 = or i32 %27, %22
  %29 = or i32 %28, %flags.1
  %remote_token = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 18
  %30 = ptrtoint ptr %remote_token to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %remote_token, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %32 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i, align 4
  %call.i152 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool76.not = icmp eq i32 %call.i152, 0
  br i1 %tobool76.not, label %lor.lhs.false, label %if.end16.nla_failure_crit_edge

if.end16.nla_failure_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false:                                    ; preds = %if.end16
  %token = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 6
  %33 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %token, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i153) #7
  %35 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i153, align 4
  %call.i154 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i153) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i153) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool78.not = icmp eq i32 %call.i154, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %lor.lhs.false.nla_failure_crit_edge

lor.lhs.false.nla_failure_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false79:                                  ; preds = %lor.lhs.false
  %rel_write_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 7
  %36 = ptrtoint ptr %rel_write_seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rel_write_seq, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i155) #7
  %38 = ptrtoint ptr %tmp.i155 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i155, align 4
  %call.i156 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i155) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i155) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool81.not = icmp eq i32 %call.i156, 0
  br i1 %tobool81.not, label %lor.lhs.false82, label %lor.lhs.false79.nla_failure_crit_edge

lor.lhs.false79.nla_failure_crit_edge:            ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %map_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 4
  %39 = ptrtoint ptr %map_seq to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %map_seq, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i157) #7
  %41 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %tmp.i157, align 8
  %call.i158 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i157, i32 noundef 11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool84.not = icmp eq i32 %call.i158, 0
  br i1 %tobool84.not, label %lor.lhs.false85, label %lor.lhs.false82.nla_failure_crit_edge

lor.lhs.false82.nla_failure_crit_edge:            ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %map_subflow_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 8
  %42 = ptrtoint ptr %map_subflow_seq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %map_subflow_seq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i159) #7
  %44 = ptrtoint ptr %tmp.i159 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i159, align 4
  %call.i160 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i159) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i159) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool87.not = icmp eq i32 %call.i160, 0
  br i1 %tobool87.not, label %lor.lhs.false88, label %lor.lhs.false85.nla_failure_crit_edge

lor.lhs.false85.nla_failure_crit_edge:            ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %ssn_offset = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 9
  %45 = ptrtoint ptr %ssn_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ssn_offset, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i161) #7
  %47 = ptrtoint ptr %tmp.i161 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i161, align 4
  %call.i162 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i161) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i161) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool90.not = icmp eq i32 %call.i162, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %lor.lhs.false88.nla_failure_crit_edge

lor.lhs.false88.nla_failure_crit_edge:            ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %map_data_len = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 10
  %48 = ptrtoint ptr %map_data_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %map_data_len, align 4
  %conv = trunc i32 %49 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i163) #7
  %50 = ptrtoint ptr %tmp.i163 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv, ptr %tmp.i163, align 2
  %call.i164 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i163) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i163) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool93.not = icmp eq i32 %call.i164, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %lor.lhs.false91.nla_failure_crit_edge

lor.lhs.false91.nla_failure_crit_edge:            ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i165) #7
  %51 = ptrtoint ptr %tmp.i165 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %29, ptr %tmp.i165, align 4
  %call.i166 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i165) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i165) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool96.not = icmp eq i32 %call.i166, 0
  br i1 %tobool96.not, label %lor.lhs.false97, label %lor.lhs.false94.nla_failure_crit_edge

lor.lhs.false94.nla_failure_crit_edge:            ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false97:                                  ; preds = %lor.lhs.false94
  %remote_id = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 21
  %52 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %remote_id, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i167) #7
  %54 = ptrtoint ptr %tmp.i167 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %tmp.i167, align 1
  %call.i168 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i167) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool99.not = icmp eq i32 %call.i168, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %lor.lhs.false97.nla_failure_crit_edge

lor.lhs.false97.nla_failure_crit_edge:            ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %local_id = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 20
  %55 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %local_id, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i169) #7
  %57 = ptrtoint ptr %tmp.i169 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %tmp.i169, align 1
  %call.i170 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i169) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i169) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool102.not = icmp eq i32 %call.i170, 0
  br i1 %tobool102.not, label %if.end104, label %lor.lhs.false100.nla_failure_crit_edge

lor.lhs.false100.nla_failure_crit_edge:           ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_failure

if.end104:                                        ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rcu_read_unlock()
  %58 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

nla_failure:                                      ; preds = %lor.lhs.false100.nla_failure_crit_edge, %lor.lhs.false97.nla_failure_crit_edge, %lor.lhs.false94.nla_failure_crit_edge, %lor.lhs.false91.nla_failure_crit_edge, %lor.lhs.false88.nla_failure_crit_edge, %lor.lhs.false85.nla_failure_crit_edge, %lor.lhs.false82.nla_failure_crit_edge, %lor.lhs.false79.nla_failure_crit_edge, %lor.lhs.false.nla_failure_crit_edge, %if.end16.nla_failure_crit_edge, %do.end12.nla_failure_crit_edge
  %err.0 = phi i32 [ 0, %do.end12.nla_failure_crit_edge ], [ -90, %lor.lhs.false100.nla_failure_crit_edge ], [ -90, %lor.lhs.false97.nla_failure_crit_edge ], [ -90, %lor.lhs.false94.nla_failure_crit_edge ], [ -90, %lor.lhs.false91.nla_failure_crit_edge ], [ -90, %lor.lhs.false88.nla_failure_crit_edge ], [ -90, %lor.lhs.false85.nla_failure_crit_edge ], [ -90, %lor.lhs.false82.nla_failure_crit_edge ], [ -90, %lor.lhs.false79.nla_failure_crit_edge ], [ -90, %lor.lhs.false.nla_failure_crit_edge ], [ -90, %if.end16.nla_failure_crit_edge ]
  %call.i172 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i172, label %nla_failure.if.then.i.i_crit_edge, label %land.lhs.true.i175

nla_failure.if.then.i.i_crit_edge:                ; preds = %nla_failure
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true.i175:                               ; preds = %nla_failure
  %call1.i173 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173)
  %tobool.not.i174 = icmp eq i32 %call1.i173, 0
  br i1 %tobool.not.i174, label %land.lhs.true.i175.if.then.i.i_crit_edge, label %land.lhs.true2.i177

land.lhs.true.i175.if.then.i.i_crit_edge:         ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true2.i177:                              ; preds = %land.lhs.true.i175
  %.b4.i176 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i176, label %land.lhs.true2.i177.if.then.i.i_crit_edge, label %if.then.i178

land.lhs.true2.i177.if.then.i.i_crit_edge:        ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i178:                                     ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i178, %land.lhs.true2.i177.if.then.i.i_crit_edge, %land.lhs.true.i175.if.then.i.i_crit_edge, %nla_failure.if.then.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %61 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i179 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i179 to ptr
  %preempt_count.i.i.i.i180 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i180, align 4
  %sub.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i180, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %66, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !25

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end104, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %nla_nest_cancel.exit ], [ 0, %if.end104 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @subflow_get_info_size(ptr nocapture noundef readnone %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/mptcp/diag.c", i32 28, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/net/netlink.h", i32 991, i32 3}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2149389083}
!24 = !{i64 2149389349}
!25 = !{!"branch_weights", i32 1, i32 2000}
