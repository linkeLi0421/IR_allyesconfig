; ModuleID = '/llk/IR_all_yes/drivers/media/rc/img-ir/img-ir-sanyo.c_pt.bc'
source_filename = "../drivers/media/rc/img-ir/img-ir-sanyo.c"
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

@img_ir_sanyo = dso_local global { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr }, [40 x i8] } { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr } { i64 4096, i32 0, i32 562500, %struct.img_ir_timings { %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 16, i16 0 }, %struct.img_ir_timing_range { i16 8, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 1, i16 0 }, %struct.img_ir_timing_range { i16 1, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 1, i16 0 }, %struct.img_ir_timing_range { i16 3, i16 0 } }, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_free_timing { i8 42, i8 42, i16 10 } }, %struct.img_ir_timings { %struct.img_ir_symbol_timing { %struct.img_ir_timing_range zeroinitializer, %struct.img_ir_timing_range { i16 4, i16 0 } }, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_free_timing zeroinitializer }, i32 108, { i8, i8, [2 x i8] } { i8 -96, i8 0, [2 x i8] undef }, ptr @img_ir_sanyo_scancode, ptr @img_ir_sanyo_filter }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 42]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"img_ir_sanyo\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/media/rc/img-ir/img-ir-sanyo.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 78, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @img_ir_sanyo], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_sanyo to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_ir_sanyo_scancode(i32 noundef %len, i64 noundef %raw, i64 noundef %enabled_protocols, ptr nocapture noundef writeonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %if.then1 [
    i32 0, label %entry.cleanup_crit_edge
    i32 42, label %if.end2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end2:                                          ; preds = %entry
  %1 = trunc i64 %raw to i32
  %conv = and i32 %1, 8191
  %shr6 = lshr i64 %raw, 26
  %2 = trunc i64 %shr6 to i32
  %conv8 = and i32 %2, 255
  %shr9 = lshr i64 %raw, 34
  %3 = trunc i64 %shr9 to i32
  %conv11 = and i32 %3, 255
  %xor = xor i32 %conv11, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %xor)
  %cmp12.not = icmp eq i32 %xor, 255
  br i1 %cmp12.not, label %if.end15, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end15:                                         ; preds = %if.end2
  %4 = lshr i32 %1, 13
  %conv5 = and i32 %4, 8191
  %xor16 = xor i32 %conv5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %xor16)
  %cmp17.not = icmp eq i32 %xor16, 8191
  br i1 %cmp17.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %request, align 4
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv8
  %scancode = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %6 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ 0, %if.end20 ], [ 1, %entry.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_ir_sanyo_filter(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, i64 noundef %protocols) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %and4 = and i32 %1, -9437184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and = and i32 %1, 255
  %xor = xor i32 %and, 255
  %mask = getelementptr inbounds %struct.rc_scancode_filter, ptr %in, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %and2 = and i32 %3, 255
  %shr = lshr i32 %1, 8
  %and6 = and i32 %shr, 8191
  %shr8 = lshr i32 %3, 8
  %and9 = and i32 %shr8, 8191
  %conv = zext i32 %xor to i64
  %shl = shl nuw nsw i64 %conv, 34
  %conv11 = zext i32 %and to i64
  %shl12 = shl nuw nsw i64 %conv11, 26
  %or = or i64 %shl, %shl12
  %xor10 = shl nuw nsw i32 %and6, 13
  %shl13 = xor i32 %xor10, 67100672
  %conv14 = zext i32 %shl13 to i64
  %or15 = or i64 %or, %conv14
  %conv16 = zext i32 %and6 to i64
  %or17 = or i64 %or15, %conv16
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or17, ptr %out, align 8
  %conv19 = zext i32 %and2 to i64
  %or23 = mul nuw nsw i64 %conv19, 17246978048
  %shl24 = shl nuw nsw i32 %and9, 13
  %conv25 = zext i32 %shl24 to i64
  %or26 = or i64 %or23, %conv25
  %conv27 = zext i32 %and9 to i64
  %or28 = or i64 %or26, %conv27
  %mask29 = getelementptr inbounds %struct.img_ir_filter, ptr %out, i32 0, i32 1
  %5 = ptrtoint ptr %mask29 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or28, ptr %mask29, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

!0 = !{ptr @img_ir_sanyo, !1, !"img_ir_sanyo", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/img-ir/img-ir-sanyo.c", i32 78, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
