; ModuleID = '/llk/IR_all_yes/drivers/media/rc/img-ir/img-ir-sony.c_pt.bc'
source_filename = "../drivers/media/rc/img-ir/img-ir-sony.c"
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

@img_ir_sony = dso_local global { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr }, [40 x i8] } { { i64, i32, i32, %struct.img_ir_timings, %struct.img_ir_timings, i32, { i8, i8, [2 x i8] }, ptr, ptr } { i64 448, i32 0, i32 600000, %struct.img_ir_timings { %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 4, i16 0 }, %struct.img_ir_timing_range { i16 1, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 1, i16 0 }, %struct.img_ir_timing_range { i16 1, i16 0 } }, %struct.img_ir_symbol_timing { %struct.img_ir_timing_range { i16 2, i16 0 }, %struct.img_ir_timing_range { i16 1, i16 0 } }, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_symbol_timing zeroinitializer, %struct.img_ir_free_timing { i8 12, i8 20, i16 10 } }, %struct.img_ir_timings zeroinitializer, i32 0, { i8, i8, [2 x i8] } { i8 -128, i8 0, [2 x i8] undef }, ptr @img_ir_sony_scancode, ptr @img_ir_sony_filter }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 15, i64 20]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 9, i64 128, i64 256]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"img_ir_sony\00", align 1
@___asan_gen_.3 = private constant [41 x i8] c"../drivers/media/rc/img-ir/img-ir-sony.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 127, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @img_ir_sony], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_sony to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @img_ir_sony_scancode(i32 noundef %len, i64 noundef %raw, i64 noundef %enabled_protocols, ptr nocapture noundef writeonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 15, label %sw.bb4
    i32 20, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and = and i64 %enabled_protocols, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %1 = trunc i64 %raw to i32
  %2 = lshr i32 %1, 7
  %conv3 = and i32 %2, 31
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %request, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %and5 = and i64 %enabled_protocols, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %4 = trunc i64 %raw to i32
  %5 = lshr i32 %4, 7
  %conv13 = and i32 %5, 255
  %6 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %request, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %and16 = and i64 %enabled_protocols, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %sw.bb15.cleanup_crit_edge, label %if.end19

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  %7 = trunc i64 %raw to i32
  %8 = lshr i32 %7, 7
  %conv24 = and i32 %8, 31
  %9 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %request, align 4
  %10 = lshr i32 %7, 4
  %phi.bo = and i32 %10, 65280
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end19, %if.end8, %if.end
  %dev.0 = phi i32 [ %conv24, %if.end19 ], [ %conv13, %if.end8 ], [ %conv3, %if.end ]
  %subdev.0 = phi i32 [ %phi.bo, %if.end19 ], [ 0, %if.end8 ], [ 0, %if.end ]
  %func.0.in = phi i32 [ %7, %if.end19 ], [ %4, %if.end8 ], [ %1, %if.end ]
  %func.0 = and i32 %func.0.in, 127
  %shl = shl nuw nsw i32 %dev.0, 16
  %or = or i32 %shl, %subdev.0
  %or30 = or i32 %func.0, %or
  %scancode = getelementptr inbounds %struct.img_ir_scancode_req, ptr %request, i32 0, i32 1
  %11 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or30, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb15.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_ir_sony_filter(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, i64 noundef %protocols) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %shr = lshr i32 %1, 16
  %mask = getelementptr inbounds %struct.rc_scancode_filter, ptr %in, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %shr1 = lshr i32 %3, 16
  %and2 = and i32 %shr1, 255
  %shr4 = lshr i32 %1, 8
  %and5 = and i32 %shr4, 255
  %shr7 = lshr i32 %3, 8
  %and8 = and i32 %shr7, 255
  %and11 = and i32 %1, 127
  %and14 = and i32 %3, 127
  %and15 = and i64 %protocols, 448
  %conv = trunc i64 %and15 to i32
  %4 = tail call i32 @llvm.ctpop.i32(i32 %conv) #3, !range !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %and16 = and i32 %and8, %shr4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.then26_crit_edge

if.then.if.then26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then26

if.else:                                          ; preds = %if.then
  %and18 = and i32 %shr, 224
  %and19 = and i32 %and18, %shr1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.if.else37_crit_edge, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.else.if.else37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else37

if.end24:                                         ; preds = %entry
  %trunc = trunc i64 %and15 to i9
  %6 = zext i9 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i9 %trunc, label %if.end24.if.else37_crit_edge [
    i9 -256, label %if.end24.if.then26_crit_edge
    i9 128, label %if.end24.if.end42_crit_edge
  ]

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then26

if.end24.if.else37_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else37

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.then.if.then26_crit_edge
  %and27 = and i32 %shr, 224
  %and28 = and i32 %and27, %shr1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end31:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #5
  %and32 = and i32 %shr1, 31
  br label %if.end42

if.else37:                                        ; preds = %if.end24.if.else37_crit_edge, %if.else.if.else37_crit_edge
  %shr38 = lshr i32 %and2, 5
  %or = or i32 %shr38, 248
  %and39 = and i32 %or, %shr7
  %and40 = and i32 %shr1, 31
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.end31, %if.end24.if.end42_crit_edge, %if.else.if.end42_crit_edge
  %dev_m.0 = phi i32 [ %and32, %if.end31 ], [ %and40, %if.else37 ], [ %and2, %if.end24.if.end42_crit_edge ], [ %and2, %if.else.if.end42_crit_edge ]
  %subdev_m.0 = phi i32 [ %and8, %if.end31 ], [ %and39, %if.else37 ], [ 0, %if.end24.if.end42_crit_edge ], [ 0, %if.else.if.end42_crit_edge ]
  %tobool56.not = phi i1 [ false, %if.end31 ], [ true, %if.else37 ], [ false, %if.end24.if.end42_crit_edge ], [ false, %if.else.if.end42_crit_edge ]
  %len.0 = phi i8 [ 20, %if.end31 ], [ 0, %if.else37 ], [ 15, %if.end24.if.end42_crit_edge ], [ 15, %if.else.if.end42_crit_edge ]
  %and43 = and i32 %dev_m.0, %shr
  %and44 = and i32 %and5, %subdev_m.0
  %shl = shl nuw nsw i32 %and43, 7
  %or45 = or i32 %shl, %and11
  %shl46 = shl nuw nsw i32 %and44, 15
  %or47 = or i32 %or45, %shl46
  %conv48 = zext i32 %or47 to i64
  %7 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv48, ptr %out, align 8
  %shl50 = shl nuw nsw i32 %dev_m.0, 7
  %or51 = or i32 %shl50, %and14
  %shl52 = shl nsw i32 %subdev_m.0, 15
  %or53 = or i32 %or51, %shl52
  %conv54 = zext i32 %or53 to i64
  %mask55 = getelementptr inbounds %struct.img_ir_filter, ptr %out, i32 0, i32 1
  %8 = ptrtoint ptr %mask55 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv54, ptr %mask55, align 8
  br i1 %tobool56.not, label %if.end42.cleanup_crit_edge, label %if.then57

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then57:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  %minlen = getelementptr inbounds %struct.img_ir_filter, ptr %out, i32 0, i32 2
  %9 = ptrtoint ptr %minlen to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %len.0, ptr %minlen, align 8
  %maxlen = getelementptr inbounds %struct.img_ir_filter, ptr %out, i32 0, i32 3
  %10 = ptrtoint ptr %maxlen to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %len.0, ptr %maxlen, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end42.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then26.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @img_ir_sony, !1, !"img_ir_sony", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/img-ir/img-ir-sony.c", i32 127, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 4}
