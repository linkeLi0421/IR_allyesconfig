; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/sdrc.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/sdrc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_sdrc_params = type { i32, i32, i32, i32, i32 }

@sms_context.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sdrc_init_params_cs0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sdrc_init_params_cs1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_sdrc_base = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_sms_base = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"sms_context.0\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"sdrc_init_params_cs0\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 27, i32 33 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"sdrc_init_params_cs1\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 27, i32 56 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"omap2_sdrc_base\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 29, i32 15 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"omap2_sms_base\00", align 1
@___asan_gen_.12 = private constant [30 x i8] c"../arch/arm/mach-omap2/sdrc.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 30, i32 15 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @sms_context.0, ptr @sdrc_init_params_cs0, ptr @sdrc_init_params_cs1, ptr @omap2_sdrc_base, ptr @omap2_sms_base], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sms_context.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdrc_init_params_cs0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdrc_init_params_cs1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_sdrc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_sms_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_sms_save_context() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap2_sms_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  store i32 %2, ptr @sms_context.0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_sms_restore_context() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sms_context.0, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #5
  %2 = load ptr, ptr @omap2_sms_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #5, !srcloc !20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_sdrc_get_params(i32 noundef %r, ptr nocapture noundef writeonly %sdrc_cs0, ptr nocapture noundef writeonly %sdrc_cs1) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sdrc_init_params_cs0, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @sdrc_init_params_cs1, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not18 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %r)
  %cmp.not19 = icmp eq i32 %3, %r
  %or.cond20 = or i1 %tobool1.not18, %cmp.not19
  br i1 %or.cond20, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %tobool3.not = icmp ne ptr %1, null
  %spec.select.idx = zext i1 %tobool3.not to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %sp1.022 = phi ptr [ %1, %while.body.lr.ph ], [ %spec.select, %while.body.while.body_crit_edge ]
  %sp0.021 = phi ptr [ %0, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.omap_sdrc_params, ptr %sp0.021, i32 1
  %spec.select = getelementptr %struct.omap_sdrc_params, ptr %sp1.022, i32 %spec.select.idx
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %r)
  %cmp.not = icmp eq i32 %5, %r
  %or.cond = or i1 %tobool1.not, %cmp.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %sp0.0.lcssa = phi ptr [ %0, %if.end.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %sp1.0.lcssa = phi ptr [ %1, %if.end.while.end_crit_edge ], [ %spec.select, %while.body.while.end_crit_edge ]
  %tobool1.not.lcssa = phi i1 [ %tobool1.not18, %if.end.while.end_crit_edge ], [ %tobool1.not, %while.body.while.end_crit_edge ]
  br i1 %tobool1.not.lcssa, label %while.end.cleanup_crit_edge, label %if.end10

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sdrc_cs0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sp0.0.lcssa, ptr %sdrc_cs0, align 4
  %7 = ptrtoint ptr %sdrc_cs1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sp1.0.lcssa, ptr %sdrc_cs1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap2_set_globals_sdrc(ptr noundef %sdrc, ptr noundef %sms) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %sdrc, ptr @omap2_sdrc_base, align 4
  store ptr %sms, ptr @omap2_sms_base, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_sdrc_init(ptr noundef %sdrc_cs0, ptr noundef %sdrc_cs1) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap2_sms_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  %2 = and i32 %1, -402653185
  %3 = or i32 %2, 268435456
  %4 = load ptr, ptr @omap2_sms_base, align 4
  %add.ptr.i10 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %3) #5, !srcloc !20
  %5 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !19
  %7 = and i32 %6, -402653185
  %8 = or i32 %7, 268435456
  %9 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %8) #5, !srcloc !20
  store ptr %sdrc_cs0, ptr @sdrc_init_params_cs0, align 4
  store ptr %sdrc_cs1, ptr @sdrc_init_params_cs1, align 4
  %10 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i13 = getelementptr i8, ptr %10, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 150994944) #5, !srcloc !20
  %11 = load ptr, ptr @omap2_sms_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !19
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  store i32 %13, ptr @sms_context.0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @sdrc_init_params_cs0, !1, !"sdrc_init_params_cs0", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/sdrc.c", i32 27, i32 33}
!2 = !{ptr @sdrc_init_params_cs1, !3, !"sdrc_init_params_cs1", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/sdrc.c", i32 27, i32 56}
!4 = !{ptr @omap2_sdrc_base, !5, !"omap2_sdrc_base", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/sdrc.c", i32 29, i32 15}
!6 = !{ptr @omap2_sms_base, !7, !"omap2_sms_base", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/sdrc.c", i32 30, i32 15}
!8 = distinct !{null, !9, !"sms_context", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/sdrc.c", i32 36, i32 30}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 4812349}
!20 = !{i64 4811931}
