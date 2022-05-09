; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_reject.c_pt.bc'
source_filename = "../net/netfilter/nft_reject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nft_reject_policy\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_reject_policy\09\09\09\09"
module asm "\09.long\09__crc_nft_reject_policy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_reject_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_reject_policy\22\09\09\09\09\09"
module asm "__kstrtabns_nft_reject_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_reject_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_reject_validate\09\09\09\09"
module asm "\09.long\09__crc_nft_reject_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_reject_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_reject_validate\22\09\09\09\09\09"
module asm "__kstrtabns_nft_reject_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_reject_init\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_reject_init\09\09\09\09"
module asm "\09.long\09__crc_nft_reject_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_reject_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_reject_init\22\09\09\09\09\09"
module asm "__kstrtabns_nft_reject_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_reject_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_reject_dump\09\09\09\09"
module asm "\09.long\09__crc_nft_reject_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_reject_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_reject_dump\22\09\09\09\09\09"
module asm "__kstrtabns_nft_reject_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_reject_icmp_code\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_reject_icmp_code\09\09\09\09"
module asm "\09.long\09__crc_nft_reject_icmp_code\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_reject_icmp_code:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_reject_icmp_code\22\09\09\09\09\09"
module asm "__kstrtabns_nft_reject_icmp_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_reject_icmpv6_code\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_reject_icmpv6_code\09\09\09\09"
module asm "\09.long\09__crc_nft_reject_icmpv6_code\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_reject_icmpv6_code:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_reject_icmpv6_code\22\09\09\09\09\09"
module asm "__kstrtabns_nft_reject_icmpv6_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_reject = type { i8, i8, [2 x i8] }

@nft_reject_policy = dso_local constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__kstrtab_nft_reject_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_reject_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_reject_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_reject_policy to i32), ptr @__kstrtab_nft_reject_policy, ptr @__kstrtabns_nft_reject_policy }, section "___ksymtab_gpl+nft_reject_policy", align 4
@__kstrtab_nft_reject_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_reject_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_reject_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_reject_validate to i32), ptr @__kstrtab_nft_reject_validate, ptr @__kstrtabns_nft_reject_validate }, section "___ksymtab_gpl+nft_reject_validate", align 4
@__kstrtab_nft_reject_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_reject_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_reject_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_reject_init to i32), ptr @__kstrtab_nft_reject_init, ptr @__kstrtabns_nft_reject_init }, section "___ksymtab_gpl+nft_reject_init", align 4
@__kstrtab_nft_reject_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_reject_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_reject_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_reject_dump to i32), ptr @__kstrtab_nft_reject_dump, ptr @__kstrtabns_nft_reject_dump }, section "___ksymtab_gpl+nft_reject_dump", align 4
@nft_reject_icmp_code.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nft_reject.c\00", [37 x i8] zeroinitializer }, align 32
@icmp_code_v4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\03\01\0D", [28 x i8] zeroinitializer }, align 32
@__kstrtab_nft_reject_icmp_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_reject_icmp_code = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_reject_icmp_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_reject_icmp_code to i32), ptr @__kstrtab_nft_reject_icmp_code, ptr @__kstrtabns_nft_reject_icmp_code }, section "___ksymtab_gpl+nft_reject_icmp_code", align 4
@nft_reject_icmpv6_code.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@icmp_code_v6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\04\03\01", [28 x i8] zeroinitializer }, align 32
@__kstrtab_nft_reject_icmpv6_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_reject_icmpv6_code = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_reject_icmpv6_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_reject_icmpv6_code to i32), ptr @__kstrtab_nft_reject_icmpv6_code, ptr @__kstrtabns_nft_reject_icmpv6_code }, section "___ksymtab_gpl+nft_reject_icmpv6_code", align 4
@__UNIQUE_ID_file541 = internal constant [41 x i8] c"nft_reject.file=net/netfilter/nft_reject\00", section ".modinfo", align 1
@__UNIQUE_ID_license542 = internal constant [23 x i8] c"nft_reject.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author543 = internal constant [52 x i8] c"nft_reject.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description544 = internal constant [63 x i8] c"nft_reject.description=Netfilter x_tables over nftables module\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"nft_reject_policy\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 20, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 105, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"icmp_code_v4\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 96, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"icmp_code_v6\00", align 1
@___asan_gen_.12 = private constant [30 x i8] c"../net/netfilter/nft_reject.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 114, i32 11 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author543, ptr @__UNIQUE_ID_description544, ptr @__UNIQUE_ID_file541, ptr @__UNIQUE_ID_license542, ptr @__ksymtab_nft_reject_dump, ptr @__ksymtab_nft_reject_icmp_code, ptr @__ksymtab_nft_reject_icmpv6_code, ptr @__ksymtab_nft_reject_init, ptr @__ksymtab_nft_reject_policy, ptr @__ksymtab_nft_reject_validate, ptr @nft_reject_policy, ptr @.str, ptr @icmp_code_v4, ptr @icmp_code_v6], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_reject_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_code_v4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_code_v6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_reject_validate(ptr nocapture noundef readonly %ctx, ptr nocapture readnone %expr, ptr nocapture readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 15) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nft_reject_init(ptr nocapture readnone %ctx, ptr nocapture noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = trunc i32 %3 to i8
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %data.i, align 4
  %6 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 2, label %if.end.sw.bb_crit_edge29
    i8 1, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.bb_crit_edge29:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge29
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 2
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %cmp4 = icmp eq ptr %8, null
  br i1 %cmp4, label %sw.bb.cleanup_crit_edge, label %if.end6

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %add.ptr.i.i28 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i28 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp11 = icmp eq i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp13 = icmp ugt i8 %10, 3
  %or.cond = select i1 %cmp11, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.end6.cleanup_crit_edge, label %if.end16

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %icmp_code18 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %11 = ptrtoint ptr %icmp_code18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %icmp_code18, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_reject_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i12 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %data.i, align 4
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load211 = load i8, ptr %data.i, align 4
  %3 = zext i8 %bf.load211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %bf.load211, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 2, label %if.end.sw.bb_crit_edge14
  ]

if.end.sw.bb_crit_edge14:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge14
  %icmp_code = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %icmp_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %icmp_code, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i12) #4
  %6 = ptrtoint ptr %tmp.i12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tmp.i12, align 1
  %call.i13 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i12) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool5.not = icmp eq i32 %call.i13, 0
  br i1 %tobool5.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.nla_put_failure_crit_edge

sw.bb.nla_put_failure_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nla_put_failure:                                  ; preds = %sw.bb.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_reject_icmp_code(i8 noundef zeroext %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %code)
  %cmp = icmp ugt i8 %code, 3
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @nft_reject_icmp_code.__already_done, align 1
  br i1 %.b44, label %land.rhs.return_crit_edge, label %if.then, !prof !39

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_reject_icmp_code.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %code to i32
  %arrayidx = getelementptr [4 x i8], ptr @icmp_code_v4, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv40 = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %if.end39, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %conv40, %if.end39 ], [ 0, %if.then ], [ 0, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_reject_icmpv6_code(i8 noundef zeroext %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %code)
  %cmp = icmp ugt i8 %code, 3
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @nft_reject_icmpv6_code.__already_done, align 1
  br i1 %.b44, label %land.rhs.return_crit_edge, label %if.then, !prof !39

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_reject_icmpv6_code.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %code to i32
  %arrayidx = getelementptr [4 x i8], ptr @icmp_code_v6, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv40 = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %if.end39, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %conv40, %if.end39 ], [ 0, %if.then ], [ 0, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @nft_reject_policy, !1, !"nft_reject_policy", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_reject.c", i32 20, i32 25}
!2 = !{ptr @__ksymtab_nft_reject_policy, !3, !"__ksymtab_nft_reject_policy", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_reject.c", i32 24, i32 1}
!4 = !{ptr @__ksymtab_nft_reject_validate, !5, !"__ksymtab_nft_reject_validate", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_reject.c", i32 36, i32 1}
!6 = !{ptr @__ksymtab_nft_reject_init, !7, !"__ksymtab_nft_reject_init", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_reject.c", i32 70, i32 1}
!8 = !{ptr @__ksymtab_nft_reject_dump, !9, !"__ksymtab_nft_reject_dump", i1 false, i1 false}
!9 = !{!"../net/netfilter/nft_reject.c", i32 94, i32 1}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/netfilter/nft_reject.c", i32 105, i32 6}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_nft_reject_icmp_code, !14, !"__ksymtab_nft_reject_icmp_code", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_reject.c", i32 111, i32 1}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_reject.c", i32 123, i32 6}
!17 = !{ptr @__ksymtab_nft_reject_icmpv6_code, !18, !"__ksymtab_nft_reject_icmpv6_code", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_reject.c", i32 129, i32 1}
!19 = !{ptr @__UNIQUE_ID_file541, !20, !"__UNIQUE_ID_file541", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_reject.c", i32 131, i32 1}
!21 = !{ptr @__UNIQUE_ID_license542, !20, !"__UNIQUE_ID_license542", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author543, !23, !"__UNIQUE_ID_author543", i1 false, i1 false}
!23 = !{!"../net/netfilter/nft_reject.c", i32 132, i32 1}
!24 = !{ptr @__UNIQUE_ID_description544, !25, !"__UNIQUE_ID_description544", i1 false, i1 false}
!25 = !{!"../net/netfilter/nft_reject.c", i32 133, i32 1}
!26 = !{ptr @icmp_code_v4, !27, !"icmp_code_v4", i1 false, i1 false}
!27 = !{!"../net/netfilter/nft_reject.c", i32 96, i32 11}
!28 = !{ptr @icmp_code_v6, !29, !"icmp_code_v6", i1 false, i1 false}
!29 = !{!"../net/netfilter/nft_reject.c", i32 114, i32 11}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
