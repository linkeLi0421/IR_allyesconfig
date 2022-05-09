; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/ipt_ECN.c_pt.bc'
source_filename = "../net/ipv4/netfilter/ipt_ECN.c"
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
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.xt_action_param = type { %union.anon.142, %union.anon.143, ptr, i32, i16, i8 }
%union.anon.142 = type { ptr }
%union.anon.143 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipt_ECN_info = type { i8, i8, %union.anon.148 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { i8 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }

@__UNIQUE_ID_file509 = internal constant [40 x i8] c"ipt_ECN.file=net/ipv4/netfilter/ipt_ECN\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [20 x i8] c"ipt_ECN.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author511 = internal constant [52 x i8] c"ipt_ECN.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description512 = internal constant [86 x i8] c"ipt_ECN.description=Xtables: Explicit Congestion Notification (ECN) flag modification\00", section ".modinfo", align 1
@ecn_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"ECN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ecn_tg, ptr @ecn_tg_check, ptr null, ptr null, ptr @.str, i32 3, i32 0, i32 0, i16 0, i16 2 }, section ".data..read_mostly", align 4
@__initcall__kmod_ipt_ECN__513_132_ecn_tg_init6 = internal global ptr @ecn_tg_init, section ".initcall6.init", align 4
@__exitcall_ecn_tg_exit = internal global ptr @ecn_tg_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@ecn_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ecn_tg_check = private unnamed_addr constant [13 x i8] c"ecn_tg_check\00", align 1
@ecn_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.ecn_tg_check, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ipt_ECN: cannot use operation on non-tcp rule\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/ipv4/netfilter/ipt_ECN.c\00", [35 x i8] zeroinitializer }, align 32
@ecn_tg_check._entry_ptr = internal global ptr @ecn_tg_check._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 117, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [32 x i8] c"../net/ipv4/netfilter/ipt_ECN.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 106, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author511, ptr @__UNIQUE_ID_description512, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_ecn_tg_exit, ptr @__initcall__kmod_ipt_ECN__513_132_ecn_tg_init6, ptr @ecn_tg_check._entry, ptr @ecn_tg_check._entry_ptr, ptr @ecn_tg_exit, ptr @.str, ptr @ecn_tg_check._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecn_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecn_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ecn_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_target(ptr noundef nonnull @ecn_tg_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ecn_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @ecn_tg_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecn_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_tcph.i = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tos.i, align 1
  %ip_ect.i = getelementptr inbounds %struct.ipt_ECN_info, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %ip_ect.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ip_ect.i, align 1
  %14 = xor i8 %13, %11
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 0
  br i1 %cmp.not.i, label %if.then.if.end2_crit_edge, label %if.then.i

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then.i:                                        ; preds = %if.then
  %call4.i = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %18 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i34.i = zext i16 %19 to i32
  %add.ptr.i.i35.i = getelementptr i8, ptr %17, i32 %conv.i.i34.i
  %tos7.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i35.i, i32 0, i32 1
  %20 = ptrtoint ptr %tos7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tos7.i, align 1
  %22 = and i8 %21, -4
  store i8 %22, ptr %tos7.i, align 1
  %23 = ptrtoint ptr %ip_ect.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ip_ect.i, align 1
  %25 = and i8 %24, 3
  %or31.i = or i8 %25, %22
  store i8 %or31.i, ptr %tos7.i, align 1
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i35.i, i32 0, i32 7
  %conv18.i = zext i8 %21 to i16
  %conv20.i = zext i8 %or31.i to i16
  %26 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %check.i, align 2
  %neg.i.i = xor i16 %27, -1
  %neg.i.i.i = xor i16 %conv18.i, -1
  %add.i.i.i.i = add i16 %neg.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i, i16 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i16 %add.i.i.i.i, %neg.i.i.i
  %conv6.i.i.i.i = zext i1 %cmp.i.i.i.i to i16
  %add7.i.i.i.i = add i16 %add.i.i.i.i, %conv20.i
  %add.i.i.i = add i16 %add7.i.i.i.i, %conv6.i.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %conv20.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %conv20.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %neg4.i.i = xor i16 %add7.i.i.i, -1
  %28 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %neg4.i.i, ptr %check.i, align 2
  br label %if.end2

if.end2:                                          ; preds = %if.end.i, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 1
  %31 = and i8 %30, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool6.not = icmp eq i8 %31, 0
  br i1 %tobool6.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %35 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %37)
  %cmp = icmp eq i8 %37, 6
  br i1 %cmp, label %if.then10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph.i) #5
  %38 = call ptr @memset(ptr %_tcph.i, i32 255, i32 20)
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %40 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %40 to i32
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i.i, align 8
  %45 = add i32 %44, %mul.i.i
  %sub.i1.i.i = sub i32 %42, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i.i)
  %cmp.i.i.i20 = icmp sgt i32 %sub.i1.i.i, 19
  br i1 %cmp.i.i.i20, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !32

if.end.i.i.i:                                     ; preds = %if.then10
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.set_ect_tcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.set_ect_tcp.exit.thread_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_ect_tcp.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i.i, ptr noundef nonnull %_tcph.i, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.set_ect_tcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end.i23_crit_edge

lor.lhs.false.i.i.i.if.end.i23_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i23

lor.lhs.false.i.i.i.set_ect_tcp.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_ect_tcp.exit.thread

skb_header_pointer.exit.i:                        ; preds = %if.then10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %47, i32 %mul.i.i
  %tobool.not.i22 = icmp eq ptr %add.ptr.i.i.i21, null
  br i1 %tobool.not.i22, label %skb_header_pointer.exit.i.set_ect_tcp.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i23_crit_edge

skb_header_pointer.exit.i.if.end.i23_crit_edge:   ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i23

skb_header_pointer.exit.i.set_ect_tcp.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_ect_tcp.exit.thread

if.end.i23:                                       ; preds = %skb_header_pointer.exit.i.if.end.i23_crit_edge, %lor.lhs.false.i.i.i.if.end.i23_crit_edge
  %retval.0.i.i106.i = phi ptr [ %add.ptr.i.i.i21, %skb_header_pointer.exit.i.if.end.i23_crit_edge ], [ %_tcph.i, %lor.lhs.false.i.i.i.if.end.i23_crit_edge ]
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %2, align 1
  %50 = and i8 %49, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool2.not.i = icmp eq i8 %50, 0
  br i1 %tobool2.not.i, label %if.end.i23.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

if.end.i23.land.lhs.true.i_crit_edge:             ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end.i23
  %ece.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i106.i, i32 0, i32 4
  %51 = ptrtoint ptr %ece.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i = load i16, ptr %ece.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 6
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %proto.i = getelementptr inbounds %struct.ipt_ECN_info, ptr %2, i32 0, i32 2
  %52 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load4.i = load i8, ptr %proto.i, align 1
  %bf.lshr5.i = lshr i8 %bf.load4.i, 7
  %53 = zext i8 %bf.lshr5.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear.i, i16 %53)
  %cmp.i = icmp eq i16 %bf.clear.i, %53
  br i1 %cmp.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end25.i_crit_edge

lor.lhs.false.i.if.end25.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end.i23.land.lhs.true.i_crit_edge
  %54 = and i8 %49, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool11.not.i = icmp eq i8 %54, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.set_ect_tcp.exit_crit_edge, label %lor.lhs.false12.i

land.lhs.true.i.set_ect_tcp.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_ect_tcp.exit

lor.lhs.false12.i:                                ; preds = %land.lhs.true.i
  %cwr.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i106.i, i32 0, i32 4
  %55 = ptrtoint ptr %cwr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load13.i = load i16, ptr %cwr.i, align 4
  %bf.lshr14.i = lshr i16 %bf.load13.i, 7
  %bf.clear15.i = and i16 %bf.lshr14.i, 1
  %proto17.i = getelementptr inbounds %struct.ipt_ECN_info, ptr %2, i32 0, i32 2
  %56 = ptrtoint ptr %proto17.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load18.i = load i8, ptr %proto17.i, align 1
  %bf.lshr19.i = lshr i8 %bf.load18.i, 6
  %bf.clear20.i = and i8 %bf.lshr19.i, 1
  %57 = zext i8 %bf.clear20.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear15.i, i16 %57)
  %cmp22.i = icmp eq i16 %bf.clear15.i, %57
  br i1 %cmp22.i, label %lor.lhs.false12.i.set_ect_tcp.exit_crit_edge, label %lor.lhs.false12.i.if.end25.i_crit_edge

lor.lhs.false12.i.if.end25.i_crit_edge:           ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

lor.lhs.false12.i.set_ect_tcp.exit_crit_edge:     ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_ect_tcp.exit

if.end25.i:                                       ; preds = %lor.lhs.false12.i.if.end25.i_crit_edge, %lor.lhs.false.i.if.end25.i_crit_edge
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %60 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i88.i = zext i16 %61 to i32
  %add.ptr.i.i.i89.i = getelementptr i8, ptr %59, i32 %conv.i.i.i88.i
  %62 = ptrtoint ptr %add.ptr.i.i.i89.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i90.i = load i8, ptr %add.ptr.i.i.i89.i, align 4
  %bf.clear.i91.i = shl i8 %bf.load.i90.i, 2
  %63 = and i8 %bf.clear.i91.i, 60
  %narrow.i = add nuw nsw i8 %63, 20
  %add.i = zext i8 %narrow.i to i32
  %call27.i = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end25.i.set_ect_tcp.exit.thread_crit_edge

if.end25.i.set_ect_tcp.exit.thread_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_ect_tcp.exit.thread

if.end30.i:                                       ; preds = %if.end25.i
  %64 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i, align 8
  %66 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i24 = zext i16 %67 to i32
  %add.ptr.i.i93.i = getelementptr i8, ptr %65, i32 %conv.i.i.i24
  %68 = ptrtoint ptr %add.ptr.i.i93.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i98.i = load i8, ptr %add.ptr.i.i93.i, align 4
  %bf.clear.i99.i = shl i8 %bf.load.i98.i, 2
  %69 = and i8 %bf.clear.i99.i, 60
  %mul.i100.i = zext i8 %69 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i93.i, i32 %mul.i100.i
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i, i32 6
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i, align 2
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %2, align 1
  %74 = and i8 %73, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool36.not.i = icmp eq i8 %74, 0
  br i1 %tobool36.not.i, label %if.end30.i.if.end45.i_crit_edge, label %if.then37.i

if.end30.i.if.end45.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %proto38.i = getelementptr inbounds %struct.ipt_ECN_info, ptr %2, i32 0, i32 2
  %75 = ptrtoint ptr %proto38.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load39.i = load i8, ptr %proto38.i, align 1
  %76 = lshr i8 %bf.load39.i, 1
  %77 = and i8 %76, 64
  %bf.shl.i = zext i8 %77 to i16
  %bf.clear44.i = and i16 %71, -65
  %bf.set.i = or i16 %bf.clear44.i, %bf.shl.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %bf.set.i, ptr %arrayidx.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then37.i, %if.end30.i.if.end45.i_crit_edge
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %2, align 1
  %81 = and i8 %80, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool49.not.i = icmp eq i8 %81, 0
  br i1 %tobool49.not.i, label %if.end45.i.if.end62.i_crit_edge, label %if.then50.i

if.end45.i.if.end62.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.then50.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %proto51.i = getelementptr inbounds %struct.ipt_ECN_info, ptr %2, i32 0, i32 2
  %82 = ptrtoint ptr %proto51.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load52.i = load i8, ptr %proto51.i, align 1
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load57.i = load i16, ptr %arrayidx.i, align 4
  %84 = shl i8 %bf.load52.i, 1
  %85 = and i8 %84, -128
  %bf.shl59.i = zext i8 %85 to i16
  %bf.clear60.i = and i16 %bf.load57.i, -129
  %bf.set61.i = or i16 %bf.clear60.i, %bf.shl59.i
  store i16 %bf.set61.i, ptr %arrayidx.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then50.i, %if.end45.i.if.end62.i_crit_edge
  %check.i25 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 6
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i26 = zext i16 %71 to i32
  %conv1.i.i = zext i16 %87 to i32
  call void @inet_proto_csum_replace4(ptr noundef %check.i25, ptr noundef %skb, i32 noundef %conv.i.i26, i32 noundef %conv1.i.i, i1 noundef zeroext false) #5
  br label %set_ect_tcp.exit

set_ect_tcp.exit.thread:                          ; preds = %if.end25.i.set_ect_tcp.exit.thread_crit_edge, %skb_header_pointer.exit.i.set_ect_tcp.exit.thread_crit_edge, %lor.lhs.false.i.i.i.set_ect_tcp.exit.thread_crit_edge, %if.end.i.i.i.set_ect_tcp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #5
  br label %cleanup

set_ect_tcp.exit:                                 ; preds = %if.end62.i, %lor.lhs.false12.i.set_ect_tcp.exit_crit_edge, %land.lhs.true.i.set_ect_tcp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #5
  br label %cleanup

cleanup:                                          ; preds = %set_ect_tcp.exit, %set_ect_tcp.exit.thread, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %set_ect_tcp.exit.thread ], [ -1, %set_ect_tcp.exit ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecn_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_ect = getelementptr inbounds %struct.ipt_ECN_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ip_ect to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ip_ect, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %tobool3.not = icmp ult i8 %7, 4
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and8 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %proto = getelementptr inbounds %struct.ipt_ip, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %proto, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %9)
  %cmp.not = icmp eq i16 %9, 6
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then16_crit_edge

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

lor.lhs.false:                                    ; preds = %land.lhs.true
  %invflags = getelementptr inbounds %struct.ipt_ip, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %invflags, align 1
  %12 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ecn_tg_check._rs, ptr noundef nonnull @__func__.ecn_tg_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.then16.cleanup_crit_edge, label %do.end

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then16.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_file509, !1, !"__UNIQUE_ID_file509", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license510, !1, !"__UNIQUE_ID_license510", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author511, !4, !"__UNIQUE_ID_author511", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_description512, !6, !"__UNIQUE_ID_description512", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 21, i32 1}
!7 = !{ptr @__initcall__kmod_ipt_ECN__513_132_ecn_tg_init6, !8, !"__initcall__kmod_ipt_ECN__513_132_ecn_tg_init6", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 132, i32 1}
!9 = !{ptr @__exitcall_ecn_tg_exit, !10, !"__exitcall_ecn_tg_exit", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 133, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 117, i32 12}
!13 = !{ptr @ecn_tg_reg, !14, !"ecn_tg_reg", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 112, i32 25}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/netfilter/ipt_ECN.c", i32 106, i32 3}
!17 = !{ptr @ecn_tg_check._rs, !16, !"_rs", i1 false, i1 false}
!18 = !{ptr @__func__.ecn_tg_check, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ecn_tg_check._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ecn_tg_check._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
