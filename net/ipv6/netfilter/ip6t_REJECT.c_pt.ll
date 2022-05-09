; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_REJECT.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_REJECT.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@__UNIQUE_ID_author618 = internal constant [69 x i8] c"ip6t_REJECT.author=Yasuyuki KOZAKAI <yasuyuki.kozakai@toshiba.co.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description619 = internal constant [68 x i8] c"ip6t_REJECT.description=Xtables: packet \22rejection\22 target for IPv6\00", section ".modinfo", align 1
@__UNIQUE_ID_file620 = internal constant [48 x i8] c"ip6t_REJECT.file=net/ipv6/netfilter/ip6t_REJECT\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [24 x i8] c"ip6t_REJECT.license=GPL\00", section ".modinfo", align 1
@reject_tg6_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"REJECT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @reject_tg6, ptr @reject_tg6_check, ptr null, ptr null, ptr @.str, i32 4, i32 0, i32 14, i16 0, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_REJECT__622_120_reject_tg6_init6 = internal global ptr @reject_tg6_init, section ".initcall6.init", align 4
@__exitcall_reject_tg6_exit = internal global ptr @reject_tg6_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@reject_tg6_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.reject_tg6_check = private unnamed_addr constant [17 x i8] c"reject_tg6_check\00", align 1
@reject_tg6_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.reject_tg6_check, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ip6t_REJECT: ECHOREPLY is not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/ipv6/netfilter/ip6t_REJECT.c\00", [63 x i8] zeroinitializer }, align 32
@reject_tg6_check._entry_ptr = internal global ptr @reject_tg6_check._entry, section ".printk_index", align 4
@reject_tg6_check._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@reject_tg6_check._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.reject_tg6_check, ptr @.str.3, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016ip6t_REJECT: TCP_RESET illegal for non-tcp\0A\00", [50 x i8] zeroinitializer }, align 32
@reject_tg6_check._entry_ptr.7 = internal global ptr @reject_tg6_check._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 103, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 84, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [36 x i8] c"../net/ipv6/netfilter/ip6t_REJECT.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 91, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author618, ptr @__UNIQUE_ID_description619, ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__exitcall_reject_tg6_exit, ptr @__initcall__kmod_ip6t_REJECT__622_120_reject_tg6_init6, ptr @reject_tg6_check._entry, ptr @reject_tg6_check._entry.5, ptr @reject_tg6_check._entry_ptr, ptr @reject_tg6_check._entry_ptr.7, ptr @reject_tg6_exit, ptr @.str, ptr @reject_tg6_check._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @reject_tg6_check._rs.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reject_tg6_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reject_tg6_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reject_tg6_check._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reject_tg6_check._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @reject_tg6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_target(ptr noundef nonnull @reject_tg6_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @reject_tg6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @reject_tg6_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reject_tg6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 8, label %sw.bb14
    i32 6, label %sw.bb10
    i32 7, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %4, align 4
  %conv.i = zext i8 %11 to i32
  tail call void @nf_send_unreach6(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %conv.i) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %4, align 4
  %conv.i42 = zext i8 %13 to i32
  tail call void @nf_send_unreach6(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 1, i32 noundef %conv.i42) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %4, align 4
  %conv.i44 = zext i8 %15 to i32
  tail call void @nf_send_unreach6(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 2, i32 noundef %conv.i44) #4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 4
  %conv.i46 = zext i8 %17 to i32
  tail call void @nf_send_unreach6(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 3, i32 noundef %conv.i46) #4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 4
  %conv.i48 = zext i8 %19 to i32
  tail call void @nf_send_unreach6(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 4, i32 noundef %conv.i48) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %4, align 4
  %conv.i50 = zext i8 %23 to i32
  tail call void @nf_send_reset6(ptr noundef %6, ptr noundef %21, ptr noundef %skb, i32 noundef %conv.i50) #4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 4
  %conv.i52 = zext i8 %25 to i32
  tail call void @nf_send_unreach6(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 5, i32 noundef %conv.i52) #4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %4, align 4
  %conv.i54 = zext i8 %27 to i32
  tail call void @nf_send_unreach6(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 6, i32 noundef %conv.i54) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reject_tg6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 5, label %if.then
    i32 6, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @reject_tg6_check._rs, ptr noundef nonnull @__func__.reject_tg6_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then5.if.then16_crit_edge, label %lor.lhs.false

if.then5.if.then16_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.then5
  %proto = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %proto, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %11)
  %cmp9.not = icmp eq i16 %11, 6
  br i1 %cmp9.not, label %lor.lhs.false11, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %invflags = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %invflags, align 4
  %14 = and i8 %13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false11.if.then16_crit_edge

lor.lhs.false11.if.then16_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %lor.lhs.false11.if.then16_crit_edge, %lor.lhs.false.if.then16_crit_edge, %if.then5.if.then16_crit_edge
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @reject_tg6_check._rs.4, ptr noundef nonnull @__func__.reject_tg6_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then16.cleanup.sink.split_crit_edge

if.then16.cleanup.sink.split_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then16.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.2, %if.then.cleanup.sink.split_crit_edge ], [ @.str.6, %if.then16.cleanup.sink.split_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then16.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_unreach6(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_reset6(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__UNIQUE_ID_author618, !1, !"__UNIQUE_ID_author618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_description619, !3, !"__UNIQUE_ID_description619", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file620, !5, !"__UNIQUE_ID_file620", i1 false, i1 false}
!5 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license621, !5, !"__UNIQUE_ID_license621", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ip6t_REJECT__622_120_reject_tg6_init6, !8, !"__initcall__kmod_ip6t_REJECT__622_120_reject_tg6_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 120, i32 1}
!9 = !{ptr @__exitcall_reject_tg6_exit, !10, !"__exitcall_reject_tg6_exit", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 121, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 103, i32 12}
!13 = !{ptr @reject_tg6_reg, !14, !"reject_tg6_reg", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 98, i32 25}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 84, i32 3}
!17 = !{ptr @reject_tg6_check._rs, !16, !"_rs", i1 false, i1 false}
!18 = !{ptr @__func__.reject_tg6_check, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @reject_tg6_check._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @reject_tg6_check._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @reject_tg6_check._rs.4, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../net/ipv6/netfilter/ip6t_REJECT.c", i32 91, i32 4}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @reject_tg6_check._entry.5, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @reject_tg6_check._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
