; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_NFLOG.c_pt.bc'
source_filename = "../net/netfilter/xt_NFLOG.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.nf_loginfo = type { i8, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i16, i16, i16 }
%struct.xt_action_param = type { %union.anon.117, %union.anon.118, ptr, i32, i16, i8 }
%union.anon.117 = type { ptr }
%union.anon.118 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_nflog_info = type { i32, i16, i16, i16, i16, [64 x i8] }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_author354 = internal constant [50 x i8] c"xt_NFLOG.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [68 x i8] c"xt_NFLOG.description=Xtables: packet logging to netlink using NFLOG\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [37 x i8] c"xt_NFLOG.file=net/netfilter/xt_NFLOG\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [21 x i8] c"xt_NFLOG.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [25 x i8] c"xt_NFLOG.alias=ipt_NFLOG\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [26 x i8] c"xt_NFLOG.alias=ip6t_NFLOG\00", section ".modinfo", align 1
@nflog_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NFLOG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @nflog_tg, ptr @nflog_tg_check, ptr @nflog_tg_destroy, ptr null, ptr null, i32 76, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_NFLOG__360_88_nflog_tg_init6 = internal global ptr @nflog_tg_init, section ".initcall6.init", align 4
@__exitcall_nflog_tg_exit = internal global ptr @nflog_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_softdep361 = internal constant [36 x i8] c"xt_NFLOG.softdep=pre: nfnetlink_log\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfnetlink_log\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 37, i32 27 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [28 x i8] c"../net/netfilter/xt_NFLOG.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 54, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__UNIQUE_ID_softdep361, ptr @__exitcall_nflog_tg_exit, ptr @__initcall__kmod_xt_NFLOG__360_88_nflog_tg_init6, ptr @nflog_tg_exit, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nflog_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_target(ptr noundef nonnull @nflog_tg_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nflog_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @nflog_tg_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nflog_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %li = alloca %struct.nf_loginfo, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %li) #4
  %7 = call ptr @memset(ptr %li, i32 255, i32 16)
  %8 = ptrtoint ptr %li to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %li, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %u, align 4
  %group = getelementptr inbounds %struct.xt_nflog_info, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %group, align 4
  %group2 = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %group2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %group2, align 4
  %threshold = getelementptr inbounds %struct.xt_nflog_info, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %threshold to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %threshold, align 2
  %qthreshold = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %qthreshold to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %qthreshold, align 2
  %flags = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1, i32 0, i32 3
  %flags5 = getelementptr inbounds %struct.xt_nflog_info, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags5, align 4
  %20 = and i16 %19, 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %flags, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pf.i, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 4
  %conv.i = zext i8 %25 to i32
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 2
  %26 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 3
  %28 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %out.i, align 4
  %prefix = getelementptr inbounds %struct.xt_nflog_info, ptr %2, i32 0, i32 5
  call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_packet(ptr noundef %6, i8 noundef zeroext %23, i32 noundef %conv.i, ptr noundef %skb, ptr noundef %27, ptr noundef %29, ptr noundef nonnull %li, ptr noundef nonnull @.str, ptr noundef %prefix) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %li) #4
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nflog_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %flags = getelementptr inbounds %struct.xt_nflog_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %tobool.not = icmp ult i16 %3, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.xt_nflog_info, ptr %1, i32 0, i32 5, i32 63
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 4
  %conv5 = zext i8 %7 to i32
  %call = tail call i32 @nf_logger_find_get(i32 noundef %conv5, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %nft_compat = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 7
  %8 = ptrtoint ptr %nft_compat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nft_compat, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %conv12 = zext i8 %11 to i32
  %call13 = tail call i32 @nf_logger_find_get(i32 noundef %conv12, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ %call13, %if.then9 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nflog_tg_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  %conv = zext i8 %1 to i32
  tail call void @nf_logger_put(i32 noundef %conv, i32 noundef 1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_packet(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_logger_find_get(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_logger_put(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_NFLOG.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description355, !3, !"__UNIQUE_ID_description355", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_NFLOG.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file356, !5, !"__UNIQUE_ID_file356", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_NFLOG.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license357, !5, !"__UNIQUE_ID_license357", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_NFLOG.c", i32 17, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_NFLOG.c", i32 18, i32 1}
!11 = !{ptr @__initcall__kmod_xt_NFLOG__360_88_nflog_tg_init6, !12, !"__initcall__kmod_xt_NFLOG__360_88_nflog_tg_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_NFLOG.c", i32 88, i32 1}
!13 = !{ptr @__exitcall_nflog_tg_exit, !14, !"__exitcall_nflog_tg_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_NFLOG.c", i32 89, i32 1}
!15 = !{ptr @__UNIQUE_ID_softdep361, !16, !"__UNIQUE_ID_softdep361", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_NFLOG.c", i32 90, i32 1}
!17 = !{ptr @nflog_tg_reg, !18, !"nflog_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_NFLOG.c", i32 67, i32 25}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_NFLOG.c", i32 37, i32 27}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_NFLOG.c", i32 54, i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
