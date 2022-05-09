; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_illinois.c_pt.bc'
source_filename = "../net/ipv4/tcp_illinois.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.illinois = type { i64, i16, i32, i32, i32, i32, i32, i16, i8, i8 }
%struct.ack_sample = type { i32, i32, i32 }
%struct.tcpvegas_info = type { i32, i32, i32, i32 }

@__param_str_win_thresh = internal constant [24 x i8] c"tcp_illinois.win_thresh\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@win_thresh = internal global i32 15, section ".data..read_mostly", align 4
@__param_win_thresh = internal constant %struct.kernel_param { ptr @__param_str_win_thresh, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @win_thresh } }, section "__param", align 4
@__UNIQUE_ID_win_threshtype593 = internal constant [37 x i8] c"tcp_illinois.parmtype=win_thresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_win_thresh594 = internal constant [75 x i8] c"tcp_illinois.parm=win_thresh:Window threshold for starting adaptive sizing\00", section ".modinfo", align 1
@__param_str_theta = internal constant [19 x i8] c"tcp_illinois.theta\00", align 1
@theta = internal global i32 5, section ".data..read_mostly", align 4
@__param_theta = internal constant %struct.kernel_param { ptr @__param_str_theta, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @theta } }, section "__param", align 4
@__UNIQUE_ID_thetatype595 = internal constant [32 x i8] c"tcp_illinois.parmtype=theta:int\00", section ".modinfo", align 1
@__UNIQUE_ID_theta596 = internal constant [59 x i8] c"tcp_illinois.parm=theta:# of fast RTT's before full growth\00", section ".modinfo", align 1
@tcp_illinois = internal global %struct.tcp_congestion_ops { ptr @tcp_illinois_ssthresh, ptr @tcp_illinois_cong_avoid, ptr @tcp_illinois_state, ptr null, ptr null, ptr @tcp_illinois_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr @tcp_illinois_info, [16 x i8] c"illinois\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcp_illinois_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_illinois__602_352_tcp_illinois_register6 = internal global ptr @tcp_illinois_register, section ".initcall6.init", align 4
@__exitcall_tcp_illinois_unregister = internal global ptr @tcp_illinois_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author603 = internal constant [48 x i8] c"tcp_illinois.author=Stephen Hemminger, Shao Liu\00", section ".modinfo", align 1
@__UNIQUE_ID_file604 = internal constant [40 x i8] c"tcp_illinois.file=net/ipv4/tcp_illinois\00", section ".modinfo", align 1
@__UNIQUE_ID_license605 = internal constant [25 x i8] c"tcp_illinois.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description606 = internal constant [38 x i8] c"tcp_illinois.description=TCP Illinois\00", section ".modinfo", align 1
@__UNIQUE_ID_version607 = internal constant [25 x i8] c"tcp_illinois.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_illinois\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [27 x i8] c"../net/ipv4/tcp_illinois.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 358, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author603, ptr @__UNIQUE_ID_description606, ptr @__UNIQUE_ID_file604, ptr @__UNIQUE_ID_license605, ptr @__UNIQUE_ID_theta596, ptr @__UNIQUE_ID_thetatype595, ptr @__UNIQUE_ID_version607, ptr @__UNIQUE_ID_win_thresh594, ptr @__UNIQUE_ID_win_threshtype593, ptr @__exitcall_tcp_illinois_unregister, ptr @__initcall__kmod_tcp_illinois__602_352_tcp_illinois_register6, ptr @__modver_attr, ptr @__param_theta, ptr @__param_win_thresh, ptr @tcp_illinois_unregister, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_illinois_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_illinois) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_illinois_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_illinois) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcp_illinois_ssthresh(ptr nocapture noundef readonly %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd, align 8
  %beta = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 6
  %2 = ptrtoint ptr %beta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beta, align 4
  %mul = mul i32 %3, %1
  %shr = lshr i32 %mul, 6
  %sub = sub i32 %1, %shr
  %4 = tail call i32 @llvm.umax.i32(i32 %sub, i32 2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_illinois_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %end_seq = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 4
  %0 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end_seq, align 4
  %sub.i = sub i32 %1, %ack
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %2 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_cwnd.i, align 8
  %4 = load i32, ptr @win_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.i43 = icmp ult i32 %3, %4
  br i1 %cmp.i43, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %alpha.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %5 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %alpha.i, align 8
  br label %if.end11.sink.split.i

if.else.i:                                        ; preds = %if.then
  %cnt_rtt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %6 = ptrtoint ptr %cnt_rtt.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cnt_rtt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2.not.i = icmp eq i16 %7, 0
  br i1 %cmp2.not.i, label %if.else.i.update_params.exit_crit_edge, label %if.then4.i

if.else.i.update_params.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_params.exit

if.then4.i:                                       ; preds = %if.else.i
  %max_rtt.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %8 = ptrtoint ptr %max_rtt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_rtt.i.i, align 8
  %base_rtt.i.i = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 2
  %10 = ptrtoint ptr %base_rtt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_rtt.i.i, align 4
  %sub.i.i = sub i32 %9, %11
  %12 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %icsk_ca_priv.i, align 8
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %cmp166.i.i = icmp ult i64 %13, 4294967296
  br i1 %cmp166.i.i, label %if.then170.i.i, label %if.else176.i.i, !prof !44

if.then170.i.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv171.i.i = trunc i64 %13 to i32
  %div174.i.i = udiv i32 %conv171.i.i, %conv.i.i
  br label %avg_delay.exit.i

if.else176.i.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i.i, i64 %13) #11, !srcloc !45
  %asmresult1.i.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t291.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %avg_delay.exit.i

avg_delay.exit.i:                                 ; preds = %if.else176.i.i, %if.then170.i.i
  %t.0.off0.i.i = phi i32 [ %div174.i.i, %if.then170.i.i ], [ %extract.t291.i.i, %if.else176.i.i ]
  %conv184.i.i = sub i32 %t.0.off0.i.i, %11
  %div.i24.i = udiv i32 %sub.i.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %conv184.i.i, i32 %div.i24.i)
  %cmp.not.i.i = icmp ugt i32 %conv184.i.i, %div.i24.i
  %rtt_above9.i.i = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 8
  br i1 %cmp.not.i.i, label %if.end8.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %avg_delay.exit.i
  %15 = ptrtoint ptr %rtt_above9.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rtt_above9.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i25.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i25.i, label %if.then.i.i.alpha.exit.i_crit_edge, label %if.end.i.i

if.then.i.i.alpha.exit.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %alpha.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %rtt_low.i.i = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 9
  %17 = ptrtoint ptr %rtt_low.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rtt_low.i.i, align 1
  %inc.i.i = add i8 %18, 1
  store i8 %inc.i.i, ptr %rtt_low.i.i, align 1
  %conv.i26.i = zext i8 %inc.i.i to i32
  %19 = load i32, ptr @theta, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i26.i)
  %cmp2.i.i = icmp sgt i32 %19, %conv.i26.i
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %alpha.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %20 = ptrtoint ptr %alpha.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alpha.i.i, align 8
  br label %alpha.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %rtt_low.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %rtt_low.i.i, align 1
  %23 = ptrtoint ptr %rtt_above9.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %rtt_above9.i.i, align 2
  br label %alpha.exit.i

if.end8.i.i:                                      ; preds = %avg_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %rtt_above9.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %rtt_above9.i.i, align 2
  %sub.i27.i = sub i32 %sub.i.i, %div.i24.i
  %sub10.i.i = sub i32 %conv184.i.i, %div.i24.i
  %mul.i28.i = mul i32 %sub.i27.i, 1280
  %mul11.i.i = mul i32 %sub10.i.i, 1242
  %div12.i.i = udiv i32 %mul11.i.i, 38
  %add.i29.i = add i32 %div12.i.i, %sub.i27.i
  %div13.i.i = udiv i32 %mul.i28.i, %add.i29.i
  br label %alpha.exit.i

alpha.exit.i:                                     ; preds = %if.end8.i.i, %if.end5.i.i, %if.then4.i.i, %if.then.i.i.alpha.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %21, %if.then4.i.i ], [ 1280, %if.end5.i.i ], [ %div13.i.i, %if.end8.i.i ], [ 1280, %if.then.i.i.alpha.exit.i_crit_edge ]
  %alpha8.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %25 = ptrtoint ptr %alpha8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i, ptr %alpha8.i, align 8
  %div.i30.i = udiv i32 %sub.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i30.i, i32 %conv184.i.i)
  %cmp.not.i31.i = icmp ult i32 %div.i30.i, %conv184.i.i
  br i1 %cmp.not.i31.i, label %if.end.i34.i, label %alpha.exit.i.if.end11.sink.split.i_crit_edge

alpha.exit.i.if.end11.sink.split.i_crit_edge:     ; preds = %alpha.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

if.end.i34.i:                                     ; preds = %alpha.exit.i
  %mul.i32.i = shl i32 %sub.i.i, 3
  %div1.i.i = udiv i32 %mul.i32.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i, i32 %conv184.i.i)
  %cmp2.not.i.i = icmp ugt i32 %div1.i.i, %conv184.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i, i32 %div.i30.i)
  %cmp3.not.i.i = icmp ugt i32 %div1.i.i, %div.i30.i
  %or.cond.i33.i = and i1 %cmp3.not.i.i, %cmp2.not.i.i
  br i1 %or.cond.i33.i, label %if.end5.i37.i, label %if.end.i34.i.if.end11.sink.split.i_crit_edge

if.end.i34.i.if.end11.sink.split.i_crit_edge:     ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

if.end5.i37.i:                                    ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul6.i.i = shl nuw i32 %div1.i.i, 3
  %mul7.neg.i.i = mul i32 %div.i30.i, -32
  %mul8.i.i = mul i32 %conv184.i.i, 24
  %sub.i35.i = add i32 %mul6.i.i, %mul7.neg.i.i
  %add.i36.i = add i32 %sub.i35.i, %mul8.i.i
  %sub9.i.i = sub nsw i32 %div1.i.i, %div.i30.i
  %div10.i.i = udiv i32 %add.i36.i, %sub9.i.i
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.end5.i37.i, %if.end.i34.i.if.end11.sink.split.i_crit_edge, %alpha.exit.i.if.end11.sink.split.i_crit_edge, %if.then.i
  %retval.0.i38.sink.i = phi i32 [ 32, %if.then.i ], [ %div10.i.i, %if.end5.i37.i ], [ 8, %alpha.exit.i.if.end11.sink.split.i_crit_edge ], [ 32, %if.end.i34.i.if.end11.sink.split.i_crit_edge ]
  %beta10.i = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 6
  %26 = ptrtoint ptr %beta10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i38.sink.i, ptr %beta10.i, align 4
  br label %update_params.exit

update_params.exit:                               ; preds = %if.end11.sink.split.i, %if.else.i.update_params.exit_crit_edge
  %snd_nxt.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %27 = ptrtoint ptr %snd_nxt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %snd_nxt.i.i, align 4
  %29 = ptrtoint ptr %end_seq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %end_seq, align 4
  %cnt_rtt.i39.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %30 = ptrtoint ptr %cnt_rtt.i39.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %cnt_rtt.i39.i, align 8
  %31 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %icsk_ca_priv.i, align 8
  br label %if.end

if.end:                                           ; preds = %update_params.exit, %entry.if.end_crit_edge
  %snd_cwnd.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %32 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %snd_cwnd.i.i, align 8
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %34 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %snd_ssthresh.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i.i44 = icmp ult i32 %33, %35
  br i1 %cmp.i.i44, label %if.then.i46, label %tcp_is_cwnd_limited.exit

if.then.i46:                                      ; preds = %if.end
  %max_packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 53
  %36 = ptrtoint ptr %max_packets_out.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_packets_out.i, align 4
  %mul.i = shl i32 %37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %mul.i)
  %cmp.i45 = icmp ult i32 %33, %mul.i
  br i1 %cmp.i45, label %if.then7, label %if.then.i46.cleanup_crit_edge

if.then.i46.cleanup_crit_edge:                    ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tcp_is_cwnd_limited.exit:                         ; preds = %if.end
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %38 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %if.else

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #8
  br label %cleanup

if.else:                                          ; preds = %tcp_is_cwnd_limited.exit
  %acked9 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %39 = ptrtoint ptr %acked9 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %acked9, align 8
  %conv = zext i16 %40 to i32
  %snd_cwnd_cnt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 64
  %41 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %snd_cwnd_cnt, align 4
  %add = add i32 %42, %conv
  store i32 %add, ptr %snd_cwnd_cnt, align 4
  store i16 1, ptr %acked9, align 8
  %alpha = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %43 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %alpha, align 8
  %mul = mul i32 %44, %add
  %shr = lshr i32 %mul, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %33)
  %cmp.not = icmp ult i32 %shr, %33
  br i1 %cmp.not, label %if.else.cleanup_crit_edge, label %if.then13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %shr, %33
  %add16 = add i32 %div, %33
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %45 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %snd_cwnd_clamp, align 8
  %47 = tail call i32 @llvm.umin.i32(i32 %add16, i32 %46)
  %48 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %snd_cwnd.i.i, align 8
  %49 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %snd_cwnd_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else.cleanup_crit_edge, %if.then7, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i46.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_illinois_state(ptr nocapture noundef %sk, i8 noundef zeroext %new_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %new_state)
  %cmp = icmp eq i8 %new_state, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %alpha = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %0 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %alpha, align 8
  %beta = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 6
  %1 = ptrtoint ptr %beta to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %beta, align 4
  %rtt_low = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 9
  %2 = ptrtoint ptr %rtt_low to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rtt_low, align 1
  %rtt_above = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 8
  %3 = ptrtoint ptr %rtt_above to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rtt_above, align 2
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %4 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_nxt.i, align 4
  %end_seq.i = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 4
  %6 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %end_seq.i, align 4
  %cnt_rtt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %cnt_rtt.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %cnt_rtt.i, align 8
  %8 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %icsk_ca_priv.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_illinois_acked(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %rtt_us1 = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %0 = ptrtoint ptr %rtt_us1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_us1, align 4
  %2 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample, align 4
  %conv = trunc i32 %3 to i16
  %acked = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %4 = ptrtoint ptr %acked to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %acked, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 3355443)
  %base_rtt = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 2
  %6 = ptrtoint ptr %base_rtt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_rtt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp7 = icmp ugt i32 %7, %5
  br i1 %cmp7, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %base_rtt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %base_rtt, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %max_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %9 = ptrtoint ptr %max_rtt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_rtt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp12 = icmp ult i32 %10, %5
  br i1 %cmp12, label %if.then14, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %max_rtt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %max_rtt, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %cnt_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %12 = ptrtoint ptr %cnt_rtt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cnt_rtt, align 8
  %inc = add i16 %13, 1
  store i16 %inc, ptr %cnt_rtt, align 8
  %conv17 = zext i32 %5 to i64
  %14 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %icsk_ca_priv.i, align 8
  %add = add i64 %15, %conv17
  store i64 %add, ptr %icsk_ca_priv.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_illinois_info(ptr nocapture noundef readonly %sk, i32 noundef %ext, ptr nocapture noundef writeonly %attr, ptr nocapture noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %and = and i32 %ext, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %info, align 4
  %cnt_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %1 = ptrtoint ptr %cnt_rtt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cnt_rtt, align 8
  %conv = zext i16 %2 to i32
  %tcpv_rttcnt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %tcpv_rttcnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %tcpv_rttcnt, align 4
  %base_rtt = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 2
  %4 = ptrtoint ptr %base_rtt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_rtt, align 4
  %tcpv_minrtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %tcpv_minrtt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tcpv_minrtt, align 4
  %tcpv_rtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %tcpv_rtt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tcpv_rtt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.not = icmp eq i16 %2, 0
  br i1 %cmp.not, label %if.then.if.end193_crit_edge, label %if.then3

if.then.if.end193_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then3:                                         ; preds = %if.then
  %8 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %9)
  %cmp175 = icmp ult i64 %9, 4294967296
  br i1 %cmp175, label %if.then179, label %if.else185, !prof !44

if.then179:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %conv180 = trunc i64 %9 to i32
  %div183 = udiv i32 %conv180, %conv
  br label %if.end189

if.else185:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %9) #11, !srcloc !45
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t308 = trunc i64 %asmresult1.i to i32
  br label %if.end189

if.end189:                                        ; preds = %if.else185, %if.then179
  %t.0.off0 = phi i32 [ %div183, %if.then179 ], [ %extract.t308, %if.else185 ]
  %11 = ptrtoint ptr %tcpv_rtt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %t.0.off0, ptr %tcpv_rtt, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.end189, %if.then.if.end193_crit_edge
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.end193 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_illinois_init(ptr nocapture noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %alpha = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %0 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1280, ptr %alpha, align 8
  %beta = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 6
  %1 = ptrtoint ptr %beta to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %beta, align 4
  %base_rtt = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 2
  %2 = ptrtoint ptr %base_rtt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2147483647, ptr %base_rtt, align 4
  %max_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %3 = ptrtoint ptr %max_rtt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_rtt, align 8
  %acked = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %4 = ptrtoint ptr %acked to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %acked, align 8
  %5 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snd_nxt.i, align 4
  %end_seq.i = getelementptr inbounds %struct.illinois, ptr %icsk_ca_priv.i, i32 0, i32 4
  %7 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %end_seq.i, align 4
  %cnt_rtt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %cnt_rtt.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %cnt_rtt.i, align 8
  %9 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %icsk_ca_priv.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__param_win_thresh, !1, !"__param_win_thresh", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_illinois.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_win_threshtype593, !1, !"__UNIQUE_ID_win_threshtype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_win_thresh594, !4, !"__UNIQUE_ID_win_thresh594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_illinois.c", i32 37, i32 1}
!5 = !{ptr @__param_theta, !6, !"__param_theta", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_illinois.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_thetatype595, !6, !"__UNIQUE_ID_thetatype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_theta596, !9, !"__UNIQUE_ID_theta596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_illinois.c", i32 41, i32 1}
!10 = !{ptr @__initcall__kmod_tcp_illinois__602_352_tcp_illinois_register6, !11, !"__initcall__kmod_tcp_illinois__602_352_tcp_illinois_register6", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_illinois.c", i32 352, i32 1}
!12 = !{ptr @__exitcall_tcp_illinois_unregister, !13, !"__exitcall_tcp_illinois_unregister", i1 false, i1 false}
!13 = !{!"../net/ipv4/tcp_illinois.c", i32 353, i32 1}
!14 = !{ptr @__UNIQUE_ID_author603, !15, !"__UNIQUE_ID_author603", i1 false, i1 false}
!15 = !{!"../net/ipv4/tcp_illinois.c", i32 355, i32 1}
!16 = !{ptr @__UNIQUE_ID_file604, !17, !"__UNIQUE_ID_file604", i1 false, i1 false}
!17 = !{!"../net/ipv4/tcp_illinois.c", i32 356, i32 1}
!18 = !{ptr @__UNIQUE_ID_license605, !17, !"__UNIQUE_ID_license605", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description606, !20, !"__UNIQUE_ID_description606", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_illinois.c", i32 357, i32 1}
!21 = !{ptr @__UNIQUE_ID_version607, !22, !"__UNIQUE_ID_version607", i1 false, i1 false}
!22 = !{!"../net/ipv4/tcp_illinois.c", i32 358, i32 1}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__modver_attr, !22, !"__modver_attr", i1 false, i1 false}
!27 = !{ptr @__param_str_win_thresh, !1, !"__param_str_win_thresh", i1 false, i1 false}
!28 = !{ptr @win_thresh, !29, !"win_thresh", i1 false, i1 false}
!29 = !{!"../net/ipv4/tcp_illinois.c", i32 35, i32 12}
!30 = !{ptr @__param_str_theta, !6, !"__param_str_theta", i1 false, i1 false}
!31 = !{ptr @theta, !32, !"theta", i1 false, i1 false}
!32 = !{!"../net/ipv4/tcp_illinois.c", i32 39, i32 12}
!33 = !{ptr @tcp_illinois, !34, !"tcp_illinois", i1 false, i1 false}
!34 = !{!"../net/ipv4/tcp_illinois.c", i32 328, i32 34}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2148193024, i64 2148193304, i64 2148193638, i64 2148193972}
