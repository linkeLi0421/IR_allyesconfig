; ModuleID = '/llk/IR_all_yes/drivers/media/rc/img-ir/img-ir-sharp.c_pt.bc'
source_filename = "../drivers/media/rc/img-ir/img-ir-sharp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.img_ir_timings = type { %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing, %struct.img_ir_free_timing }
%struct.img_ir_symbol_timing = type { %struct.img_ir_timing_range, %struct.img_ir_timing_range }
%struct.img_ir_timing_range = type { i16, i16 }
%struct.img_ir_free_timing = type { i8, i8, i16 }
%struct.img_ir_scancode_req = type { i32, i32, i8 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.img_ir_filter = type { i64, i64, i8, i8 }

@img_ir_sharp = dso_local global { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr }, [40 x i8] } { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr } { i64 1048576, i32 20, i32 0, %struct.img_ir_timings { %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 320, i16 0 }, %struct.img_ir_timing_range { i16 680, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 320, i16 0 }, %struct.img_ir_timing_range { i16 1680, i16 0 } }, %struct.img_ir_free_timing { i8 15, i8 15, i16 5000 } }, %struct.img_ir_timings zeroinitializer, i32 0, { i8, i8, [2 x i8] } { i8 33, i8 64, [2 x i8] undef }, ptr @img_ir_sharp_scancode, ptr @img_ir_sharp_filter }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"img_ir_sharp\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/media/rc/img-ir/img-ir-sharp.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 71, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @img_ir_sharp], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_sharp to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_ir_sharp_scancode(i32 noundef %len, i64 noundef %raw, i64 noundef %enabled_protocols, ptr nocapture noundef writeonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp.not = icmp eq i32 %len, 15
  %0 = and i64 %raw, 24576
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %0)
  %1 = icmp eq i64 %0, 8192
  %or.cond = and i1 %cmp.not, %1
  br i1 %or.cond, label %if.end14, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = trunc i64 %raw to i32
  %3 = lshr i32 %2, 5
  %conv3 = and i32 %3, 255
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20, ptr %request, align 4
  %conv = shl i32 %2, 8
  %shl = and i32 %conv, 7936
  %or = or i32 %shl, %conv3
  %scancode = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %5 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_ir_sharp_filter(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, i64 noundef %protocols) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %mask = getelementptr inbounds %struct.rc_scancode_filter, ptr %in, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %and8 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not.not = icmp eq i32 %and8, 0
  %shr1 = lshr i32 %3, 8
  %and2 = and i32 %shr1, 31
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 31
  %and5 = shl i32 %1, 5
  %shl = and i32 %and5, 8160
  %or = or i32 %and, %shl
  %shl9 = select i1 %tobool.not.not, i32 0, i32 8192
  %or10 = or i32 %or, %shl9
  %conv = zext i32 %or10 to i64
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %out, align 8
  %shl14 = shl nuw nsw i32 %and8, 5
  %or15 = or i32 %and2, %shl14
  %or17 = or i32 %or15, %shl9
  %shl18 = select i1 %tobool.not.not, i32 0, i32 16384
  %or19 = or i32 %or17, %shl18
  %conv20 = zext i32 %or19 to i64
  %mask21 = getelementptr inbounds %struct.img_ir_filter, ptr %out, i32 0, i32 1
  %5 = ptrtoint ptr %mask21 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv20, ptr %mask21, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @img_ir_sharp, !1, !"img_ir_sharp", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/img-ir/img-ir-sharp.c", i32 71, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
