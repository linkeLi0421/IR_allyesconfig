; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_CLASSIFY.c_pt.bc'
source_filename = "../net/netfilter/xt_CLASSIFY.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
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

@__UNIQUE_ID_author618 = internal constant [53 x i8] c"xt_CLASSIFY.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file619 = internal constant [43 x i8] c"xt_CLASSIFY.file=net/netfilter/xt_CLASSIFY\00", section ".modinfo", align 1
@__UNIQUE_ID_license620 = internal constant [24 x i8] c"xt_CLASSIFY.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [54 x i8] c"xt_CLASSIFY.description=Xtables: Qdisc classification\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [31 x i8] c"xt_CLASSIFY.alias=ipt_CLASSIFY\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [32 x i8] c"xt_CLASSIFY.alias=ip6t_CLASSIFY\00", section ".modinfo", align 1
@__UNIQUE_ID_alias624 = internal constant [32 x i8] c"xt_CLASSIFY.alias=arpt_CLASSIFY\00", section ".modinfo", align 1
@classify_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CLASSIFY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @classify_tg, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 28, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CLASSIFY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @classify_tg, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 6, i16 0, i16 3 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_CLASSIFY__625_69_classify_tg_init6 = internal global ptr @classify_tg_init, section ".initcall6.init", align 4
@__exitcall_classify_tg_exit = internal global ptr @classify_tg_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_alias624, ptr @__UNIQUE_ID_author618, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file619, ptr @__UNIQUE_ID_license620, ptr @__exitcall_classify_tg_exit, ptr @__initcall__kmod_xt_CLASSIFY__625_69_classify_tg_init6, ptr @classify_tg_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @classify_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_targets(ptr noundef nonnull @classify_tg_reg, i32 noundef 2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @classify_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @classify_tg_reg, i32 noundef 2) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @classify_tg(ptr nocapture noundef writeonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %priority1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %priority1, align 4
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_author618, !1, !"__UNIQUE_ID_author618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_file619, !3, !"__UNIQUE_ID_file619", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license620, !3, !"__UNIQUE_ID_license620", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 24, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 25, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias624, !12, !"__UNIQUE_ID_alias624", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 26, i32 1}
!13 = !{ptr @__initcall__kmod_xt_CLASSIFY__625_69_classify_tg_init6, !14, !"__initcall__kmod_xt_CLASSIFY__625_69_classify_tg_init6", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 69, i32 1}
!15 = !{ptr @__exitcall_classify_tg_exit, !16, !"__exitcall_classify_tg_exit", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 70, i32 1}
!17 = !{ptr @classify_tg_reg, !18, !"classify_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_CLASSIFY.c", i32 37, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
