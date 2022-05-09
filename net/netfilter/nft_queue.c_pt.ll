; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_queue.c_pt.bc'
source_filename = "../net/netfilter/nft_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_queue = type { i8, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, i32, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@nft_queue_type = internal global %struct.nft_expr_type { ptr @nft_queue_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_queue_policy, i32 4, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_queue__539_213_nft_queue_module_init6 = internal global ptr @nft_queue_module_init, section ".initcall6.init", align 4
@__exitcall_nft_queue_module_exit = internal global ptr @nft_queue_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file540 = internal constant [39 x i8] c"nft_queue.file=net/netfilter/nft_queue\00", section ".modinfo", align 1
@__UNIQUE_ID_license541 = internal constant [22 x i8] c"nft_queue.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author542 = internal constant [47 x i8] c"nft_queue.author=Eric Leblond <eric@regit.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias543 = internal constant [31 x i8] c"nft_queue.alias=nft-expr-queue\00", section ".modinfo", align 1
@__UNIQUE_ID_description544 = internal constant [54 x i8] c"nft_queue.description=Netfilter nftables queue module\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@nft_queue_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@jhash_initval = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@nft_queue_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_queue_eval, ptr null, i32 16, ptr @nft_queue_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_queue_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_queue_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_queue_sreg_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_queue_sreg_eval, ptr null, i32 16, ptr @nft_queue_sreg_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_queue_sreg_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_queue_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 196, i32 11 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"nft_queue_policy\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 71, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"nft_queue_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 161, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"nft_queue_sreg_ops\00", align 1
@___asan_gen_.12 = private constant [29 x i8] c"../net/netfilter/nft_queue.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 169, i32 34 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias543, ptr @__UNIQUE_ID_author542, ptr @__UNIQUE_ID_description544, ptr @__UNIQUE_ID_file540, ptr @__UNIQUE_ID_license541, ptr @__exitcall_nft_queue_module_exit, ptr @__initcall__kmod_nft_queue__539_213_nft_queue_module_init6, ptr @nft_queue_module_exit, ptr @.str, ptr @nft_queue_policy, ptr @nft_queue_ops, ptr @nft_queue_sreg_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_queue_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_queue_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_queue_sreg_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_queue_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_queue_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_queue_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_queue_type) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @nft_queue_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.pr.i = load i32, ptr @jhash_initval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp1.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp1.i, label %if.end.while.body.i_crit_edge, label %if.end.init_hashrandom.exit_crit_edge

if.end.init_hashrandom.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_hashrandom.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call.i = tail call i32 @prandom_u32() #8
  store i32 %call.i, ptr @jhash_initval, align 4
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.init_hashrandom.exit_crit_edge

while.body.i.init_hashrandom.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_hashrandom.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

init_hashrandom.exit:                             ; preds = %while.body.i.init_hashrandom.exit_crit_edge, %if.end.init_hashrandom.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end6, label %init_hashrandom.exit.return_crit_edge

init_hashrandom.exit.return_crit_edge:            ; preds = %init_hashrandom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6:                                          ; preds = %init_hashrandom.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 4
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool8.not, ptr inttoptr (i32 -22 to ptr), ptr @nft_queue_sreg_ops
  br label %return

return:                                           ; preds = %if.end6, %init_hashrandom.exit.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi ptr [ @nft_queue_ops, %init_hashrandom.exit.return_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.return_crit_edge ], [ %spec.select, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_queue_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %_ip6h.i.i = alloca %struct.ipv6hdr, align 4
  %_iph.i.i = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %queuenum = getelementptr inbounds %struct.nft_queue, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %queuenum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queuenum, align 2
  %conv = zext i16 %1 to i32
  %queues_total = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %queues_total to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues_total, align 2
  %conv1 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp ugt i16 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu6 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu6, align 4
  %rem = srem i32 %10, %conv1
  %add = add nsw i32 %rem, %conv
  br label %if.end15

if.else:                                          ; preds = %if.then
  %11 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pkt, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pf.i, align 1
  %17 = load i32, ptr @jhash_initval, align 4
  %18 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %if.else.nfqueue_hash.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb6.i
    i8 7, label %sw.bb14.i
  ]

if.else.nfqueue_hash.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfqueue_hash.exit

sw.bb.i:                                          ; preds = %if.else
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %22 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %conv.i.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %daddr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i.i = icmp ult i32 %24, %26
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %protocol.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %add1.i.i.i = add i32 %17, -559038725
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i.i.i = add i32 %24, %add1.i.i.i
  %add1.i.i.i.i = add i32 %26, %add1.i.i.i
  %add2.i.i.i.i = add i32 %add1.i.i.i, %conv.i.i
  %xor.i.i.i.i = xor i32 %add2.i.i.i.i, %add1.i.i.i.i
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #8
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i52.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #8
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i52.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i53.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #8
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i53.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i54.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #8
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i54.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i55.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #8
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i55.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i56.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #8
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i56.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i57.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #8
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i57.i.i.i.i
  br label %hash_v4.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i19.i.i = add i32 %26, %add1.i.i.i
  %add1.i.i20.i.i = add i32 %24, %add1.i.i.i
  %add2.i.i21.i.i = add i32 %add1.i.i.i, %conv.i.i
  %xor.i.i22.i.i = xor i32 %add2.i.i21.i.i, %add1.i.i20.i.i
  %or.i.i.i23.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i20.i.i, i32 %add1.i.i20.i.i, i32 14) #8
  %sub.i.i24.i.i = sub i32 %xor.i.i22.i.i, %or.i.i.i23.i.i
  %xor3.i.i25.i.i = xor i32 %sub.i.i24.i.i, %add.i.i19.i.i
  %or.i52.i.i26.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i24.i.i, i32 %sub.i.i24.i.i, i32 11) #8
  %sub5.i.i27.i.i = sub i32 %xor3.i.i25.i.i, %or.i52.i.i26.i.i
  %xor6.i.i28.i.i = xor i32 %sub5.i.i27.i.i, %add1.i.i20.i.i
  %or.i53.i.i29.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i27.i.i, i32 %sub5.i.i27.i.i, i32 25) #8
  %sub8.i.i30.i.i = sub i32 %xor6.i.i28.i.i, %or.i53.i.i29.i.i
  %xor9.i.i31.i.i = xor i32 %sub8.i.i30.i.i, %sub.i.i24.i.i
  %or.i54.i.i32.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i30.i.i, i32 %sub8.i.i30.i.i, i32 16) #8
  %sub11.i.i33.i.i = sub i32 %xor9.i.i31.i.i, %or.i54.i.i32.i.i
  %xor12.i.i34.i.i = xor i32 %sub11.i.i33.i.i, %sub5.i.i27.i.i
  %or.i55.i.i35.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i33.i.i, i32 %sub11.i.i33.i.i, i32 4) #8
  %sub14.i.i36.i.i = sub i32 %xor12.i.i34.i.i, %or.i55.i.i35.i.i
  %xor15.i.i37.i.i = xor i32 %sub14.i.i36.i.i, %sub8.i.i30.i.i
  %or.i56.i.i38.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i36.i.i, i32 %sub14.i.i36.i.i, i32 14) #8
  %sub17.i.i39.i.i = sub i32 %xor15.i.i37.i.i, %or.i56.i.i38.i.i
  %xor18.i.i40.i.i = xor i32 %sub17.i.i39.i.i, %sub11.i.i33.i.i
  %or.i57.i.i41.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i39.i.i, i32 %sub17.i.i39.i.i, i32 24) #8
  %sub20.i.i42.i.i = sub i32 %xor18.i.i40.i.i, %or.i57.i.i41.i.i
  br label %hash_v4.exit.i

hash_v4.exit.i:                                   ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub20.i.i.i.i, %if.then.i.i ], [ %sub20.i.i42.i.i, %if.end.i.i ]
  %conv.i31.i = zext i32 %retval.0.i.i to i64
  %conv1.i.i = zext i16 %3 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i31.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %29 = trunc i64 %shr.i.i to i16
  %conv5.i = add i16 %1, %29
  br label %nfqueue_hash.exit

sw.bb6.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i32.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i32.i, align 8
  %network_header.i.i33.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i33.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i33.i, align 4
  %conv.i.i34.i = zext i16 %33 to i32
  %add.ptr.i.i35.i = getelementptr i8, ptr %31, i32 %conv.i.i34.i
  %arrayidx.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35.i, i32 0, i32 6, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i.i, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 %37) #8
  %39 = tail call i32 @llvm.umax.i32(i32 %35, i32 %37) #8
  %arrayidx17.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx17.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx20.i.i, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 %43) #8
  %add1.i.i36.i = add i32 %17, -559038725
  %add.i.i.i37.i = add i32 %38, %add1.i.i36.i
  %add1.i.i.i38.i = add i32 %39, %add1.i.i36.i
  %add2.i.i.i39.i = add i32 %44, %add1.i.i36.i
  %xor.i.i.i40.i = xor i32 %add2.i.i.i39.i, %add1.i.i.i38.i
  %or.i.i.i.i41.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i38.i, i32 %add1.i.i.i38.i, i32 14) #8
  %sub.i.i.i42.i = sub i32 %xor.i.i.i40.i, %or.i.i.i.i41.i
  %xor3.i.i.i43.i = xor i32 %sub.i.i.i42.i, %add.i.i.i37.i
  %or.i52.i.i.i44.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i42.i, i32 %sub.i.i.i42.i, i32 11) #8
  %sub5.i.i.i45.i = sub i32 %xor3.i.i.i43.i, %or.i52.i.i.i44.i
  %xor6.i.i.i46.i = xor i32 %sub5.i.i.i45.i, %add1.i.i.i38.i
  %or.i53.i.i.i47.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i45.i, i32 %sub5.i.i.i45.i, i32 25) #8
  %sub8.i.i.i48.i = sub i32 %xor6.i.i.i46.i, %or.i53.i.i.i47.i
  %xor9.i.i.i49.i = xor i32 %sub8.i.i.i48.i, %sub.i.i.i42.i
  %or.i54.i.i.i50.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i48.i, i32 %sub8.i.i.i48.i, i32 16) #8
  %sub11.i.i.i51.i = sub i32 %xor9.i.i.i49.i, %or.i54.i.i.i50.i
  %xor12.i.i.i52.i = xor i32 %sub11.i.i.i51.i, %sub5.i.i.i45.i
  %or.i55.i.i.i53.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i51.i, i32 %sub11.i.i.i51.i, i32 4) #8
  %sub14.i.i.i54.i = sub i32 %xor12.i.i.i52.i, %or.i55.i.i.i53.i
  %xor15.i.i.i55.i = xor i32 %sub14.i.i.i54.i, %sub8.i.i.i48.i
  %or.i56.i.i.i56.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i54.i, i32 %sub14.i.i.i54.i, i32 14) #8
  %sub17.i.i.i57.i = sub i32 %xor15.i.i.i55.i, %or.i56.i.i.i56.i
  %xor18.i.i.i58.i = xor i32 %sub17.i.i.i57.i, %sub11.i.i.i51.i
  %or.i57.i.i.i59.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i57.i, i32 %sub17.i.i.i57.i, i32 24) #8
  %sub20.i.i.i60.i = sub i32 %xor18.i.i.i58.i, %or.i57.i.i.i59.i
  %conv.i61.i = zext i32 %sub20.i.i.i60.i to i64
  %conv1.i62.i = zext i16 %3 to i64
  %mul.i63.i = mul nuw nsw i64 %conv.i61.i, %conv1.i62.i
  %shr.i64.i = lshr i64 %mul.i63.i, 32
  %45 = trunc i64 %shr.i64.i to i16
  %conv13.i = add i16 %1, %45
  br label %nfqueue_hash.exit

sw.bb14.i:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h.i.i) #8
  %46 = call ptr @memset(ptr %_ip6h.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i.i) #8
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 18
  %47 = call ptr @memset(ptr %_iph.i.i, i32 255, i32 20)
  %48 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 21
  %50 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %51 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %49, i32 %conv.i.i.i.i
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %h_proto.i.i, align 1
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %53, label %sw.bb14.i.hash_bridge.exit.i_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb4.i.i
  ]

sw.bb14.i.hash_bridge.exit.i_crit_edge:           ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_bridge.exit.i

sw.bb.i.i:                                        ; preds = %sw.bb14.i
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 20
  %55 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i22.i.i = zext i16 %56 to i32
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %49, i32 %conv.i.i22.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i23.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %59 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 7
  %61 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i.i.i.i, align 8
  %63 = add i32 %62, %sub.ptr.sub.i.i.i
  %sub.i4.i.i.i = sub i32 %60, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 20
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !35

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i
  %tobool2.not.i.i.i.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.hash_bridge.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.hash_bridge.exit.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_bridge.exit.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %12, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %_iph.i.i, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.hash_bridge.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.then.i68.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i68.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i68.i

lor.lhs.false.i.i.i.i.hash_bridge.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_bridge.exit.i

skb_header_pointer.exit.i.i:                      ; preds = %sw.bb.i.i
  %add.ptr.i.i25.i.i = getelementptr i8, ptr %58, i32 %sub.ptr.sub.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i25.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.hash_bridge.exit.i_crit_edge, label %skb_header_pointer.exit.i.i.if.then.i68.i_crit_edge

skb_header_pointer.exit.i.i.if.then.i68.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i68.i

skb_header_pointer.exit.i.i.hash_bridge.exit.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_bridge.exit.i

if.then.i68.i:                                    ; preds = %skb_header_pointer.exit.i.i.if.then.i68.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then.i68.i_crit_edge
  %retval.0.i.i79.i.i = phi ptr [ %add.ptr.i.i25.i.i, %skb_header_pointer.exit.i.i.if.then.i68.i_crit_edge ], [ %_iph.i.i, %lor.lhs.false.i.i.i.i.if.then.i68.i_crit_edge ]
  %saddr.i.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i79.i.i, i32 0, i32 8
  %64 = ptrtoint ptr %saddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %saddr.i.i.i, align 4
  %daddr.i.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i79.i.i, i32 0, i32 9
  %66 = ptrtoint ptr %daddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %daddr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp.i.i.i = icmp ult i32 %65, %67
  %protocol.i.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i79.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %protocol.i.i.i, align 1
  %conv.i.i66.i = zext i8 %69 to i32
  %add1.i.i.i67.i = add i32 %17, -559038725
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i.i.i.i = add i32 %65, %add1.i.i.i67.i
  %add1.i.i.i.i.i = add i32 %67, %add1.i.i.i67.i
  %add2.i.i.i.i.i = add i32 %add1.i.i.i67.i, %conv.i.i66.i
  %xor.i.i.i.i.i = xor i32 %add2.i.i.i.i.i, %add1.i.i.i.i.i
  %or.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i, i32 %add1.i.i.i.i.i, i32 14) #8
  %sub.i.i.i.i.i = sub i32 %xor.i.i.i.i.i, %or.i.i.i.i.i.i
  %xor3.i.i.i.i.i = xor i32 %sub.i.i.i.i.i, %add.i.i.i.i.i
  %or.i52.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i.i, i32 %sub.i.i.i.i.i, i32 11) #8
  %sub5.i.i.i.i.i = sub i32 %xor3.i.i.i.i.i, %or.i52.i.i.i.i.i
  %xor6.i.i.i.i.i = xor i32 %sub5.i.i.i.i.i, %add1.i.i.i.i.i
  %or.i53.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i.i, i32 %sub5.i.i.i.i.i, i32 25) #8
  %sub8.i.i.i.i.i = sub i32 %xor6.i.i.i.i.i, %or.i53.i.i.i.i.i
  %xor9.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i, %sub.i.i.i.i.i
  %or.i54.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i.i, i32 %sub8.i.i.i.i.i, i32 16) #8
  %sub11.i.i.i.i.i = sub i32 %xor9.i.i.i.i.i, %or.i54.i.i.i.i.i
  %xor12.i.i.i.i.i = xor i32 %sub11.i.i.i.i.i, %sub5.i.i.i.i.i
  %or.i55.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i.i, i32 %sub11.i.i.i.i.i, i32 4) #8
  %sub14.i.i.i.i.i = sub i32 %xor12.i.i.i.i.i, %or.i55.i.i.i.i.i
  %xor15.i.i.i.i.i = xor i32 %sub14.i.i.i.i.i, %sub8.i.i.i.i.i
  %or.i56.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i.i, i32 %sub14.i.i.i.i.i, i32 14) #8
  %sub17.i.i.i.i.i = sub i32 %xor15.i.i.i.i.i, %or.i56.i.i.i.i.i
  %xor18.i.i.i.i.i = xor i32 %sub17.i.i.i.i.i, %sub11.i.i.i.i.i
  %or.i57.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i.i, i32 %sub17.i.i.i.i.i, i32 24) #8
  %sub20.i.i.i.i.i = sub i32 %xor18.i.i.i.i.i, %or.i57.i.i.i.i.i
  br label %hash_bridge.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i19.i.i.i = add i32 %67, %add1.i.i.i67.i
  %add1.i.i20.i.i.i = add i32 %65, %add1.i.i.i67.i
  %add2.i.i21.i.i.i = add i32 %add1.i.i.i67.i, %conv.i.i66.i
  %xor.i.i22.i.i.i = xor i32 %add2.i.i21.i.i.i, %add1.i.i20.i.i.i
  %or.i.i.i23.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i20.i.i.i, i32 %add1.i.i20.i.i.i, i32 14) #8
  %sub.i.i24.i.i.i = sub i32 %xor.i.i22.i.i.i, %or.i.i.i23.i.i.i
  %xor3.i.i25.i.i.i = xor i32 %sub.i.i24.i.i.i, %add.i.i19.i.i.i
  %or.i52.i.i26.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i24.i.i.i, i32 %sub.i.i24.i.i.i, i32 11) #8
  %sub5.i.i27.i.i.i = sub i32 %xor3.i.i25.i.i.i, %or.i52.i.i26.i.i.i
  %xor6.i.i28.i.i.i = xor i32 %sub5.i.i27.i.i.i, %add1.i.i20.i.i.i
  %or.i53.i.i29.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i27.i.i.i, i32 %sub5.i.i27.i.i.i, i32 25) #8
  %sub8.i.i30.i.i.i = sub i32 %xor6.i.i28.i.i.i, %or.i53.i.i29.i.i.i
  %xor9.i.i31.i.i.i = xor i32 %sub8.i.i30.i.i.i, %sub.i.i24.i.i.i
  %or.i54.i.i32.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i30.i.i.i, i32 %sub8.i.i30.i.i.i, i32 16) #8
  %sub11.i.i33.i.i.i = sub i32 %xor9.i.i31.i.i.i, %or.i54.i.i32.i.i.i
  %xor12.i.i34.i.i.i = xor i32 %sub11.i.i33.i.i.i, %sub5.i.i27.i.i.i
  %or.i55.i.i35.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i33.i.i.i, i32 %sub11.i.i33.i.i.i, i32 4) #8
  %sub14.i.i36.i.i.i = sub i32 %xor12.i.i34.i.i.i, %or.i55.i.i35.i.i.i
  %xor15.i.i37.i.i.i = xor i32 %sub14.i.i36.i.i.i, %sub8.i.i30.i.i.i
  %or.i56.i.i38.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i36.i.i.i, i32 %sub14.i.i36.i.i.i, i32 14) #8
  %sub17.i.i39.i.i.i = sub i32 %xor15.i.i37.i.i.i, %or.i56.i.i38.i.i.i
  %xor18.i.i40.i.i.i = xor i32 %sub17.i.i39.i.i.i, %sub11.i.i33.i.i.i
  %or.i57.i.i41.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i39.i.i.i, i32 %sub17.i.i39.i.i.i, i32 24) #8
  %sub20.i.i42.i.i.i = sub i32 %xor18.i.i40.i.i.i, %or.i57.i.i41.i.i.i
  br label %hash_bridge.exit.i

sw.bb4.i.i:                                       ; preds = %sw.bb14.i
  %network_header.i.i27.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 20
  %70 = ptrtoint ptr %network_header.i.i27.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i.i27.i.i, align 4
  %conv.i.i28.i.i = zext i16 %71 to i32
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %49, i32 %conv.i.i28.i.i
  %data.i30.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  %72 = ptrtoint ptr %data.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i30.i.i, align 4
  %sub.ptr.lhs.cast.i31.i.i = ptrtoint ptr %add.ptr.i.i29.i.i to i32
  %sub.ptr.rhs.cast.i32.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i33.i.i = sub i32 %sub.ptr.lhs.cast.i31.i.i, %sub.ptr.rhs.cast.i32.i.i
  %len.i.i34.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %74 = ptrtoint ptr %len.i.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i34.i.i, align 4
  %data_len.i.i35.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 7
  %76 = ptrtoint ptr %data_len.i.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i35.i.i, align 8
  %78 = add i32 %77, %sub.ptr.sub.i33.i.i
  %sub.i4.i36.i.i = sub i32 %75, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i36.i.i)
  %cmp.not.i.i37.i.i = icmp slt i32 %sub.i4.i36.i.i, 40
  br i1 %cmp.not.i.i37.i.i, label %if.end.i.i42.i.i, label %skb_header_pointer.exit48.i.i, !prof !35

if.end.i.i42.i.i:                                 ; preds = %sw.bb4.i.i
  %tobool2.not.i.i41.i.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i.i41.i.i, label %if.end.i.i42.i.i.hash_bridge.exit.i_crit_edge, label %lor.lhs.false.i.i46.i.i

if.end.i.i42.i.i.hash_bridge.exit.i_crit_edge:    ; preds = %if.end.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_bridge.exit.i

lor.lhs.false.i.i46.i.i:                          ; preds = %if.end.i.i42.i.i
  %call.i.i43.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %12, i32 noundef %sub.ptr.sub.i33.i.i, ptr noundef nonnull %_ip6h.i.i, i32 noundef 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i.i)
  %cmp3.i.i44.i.i = icmp slt i32 %call.i.i43.i.i, 0
  br i1 %cmp3.i.i44.i.i, label %lor.lhs.false.i.i46.i.i.hash_bridge.exit.i_crit_edge, label %lor.lhs.false.i.i46.i.i.if.then8.i.i_crit_edge

lor.lhs.false.i.i46.i.i.if.then8.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i

lor.lhs.false.i.i46.i.i.hash_bridge.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_bridge.exit.i

skb_header_pointer.exit48.i.i:                    ; preds = %sw.bb4.i.i
  %add.ptr.i.i39.i.i = getelementptr i8, ptr %73, i32 %sub.ptr.sub.i33.i.i
  %tobool7.not.i.i = icmp eq ptr %add.ptr.i.i39.i.i, null
  br i1 %tobool7.not.i.i, label %skb_header_pointer.exit48.i.i.hash_bridge.exit.i_crit_edge, label %skb_header_pointer.exit48.i.i.if.then8.i.i_crit_edge

skb_header_pointer.exit48.i.i.if.then8.i.i_crit_edge: ; preds = %skb_header_pointer.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i

skb_header_pointer.exit48.i.i.hash_bridge.exit.i_crit_edge: ; preds = %skb_header_pointer.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_bridge.exit.i

if.then8.i.i:                                     ; preds = %skb_header_pointer.exit48.i.i.if.then8.i.i_crit_edge, %lor.lhs.false.i.i46.i.i.if.then8.i.i_crit_edge
  %retval.0.i.i4786.i.i = phi ptr [ %add.ptr.i.i39.i.i, %skb_header_pointer.exit48.i.i.if.then8.i.i_crit_edge ], [ %_ip6h.i.i, %lor.lhs.false.i.i46.i.i.if.then8.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i.i, i32 0, i32 6, i32 0, i32 0, i32 3
  %81 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.i.i.i, align 4
  %83 = call i32 @llvm.umin.i32(i32 %80, i32 %82) #8
  %84 = call i32 @llvm.umax.i32(i32 %80, i32 %82) #8
  %arrayidx17.i.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx17.i.i.i, align 4
  %arrayidx20.i.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx20.i.i.i, align 4
  %89 = call i32 @llvm.umin.i32(i32 %86, i32 %88) #8
  %add1.i.i49.i.i = add i32 %17, -559038725
  %add.i.i.i50.i.i = add i32 %83, %add1.i.i49.i.i
  %add1.i.i.i51.i.i = add i32 %84, %add1.i.i49.i.i
  %add2.i.i.i52.i.i = add i32 %89, %add1.i.i49.i.i
  %xor.i.i.i53.i.i = xor i32 %add2.i.i.i52.i.i, %add1.i.i.i51.i.i
  %or.i.i.i.i54.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i51.i.i, i32 %add1.i.i.i51.i.i, i32 14) #8
  %sub.i.i.i55.i.i = sub i32 %xor.i.i.i53.i.i, %or.i.i.i.i54.i.i
  %xor3.i.i.i56.i.i = xor i32 %sub.i.i.i55.i.i, %add.i.i.i50.i.i
  %or.i52.i.i.i57.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i55.i.i, i32 %sub.i.i.i55.i.i, i32 11) #8
  %sub5.i.i.i58.i.i = sub i32 %xor3.i.i.i56.i.i, %or.i52.i.i.i57.i.i
  %xor6.i.i.i59.i.i = xor i32 %sub5.i.i.i58.i.i, %add1.i.i.i51.i.i
  %or.i53.i.i.i60.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i58.i.i, i32 %sub5.i.i.i58.i.i, i32 25) #8
  %sub8.i.i.i61.i.i = sub i32 %xor6.i.i.i59.i.i, %or.i53.i.i.i60.i.i
  %xor9.i.i.i62.i.i = xor i32 %sub8.i.i.i61.i.i, %sub.i.i.i55.i.i
  %or.i54.i.i.i63.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i61.i.i, i32 %sub8.i.i.i61.i.i, i32 16) #8
  %sub11.i.i.i64.i.i = sub i32 %xor9.i.i.i62.i.i, %or.i54.i.i.i63.i.i
  %xor12.i.i.i65.i.i = xor i32 %sub11.i.i.i64.i.i, %sub5.i.i.i58.i.i
  %or.i55.i.i.i66.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i64.i.i, i32 %sub11.i.i.i64.i.i, i32 4) #8
  %sub14.i.i.i67.i.i = sub i32 %xor12.i.i.i65.i.i, %or.i55.i.i.i66.i.i
  %xor15.i.i.i68.i.i = xor i32 %sub14.i.i.i67.i.i, %sub8.i.i.i61.i.i
  %or.i56.i.i.i69.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i67.i.i, i32 %sub14.i.i.i67.i.i, i32 14) #8
  %sub17.i.i.i70.i.i = sub i32 %xor15.i.i.i68.i.i, %or.i56.i.i.i69.i.i
  %xor18.i.i.i71.i.i = xor i32 %sub17.i.i.i70.i.i, %sub11.i.i.i64.i.i
  %or.i57.i.i.i72.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i70.i.i, i32 %sub17.i.i.i70.i.i, i32 24) #8
  %sub20.i.i.i73.i.i = sub i32 %xor18.i.i.i71.i.i, %or.i57.i.i.i72.i.i
  br label %hash_bridge.exit.i

hash_bridge.exit.i:                               ; preds = %if.then8.i.i, %skb_header_pointer.exit48.i.i.hash_bridge.exit.i_crit_edge, %lor.lhs.false.i.i46.i.i.hash_bridge.exit.i_crit_edge, %if.end.i.i42.i.i.hash_bridge.exit.i_crit_edge, %if.end.i.i.i, %if.then.i.i.i, %skb_header_pointer.exit.i.i.hash_bridge.exit.i_crit_edge, %lor.lhs.false.i.i.i.i.hash_bridge.exit.i_crit_edge, %if.end.i.i.i.i.hash_bridge.exit.i_crit_edge, %sw.bb14.i.hash_bridge.exit.i_crit_edge
  %retval.0.i69.i = phi i32 [ %sub20.i.i.i73.i.i, %if.then8.i.i ], [ 0, %skb_header_pointer.exit48.i.i.hash_bridge.exit.i_crit_edge ], [ 0, %skb_header_pointer.exit.i.i.hash_bridge.exit.i_crit_edge ], [ 0, %sw.bb14.i.hash_bridge.exit.i_crit_edge ], [ %sub20.i.i.i.i.i, %if.then.i.i.i ], [ %sub20.i.i42.i.i.i, %if.end.i.i.i ], [ 0, %if.end.i.i.i.i.hash_bridge.exit.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.i.hash_bridge.exit.i_crit_edge ], [ 0, %if.end.i.i42.i.i.hash_bridge.exit.i_crit_edge ], [ 0, %lor.lhs.false.i.i46.i.i.hash_bridge.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i.i) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h.i.i) #8
  %conv.i70.i = zext i32 %retval.0.i69.i to i64
  %conv1.i71.i = zext i16 %3 to i64
  %mul.i72.i = mul nuw nsw i64 %conv.i70.i, %conv1.i71.i
  %shr.i73.i = lshr i64 %mul.i72.i, 32
  %90 = trunc i64 %shr.i73.i to i16
  %conv20.i = add i16 %1, %90
  br label %nfqueue_hash.exit

nfqueue_hash.exit:                                ; preds = %hash_bridge.exit.i, %sw.bb6.i, %hash_v4.exit.i, %if.else.nfqueue_hash.exit_crit_edge
  %queue.addr.0.i = phi i16 [ %1, %if.else.nfqueue_hash.exit_crit_edge ], [ %conv20.i, %hash_bridge.exit.i ], [ %conv13.i, %sw.bb6.i ], [ %conv5.i, %hash_v4.exit.i ]
  %conv21.i = zext i16 %queue.addr.0.i to i32
  br label %if.end15

if.end15:                                         ; preds = %nfqueue_hash.exit, %if.then4, %entry.if.end15_crit_edge
  %queue.0 = phi i32 [ %add, %if.then4 ], [ %conv21.i, %nfqueue_hash.exit ], [ %conv, %entry.if.end15_crit_edge ]
  %shl = shl i32 %queue.0, 16
  %flags17 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %91 = ptrtoint ptr %flags17 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %flags17, align 2
  %93 = and i16 %92, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool20.not = icmp eq i16 %93, 0
  %spec.select.v = select i1 %tobool20.not, i32 3, i32 32771
  %spec.select = or i32 %spec.select.v, %shl
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %spec.select, ptr %regs, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nft_queue_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  %queuenum = getelementptr inbounds %struct.nft_queue, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %queuenum to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %queuenum, align 2
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %7, align 2
  br label %if.end9

if.end:                                           ; preds = %entry
  %add.ptr.i.i42 = getelementptr i8, ptr %6, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i42, align 2
  %11 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %10, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.thread
  %.sink46 = phi i16 [ 1, %if.end.thread ], [ %10, %if.end.if.end9_crit_edge ]
  %conv = zext i16 %.sink46 to i32
  %conv13 = zext i16 %3 to i32
  %sub = add nsw i32 %conv13, -1
  %add = add nsw i32 %sub, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp14 = icmp ugt i32 %add, 65535
  br i1 %cmp14, label %if.end9.cleanup_crit_edge, label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 3
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %if.end17.if.end28_crit_edge, label %if.then20

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  %add.ptr.i.i43 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i43, align 2
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %16)
  %tobool25.not = icmp ult i16 %16, 4
  br i1 %tobool25.not, label %if.then20.if.end28_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then20.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %if.end.cleanup_crit_edge ], [ -34, %if.end9.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_queue_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i13 = alloca i16, align 2
  %tmp.i11 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %queuenum = getelementptr inbounds %struct.nft_queue, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %queuenum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queuenum, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %queues_total = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %3 = ptrtoint ptr %queues_total to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %queues_total, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i11) #8
  %5 = ptrtoint ptr %tmp.i11 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tmp.i11, align 2
  %call.i12 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i11) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool3.not = icmp eq i32 %call.i12, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i13) #8
  %8 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %tmp.i13, align 2
  %call.i14 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i13) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool6.not = icmp eq i32 %call.i14, 0
  br i1 %tobool6.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false4.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_queue_sreg_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readnone %pkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %3, 16
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %spec.select.v = select i1 %tobool.not, i32 3, i32 32771
  %spec.select = or i32 %spec.select.v, %shl
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %regs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_queue_sreg_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @nft_parse_register_load(ptr noundef %1, ptr noundef %data.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then3

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %flags, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %and12 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.end9.if.end16_crit_edge, %if.end.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end9.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -95, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_queue_sreg_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 4, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_nft_queue__539_213_nft_queue_module_init6, !1, !"__initcall__kmod_nft_queue__539_213_nft_queue_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_queue.c", i32 213, i32 1}
!2 = !{ptr @__exitcall_nft_queue_module_exit, !3, !"__exitcall_nft_queue_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_queue.c", i32 214, i32 1}
!4 = !{ptr @__UNIQUE_ID_file540, !5, !"__UNIQUE_ID_file540", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_queue.c", i32 216, i32 1}
!6 = !{ptr @__UNIQUE_ID_license541, !5, !"__UNIQUE_ID_license541", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author542, !8, !"__UNIQUE_ID_author542", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_queue.c", i32 217, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias543, !10, !"__UNIQUE_ID_alias543", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_queue.c", i32 218, i32 1}
!11 = !{ptr @__UNIQUE_ID_description544, !12, !"__UNIQUE_ID_description544", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_queue.c", i32 219, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_queue.c", i32 196, i32 11}
!15 = !{ptr @nft_queue_type, !16, !"nft_queue_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_queue.c", i32 195, i32 29}
!17 = !{ptr @jhash_initval, !18, !"jhash_initval", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_queue.c", i32 19, i32 12}
!19 = !{ptr @nft_queue_ops, !20, !"nft_queue_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_queue.c", i32 161, i32 34}
!21 = !{ptr @nft_queue_sreg_ops, !22, !"nft_queue_sreg_ops", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_queue.c", i32 169, i32 34}
!23 = !{ptr @nft_queue_policy, !24, !"nft_queue_policy", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_queue.c", i32 71, i32 32}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
