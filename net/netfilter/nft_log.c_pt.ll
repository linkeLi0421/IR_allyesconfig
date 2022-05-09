; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_log.c_pt.bc'
source_filename = "../net/netfilter/nft_log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.3, %union.anon.131, %union.anon.132, [48 x i8], %union.anon.133, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.135, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.131 = type { ptr }
%union.anon.132 = type { i64 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, ptr }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.137, i32, i32, i32, i16, i16, %union.anon.139, i32, %union.anon.140, %union.anon.141, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.137 = type { i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.nf_loginfo = type { i8, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16, i16, i16 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@nft_log_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_log_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_log_policy, i32 6, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_log__563_313_nft_log_module_init6 = internal global ptr @nft_log_module_init, section ".initcall6.init", align 4
@__exitcall_nft_log_module_exit = internal global ptr @nft_log_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file564 = internal constant [35 x i8] c"nft_log.file=net/netfilter/nft_log\00", section ".modinfo", align 1
@__UNIQUE_ID_license565 = internal constant [20 x i8] c"nft_log.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author566 = internal constant [49 x i8] c"nft_log.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias567 = internal constant [27 x i8] c"nft_log.alias=nft-expr-log\00", section ".modinfo", align 1
@__UNIQUE_ID_description568 = internal constant [51 x i8] c"nft_log.description=Netfilter nf_tables log module\00", section ".modinfo", align 1
@nft_log_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_log_eval, ptr null, i32 32, ptr @nft_log_init, ptr null, ptr null, ptr @nft_log_destroy, ptr null, ptr @nft_log_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_log_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@nft_log_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 127, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@audit_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mark=%#x\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" saddr=? daddr=? proto=-1\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" saddr=%pI4 daddr=%pI4 proto=%hhu\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" saddr=%pI6c daddr=%pI6c proto=%hhu\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nf_log_syslog\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfnetlink_log\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"nft_log_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 286, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 296, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"nft_log_policy\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 121, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 117, i32 52 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 77, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 99, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 38, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 58, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 42 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 135, i32 40 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [27 x i8] c"../net/netfilter/nft_log.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 137, i32 40 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias567, ptr @__UNIQUE_ID_author566, ptr @__UNIQUE_ID_description568, ptr @__UNIQUE_ID_file564, ptr @__UNIQUE_ID_license565, ptr @__exitcall_nft_log_module_exit, ptr @__initcall__kmod_nft_log__563_313_nft_log_module_init6, ptr @nft_log_module_exit, ptr @nft_log_ops, ptr @.str, ptr @nft_log_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_log_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_log_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_log_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_log_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_log_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_log_type) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_log_eval(ptr noundef %expr, ptr nocapture noundef readnone %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %_iph.i42.i = alloca %struct.iphdr, align 4
  %_iph.i.i = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %u = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp4 = icmp eq i8 %3, 8
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %6 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call.i = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 2592, i32 noundef 1324) #6
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %7 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2, i32 noundef %9) #6
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pf.i.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end4.i.if.then25.i_crit_edge [
    i8 7, label %sw.bb.i
    i8 2, label %sw.bb15.i
    i8 10, label %sw.bb19.i
  ]

if.end4.i.if.then25.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

sw.bb.i:                                          ; preds = %if.end4.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 21
  %17 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %h_proto.i, align 1
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %20, label %sw.bb.i.if.then25.i_crit_edge [
    i16 2048, label %sw.bb8.i
    i16 -31011, label %sw.bb11.i
  ]

sw.bb.i.if.then25.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

sw.bb8.i:                                         ; preds = %sw.bb.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i.i) #6
  %22 = call ptr @memset(ptr %_iph.i.i, i32 255, i32 20)
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %24 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %27 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i.i, align 8
  %31 = add i32 %30, %sub.ptr.sub.i.i.i
  %sub.i4.i.i.i = sub i32 %28, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 20
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !48

if.end.i.i.i.i:                                   ; preds = %sw.bb8.i
  %tobool2.not.i.i.i.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.audit_ip4.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.audit_ip4.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %audit_ip4.exit.thread.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %5, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %_iph.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.audit_ip4.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i._crit_edge

lor.lhs.false.i.i.i.i._crit_edge:                 ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %32

lor.lhs.false.i.i.i.i.audit_ip4.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %audit_ip4.exit.thread.i

skb_header_pointer.exit.i.i:                      ; preds = %sw.bb8.i
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %26, i32 %sub.ptr.sub.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i8.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.audit_ip4.exit.thread.i_crit_edge, label %skb_header_pointer.exit.i.i._crit_edge

skb_header_pointer.exit.i.i._crit_edge:           ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %32

skb_header_pointer.exit.i.i.audit_ip4.exit.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %audit_ip4.exit.thread.i

audit_ip4.exit.thread.i:                          ; preds = %skb_header_pointer.exit.i.i.audit_ip4.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.i.audit_ip4.exit.thread.i_crit_edge, %if.end.i.i.i.i.audit_ip4.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i.i) #6
  br label %if.then25.i

32:                                               ; preds = %skb_header_pointer.exit.i.i._crit_edge, %lor.lhs.false.i.i.i.i._crit_edge
  %retval.0.i.i15.i.i = phi ptr [ %add.ptr.i.i8.i.i, %skb_header_pointer.exit.i.i._crit_edge ], [ %_iph.i.i, %lor.lhs.false.i.i.i.i._crit_edge ]
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i.i, i32 0, i32 8
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i.i, i32 0, i32 9
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %protocol.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.4, ptr noundef %saddr.i.i, ptr noundef %daddr.i.i, i32 noundef %conv.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i.i) #6
  br label %if.end26.i

sw.bb11.i:                                        ; preds = %sw.bb.i
  %call12.i = tail call fastcc zeroext i1 @audit_ip6(ptr noundef nonnull %call.i, ptr noundef %5) #6
  br i1 %call12.i, label %sw.bb11.i.if.end26.i_crit_edge, label %sw.bb11.i.if.then25.i_crit_edge

sw.bb11.i.if.then25.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

sw.bb11.i.if.end26.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

sw.bb15.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i42.i) #6
  %head.i.i.i43.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %35 = call ptr @memset(ptr %_iph.i42.i, i32 255, i32 20)
  %36 = ptrtoint ptr %head.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i.i43.i, align 8
  %network_header.i.i.i44.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i.i44.i, align 4
  %conv.i.i.i45.i = zext i16 %39 to i32
  %add.ptr.i.i.i46.i = getelementptr i8, ptr %37, i32 %conv.i.i.i45.i
  %data.i.i47.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i47.i, align 4
  %sub.ptr.lhs.cast.i.i48.i = ptrtoint ptr %add.ptr.i.i.i46.i to i32
  %sub.ptr.rhs.cast.i.i49.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i50.i = sub i32 %sub.ptr.lhs.cast.i.i48.i, %sub.ptr.rhs.cast.i.i49.i
  %len.i.i.i51.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i.i51.i, align 4
  %data_len.i.i.i52.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i.i52.i, align 8
  %46 = add i32 %45, %sub.ptr.sub.i.i50.i
  %sub.i4.i.i53.i = sub i32 %43, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i53.i)
  %cmp.not.i.i.i54.i = icmp slt i32 %sub.i4.i.i53.i, 20
  br i1 %cmp.not.i.i.i54.i, label %if.end.i.i.i56.i, label %skb_header_pointer.exit.i62.i, !prof !48

if.end.i.i.i56.i:                                 ; preds = %sw.bb15.i
  %tobool2.not.i.i.i55.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i.i.i55.i, label %if.end.i.i.i56.i.audit_ip4.exit70.thread.i_crit_edge, label %lor.lhs.false.i.i.i59.i

if.end.i.i.i56.i.audit_ip4.exit70.thread.i_crit_edge: ; preds = %if.end.i.i.i56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %audit_ip4.exit70.thread.i

lor.lhs.false.i.i.i59.i:                          ; preds = %if.end.i.i.i56.i
  %call.i.i.i57.i = call i32 @skb_copy_bits(ptr noundef nonnull %5, i32 noundef %sub.ptr.sub.i.i50.i, ptr noundef nonnull %_iph.i42.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i57.i)
  %cmp3.i.i.i58.i = icmp slt i32 %call.i.i.i57.i, 0
  br i1 %cmp3.i.i.i58.i, label %lor.lhs.false.i.i.i59.i.audit_ip4.exit70.thread.i_crit_edge, label %lor.lhs.false.i.i.i59.i._crit_edge

lor.lhs.false.i.i.i59.i._crit_edge:               ; preds = %lor.lhs.false.i.i.i59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %47

lor.lhs.false.i.i.i59.i.audit_ip4.exit70.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %audit_ip4.exit70.thread.i

skb_header_pointer.exit.i62.i:                    ; preds = %sw.bb15.i
  %add.ptr.i.i8.i60.i = getelementptr i8, ptr %41, i32 %sub.ptr.sub.i.i50.i
  %tobool.not.i61.i = icmp eq ptr %add.ptr.i.i8.i60.i, null
  br i1 %tobool.not.i61.i, label %skb_header_pointer.exit.i62.i.audit_ip4.exit70.thread.i_crit_edge, label %skb_header_pointer.exit.i62.i._crit_edge

skb_header_pointer.exit.i62.i._crit_edge:         ; preds = %skb_header_pointer.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %47

skb_header_pointer.exit.i62.i.audit_ip4.exit70.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %audit_ip4.exit70.thread.i

audit_ip4.exit70.thread.i:                        ; preds = %skb_header_pointer.exit.i62.i.audit_ip4.exit70.thread.i_crit_edge, %lor.lhs.false.i.i.i59.i.audit_ip4.exit70.thread.i_crit_edge, %if.end.i.i.i56.i.audit_ip4.exit70.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i42.i) #6
  br label %if.then25.i

47:                                               ; preds = %skb_header_pointer.exit.i62.i._crit_edge, %lor.lhs.false.i.i.i59.i._crit_edge
  %retval.0.i.i15.i63.i = phi ptr [ %add.ptr.i.i8.i60.i, %skb_header_pointer.exit.i62.i._crit_edge ], [ %_iph.i42.i, %lor.lhs.false.i.i.i59.i._crit_edge ]
  %saddr.i64.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i63.i, i32 0, i32 8
  %daddr.i65.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i63.i, i32 0, i32 9
  %protocol.i66.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i63.i, i32 0, i32 6
  %48 = ptrtoint ptr %protocol.i66.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %protocol.i66.i, align 1
  %conv.i67.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.4, ptr noundef %saddr.i64.i, ptr noundef %daddr.i65.i, i32 noundef %conv.i67.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i42.i) #6
  br label %if.end26.i

sw.bb19.i:                                        ; preds = %if.end4.i
  %call20.i = tail call fastcc zeroext i1 @audit_ip6(ptr noundef nonnull %call.i, ptr noundef %5) #6
  br i1 %call20.i, label %sw.bb19.i.if.end26.i_crit_edge, label %sw.bb19.i.if.then25.i_crit_edge

sw.bb19.i.if.then25.i_crit_edge:                  ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

sw.bb19.i.if.end26.i_crit_edge:                   ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then25.i:                                      ; preds = %sw.bb19.i.if.then25.i_crit_edge, %audit_ip4.exit70.thread.i, %sw.bb11.i.if.then25.i_crit_edge, %audit_ip4.exit.thread.i, %sw.bb.i.if.then25.i_crit_edge, %if.end4.i.if.then25.i_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.3) #6
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %sw.bb19.i.if.end26.i_crit_edge, %47, %sw.bb11.i.if.end26.i_crit_edge, %32
  call void @audit_log_end(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pf.i, align 1
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %51, align 4
  %conv.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pkt, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %51, i32 0, i32 2
  %60 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %51, i32 0, i32 3
  %62 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %out.i, align 4
  %prefix = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %64 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prefix, align 4
  tail call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_packet(ptr noundef %53, i8 noundef zeroext %55, i32 noundef %conv.i, ptr noundef %59, ptr noundef %61, ptr noundef %63, ptr noundef %data.i, ptr noundef nonnull @.str.1, ptr noundef %65) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end26.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_log_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data.i, align 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %cmp2.not = icmp eq ptr %4, null
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %cmp4.not = icmp eq ptr %6, null
  br i1 %cmp4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %data.i, align 4
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 6
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %cmp8.not = icmp eq ptr %9, null
  br i1 %cmp8.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %arrayidx12 = getelementptr ptr, ptr %tb, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %cmp13.not = icmp eq ptr %11, null
  br i1 %cmp13.not, label %if.else, label %if.end8.i

if.end8.i:                                        ; preds = %if.end11
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv.i = zext i16 %13 to i32
  %add = add nsw i32 %conv.i, -3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #9
  %prefix = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %14 = ptrtoint ptr %prefix to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %prefix, align 4
  %cmp18 = icmp eq ptr %call9.i, null
  br i1 %cmp18, label %if.end8.i.cleanup_crit_edge, label %if.end20

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %11, align 2
  %conv.i156 = zext i16 %16 to i32
  %add23 = add nsw i32 %conv.i156, -3
  %call24 = tail call i32 @nla_strscpy(ptr noundef nonnull %call9.i, ptr noundef nonnull %11, i32 noundef %add23) #6
  br label %if.end26

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %prefix25 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %17 = ptrtoint ptr %prefix25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %prefix25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end20
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %19, label %if.end26.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb60
  ]

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end26
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %cmp29.not = icmp eq ptr %22, null
  br i1 %cmp29.not, label %if.end38.thread, label %if.end38

if.end38.thread:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %23 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %23, align 4
  br label %if.end45

if.end38:                                         ; preds = %sw.bb
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %conv34 = trunc i32 %26 to i8
  %27 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv34, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv34)
  %cmp42 = icmp ugt i8 %conv34, 8
  br i1 %cmp42, label %if.end38.err1_crit_edge, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end38.err1_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end45:                                         ; preds = %if.end38.if.end45_crit_edge, %if.end38.thread
  %arrayidx46 = getelementptr ptr, ptr %tb, i32 6
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx46, align 4
  %cmp47.not = icmp eq ptr %30, null
  br i1 %cmp47.not, label %if.end45.sw.epilog_crit_edge, label %if.then49

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then49:                                        ; preds = %if.end45
  %add.ptr.i.i158 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i158 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i158, align 4
  %conv52 = trunc i32 %32 to i8
  %logflags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %33 = ptrtoint ptr %logflags to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv52, ptr %logflags, align 1
  %and = and i32 %32, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then49.sw.epilog_crit_edge, label %if.then49.err1_crit_edge

if.then49.err1_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.then49.sw.epilog_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end26
  %34 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3, align 4
  %add.ptr.i.i159 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i159 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i159, align 2
  %group = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %38 = ptrtoint ptr %group to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %group, align 4
  %arrayidx64 = getelementptr ptr, ptr %tb, i32 3
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx64, align 4
  %cmp65.not = icmp eq ptr %40, null
  br i1 %cmp65.not, label %sw.bb60.if.end74_crit_edge, label %if.then67

sw.bb60.if.end74_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then67:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  %u63 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags, align 4
  %43 = or i16 %42, 1
  store i16 %43, ptr %flags, align 4
  %44 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx64, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i160 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i160, align 4
  %48 = ptrtoint ptr %u63 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %u63, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then67, %sw.bb60.if.end74_crit_edge
  %arrayidx75 = getelementptr ptr, ptr %tb, i32 4
  %49 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx75, align 4
  %cmp76.not = icmp eq ptr %50, null
  br i1 %cmp76.not, label %if.end74.sw.epilog_crit_edge, label %if.then78

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i161 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i161 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i.i161, align 2
  %qthreshold = getelementptr inbounds %struct.nf_loginfo, ptr %data.i, i32 0, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %qthreshold to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %qthreshold, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then78, %if.end74.sw.epilog_crit_edge, %if.then49.sw.epilog_crit_edge, %if.end45.sw.epilog_crit_edge, %if.end26.sw.epilog_crit_edge
  %u83 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %54 = ptrtoint ptr %u83 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %u83, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %55)
  %cmp86 = icmp eq i8 %55, 8
  br i1 %cmp86, label %sw.epilog.cleanup_crit_edge, label %if.end89

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %sw.epilog
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %56 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %family, align 2
  %conv90 = zext i8 %57 to i32
  %conv92 = zext i8 %19 to i32
  %call93 = tail call i32 @nf_logger_find_get(i32 noundef %conv90, i32 noundef %conv92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then96:                                        ; preds = %if.end89
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %data.i, align 4
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %61, label %if.then96.err1_crit_edge [
    i8 0, label %if.then96.nft_log_modprobe.exit_crit_edge
    i8 1, label %sw.bb1.i
  ]

if.then96.nft_log_modprobe.exit_crit_edge:        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_log_modprobe.exit

if.then96.err1_crit_edge:                         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

sw.bb1.i:                                         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_log_modprobe.exit

nft_log_modprobe.exit:                            ; preds = %sw.bb1.i, %if.then96.nft_log_modprobe.exit_crit_edge
  %.str.8.sink.i = phi ptr [ @.str.8, %sw.bb1.i ], [ @.str.7, %if.then96.nft_log_modprobe.exit_crit_edge ]
  %call2.i = tail call i32 (ptr, ptr, ...) @nft_request_module(ptr noundef %59, ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.8.sink.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2.i)
  %cmp100 = icmp eq i32 %call2.i, -11
  %spec.select = select i1 %cmp100, i32 -11, i32 %call93
  br label %err1

err1:                                             ; preds = %nft_log_modprobe.exit, %if.then96.err1_crit_edge, %if.then49.err1_crit_edge, %if.end38.err1_crit_edge
  %err.0 = phi i32 [ -22, %if.end38.err1_crit_edge ], [ -22, %if.then49.err1_crit_edge ], [ %call93, %if.then96.err1_crit_edge ], [ %spec.select, %nft_log_modprobe.exit ]
  %prefix105 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %63 = ptrtoint ptr %prefix105 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prefix105, align 4
  %cmp106.not = icmp eq ptr %64, @.str.6
  br i1 %cmp106.not, label %err1.cleanup_crit_edge, label %if.then108

err1.cleanup_crit_edge:                           ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then108:                                       ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %err1.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ], [ %err.0, %if.then108 ], [ %err.0, %err1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_log_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %prefix = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prefix, align 4
  %cmp.not = icmp eq ptr %1, @.str.6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp2 = icmp eq i8 %3, 8
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 2
  %conv6 = zext i8 %5 to i32
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 4
  %conv7 = zext i8 %7 to i32
  tail call void @nf_logger_put(i32 noundef %conv6, i32 noundef %conv7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_log_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i72 = alloca i16, align 2
  %tmp.i70 = alloca i32, align 4
  %tmp.i68 = alloca i16, align 2
  %tmp.i66 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %prefix = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prefix, align 4
  %cmp.not = icmp eq ptr %1, @.str.6
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef %1) #10
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.nla_put_failure_crit_edge

if.then.nla_put_failure_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.i, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %3, label %if.end4.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb21
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %u = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %u, align 4
  %conv5 = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %tmp.i, align 4
  %call.i65 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool7.not = icmp eq i32 %call.i65, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb.nla_put_failure_crit_edge

sw.bb.nla_put_failure_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end9:                                          ; preds = %sw.bb
  %logflags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %logflags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %logflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  %conv15 = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i66) #6
  %10 = ptrtoint ptr %tmp.i66 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv15, ptr %tmp.i66, align 4
  %call.i67 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i66) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool17.not = icmp eq i32 %call.i67, 0
  br i1 %tobool17.not, label %if.then12.cleanup_crit_edge, label %if.then12.nla_put_failure_crit_edge

if.then12.nla_put_failure_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb21:                                          ; preds = %if.end4
  %u22 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %group = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %11 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %group, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i68) #6
  %13 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %tmp.i68, align 2
  %call.i69 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i68) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool24.not = icmp eq i32 %call.i69, 0
  br i1 %tobool24.not, label %if.end26, label %sw.bb21.nla_put_failure_crit_edge

sw.bb21.nla_put_failure_crit_edge:                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end26:                                         ; preds = %sw.bb21
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 4
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool29.not = icmp eq i16 %16, 0
  br i1 %tobool29.not, label %if.end26.if.end36_crit_edge, label %if.then30

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then30:                                        ; preds = %if.end26
  %17 = ptrtoint ptr %u22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %u22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i70) #6
  %19 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i70, align 4
  %call.i71 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i70) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool33.not = icmp eq i32 %call.i71, 0
  br i1 %tobool33.not, label %if.then30.if.end36_crit_edge, label %if.then30.nla_put_failure_crit_edge

if.then30.nla_put_failure_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %qthreshold = getelementptr inbounds %struct.nf_loginfo, ptr %data.i, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %qthreshold to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %qthreshold, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool38.not = icmp eq i16 %21, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i72) #6
  %22 = ptrtoint ptr %tmp.i72 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %tmp.i72, align 2
  %call.i73 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i72) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool43.not = icmp eq i32 %call.i73, 0
  br i1 %tobool43.not, label %if.then39.cleanup_crit_edge, label %if.then39.nla_put_failure_crit_edge

if.then39.nla_put_failure_crit_edge:              ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nla_put_failure:                                  ; preds = %if.then39.nla_put_failure_crit_edge, %if.then30.nla_put_failure_crit_edge, %sw.bb21.nla_put_failure_crit_edge, %if.then12.nla_put_failure_crit_edge, %sw.bb.nla_put_failure_crit_edge, %if.then.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.then39.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.then39.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_packet(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @audit_ip6(ptr noundef %ab, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %_ip6h = alloca %struct.ipv6hdr, align 4
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h) #6
  %0 = call ptr @memset(ptr %_ip6h, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #6
  %1 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %frag_off, align 2, !annotation !49
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %11, %sub.ptr.sub.i
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 40
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !48

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_ip6h, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %add.ptr.i.i15 = getelementptr i8, ptr %7, i32 %sub.ptr.sub.i
  %tobool.not = icmp eq ptr %add.ptr.i.i15, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i30 = phi ptr [ %add.ptr.i.i15, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ip6h, %lor.lhs.false.i.i.if.end_crit_edge ]
  %nexthdr2 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i30, i32 0, i32 3
  %13 = ptrtoint ptr %nexthdr2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nexthdr2, align 2
  %15 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %nexthdr, align 1
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i18 = zext i16 %19 to i32
  %add.ptr.i.i19 = getelementptr i8, ptr %17, i32 %conv.i.i18
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i21 = ptrtoint ptr %add.ptr.i.i19 to i32
  %sub.ptr.rhs.cast.i22 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i23 = sub i32 40, %sub.ptr.rhs.cast.i22
  %add = add i32 %sub.ptr.sub.i23, %sub.ptr.lhs.cast.i21
  %call4 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i30, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i30, i32 0, i32 6
  %22 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nexthdr, align 1
  %conv = zext i8 %23 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.5, ptr noundef %saddr, ptr noundef %daddr, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %tobool.not26 = phi i1 [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ true, %if.end ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h) #6
  ret i1 %tobool.not26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_logger_find_get(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_request_module(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_logger_put(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_nft_log__563_313_nft_log_module_init6, !1, !"__initcall__kmod_nft_log__563_313_nft_log_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_log.c", i32 313, i32 1}
!2 = !{ptr @__exitcall_nft_log_module_exit, !3, !"__exitcall_nft_log_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_log.c", i32 314, i32 1}
!4 = !{ptr @__UNIQUE_ID_file564, !5, !"__UNIQUE_ID_file564", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_log.c", i32 316, i32 1}
!6 = !{ptr @__UNIQUE_ID_license565, !5, !"__UNIQUE_ID_license565", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author566, !8, !"__UNIQUE_ID_author566", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_log.c", i32 317, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias567, !10, !"__UNIQUE_ID_alias567", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_log.c", i32 318, i32 1}
!11 = !{ptr @__UNIQUE_ID_description568, !12, !"__UNIQUE_ID_description568", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_log.c", i32 319, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_log.c", i32 296, i32 11}
!15 = !{ptr @nft_log_type, !16, !"nft_log_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_log.c", i32 295, i32 29}
!17 = !{ptr @nft_log_ops, !18, !"nft_log_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_log.c", i32 286, i32 34}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_log.c", i32 117, i32 52}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_log.c", i32 77, i32 23}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_log.c", i32 99, i32 24}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_log.c", i32 38, i32 23}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/nft_log.c", i32 58, i32 23}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/nft_log.c", i32 22, i32 42}
!31 = distinct !{null, !32, !"nft_log_null_prefix", i1 false, i1 false}
!32 = !{!"../net/netfilter/nft_log.c", i32 22, i32 20}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/nft_log.c", i32 135, i32 40}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/nft_log.c", i32 137, i32 40}
!37 = !{ptr @nft_log_policy, !38, !"nft_log_policy", i1 false, i1 false}
!38 = !{!"../net/netfilter/nft_log.c", i32 121, i32 32}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"auto-init"}
