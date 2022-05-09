; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_osf.c_pt.bc'
source_filename = "../net/netfilter/nft_osf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.nf_osf_data = type { ptr, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.3, %union.anon.171, %union.anon.172, [48 x i8], %union.anon.173, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.175, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.177, i32, i32, i32, i16, i16, %union.anon.179, i32, %union.anon.180, %union.anon.181, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.177 = type { i32 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_osf = type { i8, i8, i32 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }

@nft_osf_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_osf_op, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_osf_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_osf__658_151_nft_osf_module_init6 = internal global ptr @nft_osf_module_init, section ".initcall6.init", align 4
@__exitcall_nft_osf_module_exit = internal global ptr @nft_osf_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file659 = internal constant [35 x i8] c"nft_osf.file=net/netfilter/nft_osf\00", section ".modinfo", align 1
@__UNIQUE_ID_license660 = internal constant [20 x i8] c"nft_osf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author661 = internal constant [57 x i8] c"nft_osf.author=Fernando Fernandez <ffmancera@riseup.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias662 = internal constant [27 x i8] c"nft_osf.alias=nft-expr-osf\00", section ".modinfo", align 1
@__UNIQUE_ID_description663 = internal constant [60 x i8] c"nft_osf.description=nftables passive OS fingerprint support\00", section ".modinfo", align 1
@nft_osf_op = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_osf_eval, ptr null, i32 16, ptr @nft_osf_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_osf_dump, ptr @nft_osf_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_osf_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osf\00", [28 x i8] zeroinitializer }, align 32
@nft_osf_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nf_osf_fingers = external dso_local global [2 x %struct.list_head], align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"nft_osf_op\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 124, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 135, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"nft_osf_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 14, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [27 x i8] c"../net/netfilter/nft_osf.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 51, i32 44 }
@___asan_gen_.15 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias662, ptr @__UNIQUE_ID_author661, ptr @__UNIQUE_ID_description663, ptr @__UNIQUE_ID_file659, ptr @__UNIQUE_ID_license660, ptr @__exitcall_nft_osf_module_exit, ptr @__initcall__kmod_nft_osf__658_151_nft_osf_module_init6, ptr @nft_osf_module_exit, ptr @nft_osf_op, ptr @.str, ptr @nft_osf_policy, ptr @.str.2, ptr @str], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_osf_op to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_osf_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_osf_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_osf_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_osf_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_osf_type) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_osf_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %os_match = alloca [17 x i8], align 1
  %data = alloca %struct.nf_osf_data, align 4
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %os_match) #8
  %4 = call ptr @memset(ptr %os_match, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %data, align 4, !annotation !34
  %6 = getelementptr inbounds %struct.nf_osf_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #8
  %tprot = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %8 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %9 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tprot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp.not = icmp eq i8 %10, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %17 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %17 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  %22 = add i32 %21, %mul.i
  %sub.i1.i = sub i32 %19, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !35

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then5_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then5_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %3, i32 noundef %mul.i, ptr noundef nonnull %_tcph, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then5_crit_edge, label %lor.lhs.false.i.i.if.end7_crit_edge

lor.lhs.false.i.i.if.end7_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

lor.lhs.false.i.i.if.then5_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i43 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %23 = ptrtoint ptr %data.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i43, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then5_crit_edge, label %skb_header_pointer.exit.if.end7_crit_edge

skb_header_pointer.exit.if.end7_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

skb_header_pointer.exit.if.then5_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %skb_header_pointer.exit.if.then5_crit_edge, %lor.lhs.false.i.i.if.then5_crit_edge, %if.end.i.i.if.then5_crit_edge
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end7:                                          ; preds = %skb_header_pointer.exit.if.end7_crit_edge, %lor.lhs.false.i.i.if.end7_crit_edge
  %retval.0.i.i49 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end7_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end7_crit_edge ]
  %syn = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i49, i32 0, i32 4
  %26 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %syn, align 4
  %27 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool8.not = icmp eq i16 %27, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %ttl = getelementptr inbounds %struct.nft_osf, ptr %data.i, i32 0, i32 1
  %29 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ttl, align 1
  %conv12 = zext i8 %30 to i32
  %call13 = call zeroext i1 @nf_osf_find(ptr noundef %3, ptr noundef nonnull @nf_osf_fingers, i32 noundef %conv12, ptr noundef nonnull %data) #8
  br i1 %call13, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %31 = call ptr @memcpy(ptr %arrayidx, ptr @str, i32 16)
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %6, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %os_match, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %35, ptr noundef %37)
  br label %if.end23

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 @strlcpy(ptr noundef nonnull %os_match, ptr noundef %35, i32 noundef 16) #8
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then17
  %call25 = call ptr @strncpy(ptr noundef %arrayidx, ptr noundef nonnull %os_match, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then14, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %os_match) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_osf_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %ttl9 = getelementptr inbounds %struct.nft_osf, ptr %data.i, i32 0, i32 1
  %6 = ptrtoint ptr %ttl9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ttl9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  %arrayidx11 = getelementptr ptr, ptr %tb, i32 3
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %if.end10.if.end21_crit_edge, label %if.then13

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then13:                                        ; preds = %if.end10
  %add.ptr.i.i42 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp16.not = icmp eq i32 %10, 1
  br i1 %cmp16.not, label %if.end19, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %flags20 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %11 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %flags20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end10.if.end21_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call23 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %13, ptr noundef %data.i, ptr noundef null, i32 noundef 0, i32 noundef 16) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %call23, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then13.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ %14, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_osf_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i14 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %ttl = getelementptr inbounds %struct.nft_osf, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ttl, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i14) #8
  %5 = ptrtoint ptr %tmp.i14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i14, align 4
  %call.i15 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool3.not = icmp eq i32 %call.i15, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 4
  %conv = zext i8 %7 to i32
  %call6 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end5.nla_put_failure_crit_edge

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end5.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_osf_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 7) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_osf_find(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_nft_osf__658_151_nft_osf_module_init6, !1, !"__initcall__kmod_nft_osf__658_151_nft_osf_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_osf.c", i32 151, i32 1}
!2 = !{ptr @__exitcall_nft_osf_module_exit, !3, !"__exitcall_nft_osf_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_osf.c", i32 152, i32 1}
!4 = !{ptr @__UNIQUE_ID_file659, !5, !"__UNIQUE_ID_file659", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_osf.c", i32 154, i32 1}
!6 = !{ptr @__UNIQUE_ID_license660, !5, !"__UNIQUE_ID_license660", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author661, !8, !"__UNIQUE_ID_author661", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_osf.c", i32 155, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias662, !10, !"__UNIQUE_ID_alias662", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_osf.c", i32 156, i32 1}
!11 = !{ptr @__UNIQUE_ID_description663, !12, !"__UNIQUE_ID_description663", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_osf.c", i32 157, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_osf.c", i32 135, i32 11}
!15 = !{ptr @nft_osf_type, !16, !"nft_osf_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_osf.c", i32 133, i32 29}
!17 = !{ptr @nft_osf_op, !18, !"nft_osf_op", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_osf.c", i32 124, i32 34}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_osf.c", i32 48, i32 25}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_osf.c", i32 51, i32 44}
!23 = !{ptr @nft_osf_policy, !24, !"nft_osf_policy", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_osf.c", i32 14, i32 32}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{!"branch_weights", i32 2000, i32 1}
