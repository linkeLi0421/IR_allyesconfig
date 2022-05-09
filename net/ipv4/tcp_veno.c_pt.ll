; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_veno.c_pt.bc'
source_filename = "../net/ipv4/tcp_veno.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
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
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32 }
%struct.veno = type { i8, i16, i32, i32, i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }

@tcp_veno = internal global %struct.tcp_congestion_ops { ptr @tcp_veno_ssthresh, ptr @tcp_veno_cong_avoid, ptr @tcp_veno_state, ptr @tcp_veno_cwnd_event, ptr null, ptr @tcp_veno_pkts_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"veno\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcp_veno_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_veno__600_233_tcp_veno_register6 = internal global ptr @tcp_veno_register, section ".initcall6.init", align 4
@__exitcall_tcp_veno_unregister = internal global ptr @tcp_veno_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author601 = internal constant [40 x i8] c"tcp_veno.author=Bin Zhou, Cheng Peng Fu\00", section ".modinfo", align 1
@__UNIQUE_ID_file602 = internal constant [32 x i8] c"tcp_veno.file=net/ipv4/tcp_veno\00", section ".modinfo", align 1
@__UNIQUE_ID_license603 = internal constant [21 x i8] c"tcp_veno.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description604 = internal constant [30 x i8] c"tcp_veno.description=TCP Veno\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author601, ptr @__UNIQUE_ID_description604, ptr @__UNIQUE_ID_file602, ptr @__UNIQUE_ID_license603, ptr @__exitcall_tcp_veno_unregister, ptr @__initcall__kmod_tcp_veno__600_233_tcp_veno_register6, ptr @tcp_veno_unregister], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_veno_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_veno) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_veno_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_veno) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcp_veno_ssthresh(ptr nocapture noundef readonly %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %diff = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ult i32 %1, 6
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %2 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_cwnd, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mul)
  %cmp2 = icmp ugt i32 %mul, 14
  %div = udiv i32 %mul, 5
  %cond = select i1 %cmp2, i32 %div, i32 2
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp5 = icmp ugt i32 %3, 5
  %shr = lshr i32 %3, 1
  %cond9 = select i1 %cmp5, i32 %shr, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond9, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_veno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %icsk_ca_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tcp_reno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_cwnd.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %2 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_cwnd.i.i, align 8
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %4 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_ssthresh.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.i = icmp ult i32 %3, %5
  br i1 %cmp.i.i, label %if.then.i, label %tcp_is_cwnd_limited.exit

if.then.i:                                        ; preds = %if.end
  %max_packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 53
  %6 = ptrtoint ptr %max_packets_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_packets_out.i, align 4
  %mul.i = shl i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul.i)
  %cmp.i = icmp ult i32 %3, %mul.i
  br i1 %cmp.i, label %if.then.i.if.end4_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

tcp_is_cwnd_limited.exit:                         ; preds = %if.end
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %8 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %tcp_is_cwnd_limited.exit.if.end4_crit_edge

tcp_is_cwnd_limited.exit.if.end4_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %tcp_is_cwnd_limited.exit.if.end4_crit_edge, %if.then.i.if.end4_crit_edge
  %cntrtt = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 1
  %9 = ptrtoint ptr %cntrtt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cntrtt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp = icmp ult i16 %10, 3
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tcp_reno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #7
  br label %if.end253

if.else:                                          ; preds = %if.end4
  %minrtt = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 2
  %11 = ptrtoint ptr %minrtt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minrtt, align 4
  %conv7 = zext i32 %3 to i64
  %basertt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %basertt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %basertt, align 4
  %conv8 = zext i32 %14 to i64
  %mul = shl nuw nsw i64 %conv7, 1
  %shl = mul i64 %mul, %conv8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl)
  %cmp182 = icmp ult i64 %shl, 4294967296
  br i1 %cmp182, label %if.then186, label %if.else192, !prof !22

if.then186:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv187 = trunc i64 %shl to i32
  %div190 = udiv i32 %conv187, %12
  br label %if.end196

if.else192:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %shl) #10, !srcloc !23
  %asmresult1.i = extractvalue { i64, i64 } %15, 1
  %extract.t403 = trunc i64 %asmresult1.i to i32
  br label %if.end196

if.end196:                                        ; preds = %if.else192, %if.then186
  %target_cwnd.0.off0 = phi i32 [ %div190, %if.then186 ], [ %extract.t403, %if.else192 ]
  %shl199 = shl i32 %3, 1
  %conv202 = sub i32 %shl199, %target_cwnd.0.off0
  %diff = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %16 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv202, ptr %diff, align 4
  br i1 %cmp.i.i, label %if.then204, label %if.end196.if.end209_crit_edge

if.end196.if.end209_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209

if.then204:                                       ; preds = %if.end196
  %call205 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then204.donethread-pre-split_crit_edge, label %if.end209thread-pre-split

if.then204.donethread-pre-split_crit_edge:        ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  br label %donethread-pre-split

if.end209thread-pre-split:                        ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %diff, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.end209thread-pre-split, %if.end196.if.end209_crit_edge
  %18 = phi i32 [ %.pr, %if.end209thread-pre-split ], [ %conv202, %if.end196.if.end209_crit_edge ]
  %acked.addr.0 = phi i32 [ %call205, %if.end209thread-pre-split ], [ %acked, %if.end196.if.end209_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp211 = icmp ult i32 %18, 6
  br i1 %cmp211, label %if.then213, label %if.else215

if.then213:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %snd_cwnd.i.i, align 8
  tail call void @tcp_cong_avoid_ai(ptr noundef %sk, i32 noundef %20, i32 noundef %acked.addr.0) #7
  br label %donethread-pre-split

if.else215:                                       ; preds = %if.end209
  %snd_cwnd_cnt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 64
  %21 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %snd_cwnd_cnt, align 4
  %23 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %snd_cwnd.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp217.not = icmp ult i32 %22, %24
  br i1 %cmp217.not, label %if.else233, label %if.then219

if.then219:                                       ; preds = %if.else215
  %inc = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 4
  %25 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool220.not = icmp eq i32 %26, 0
  br i1 %tobool220.not, label %if.then219.if.end231_crit_edge, label %land.lhs.true221

if.then219.if.end231_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

land.lhs.true221:                                 ; preds = %if.then219
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %27 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %snd_cwnd_clamp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %28)
  %cmp223 = icmp ult i32 %24, %28
  br i1 %cmp223, label %if.then225, label %land.lhs.true221.if.end231_crit_edge

land.lhs.true221.if.end231_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then225:                                       ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #9
  %inc227 = add nuw i32 %24, 1
  %29 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc227, ptr %snd_cwnd.i.i, align 8
  br label %if.end231

if.end231:                                        ; preds = %if.then225, %land.lhs.true221.if.end231_crit_edge, %if.then219.if.end231_crit_edge
  %storemerge = phi i32 [ 0, %if.then225 ], [ 1, %land.lhs.true221.if.end231_crit_edge ], [ 1, %if.then219.if.end231_crit_edge ]
  %30 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge, ptr %inc, align 4
  %31 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %snd_cwnd_cnt, align 4
  br label %donethread-pre-split

if.else233:                                       ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #9
  %add235 = add i32 %22, %acked.addr.0
  %32 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add235, ptr %snd_cwnd_cnt, align 4
  br label %done

donethread-pre-split:                             ; preds = %if.end231, %if.then213, %if.then204.donethread-pre-split_crit_edge
  %33 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr401 = load i32, ptr %snd_cwnd.i.i, align 8
  br label %done

done:                                             ; preds = %donethread-pre-split, %if.else233
  %34 = phi i32 [ %.pr401, %donethread-pre-split ], [ %24, %if.else233 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp239 = icmp ult i32 %34, 2
  br i1 %cmp239, label %if.then241, label %if.else243

if.then241:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %snd_cwnd.i.i, align 8
  br label %if.end253

if.else243:                                       ; preds = %done
  %snd_cwnd_clamp245 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %36 = ptrtoint ptr %snd_cwnd_clamp245 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %snd_cwnd_clamp245, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %37)
  %cmp246 = icmp ugt i32 %34, %37
  br i1 %cmp246, label %if.then248, label %if.else243.if.end253_crit_edge

if.else243.if.end253_crit_edge:                   ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253

if.then248:                                       ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %snd_cwnd.i.i, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.then248, %if.else243.if.end253_crit_edge, %if.then241, %if.then6
  %minrtt254 = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 2
  %39 = ptrtoint ptr %minrtt254 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2147483647, ptr %minrtt254, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end253, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tcp_veno_state(ptr nocapture noundef writeonly %sk, i8 noundef zeroext %ca_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ca_state)
  %cmp = icmp eq i8 %ca_state, 0
  %icsk_ca_priv.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %icsk_ca_priv.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %icsk_ca_priv.i.i, align 4
  %minrtt.i = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %minrtt.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2147483647, ptr %minrtt.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %icsk_ca_priv.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %icsk_ca_priv.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tcp_veno_cwnd_event(ptr nocapture noundef writeonly %sk, i32 noundef %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %switch = icmp ult i32 %event, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %icsk_ca_priv.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %basertt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %basertt.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %basertt.i, align 4
  %inc.i = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %inc.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %inc.i, align 4
  %2 = ptrtoint ptr %icsk_ca_priv.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %icsk_ca_priv.i.i, align 4
  %minrtt.i.i = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %minrtt.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2147483647, ptr %minrtt.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_veno_pkts_acked(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %0 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i32 %1, 1
  %basertt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %2 = ptrtoint ptr %basertt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %basertt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp2 = icmp ult i32 %add, %3
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %basertt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %basertt, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %minrtt = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 2
  %5 = ptrtoint ptr %minrtt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minrtt, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %add)
  %8 = ptrtoint ptr %minrtt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %minrtt, align 4
  %cntrtt = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 1
  %9 = ptrtoint ptr %cntrtt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cntrtt, align 2
  %inc = add i16 %10, 1
  store i16 %inc, ptr %cntrtt, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tcp_veno_init(ptr nocapture noundef writeonly %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %basertt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %basertt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %basertt, align 4
  %inc = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 4
  %1 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %inc, align 4
  %2 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %icsk_ca_priv.i, align 4
  %minrtt.i = getelementptr inbounds %struct.veno, ptr %icsk_ca_priv.i, i32 0, i32 2
  %3 = ptrtoint ptr %minrtt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2147483647, ptr %minrtt.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reno_cong_avoid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_tcp_veno__600_233_tcp_veno_register6, !1, !"__initcall__kmod_tcp_veno__600_233_tcp_veno_register6", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_veno.c", i32 233, i32 1}
!2 = !{ptr @__exitcall_tcp_veno_unregister, !3, !"__exitcall_tcp_veno_unregister", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_veno.c", i32 234, i32 1}
!4 = !{ptr @__UNIQUE_ID_author601, !5, !"__UNIQUE_ID_author601", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_veno.c", i32 236, i32 1}
!6 = !{ptr @__UNIQUE_ID_file602, !7, !"__UNIQUE_ID_file602", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_veno.c", i32 237, i32 1}
!8 = !{ptr @__UNIQUE_ID_license603, !7, !"__UNIQUE_ID_license603", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description604, !10, !"__UNIQUE_ID_description604", i1 false, i1 false}
!10 = !{!"../net/ipv4/tcp_veno.c", i32 238, i32 1}
!11 = !{ptr @tcp_veno, !12, !"tcp_veno", i1 false, i1 false}
!12 = !{!"../net/ipv4/tcp_veno.c", i32 208, i32 34}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148518957, i64 2148519237, i64 2148519571, i64 2148519905}
