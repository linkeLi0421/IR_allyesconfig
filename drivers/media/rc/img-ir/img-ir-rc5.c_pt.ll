; ModuleID = '/llk/IR_all_yes/drivers/media/rc/img-ir/img-ir-rc5.c_pt.bc'
source_filename = "../drivers/media/rc/img-ir/img-ir-rc5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.img_ir_timings = type { %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_free_timing }
%struct.img_ir_symbol_timing = type { %struct.img_ir_timing_range, %struct.img_ir_timing_range }
%struct.img_ir_timing_range = type { i16, i16 }
%struct.img_ir_free_timing = type { i8, i8, i16 }
%struct.img_ir_scancode_req = type { i32, i32, i8 }

@img_ir_rc5 = dso_local global { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr }, [40 x i8] } { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr } { i64 4, i32 16, i32 888888, %struct.img_ir_timings { %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 1, i16 0 }, %struct.img_ir_timing_range { i16 1, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 1, i16 0 }, %struct.img_ir_timing_range { i16 1, i16 0 } }, %struct.img_ir_free_timing { i8 14, i8 14, i16 5 } }, %struct.img_ir_timings zeroinitializer, i32 0, { i8, i8, [2 x i8] } { i8 64, i8 96, [2 x i8] undef }, ptr @img_ir_rc5_scancode, ptr @img_ir_rc5_filter }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"img_ir_rc5\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/media/rc/img-ir/img-ir-rc5.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 50, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @img_ir_rc5], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_rc5 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_ir_rc5_scancode(i32 noundef %len, i64 noundef %raw, i64 noundef %enabled_protocols, ptr nocapture noundef writeonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %raw, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool12.not = icmp eq i64 %0, 0
  br i1 %tobool12.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %1 = trunc i64 %raw to i32
  %2 = lshr i32 %1, 2
  %conv9 = and i32 %2, 63
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 64
  %conv7 = and i32 %1, 7936
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %request, align 4
  %6 = or i32 %conv9, %conv7
  %7 = or i32 %6, %4
  %or = xor i32 %7, 64
  %scancode = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %8 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %scancode, align 4
  %9 = lshr i64 %raw, 13
  %10 = trunc i64 %9 to i8
  %conv13 = and i8 %10, 1
  %toggle = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 2
  %11 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv13, ptr %toggle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_ir_rc5_filter(ptr nocapture noundef readnone %in, ptr nocapture noundef readnone %out, i64 noundef %protocols) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @img_ir_rc5, !1, !"img_ir_rc5", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/img-ir/img-ir-rc5.c", i32 50, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
