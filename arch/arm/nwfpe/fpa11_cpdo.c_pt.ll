; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/fpa11_cpdo.c_pt.bc'
source_filename = "../arch/arm/nwfpe/fpa11_cpdo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.roundingData = type { i8, i8, i8 }
%struct.floatx80 = type <{ i16, i16, i64 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.tagFPREG = type <{ i64, [4 x i8] }>

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 128, i64 524288]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @EmulateCPDO(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %roundData = alloca %struct.roundingData, align 1
  %tmp = alloca %struct.floatx80, align 4
  %tmp64 = alloca %struct.floatx80, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roundData) #5
  %2 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 1
  %3 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %and.i127 = and i32 %opcode, 524416
  %4 = zext i32 %and.i127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i127, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 128, label %sw.bb1.i
    i32 524288, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge
  %nRc.0.i.ph = phi i32 [ 1, %entry.if.end_crit_edge ], [ 2, %sw.bb1.i ], [ 3, %sw.bb2.i ]
  %call2 = tail call signext i8 @SetRoundingMode(i32 noundef %opcode) #5
  %5 = ptrtoint ptr %roundData to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call2, ptr %roundData, align 1
  %call3 = tail call signext i8 @SetRoundingPrecision(i32 noundef %opcode) #5
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call3, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %and = and i32 %opcode, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fType = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %and6 = lshr i32 %opcode, 16
  %shr = and i32 %and6, 7
  %arrayidx = getelementptr [8 x i8], ptr %fType, i32 0, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %nType.0 = phi i32 [ %conv, %if.else ], [ %nRc.0.i.ph, %if.end.if.end7_crit_edge ]
  %and8 = and i32 %opcode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not, label %if.then11, label %if.end7.if.end23_crit_edge

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %and12 = and i32 %opcode, 7
  %fType13 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx14 = getelementptr [8 x i8], ptr %fType13, i32 0, i32 %and12
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %12 = tail call i32 @llvm.umax.i32(i32 %nType.0, i32 %conv15)
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.end7.if.end23_crit_edge
  %nType.2 = phi i32 [ %nType.0, %if.end7.if.end23_crit_edge ], [ %12, %if.then11 ]
  %and24 = lshr i32 %opcode, 12
  %shr25 = and i32 %and24, 7
  %arrayidx26 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr25
  %13 = zext i32 %nType.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %nType.2, label %if.end23.if.end68_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
    i32 3, label %sw.bb30
  ]

if.end23.if.end68_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @SingleCPDO(ptr noundef nonnull %roundData, i32 noundef %opcode, ptr noundef %arrayidx26) #5
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = call i32 @DoubleCPDO(ptr noundef nonnull %roundData, i32 noundef %opcode, ptr noundef %arrayidx26) #5
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = call i32 @ExtendedCPDO(ptr noundef nonnull %roundData, i32 noundef %opcode, ptr noundef %arrayidx26) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb28, %sw.bb
  %nRc.0 = phi i32 [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nRc.0)
  %cmp32.not = icmp eq i32 %nRc.0, 0
  br i1 %cmp32.not, label %sw.epilog.if.end68_crit_edge, label %if.then34

sw.epilog.if.end68_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then34:                                        ; preds = %sw.epilog
  %conv35 = trunc i32 %nRc.0.i.ph to i8
  %fType36 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx39 = getelementptr [8 x i8], ptr %fType36, i32 0, i32 %shr25
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv35, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %nRc.0.i.ph, i32 %nType.2)
  %cmp40.not = icmp eq i32 %nRc.0.i.ph, %nType.2
  br i1 %cmp40.not, label %if.then34.if.end68_crit_edge, label %if.then42

if.then34.if.end68_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then42:                                        ; preds = %if.then34
  %15 = zext i32 %nRc.0.i.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %nRc.0.i.ph, label %if.then42.if.end68_crit_edge [
    i32 1, label %sw.bb43
    i32 2, label %sw.bb51
    i32 3, label %sw.bb59
  ]

if.then42.if.end68_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

sw.bb43:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nType.2)
  %cmp44 = icmp eq i32 %nType.2, 2
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %arrayidx26, align 4
  %call47 = call i32 @float64_to_float32(ptr noundef nonnull %roundData, i64 noundef %17) #5
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call47, ptr %arrayidx26, align 4
  br label %if.end68

if.else48:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack122 = load i32, ptr %arrayidx26, align 4
  %20 = insertvalue [3 x i32] undef, i32 %.unpack122, 0
  %.elt123 = getelementptr inbounds [3 x i32], ptr %arrayidx26, i32 0, i32 1
  %21 = ptrtoint ptr %.elt123 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack124 = load i32, ptr %.elt123, align 4
  %22 = insertvalue [3 x i32] %20, i32 %.unpack124, 1
  %.elt125 = getelementptr inbounds [3 x i32], ptr %arrayidx26, i32 0, i32 2
  %23 = ptrtoint ptr %.elt125 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack126 = load i32, ptr %.elt125, align 4
  %24 = insertvalue [3 x i32] %22, i32 %.unpack126, 2
  %call49 = call i32 @floatx80_to_float32(ptr noundef nonnull %roundData, [3 x i32] %24) #5
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call49, ptr %arrayidx26, align 4
  br label %if.end68

sw.bb51:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nType.2)
  %cmp52 = icmp eq i32 %nType.2, 1
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx26, align 4
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = call i64 @float32_to_float64(i32 noundef %27) #5
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %call55, ptr %arrayidx26, align 4
  br label %if.end68

if.else56:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  %29 = insertvalue [3 x i32] undef, i32 %27, 0
  %.elt118 = getelementptr inbounds [3 x i32], ptr %arrayidx26, i32 0, i32 1
  %30 = ptrtoint ptr %.elt118 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack119 = load i32, ptr %.elt118, align 4
  %31 = insertvalue [3 x i32] %29, i32 %.unpack119, 1
  %.elt120 = getelementptr inbounds [3 x i32], ptr %arrayidx26, i32 0, i32 2
  %32 = ptrtoint ptr %.elt120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack121 = load i32, ptr %.elt120, align 4
  %33 = insertvalue [3 x i32] %31, i32 %.unpack121, 2
  %call57 = call i64 @floatx80_to_float64(ptr noundef nonnull %roundData, [3 x i32] %33) #5
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %call57, ptr %arrayidx26, align 4
  br label %if.end68

sw.bb59:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nType.2)
  %cmp60 = icmp eq i32 %nType.2, 1
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #5
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx26, align 4
  call void @float32_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp, i32 noundef %36) #5
  %37 = call ptr @memcpy(ptr %arrayidx26, ptr %tmp, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #5
  br label %if.end68

if.else63:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp64) #5
  %38 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %arrayidx26, align 4
  call void @float64_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp64, i64 noundef %39) #5
  %40 = call ptr @memcpy(ptr %arrayidx26, ptr %tmp64, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp64) #5
  br label %if.end68

if.end68:                                         ; preds = %if.else63, %if.then62, %if.else56, %if.then54, %if.else48, %if.then46, %if.then42.if.end68_crit_edge, %if.then34.if.end68_crit_edge, %sw.epilog.if.end68_crit_edge, %if.end23.if.end68_crit_edge
  %nRc.0133 = phi i32 [ %nRc.0, %if.then34.if.end68_crit_edge ], [ %nRc.0, %if.then62 ], [ %nRc.0, %if.else63 ], [ %nRc.0, %if.then54 ], [ %nRc.0, %if.else56 ], [ %nRc.0, %if.then46 ], [ %nRc.0, %if.else48 ], [ %nRc.0, %if.then42.if.end68_crit_edge ], [ 0, %sw.epilog.if.end68_crit_edge ], [ 0, %if.end23.if.end68_crit_edge ]
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %if.end68.cleanup_crit_edge, label %if.then70

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  call void @float_raise(i8 noundef signext %42) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %nRc.0133, %if.then70 ], [ %nRc.0133, %if.end68.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roundData) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @SetRoundingMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @SetRoundingPrecision(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SingleCPDO(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @DoubleCPDO(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ExtendedCPDO(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float64_to_float32(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @floatx80_to_float32(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float32_to_float64(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @floatx80_to_float64(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float32_to_floatx80(ptr sret(%struct.floatx80) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float64_to_floatx80(ptr sret(%struct.floatx80) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float_raise(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
