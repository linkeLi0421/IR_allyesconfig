; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_TCPOPTSTRIP.c_pt.bc'
source_filename = "../net/netfilter/xt_TCPOPTSTRIP.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }

@tcpoptstrip_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TCPOPTSTRIP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcpoptstrip_tg4, ptr null, ptr null, ptr null, ptr @.str, i32 32, i32 0, i32 0, i16 6, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TCPOPTSTRIP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcpoptstrip_tg6, ptr null, ptr null, ptr null, ptr @.str, i32 32, i32 0, i32 0, i16 6, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_TCPOPTSTRIP__610_147_tcpoptstrip_tg_init6 = internal global ptr @tcpoptstrip_tg_init, section ".initcall6.init", align 4
@__exitcall_tcpoptstrip_tg_exit = internal global ptr @tcpoptstrip_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author611 = internal constant [94 x i8] c"xt_TCPOPTSTRIP.author=Sven Schnelle <svens@bitebene.org>, Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description612 = internal constant [57 x i8] c"xt_TCPOPTSTRIP.description=Xtables: TCP option stripping\00", section ".modinfo", align 1
@__UNIQUE_ID_file613 = internal constant [49 x i8] c"xt_TCPOPTSTRIP.file=net/netfilter/xt_TCPOPTSTRIP\00", section ".modinfo", align 1
@__UNIQUE_ID_license614 = internal constant [27 x i8] c"xt_TCPOPTSTRIP.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias615 = internal constant [37 x i8] c"xt_TCPOPTSTRIP.alias=ipt_TCPOPTSTRIP\00", section ".modinfo", align 1
@__UNIQUE_ID_alias616 = internal constant [38 x i8] c"xt_TCPOPTSTRIP.alias=ip6t_TCPOPTSTRIP\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [34 x i8] c"../net/netfilter/xt_TCPOPTSTRIP.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 116, i32 17 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias615, ptr @__UNIQUE_ID_alias616, ptr @__UNIQUE_ID_author611, ptr @__UNIQUE_ID_description612, ptr @__UNIQUE_ID_file613, ptr @__UNIQUE_ID_license614, ptr @__exitcall_tcpoptstrip_tg_exit, ptr @__initcall__kmod_xt_TCPOPTSTRIP__610_147_tcpoptstrip_tg_init6, ptr @tcpoptstrip_tg_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcpoptstrip_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_targets(ptr noundef nonnull @tcpoptstrip_tg_reg, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpoptstrip_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @tcpoptstrip_tg_reg, i32 noundef 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpoptstrip_tg4(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %5 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %5 to i32
  %call1 = tail call fastcc i32 @tcpoptstrip_mangle_packet(ptr noundef %skb, ptr noundef %par, i32 noundef %mul.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpoptstrip_tg6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #4
  %4 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %frag_off, align 2, !annotation !28
  %nexthdr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %nexthdr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nexthdr1, align 2
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %nexthdr, align 1
  %call2 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = call fastcc i32 @tcpoptstrip_mangle_packet(ptr noundef %skb, ptr noundef %par, i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcpoptstrip_mangle_packet(ptr noundef %skb, ptr nocapture noundef readonly %par, i32 noundef %tcphoff) unnamed_addr #2 align 64 {
entry:
  %_th = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_th) #4
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %3 = call ptr @memset(ptr %_th, i32 255, i32 20)
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %10 = add i32 %9, %tcphoff
  %sub.i1.i = sub i32 %7, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !29

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %tcphoff, ptr noundef nonnull %_th, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end3_crit_edge

lor.lhs.false.i.i.if.end3_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %tcphoff
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end3_crit_edge

skb_header_pointer.exit.if.end3_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %skb_header_pointer.exit.if.end3_crit_edge, %lor.lhs.false.i.i.if.end3_crit_edge
  %retval.0.i.i100 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end3_crit_edge ], [ %_th, %lor.lhs.false.i.i.if.end3_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i100, i32 0, i32 4
  %13 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %doff, align 4
  %14 = lshr i16 %bf.load, 10
  %15 = and i16 %14, 60
  %mul = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %15)
  %cmp5 = icmp ult i16 %15, 20
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %add = add i32 %mul, %tcphoff
  %call9 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i, align 4
  %conv.i94 = zext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv.i94
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %tcphoff
  %sub = add nsw i32 %mul, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub)
  %cmp14104 = icmp ugt i32 %sub, 20
  br i1 %cmp14104, label %for.body.lr.ph, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end12
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 20, %for.body.lr.ph ], [ %add17, %for.inc50.for.body_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %i.0105
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.i = icmp ult i8 %21, 2
  br i1 %cmp.i, label %for.body.optlen.exit_crit_edge, label %lor.lhs.false.i

for.body.optlen.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %optlen.exit

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add nuw i32 %i.0105, 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp4.i = icmp eq i8 %23, 0
  %narrow.i = select i1 %cmp4.i, i8 1, i8 %23
  %spec.select.i = zext i8 %narrow.i to i32
  br label %optlen.exit

optlen.exit:                                      ; preds = %lor.lhs.false.i, %for.body.optlen.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %for.body.optlen.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %add17 = add i32 %retval.0.i, %i.0105
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %mul)
  %cmp18 = icmp ugt i32 %add17, %mul
  br i1 %cmp18, label %optlen.exit.cleanup_crit_edge, label %if.end21

optlen.exit.cleanup_crit_edge:                    ; preds = %optlen.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %optlen.exit
  %conv22 = zext i8 %21 to i32
  %and = and i32 %conv22, 31
  %shl = shl nuw i32 1, %and
  %24 = lshr i32 %conv22, 5
  %arrayidx25 = getelementptr [8 x i32], ptr %2, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx25, align 4
  %and26 = and i32 %26, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.end21.for.inc50_crit_edge, label %if.end21.for.body34_crit_edge

if.end21.for.body34_crit_edge:                    ; preds = %if.end21
  br label %for.body34

if.end21.for.inc50_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc50

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %if.end21.for.body34_crit_edge
  %j.0103 = phi i32 [ %inc, %for.body34.for.body34_crit_edge ], [ 0, %if.end21.for.body34_crit_edge ]
  %add35 = add i32 %j.0103, %i.0105
  %arrayidx36 = getelementptr i8, ptr %add.ptr, i32 %add35
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %28 to i16
  %rem = and i32 %add35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp39 = icmp eq i32 %rem, 0
  %shl43 = shl nuw i16 %conv37, 8
  %o.0 = select i1 %cmp39, i16 %shl43, i16 %conv37
  %conv.i = zext i16 %o.0 to i32
  %conv1.i = select i1 %cmp39, i32 256, i32 1
  call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %skb, i32 noundef %conv.i, i32 noundef %conv1.i, i1 noundef zeroext false) #4
  %inc = add nuw nsw i32 %j.0103, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i
  br i1 %exitcond.not, label %for.end, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body34

for.end:                                          ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #6
  %29 = call ptr @memset(ptr %arrayidx.i, i32 1, i32 %retval.0.i)
  br label %for.inc50

for.inc50:                                        ; preds = %for.end, %if.end21.for.inc50_crit_edge
  %cmp14 = icmp ult i32 %add17, %sub
  br i1 %cmp14, label %for.inc50.for.body_crit_edge, label %for.inc50.cleanup_crit_edge

for.inc50.cleanup_crit_edge:                      ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc50.cleanup_crit_edge, %optlen.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %skb_header_pointer.exit.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ], [ -1, %for.inc50.cleanup_crit_edge ], [ -1, %optlen.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_th) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_xt_TCPOPTSTRIP__610_147_tcpoptstrip_tg_init6, !1, !"__initcall__kmod_xt_TCPOPTSTRIP__610_147_tcpoptstrip_tg_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 147, i32 1}
!2 = !{ptr @__exitcall_tcpoptstrip_tg_exit, !3, !"__exitcall_tcpoptstrip_tg_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 148, i32 1}
!4 = !{ptr @__UNIQUE_ID_author611, !5, !"__UNIQUE_ID_author611", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 149, i32 1}
!6 = !{ptr @__UNIQUE_ID_description612, !7, !"__UNIQUE_ID_description612", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 150, i32 1}
!8 = !{ptr @__UNIQUE_ID_file613, !9, !"__UNIQUE_ID_file613", i1 false, i1 false}
!9 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 151, i32 1}
!10 = !{ptr @__UNIQUE_ID_license614, !9, !"__UNIQUE_ID_license614", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias615, !12, !"__UNIQUE_ID_alias615", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 152, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias616, !14, !"__UNIQUE_ID_alias616", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 153, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 116, i32 17}
!17 = !{ptr @tcpoptstrip_tg_reg, !18, !"tcpoptstrip_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_TCPOPTSTRIP.c", i32 112, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 2000, i32 1}
