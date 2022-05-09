; ModuleID = '/llk/IR_all_yes/lib/dim/net_dim.c_pt.bc'
source_filename = "../lib/dim/net_dim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+net_dim_get_rx_moderation\22, \22a\22\09"
module asm "\09.weak\09__crc_net_dim_get_rx_moderation\09\09\09\09"
module asm "\09.long\09__crc_net_dim_get_rx_moderation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_rx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+net_dim_get_def_rx_moderation\22, \22a\22\09"
module asm "\09.weak\09__crc_net_dim_get_def_rx_moderation\09\09\09\09"
module asm "\09.long\09__crc_net_dim_get_def_rx_moderation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_def_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_def_rx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_def_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+net_dim_get_tx_moderation\22, \22a\22\09"
module asm "\09.weak\09__crc_net_dim_get_tx_moderation\09\09\09\09"
module asm "\09.long\09__crc_net_dim_get_tx_moderation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_tx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+net_dim_get_def_tx_moderation\22, \22a\22\09"
module asm "\09.weak\09__crc_net_dim_get_def_tx_moderation\09\09\09\09"
module asm "\09.long\09__crc_net_dim_get_def_tx_moderation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_def_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_def_tx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_def_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+net_dim\22, \22a\22\09"
module asm "\09.weak\09__crc_net_dim\09\09\09\09"
module asm "\09.long\09__crc_net_dim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@rx_profile = internal constant { [2 x [5 x %struct.dim_cq_moder]], [48 x i8] } { [2 x [5 x %struct.dim_cq_moder]] [[5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 1, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 128, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 256, i16 256, i16 0, i8 0 }], [5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 2, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 16, i16 64, i16 0, i8 0 }, %struct.dim_cq_moder { i16 32, i16 64, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 64, i16 0, i8 0 }]], [48 x i8] zeroinitializer }, align 32
@__kstrtab_net_dim_get_rx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_rx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_rx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_rx_moderation to i32), ptr @__kstrtab_net_dim_get_rx_moderation, ptr @__kstrtabns_net_dim_get_rx_moderation }, section "___ksymtab+net_dim_get_rx_moderation", align 4
@__kstrtab_net_dim_get_def_rx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_def_rx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_def_rx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_def_rx_moderation to i32), ptr @__kstrtab_net_dim_get_def_rx_moderation, ptr @__kstrtabns_net_dim_get_def_rx_moderation }, section "___ksymtab+net_dim_get_def_rx_moderation", align 4
@tx_profile = internal constant { [2 x [5 x %struct.dim_cq_moder]], [48 x i8] } { [2 x [5 x %struct.dim_cq_moder]] [[5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 1, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 32, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 128, i16 128, i16 0, i8 0 }], [5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 5, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 64, i16 0, i8 0 }, %struct.dim_cq_moder { i16 16, i16 32, i16 0, i8 0 }, %struct.dim_cq_moder { i16 32, i16 32, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 32, i16 0, i8 0 }]], [48 x i8] zeroinitializer }, align 32
@__kstrtab_net_dim_get_tx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_tx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_tx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_tx_moderation to i32), ptr @__kstrtab_net_dim_get_tx_moderation, ptr @__kstrtabns_net_dim_get_tx_moderation }, section "___ksymtab+net_dim_get_tx_moderation", align 4
@__kstrtab_net_dim_get_def_tx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_def_tx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_def_tx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_def_tx_moderation to i32), ptr @__kstrtab_net_dim_get_def_tx_moderation, ptr @__kstrtabns_net_dim_get_def_tx_moderation }, section "___ksymtab+net_dim_get_def_tx_moderation", align 4
@__kstrtab_net_dim = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim to i32), ptr @__kstrtab_net_dim, ptr @__kstrtabns_net_dim }, section "___ksymtab+net_dim", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"rx_profile\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 53, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"tx_profile\00", align 1
@___asan_gen_.7 = private constant [21 x i8] c"../lib/dim/net_dim.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 59, i32 1 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_net_dim, ptr @__ksymtab_net_dim_get_def_rx_moderation, ptr @__ksymtab_net_dim_get_def_tx_moderation, ptr @__ksymtab_net_dim_get_rx_moderation, ptr @__ksymtab_net_dim_get_tx_moderation, ptr @rx_profile, ptr @tx_profile], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_profile to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_profile to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @net_dim_get_rx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %agg.result, i8 noundef zeroext %cq_period_mode, i32 noundef %ix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %cq_period_mode to i32
  %arrayidx1 = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @rx_profile, i32 0, i32 %idxprom, i32 %ix
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %arrayidx1, align 2
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %agg.result, align 2
  %cq_period_mode2 = getelementptr inbounds %struct.dim_cq_moder, ptr %agg.result, i32 0, i32 3
  %3 = ptrtoint ptr %cq_period_mode2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cq_period_mode, ptr %cq_period_mode2, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @net_dim_get_def_rx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %agg.result, i8 noundef zeroext %cq_period_mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %idxprom.i = zext i8 %cq_period_mode to i32
  %arrayidx1.i = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @rx_profile, i32 0, i32 %idxprom.i, i32 1
  %0 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %arrayidx1.i, align 2, !noalias !23
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %agg.result, align 2, !alias.scope !23
  %cq_period_mode2.i = getelementptr inbounds %struct.dim_cq_moder, ptr %agg.result, i32 0, i32 3
  %3 = ptrtoint ptr %cq_period_mode2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cq_period_mode, ptr %cq_period_mode2.i, align 2, !alias.scope !23
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @net_dim_get_tx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %agg.result, i8 noundef zeroext %cq_period_mode, i32 noundef %ix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %cq_period_mode to i32
  %arrayidx1 = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @tx_profile, i32 0, i32 %idxprom, i32 %ix
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %arrayidx1, align 2
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %agg.result, align 2
  %cq_period_mode2 = getelementptr inbounds %struct.dim_cq_moder, ptr %agg.result, i32 0, i32 3
  %3 = ptrtoint ptr %cq_period_mode2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cq_period_mode, ptr %cq_period_mode2, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @net_dim_get_def_tx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %agg.result, i8 noundef zeroext %cq_period_mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %idxprom.i = zext i8 %cq_period_mode to i32
  %arrayidx1.i = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @tx_profile, i32 0, i32 %idxprom.i, i32 1
  %0 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %arrayidx1.i, align 2, !noalias !26
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %agg.result, align 2, !alias.scope !26
  %cq_period_mode2.i = getelementptr inbounds %struct.dim_cq_moder, ptr %agg.result, i32 0, i32 3
  %3 = ptrtoint ptr %cq_period_mode2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cq_period_mode, ptr %cq_period_mode2.i, align 2, !alias.scope !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @net_dim(ptr noundef %dim, [3 x i64] %end_sample.coerce) #3 align 64 {
entry:
  %end_sample = alloca %struct.dim_sample, align 8
  %curr_stats = alloca %struct.dim_stats, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %end_sample.coerce.fca.0.extract = extractvalue [3 x i64] %end_sample.coerce, 0
  %0 = ptrtoint ptr %end_sample to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %end_sample.coerce.fca.0.extract, ptr %end_sample, align 8
  %end_sample.coerce.fca.1.extract = extractvalue [3 x i64] %end_sample.coerce, 1
  %end_sample.coerce.fca.1.gep = getelementptr inbounds [3 x i64], ptr %end_sample, i32 0, i32 1
  %1 = ptrtoint ptr %end_sample.coerce.fca.1.gep to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %end_sample.coerce.fca.1.extract, ptr %end_sample.coerce.fca.1.gep, align 8
  %end_sample.coerce.fca.2.extract = extractvalue [3 x i64] %end_sample.coerce, 2
  %end_sample.coerce.fca.2.gep = getelementptr inbounds [3 x i64], ptr %end_sample, i32 0, i32 2
  %2 = ptrtoint ptr %end_sample.coerce.fca.2.gep to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %end_sample.coerce.fca.2.extract, ptr %end_sample.coerce.fca.2.gep, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %curr_stats) #7
  %3 = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 1
  %4 = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 2
  %5 = call ptr @memset(ptr %curr_stats, i32 255, i32 20)
  %6 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dim, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %entry.sw.bb13_crit_edge
  ]

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %9 = ptrtoint ptr %end_sample.coerce.fca.2.gep to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %end_sample.coerce.fca.2.gep, align 8
  %event_ctr2 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %event_ctr2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %event_ctr2, align 8
  %sub = sub i16 %10, %12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %sub)
  %cmp = icmp ult i16 %sub, 64
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %start_sample = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2
  call void @dim_calc_stats(ptr noundef %start_sample, ptr noundef nonnull %end_sample, ptr noundef nonnull %curr_stats) #7
  %tune_state.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 8
  %13 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tune_state.i, align 2
  %profile_ix.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 6
  %15 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %profile_ix.i, align 8
  %17 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %14, label %if.end.if.then29.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb5.i
    i8 2, label %if.end.sw.bb9.i_crit_edge
    i8 3, label %if.end.sw.bb9.i_crit_edge27
  ]

if.end.sw.bb9.i_crit_edge27:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

if.end.sw.bb9.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

if.end.if.then29.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

sw.bb.i:                                          ; preds = %if.end
  %prev_stats.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1
  %bpms.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %bpms.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bpms.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.lor.lhs.false.i_crit_edge, label %if.then.i.i.if.then.i_crit_edge

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %sub.i.i = sub i32 %21, %19
  %22 = call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #7
  %mul.i.i = mul i32 %22, 100
  %div.i.i = udiv i32 %mul.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div.i.i)
  %cmp8.i.i = icmp ugt i32 %div.i.i, 10
  br i1 %cmp8.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end14.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %23 = ptrtoint ptr %prev_stats.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prev_stats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.i.i = icmp eq i32 %24, 0
  %25 = ptrtoint ptr %curr_stats to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %curr_stats, align 4
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end20.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool18.not.i.i, label %if.then16.i.i.lor.lhs.false.i_crit_edge, label %if.then16.i.i.if.then.i_crit_edge

if.then16.i.i.if.then.i_crit_edge:                ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then16.i.i.lor.lhs.false.i_crit_edge:          ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %sub24.i.i = sub i32 %26, %24
  %27 = call i32 @llvm.abs.i32(i32 %sub24.i.i, i1 false) #7
  %mul32.i.i = mul i32 %27, 100
  %div34.i.i = udiv i32 %mul32.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div34.i.i)
  %cmp35.i.i = icmp ugt i32 %div34.i.i, 10
  br i1 %cmp35.i.i, label %if.end20.i.i.if.then.i_crit_edge, label %if.end41.i.i

if.end20.i.i.if.then.i_crit_edge:                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end41.i.i:                                     ; preds = %if.end20.i.i
  %epms.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %epms.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %epms.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool42.not.i.i, label %if.end41.i.i.lor.lhs.false.i_crit_edge, label %if.end44.i.i

if.end41.i.i.lor.lhs.false.i_crit_edge:           ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %4, align 4
  %sub48.i.i = sub i32 %31, %29
  %32 = call i32 @llvm.abs.i32(i32 %sub48.i.i, i1 false) #7
  %mul56.i.i = mul i32 %32, 100
  %div58.i.i = udiv i32 %mul56.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div58.i.i)
  %cmp59.i.i = icmp ugt i32 %div58.i.i, 10
  br i1 %cmp59.i.i, label %if.end44.i.i.if.then.i_crit_edge, label %if.end44.i.i.lor.lhs.false.i_crit_edge

if.end44.i.i.lor.lhs.false.i_crit_edge:           ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.end44.i.i.if.then.i_crit_edge:                 ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end44.i.i.if.then.i_crit_edge, %if.end20.i.i.if.then.i_crit_edge, %if.then16.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %if.then.i.i.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i56.i = icmp eq i8 %16, 0
  %conv1.i.i = select i1 %tobool.not.i56.i, i8 2, i8 3
  %33 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv1.i.i, ptr %tune_state.i, align 2
  %tired.i.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 11
  %34 = ptrtoint ptr %tired.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tired.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %35)
  %cmp.i.i.i = icmp eq i8 %35, 10
  br i1 %cmp.i.i.i, label %if.then.i.if.then29.i_crit_edge, label %if.end.i.i.i

if.then.i.if.then29.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.end.i.i.i:                                     ; preds = %if.then.i
  br i1 %tobool.not.i56.i, label %if.end8.i.i.i, label %if.end17.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %profile_ix.i, align 8
  %steps_right.i.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %37 = ptrtoint ptr %steps_right.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %steps_right.i.i.i, align 1
  %inc10.i.i.i = add i8 %38, 1
  store i8 %inc10.i.i.i, ptr %steps_right.i.i.i, align 1
  br label %sw.epilog.i.i.i

if.end17.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i.i = add i8 %16, -1
  %39 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %dec.i.i.i, ptr %profile_ix.i, align 8
  %steps_left.i.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %40 = ptrtoint ptr %steps_left.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %steps_left.i.i.i, align 4
  %inc19.i.i.i = add i8 %41, 1
  store i8 %inc19.i.i.i, ptr %steps_left.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.end17.i.i.i, %if.end8.i.i.i
  %inc21.i.i.i = add i8 %35, 1
  %42 = ptrtoint ptr %tired.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %inc21.i.i.i, ptr %tired.i.i.i, align 1
  br label %lor.lhs.false.i

sw.bb5.i:                                         ; preds = %if.end
  %tired.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 11
  %43 = ptrtoint ptr %tired.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tired.i, align 1
  %dec.i = add i8 %44, -1
  store i8 %dec.i, ptr %tired.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.i63.i, label %sw.bb5.i.if.then29.i_crit_edge

sw.bb5.i.if.then29.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.end.i.i63.i:                                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i58.i = icmp eq i8 %16, 0
  %conv1.i59.i = select i1 %tobool.not.i58.i, i8 2, i8 3
  %45 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv1.i59.i, ptr %tune_state.i, align 2
  br i1 %tobool.not.i58.i, label %if.end8.i.i66.i, label %if.end17.i.i70.i

if.end8.i.i66.i:                                  ; preds = %if.end.i.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %profile_ix.i, align 8
  %steps_right.i.i64.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %47 = ptrtoint ptr %steps_right.i.i64.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %steps_right.i.i64.i, align 1
  %inc10.i.i65.i = add i8 %48, 1
  store i8 %inc10.i.i65.i, ptr %steps_right.i.i64.i, align 1
  br label %net_dim_exit_parking.exit73.i

if.end17.i.i70.i:                                 ; preds = %if.end.i.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i67.i = add i8 %16, -1
  %49 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %dec.i.i67.i, ptr %profile_ix.i, align 8
  %steps_left.i.i68.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %50 = ptrtoint ptr %steps_left.i.i68.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %steps_left.i.i68.i, align 4
  %inc19.i.i69.i = add i8 %51, 1
  store i8 %inc19.i.i69.i, ptr %steps_left.i.i68.i, align 4
  br label %net_dim_exit_parking.exit73.i

net_dim_exit_parking.exit73.i:                    ; preds = %if.end17.i.i70.i, %if.end8.i.i66.i
  %52 = ptrtoint ptr %tired.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %44, ptr %tired.i, align 1
  br label %if.then29.i

sw.bb9.i:                                         ; preds = %if.end.sw.bb9.i_crit_edge, %if.end.sw.bb9.i_crit_edge27
  %prev_stats10.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1
  %bpms.i74.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %bpms.i74.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bpms.i74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i75.i = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %3, align 4
  br i1 %tobool.not.i75.i, label %if.then.i79.i, label %if.end.i84.i

if.then.i79.i:                                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool2.not.i77.i = icmp eq i32 %56, 0
  br i1 %tobool2.not.i77.i, label %if.then.i79.i.if.then14.i_crit_edge, label %if.then.i79.i.if.end15.i_crit_edge

if.then.i79.i.if.end15.i_crit_edge:               ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then.i79.i.if.then14.i_crit_edge:              ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.end.i84.i:                                     ; preds = %sw.bb9.i
  %sub.i80.i = sub i32 %56, %54
  %57 = call i32 @llvm.abs.i32(i32 %sub.i80.i, i1 false) #7
  %mul.i81.i = mul i32 %57, 100
  %div.i82.i = udiv i32 %mul.i81.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div.i82.i)
  %cmp8.i83.i = icmp ugt i32 %div.i82.i, 10
  br i1 %cmp8.i83.i, label %if.then9.i87.i, label %if.end14.i89.i

if.then9.i87.i:                                   ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %54)
  %cmp12.i85.i = icmp sgt i32 %56, %54
  br i1 %cmp12.i85.i, label %if.then9.i87.i.if.end15.i_crit_edge, label %if.then9.i87.i.if.then14.i_crit_edge

if.then9.i87.i.if.then14.i_crit_edge:             ; preds = %if.then9.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.then9.i87.i.if.end15.i_crit_edge:              ; preds = %if.then9.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.end14.i89.i:                                   ; preds = %if.end.i84.i
  %58 = ptrtoint ptr %prev_stats10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prev_stats10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool15.not.i88.i = icmp eq i32 %59, 0
  %60 = ptrtoint ptr %curr_stats to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %curr_stats, align 4
  br i1 %tobool15.not.i88.i, label %if.then16.i92.i, label %if.end20.i97.i

if.then16.i92.i:                                  ; preds = %if.end14.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool18.not.i90.i = icmp eq i32 %61, 0
  br i1 %tobool18.not.i90.i, label %if.then16.i92.i.if.then14.i_crit_edge, label %if.then16.i92.i.if.end15.i_crit_edge

if.then16.i92.i.if.end15.i_crit_edge:             ; preds = %if.then16.i92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then16.i92.i.if.then14.i_crit_edge:            ; preds = %if.then16.i92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.end20.i97.i:                                   ; preds = %if.end14.i89.i
  %sub24.i93.i = sub i32 %61, %59
  %62 = call i32 @llvm.abs.i32(i32 %sub24.i93.i, i1 false) #7
  %mul32.i94.i = mul i32 %62, 100
  %div34.i95.i = udiv i32 %mul32.i94.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div34.i95.i)
  %cmp35.i96.i = icmp ugt i32 %div34.i95.i, 10
  br i1 %cmp35.i96.i, label %if.then36.i100.i, label %if.end41.i103.i

if.then36.i100.i:                                 ; preds = %if.end20.i97.i
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp39.i98.i = icmp sgt i32 %61, %59
  br i1 %cmp39.i98.i, label %if.then36.i100.i.if.end15.i_crit_edge, label %if.then36.i100.i.if.then14.i_crit_edge

if.then36.i100.i.if.then14.i_crit_edge:           ; preds = %if.then36.i100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.then36.i100.i.if.end15.i_crit_edge:            ; preds = %if.then36.i100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.end41.i103.i:                                  ; preds = %if.end20.i97.i
  %epms.i101.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %epms.i101.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %epms.i101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool42.not.i102.i = icmp eq i32 %64, 0
  br i1 %tobool42.not.i102.i, label %if.end41.i103.i.if.then14.i_crit_edge, label %if.end44.i109.i

if.end41.i103.i.if.then14.i_crit_edge:            ; preds = %if.end41.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.end44.i109.i:                                  ; preds = %if.end41.i103.i
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %4, align 4
  %sub48.i105.i = sub i32 %66, %64
  %67 = call i32 @llvm.abs.i32(i32 %sub48.i105.i, i1 false) #7
  %mul56.i106.i = mul i32 %67, 100
  %div58.i107.i = udiv i32 %mul56.i106.i, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div58.i107.i)
  %cmp59.i108.i = icmp ugt i32 %div58.i107.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp63.i110.i = icmp slt i32 %66, %64
  %or.cond.i = select i1 %cmp59.i108.i, i1 %cmp63.i110.i, i1 false
  br i1 %or.cond.i, label %if.end44.i109.i.if.end15.i_crit_edge, label %if.end44.i109.i.if.then14.i_crit_edge

if.end44.i109.i.if.then14.i_crit_edge:            ; preds = %if.end44.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.end44.i109.i.if.end15.i_crit_edge:             ; preds = %if.end44.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end44.i109.i.if.then14.i_crit_edge, %if.end41.i103.i.if.then14.i_crit_edge, %if.then36.i100.i.if.then14.i_crit_edge, %if.then16.i92.i.if.then14.i_crit_edge, %if.then9.i87.i.if.then14.i_crit_edge, %if.then.i79.i.if.then14.i_crit_edge
  call void @dim_turn(ptr noundef %dim) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end44.i109.i.if.end15.i_crit_edge, %if.then36.i100.i.if.end15.i_crit_edge, %if.then16.i92.i.if.end15.i_crit_edge, %if.then9.i87.i.if.end15.i_crit_edge, %if.then.i79.i.if.end15.i_crit_edge
  %call16.i = call zeroext i1 @dim_on_top(ptr noundef %dim) #7
  br i1 %call16.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dim_park_on_top(ptr noundef %dim) #7
  br label %if.then29.i

if.end18.i:                                       ; preds = %if.end15.i
  %tired.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 11
  %68 = ptrtoint ptr %tired.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tired.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %69)
  %cmp.i.i = icmp eq i8 %69, 10
  br i1 %cmp.i.i, label %sw.bb21.i, label %if.end.i116.i

if.end.i116.i:                                    ; preds = %if.end18.i
  %70 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tune_state.i, align 2
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %71, label %if.end.i116.i.net_dim_step.exit.thread130.i_crit_edge [
    i8 3, label %sw.bb11.i.i
    i8 2, label %sw.bb3.i.i
  ]

if.end.i116.i.net_dim_step.exit.thread130.i_crit_edge: ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_dim_step.exit.thread130.i

sw.bb3.i.i:                                       ; preds = %if.end.i116.i
  %73 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %profile_ix.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %74)
  %cmp5.i.i = icmp eq i8 %74, 4
  br i1 %cmp5.i.i, label %sw.bb3.i.i.sw.bb20.i_crit_edge, label %if.end8.i.i

sw.bb3.i.i.sw.bb20.i_crit_edge:                   ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.end8.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i = add i8 %74, 1
  %75 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %inc.i.i, ptr %profile_ix.i, align 8
  %steps_right.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %76 = ptrtoint ptr %steps_right.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %steps_right.i.i, align 1
  %inc10.i.i = add i8 %77, 1
  store i8 %inc10.i.i, ptr %steps_right.i.i, align 1
  br label %net_dim_step.exit.thread130.i

sw.bb11.i.i:                                      ; preds = %if.end.i116.i
  %78 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %profile_ix.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp14.i.i = icmp eq i8 %79, 0
  br i1 %cmp14.i.i, label %sw.bb11.i.i.sw.bb20.i_crit_edge, label %if.end17.i.i

sw.bb11.i.i.sw.bb20.i_crit_edge:                  ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.end17.i.i:                                     ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i = add i8 %79, -1
  %80 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %dec.i.i, ptr %profile_ix.i, align 8
  %steps_left.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %81 = ptrtoint ptr %steps_left.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %steps_left.i.i, align 4
  %inc19.i.i = add i8 %82, 1
  store i8 %inc19.i.i, ptr %steps_left.i.i, align 4
  br label %net_dim_step.exit.thread130.i

net_dim_step.exit.thread130.i:                    ; preds = %if.end17.i.i, %if.end8.i.i, %if.end.i116.i.net_dim_step.exit.thread130.i_crit_edge
  %inc21.i.i = add i8 %69, 1
  %83 = ptrtoint ptr %tired.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %inc21.i.i, ptr %tired.i.i, align 1
  br label %if.then29.i

sw.bb20.i:                                        ; preds = %sw.bb11.i.i.sw.bb20.i_crit_edge, %sw.bb3.i.i.sw.bb20.i_crit_edge
  call void @dim_park_on_top(ptr noundef %dim) #7
  br label %if.then29.i

sw.bb21.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dim_park_tired(ptr noundef %dim) #7
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i.i.i, %if.end44.i.i.lor.lhs.false.i_crit_edge, %if.end41.i.i.lor.lhs.false.i_crit_edge, %if.then16.i.i.lor.lhs.false.i_crit_edge, %if.then.i.i.lor.lhs.false.i_crit_edge
  %84 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %.pr.i = load i8, ptr %tune_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp27.not.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp27.not.i, label %lor.lhs.false.i.net_dim_decision.exit_crit_edge, label %lor.lhs.false.i.if.then29.i_crit_edge

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

lor.lhs.false.i.net_dim_decision.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_dim_decision.exit

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %sw.bb21.i, %sw.bb20.i, %net_dim_step.exit.thread130.i, %if.then17.i, %net_dim_exit_parking.exit73.i, %sw.bb5.i.if.then29.i_crit_edge, %if.then.i.if.then29.i_crit_edge, %if.end.if.then29.i_crit_edge
  %prev_stats30.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1
  %85 = call ptr @memcpy(ptr %prev_stats30.i, ptr %curr_stats, i32 20)
  br label %net_dim_decision.exit

net_dim_decision.exit:                            ; preds = %if.then29.i, %lor.lhs.false.i.net_dim_decision.exit_crit_edge
  %86 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %profile_ix.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %16)
  %cmp34.i.not = icmp eq i8 %87, %16
  br i1 %cmp34.i.not, label %net_dim_decision.exit.sw.bb13_crit_edge, label %if.then9

net_dim_decision.exit.sw.bb13_crit_edge:          ; preds = %net_dim_decision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.then9:                                         ; preds = %net_dim_decision.exit
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %dim, align 8
  %work = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %89 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %89, ptr noundef %work) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %net_dim_decision.exit.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge
  %90 = ptrtoint ptr %end_sample.coerce.fca.2.gep to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %end_sample.coerce.fca.2.gep, align 8
  %92 = ptrtoint ptr %end_sample.coerce.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %end_sample.coerce.fca.1.gep, align 8
  %byte_ctr = getelementptr inbounds %struct.dim_sample, ptr %end_sample, i32 0, i32 2
  %94 = ptrtoint ptr %byte_ctr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %byte_ctr, align 4
  %start_sample17 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2
  %call.i = call i64 @ktime_get() #7
  %96 = ptrtoint ptr %start_sample17 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %call.i, ptr %start_sample17, align 8
  %pkt_ctr.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %pkt_ctr.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %93, ptr %pkt_ctr.i, align 8
  %byte_ctr.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %byte_ctr.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %byte_ctr.i, align 4
  %event_ctr2.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 3
  %99 = ptrtoint ptr %event_ctr2.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %91, ptr %event_ctr2.i, align 8
  %100 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %dim, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %if.then9, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %curr_stats) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_calc_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_turn(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dim_on_top(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_park_on_top(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_park_tired(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_net_dim_get_rx_moderation, !1, !"__ksymtab_net_dim_get_rx_moderation", i1 false, i1 false}
!1 = !{!"../lib/dim/net_dim.c", i32 72, i32 1}
!2 = !{ptr @__ksymtab_net_dim_get_def_rx_moderation, !3, !"__ksymtab_net_dim_get_def_rx_moderation", i1 false, i1 false}
!3 = !{!"../lib/dim/net_dim.c", i32 82, i32 1}
!4 = !{ptr @__ksymtab_net_dim_get_tx_moderation, !5, !"__ksymtab_net_dim_get_tx_moderation", i1 false, i1 false}
!5 = !{!"../lib/dim/net_dim.c", i32 92, i32 1}
!6 = !{ptr @__ksymtab_net_dim_get_def_tx_moderation, !7, !"__ksymtab_net_dim_get_def_tx_moderation", i1 false, i1 false}
!7 = !{!"../lib/dim/net_dim.c", i32 102, i32 1}
!8 = !{ptr @__ksymtab_net_dim, !9, !"__ksymtab_net_dim", i1 false, i1 false}
!9 = !{!"../lib/dim/net_dim.c", i32 246, i32 1}
!10 = !{ptr @rx_profile, !11, !"rx_profile", i1 false, i1 false}
!11 = !{!"../lib/dim/net_dim.c", i32 53, i32 1}
!12 = !{ptr @tx_profile, !13, !"tx_profile", i1 false, i1 false}
!13 = !{!"../lib/dim/net_dim.c", i32 59, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"net_dim_get_rx_moderation: %agg.result"}
!25 = distinct !{!25, !"net_dim_get_rx_moderation"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"net_dim_get_tx_moderation: %agg.result"}
!28 = distinct !{!28, !"net_dim_get_tx_moderation"}
