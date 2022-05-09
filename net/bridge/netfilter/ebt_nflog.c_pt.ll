; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_nflog.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_nflog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.nf_loginfo = type { i8, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i16, i16, i16 }
%struct.xt_action_param = type { %union.anon.144, %union.anon.145, ptr, i32, i16, i8 }
%union.anon.144 = type { ptr }
%union.anon.145 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ebt_nflog_info = type { i32, i16, i16, i16, i16, [64 x i8] }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@ebt_nflog_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"nflog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_nflog_tg, ptr @ebt_nflog_tg_check, ptr null, ptr null, ptr null, i32 76, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_nflog__476_71_ebt_nflog_init6 = internal global ptr @ebt_nflog_init, section ".initcall6.init", align 4
@__exitcall_ebt_nflog_fini = internal global ptr @ebt_nflog_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file477 = internal constant [46 x i8] c"ebt_nflog.file=net/bridge/netfilter/ebt_nflog\00", section ".modinfo", align 1
@__UNIQUE_ID_license478 = internal constant [22 x i8] c"ebt_nflog.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author479 = internal constant [50 x i8] c"ebt_nflog.author=Peter Warasin <peter@endian.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description480 = internal constant [62 x i8] c"ebt_nflog.description=ebtables NFLOG netfilter logging module\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../net/bridge/netfilter/ebt_nflog.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 37, i32 27 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author479, ptr @__UNIQUE_ID_description480, ptr @__UNIQUE_ID_file477, ptr @__UNIQUE_ID_license478, ptr @__exitcall_ebt_nflog_fini, ptr @__initcall__kmod_ebt_nflog__476_71_ebt_nflog_init6, ptr @ebt_nflog_fini, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_nflog_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_target(ptr noundef nonnull @ebt_nflog_tg_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_nflog_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @ebt_nflog_tg_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_nflog_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %li = alloca %struct.nf_loginfo, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %li) #5
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
  %group = getelementptr inbounds %struct.ebt_nflog_info, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %group, align 4
  %group2 = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %group2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %group2, align 4
  %threshold = getelementptr inbounds %struct.ebt_nflog_info, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %threshold to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %threshold, align 2
  %qthreshold = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %qthreshold to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %qthreshold, align 2
  %flags = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %4, align 4
  %conv.i = zext i8 %20 to i32
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 3
  %23 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out.i, align 4
  %prefix = getelementptr inbounds %struct.ebt_nflog_info, ptr %2, i32 0, i32 5
  call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_packet(ptr noundef %6, i8 noundef zeroext 7, i32 noundef %conv.i, ptr noundef %skb, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %li, ptr noundef nonnull @.str, ptr noundef %prefix) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %li) #5
  ret i32 -3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_nflog_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %flags = getelementptr inbounds %struct.ebt_nflog_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.ebt_nflog_info, ptr %1, i32 0, i32 5, i32 63
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_packet(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_ebt_nflog__476_71_ebt_nflog_init6, !1, !"__initcall__kmod_ebt_nflog__476_71_ebt_nflog_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_nflog.c", i32 71, i32 1}
!2 = !{ptr @__exitcall_ebt_nflog_fini, !3, !"__exitcall_ebt_nflog_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_nflog.c", i32 72, i32 1}
!4 = !{ptr @__UNIQUE_ID_file477, !5, !"__UNIQUE_ID_file477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_nflog.c", i32 73, i32 1}
!6 = !{ptr @__UNIQUE_ID_license478, !5, !"__UNIQUE_ID_license478", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author479, !8, !"__UNIQUE_ID_author479", i1 false, i1 false}
!8 = !{!"../net/bridge/netfilter/ebt_nflog.c", i32 74, i32 1}
!9 = !{ptr @__UNIQUE_ID_description480, !10, !"__UNIQUE_ID_description480", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_nflog.c", i32 75, i32 1}
!11 = !{ptr @ebt_nflog_tg_reg, !12, !"ebt_nflog_tg_reg", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebt_nflog.c", i32 51, i32 25}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bridge/netfilter/ebt_nflog.c", i32 37, i32 27}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
