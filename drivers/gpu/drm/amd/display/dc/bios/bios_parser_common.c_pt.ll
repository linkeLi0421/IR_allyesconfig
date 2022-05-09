; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/bios_parser_common.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@encoder_id_from_bios_object_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser_common.c\00", [61 x i8] zeroinitializer }, align 32
@switch.table.object_id_from_bios_object_id = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 1, i32 1, i32 5], [36 x i8] zeroinitializer }, align 32
@switch.table.object_id_from_bios_object_id.1 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 16777216, i32 33554432, i32 50331648, i32 67108864, i32 83886080, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 201326592, i32 0, i32 234881024, i32 0, i32 268435456, i32 0, i32 301989888, i32 318767104, i32 335544320, i32 352321536], [44 x i8] zeroinitializer }, align 32
@switch.table.object_id_from_bios_object_id.2 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33554432, i32 0, i32 16777216, i32 50331648], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.3 = internal global [21 x i64] [i64 19, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 15, i64 18, i64 19, i64 21, i64 22, i64 24, i64 25, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 37]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [70 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser_common.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 165, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant [43 x i8] c"switch.table.object_id_from_bios_object_id\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [45 x i8] c"switch.table.object_id_from_bios_object_id.1\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [45 x i8] c"switch.table.object_id_from_bios_object_id.2\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @switch.table.object_id_from_bios_object_id, ptr @switch.table.object_id_from_bios_object_id.1, ptr @switch.table.object_id_from_bios_object_id.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.object_id_from_bios_object_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.object_id_from_bios_object_id.1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.object_id_from_bios_object_id.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @object_id_from_bios_object_id(i32 noundef %bios_object_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = lshr i32 %bios_object_id, 12
  %shr.i = and i32 %and.i, 7
  %switch.tableidx = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 7
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.object_id_from_bios_object_id, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and.i14 = lshr i32 %bios_object_id, 8
  %shr.i15 = and i32 %and.i14, 7
  %shr.i15.off = add nsw i32 %shr.i15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i15.off)
  %switch = icmp ult i32 %shr.i15.off, 7
  br i1 %switch, label %if.end4, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %switch.lookup
  %3 = zext i32 %switch.load to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %switch.load, label %if.end4.id_from_bios_object_id.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i21
    i32 3, label %sw.bb3.i22
    i32 5, label %sw.bb5.i23
  ]

if.end4.id_from_bios_object_id.exit_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  %phi.bo = shl i32 %bios_object_id, 24
  br label %id_from_bios_object_id.exit

sw.bb1.i21:                                       ; preds = %if.end4
  %trunc.i.i = trunc i32 %bios_object_id to i8
  %4 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %trunc.i.i, label %land.end.i.i [
    i8 1, label %sw.bb1.i21.id_from_bios_object_id.exit_crit_edge
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb2.i.i
    i8 4, label %sw.bb3.i.i
    i8 5, label %sw.bb4.i.i
    i8 15, label %sw.bb5.i.i
    i8 18, label %sw.bb6.i.i
    i8 19, label %sw.bb7.i.i
    i8 21, label %sw.bb8.i.i
    i8 22, label %sw.bb9.i.i
    i8 24, label %sw.bb10.i.i
    i8 25, label %sw.bb11.i.i
    i8 30, label %sw.bb12.i.i
    i8 31, label %sw.bb13.i.i
    i8 32, label %sw.bb14.i.i
    i8 33, label %sw.bb15.i.i
    i8 34, label %sw.bb16.i.i
    i8 35, label %sw.bb17.i.i
    i8 37, label %sw.bb18.i.i
  ]

sw.bb1.i21.id_from_bios_object_id.exit_crit_edge: ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb1.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb2.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb3.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb4.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb5.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb6.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb7.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb8.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb9.i.i:                                       ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb10.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb11.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb12.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb13.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb14.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb15.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb16.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb17.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb18.i.i:                                      ; preds = %sw.bb1.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

land.end.i.i:                                     ; preds = %sw.bb1.i21
  %.b59.i.i = load i1, ptr @encoder_id_from_bios_object_id.__already_done, align 1
  br i1 %.b59.i.i, label %land.end.i.i.if.then53.i.i_crit_edge, label %if.then.i.i, !prof !12

land.end.i.i.if.then53.i.i_crit_edge:             ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53.i.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @encoder_id_from_bios_object_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #2
  br label %if.then53.i.i

if.then53.i.i:                                    ; preds = %if.then.i.i, %land.end.i.i.if.then53.i.i_crit_edge
  tail call void @kgdb_breakpoint() #2
  br label %id_from_bios_object_id.exit

sw.bb3.i22:                                       ; preds = %if.end4
  %trunc.i10.i = trunc i32 %bios_object_id to i8
  %switch.tableidx31 = add i8 %trunc.i10.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %switch.tableidx31)
  %5 = icmp ult i8 %switch.tableidx31, 21
  br i1 %5, label %switch.lookup30, label %sw.bb3.i22.id_from_bios_object_id.exit_crit_edge

sw.bb3.i22.id_from_bios_object_id.exit_crit_edge: ; preds = %sw.bb3.i22
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

sw.bb5.i23:                                       ; preds = %if.end4
  %trunc.i23.i = trunc i32 %bios_object_id to i8
  %switch.tableidx35 = add i8 %trunc.i23.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx35)
  %6 = icmp ult i8 %switch.tableidx35, 4
  br i1 %6, label %switch.lookup34, label %sw.bb5.i23.id_from_bios_object_id.exit_crit_edge

sw.bb5.i23.id_from_bios_object_id.exit_crit_edge: ; preds = %sw.bb5.i23
  call void @__sanitizer_cov_trace_pc() #4
  br label %id_from_bios_object_id.exit

switch.lookup30:                                  ; preds = %sw.bb3.i22
  call void @__sanitizer_cov_trace_pc() #4
  %7 = sext i8 %switch.tableidx31 to i32
  %switch.gep32 = getelementptr inbounds [21 x i32], ptr @switch.table.object_id_from_bios_object_id.1, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load33 = load i32, ptr %switch.gep32, align 4
  br label %id_from_bios_object_id.exit

switch.lookup34:                                  ; preds = %sw.bb5.i23
  call void @__sanitizer_cov_trace_pc() #4
  %9 = sext i8 %switch.tableidx35 to i32
  %switch.gep36 = getelementptr inbounds [4 x i32], ptr @switch.table.object_id_from_bios_object_id.2, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load37 = load i32, ptr %switch.gep36, align 4
  br label %id_from_bios_object_id.exit

id_from_bios_object_id.exit:                      ; preds = %switch.lookup34, %switch.lookup30, %sw.bb5.i23.id_from_bios_object_id.exit_crit_edge, %sw.bb3.i22.id_from_bios_object_id.exit_crit_edge, %if.then53.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb1.i21.id_from_bios_object_id.exit_crit_edge, %sw.bb.i, %if.end4.id_from_bios_object_id.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %sw.bb.i ], [ 0, %if.end4.id_from_bios_object_id.exit_crit_edge ], [ 0, %if.then53.i.i ], [ 335544320, %sw.bb18.i.i ], [ 301989888, %sw.bb17.i.i ], [ 285212672, %sw.bb16.i.i ], [ 268435456, %sw.bb15.i.i ], [ 251658240, %sw.bb14.i.i ], [ 234881024, %sw.bb13.i.i ], [ 218103808, %sw.bb12.i.i ], [ 201326592, %sw.bb11.i.i ], [ 184549376, %sw.bb10.i.i ], [ 167772160, %sw.bb9.i.i ], [ 150994944, %sw.bb8.i.i ], [ 134217728, %sw.bb7.i.i ], [ 117440512, %sw.bb6.i.i ], [ 100663296, %sw.bb5.i.i ], [ 83886080, %sw.bb4.i.i ], [ 67108864, %sw.bb3.i.i ], [ 50331648, %sw.bb2.i.i ], [ 33554432, %sw.bb1.i.i ], [ 16777216, %sw.bb1.i21.id_from_bios_object_id.exit_crit_edge ], [ %switch.load33, %switch.lookup30 ], [ 0, %sw.bb3.i22.id_from_bios_object_id.exit_crit_edge ], [ %switch.load37, %switch.lookup34 ], [ 0, %sw.bb5.i23.id_from_bios_object_id.exit_crit_edge ]
  %bf.value2.i = shl nuw nsw i32 %shr.i15, 20
  %bf.set.i = or i32 %retval.0.i, %bf.value2.i
  %bf.value7.i = shl nuw nsw i32 %switch.load, 16
  %bf.set5.i = or i32 %bf.set.i, %bf.value7.i
  br label %cleanup

cleanup:                                          ; preds = %id_from_bios_object_id.exit, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.sroa.0.0 = phi i32 [ %bf.set5.i, %id_from_bios_object_id.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.sroa.0.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser_common.c", i32 165, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
