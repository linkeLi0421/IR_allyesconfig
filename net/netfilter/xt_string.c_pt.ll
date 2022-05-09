; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_string.c_pt.bc'
source_filename = "../net/netfilter/xt_string.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_string_info = type { i16, i16, [16 x i8], [128 x i8], i8, %union.anon.120, ptr, [4 x i8] }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_author354 = internal constant [55 x i8] c"xt_string.author=Pablo Neira Ayuso <pablo@eurodev.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [53 x i8] c"xt_string.description=Xtables: string-based matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [39 x i8] c"xt_string.file=net/netfilter/xt_string\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [22 x i8] c"xt_string.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [27 x i8] c"xt_string.alias=ipt_string\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [28 x i8] c"xt_string.alias=ip6t_string\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [27 x i8] c"xt_string.alias=ebt_string\00", section ".modinfo", align 1
@xt_string_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @string_mt, ptr @string_mt_check, ptr @string_mt_destroy, ptr null, ptr null, i32 160, i32 152, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_string__361_92_string_mt_init6 = internal global ptr @string_mt_init, section ".initcall6.init", align 4
@__exitcall_string_mt_exit = internal global ptr @string_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_string_mt_exit, ptr @__initcall__kmod_xt_string__361_92_string_mt_init6, ptr @string_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @string_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_string_mt_reg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @string_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @xt_string_mt_reg) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @string_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %u = getelementptr inbounds %struct.xt_string_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %u, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %2, align 8
  %conv1 = zext i16 %6 to i32
  %to_offset = getelementptr inbounds %struct.xt_string_info, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %to_offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %to_offset, align 2
  %conv2 = zext i16 %8 to i32
  %config = getelementptr inbounds %struct.xt_string_info, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 8
  %call = tail call i32 @skb_find_text(ptr noundef %skb, i32 noundef %conv1, i32 noundef %conv2, ptr noundef %10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp ne i32 %call, -1
  %11 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %12 = icmp ne i8 %11, 0
  %tobool6 = xor i1 %12, %cmp
  ret i1 %tobool6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @string_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %to_offset = getelementptr inbounds %struct.xt_string_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %to_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %to_offset, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp ugt i16 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %algo = getelementptr inbounds %struct.xt_string_info, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr %struct.xt_string_info, ptr %1, i32 0, i32 2, i32 15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4.not = icmp eq i8 %7, 0
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %patlen = getelementptr inbounds %struct.xt_string_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %patlen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %patlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %9)
  %cmp9 = icmp ugt i8 %9, -128
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %u = getelementptr inbounds %struct.xt_string_info, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %u, align 1
  %conv14 = zext i8 %11 to i32
  %and = and i32 %conv14, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %and20 = and i32 %conv14, 2
  %12 = or i32 %and20, 1
  %pattern = getelementptr inbounds %struct.xt_string_info, ptr %1, i32 0, i32 3
  %conv27 = zext i8 %9 to i32
  %call = tail call ptr @textsearch_prepare(ptr noundef %algo, ptr noundef %pattern, i32 noundef %conv27, i32 noundef 3264, i32 noundef %12) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %call to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %config = getelementptr inbounds %struct.xt_string_info, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %config, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then29, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then29 ], [ 0, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @string_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %config = getelementptr inbounds %struct.xt_string_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  tail call void @textsearch_destroy(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_find_text(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @textsearch_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @textsearch_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_string.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description355, !3, !"__UNIQUE_ID_description355", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_string.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file356, !5, !"__UNIQUE_ID_file356", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_string.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license357, !5, !"__UNIQUE_ID_license357", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_string.c", i32 19, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_string.c", i32 20, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias360, !12, !"__UNIQUE_ID_alias360", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_string.c", i32 21, i32 1}
!13 = !{ptr @__initcall__kmod_xt_string__361_92_string_mt_init6, !14, !"__initcall__kmod_xt_string__361_92_string_mt_init6", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_string.c", i32 92, i32 1}
!15 = !{ptr @__exitcall_string_mt_exit, !16, !"__exitcall_string_mt_exit", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_string.c", i32 93, i32 1}
!17 = !{ptr @xt_string_mt_reg, !18, !"xt_string_mt_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_string.c", i32 70, i32 24}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
