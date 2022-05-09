; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_TRACE.c_pt.bc'
source_filename = "../net/netfilter/xt_TRACE.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_description354 = internal constant [50 x i8] c"xt_TRACE.description=Xtables: packet flow tracing\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [37 x i8] c"xt_TRACE.file=net/netfilter/xt_TRACE\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [21 x i8] c"xt_TRACE.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias357 = internal constant [25 x i8] c"xt_TRACE.alias=ipt_TRACE\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [26 x i8] c"xt_TRACE.alias=ip6t_TRACE\00", section ".modinfo", align 1
@trace_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TRACE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @trace_tg, ptr @trace_tg_check, ptr @trace_tg_destroy, ptr null, ptr @.str, i32 0, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_TRACE__359_53_trace_tg_init6 = internal global ptr @trace_tg_init, section ".initcall6.init", align 4
@__exitcall_trace_tg_exit = internal global ptr @trace_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_softdep360 = internal constant [36 x i8] c"xt_TRACE.softdep=pre: nf_log_syslog\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [28 x i8] c"../net/netfilter/xt_TRACE.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 36, i32 12 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias357, ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__UNIQUE_ID_softdep360, ptr @__exitcall_trace_tg_exit, ptr @__initcall__kmod_xt_TRACE__359_53_trace_tg_init6, ptr @trace_tg_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @trace_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_target(ptr noundef nonnull @trace_tg_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @trace_tg_reg) #4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @trace_tg(ptr nocapture noundef %skb, ptr nocapture noundef readnone %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_trace = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %nf_trace to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %nf_trace, align 8
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %nf_trace, align 8
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 @nf_logger_find_get(i32 noundef %conv, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_tg_destroy(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  %conv = zext i8 %1 to i32
  tail call void @nf_logger_put(i32 noundef %conv, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_logger_find_get(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_logger_put(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_description354, !1, !"__UNIQUE_ID_description354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_TRACE.c", i32 10, i32 1}
!2 = !{ptr @__UNIQUE_ID_file355, !3, !"__UNIQUE_ID_file355", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_TRACE.c", i32 11, i32 1}
!4 = !{ptr @__UNIQUE_ID_license356, !3, !"__UNIQUE_ID_license356", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias357, !6, !"__UNIQUE_ID_alias357", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_TRACE.c", i32 12, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_TRACE.c", i32 13, i32 1}
!9 = !{ptr @__initcall__kmod_xt_TRACE__359_53_trace_tg_init6, !10, !"__initcall__kmod_xt_TRACE__359_53_trace_tg_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_TRACE.c", i32 53, i32 1}
!11 = !{ptr @__exitcall_trace_tg_exit, !12, !"__exitcall_trace_tg_exit", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_TRACE.c", i32 54, i32 1}
!13 = !{ptr @__UNIQUE_ID_softdep360, !14, !"__UNIQUE_ID_softdep360", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_TRACE.c", i32 55, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_TRACE.c", i32 36, i32 12}
!17 = !{ptr @trace_tg_reg, !18, !"trace_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_TRACE.c", i32 32, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
