; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_mark.c_pt.bc'
source_filename = "../net/netfilter/xt_mark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_mark_mtinfo1 = type { i32, i32, i8 }
%struct.xt_mark_tginfo2 = type { i32, i32 }

@__UNIQUE_ID_file354 = internal constant [35 x i8] c"xt_mark.file=net/netfilter/xt_mark\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [20 x i8] c"xt_mark.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [43 x i8] c"xt_mark.author=Marc Boucher <marc@mbsi.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [52 x i8] c"xt_mark.description=Xtables: packet mark operations\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [23 x i8] c"xt_mark.alias=ipt_mark\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [24 x i8] c"xt_mark.alias=ip6t_mark\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [23 x i8] c"xt_mark.alias=ipt_MARK\00", section ".modinfo", align 1
@__UNIQUE_ID_alias361 = internal constant [24 x i8] c"xt_mark.alias=ip6t_MARK\00", section ".modinfo", align 1
@__UNIQUE_ID_alias362 = internal constant [24 x i8] c"xt_mark.alias=arpt_MARK\00", section ".modinfo", align 1
@mark_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"mark\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @mark_mt, ptr null, ptr null, ptr null, ptr null, i32 12, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@mark_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"MARK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @mark_tg, ptr null, ptr null, ptr null, ptr null, i32 8, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_mark__363_81_mark_mt_init6 = internal global ptr @mark_mt_init, section ".initcall6.init", align 4
@__exitcall_mark_mt_exit = internal global ptr @mark_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_alias361, ptr @__UNIQUE_ID_alias362, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_mark_mt_exit, ptr @__initcall__kmod_xt_mark__363_81_mark_mt_init6, ptr @mark_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mark_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @mark_mt_reg) #4
  tail call void @xt_unregister_target(ptr noundef nonnull @mark_tg_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mark_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @mark_tg_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_match(ptr noundef nonnull @mark_mt_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_target(ptr noundef nonnull @mark_tg_reg) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mark_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mask = getelementptr inbounds %struct.xt_mark_mtinfo1, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %and = and i32 %7, %5
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp = icmp eq i32 %and, %9
  %invert = getelementptr inbounds %struct.xt_mark_mtinfo1, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %invert, align 4
  %12 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %tobool = icmp ne i8 %11, %12
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mark_tg(ptr nocapture noundef %skb, ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mask = getelementptr inbounds %struct.xt_mark_tginfo2, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %5, %neg
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %xor = xor i32 %and, %9
  store i32 %xor, ptr %3, align 4
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_file354, !1, !"__UNIQUE_ID_file354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_mark.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_license355, !1, !"__UNIQUE_ID_license355", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author356, !4, !"__UNIQUE_ID_author356", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_mark.c", i32 17, i32 1}
!5 = !{ptr @__UNIQUE_ID_description357, !6, !"__UNIQUE_ID_description357", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_mark.c", i32 18, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_mark.c", i32 19, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_mark.c", i32 20, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias360, !12, !"__UNIQUE_ID_alias360", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_mark.c", i32 21, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias361, !14, !"__UNIQUE_ID_alias361", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_mark.c", i32 22, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias362, !16, !"__UNIQUE_ID_alias362", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_mark.c", i32 23, i32 1}
!17 = !{ptr @__initcall__kmod_xt_mark__363_81_mark_mt_init6, !18, !"__initcall__kmod_xt_mark__363_81_mark_mt_init6", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_mark.c", i32 81, i32 1}
!19 = !{ptr @__exitcall_mark_mt_exit, !20, !"__exitcall_mark_mt_exit", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_mark.c", i32 82, i32 1}
!21 = !{ptr @mark_mt_reg, !22, !"mark_mt_reg", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_mark.c", i32 51, i32 24}
!23 = !{ptr @mark_tg_reg, !24, !"mark_tg_reg", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_mark.c", i32 42, i32 25}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
