; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/fpa11_cprt.c_pt.bc'
source_filename = "../arch/arm/nwfpe/fpa11_cprt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.floatx80 = type <{ i16, i16, i64 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.tagFPREG = type <{ i64, [4 x i8] }>
%struct.pt_regs = type { [18 x i32] }
%struct.roundingData = type { i8, i8, i8 }

@floatx80Constant = external dso_local local_unnamed_addr constant [0 x %struct.floatx80], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 128, i64 524288]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @EmulateCPRT(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.floatx80, align 4
  %tmp15.i = alloca %struct.floatx80, align 4
  %tmp45.i = alloca %struct.floatx80, align 4
  %tmp55.i = alloca %struct.floatx80, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %opcode, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %fpstate.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  %and.i = lshr i32 %opcode, 16
  %shr.i = and i32 %and.i, 7
  %and1.i = and i32 %opcode, 7
  %and2.i = and i32 %opcode, 4194304
  %and3.i = and i32 %opcode, 2097152
  %fType.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx.i = getelementptr [8 x i8], ptr %fType.i, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.then.return_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb8.i
    i8 3, label %sw.bb18.i
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb.i:                                          ; preds = %if.then
  %arrayidx4.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %shr.i
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.i, align 4
  %call5.i = tail call zeroext i8 @float32_is_nan(i32 noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5.i)
  %tobool.not.i = icmp eq i8 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.unordered.i_crit_edge

sw.bb.i.unordered.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unordered.i

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp.i) #4
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  call void @float32_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp.i, i32 noundef %8) #4
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %rFn.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  %rFn.sroa.10.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 4
  %10 = ptrtoint ptr %rFn.sroa.10.0.tmp.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %rFn.sroa.10.0.copyload.i = load i64, ptr %rFn.sroa.10.0.tmp.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp.i) #4
  %extract.t42 = trunc i64 %rFn.sroa.10.0.copyload.i to i32
  %extract47 = lshr i64 %rFn.sroa.10.0.copyload.i, 32
  %extract.t48 = trunc i64 %extract47 to i32
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then
  %arrayidx10.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %shr.i
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %arrayidx10.i, align 4
  %call11.i = tail call zeroext i8 @float64_is_nan(i64 noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call11.i)
  %tobool12.not.i = icmp eq i8 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %sw.bb8.i.unordered.i_crit_edge

sw.bb8.i.unordered.i_crit_edge:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unordered.i

if.end14.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp15.i) #4
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx10.i, align 4
  call void @float64_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp15.i, i64 noundef %14) #4
  %15 = ptrtoint ptr %tmp15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %rFn.sroa.0.0.copyload207.i = load i32, ptr %tmp15.i, align 4
  %rFn.sroa.10.0.tmp15.sroa_idx.i = getelementptr inbounds i8, ptr %tmp15.i, i32 4
  %16 = ptrtoint ptr %rFn.sroa.10.0.tmp15.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %rFn.sroa.10.0.copyload209.i = load i64, ptr %rFn.sroa.10.0.tmp15.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp15.i) #4
  %extract.t41 = trunc i64 %rFn.sroa.10.0.copyload209.i to i32
  %extract45 = lshr i64 %rFn.sroa.10.0.copyload209.i, 32
  %extract.t46 = trunc i64 %extract45 to i32
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.then
  %arrayidx20.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %arrayidx20.i, align 4
  %18 = insertvalue [3 x i32] undef, i32 %.unpack.i, 0
  %.elt278.i = getelementptr inbounds [3 x i32], ptr %arrayidx20.i, i32 0, i32 1
  %19 = ptrtoint ptr %.elt278.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack279.i = load i32, ptr %.elt278.i, align 4
  %20 = insertvalue [3 x i32] %18, i32 %.unpack279.i, 1
  %.elt280.i = getelementptr inbounds [3 x i32], ptr %arrayidx20.i, i32 0, i32 2
  %21 = ptrtoint ptr %.elt280.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack281.i = load i32, ptr %.elt280.i, align 4
  %22 = insertvalue [3 x i32] %20, i32 %.unpack281.i, 2
  %call21.i = tail call zeroext i8 @floatx80_is_nan([3 x i32] %22) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call21.i)
  %tobool22.not.i = icmp eq i8 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %sw.bb18.i.unordered.i_crit_edge

sw.bb18.i.unordered.i_crit_edge:                  ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unordered.i

if.end24.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %rFn.sroa.0.0.copyload208.i = load i32, ptr %arrayidx20.i, align 4
  %24 = ptrtoint ptr %.elt278.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %rFn.sroa.10.0.copyload210.i = load i64, ptr %.elt278.i, align 4
  %extract.t40 = trunc i64 %rFn.sroa.10.0.copyload210.i to i32
  %extract43 = lshr i64 %rFn.sroa.10.0.copyload210.i, 32
  %extract.t44 = trunc i64 %extract43 to i32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end24.i, %if.end14.i, %if.end.i
  %rFn.sroa.10.0.copyload210.i.sink39.off0 = phi i32 [ %extract.t40, %if.end24.i ], [ %extract.t41, %if.end14.i ], [ %extract.t42, %if.end.i ]
  %rFn.sroa.10.0.copyload210.i.sink39.off32 = phi i32 [ %extract.t44, %if.end24.i ], [ %extract.t46, %if.end14.i ], [ %extract.t48, %if.end.i ]
  %rFn.sroa.0.sroa.9.0.in.i = phi i32 [ %rFn.sroa.0.0.copyload208.i, %if.end24.i ], [ %rFn.sroa.0.0.copyload207.i, %if.end14.i ], [ %rFn.sroa.0.0.copyload.i, %if.end.i ]
  %and27.i = and i32 %opcode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp.not.i = icmp eq i32 %and27.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %sw.epilog.i
  %arrayidx.i.i = getelementptr [0 x %struct.floatx80], ptr @floatx80Constant, i32 0, i32 %and1.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %tmp30.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i.i, align 4
  %tmp30.sroa.4.0.arrayidx.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 4
  %26 = ptrtoint ptr %tmp30.sroa.4.0.arrayidx.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %tmp30.sroa.4.0.copyload.i = load i64, ptr %tmp30.sroa.4.0.arrayidx.i.sroa_idx.i, align 4
  %.fca.0.insert.i = insertvalue [3 x i32] poison, i32 %tmp30.sroa.0.0.copyload.i, 0
  %rFm.sroa.14.4.extract.shift.i = lshr i64 %tmp30.sroa.4.0.copyload.i, 32
  %rFm.sroa.14.4.extract.trunc.i = trunc i64 %rFm.sroa.14.4.extract.shift.i to i32
  %.fca.1.insert.i = insertvalue [3 x i32] %.fca.0.insert.i, i32 %rFm.sroa.14.4.extract.trunc.i, 1
  %rFm.sroa.14.8.extract.trunc.i = trunc i64 %tmp30.sroa.4.0.copyload.i to i32
  %.fca.2.insert.i = insertvalue [3 x i32] %.fca.1.insert.i, i32 %rFm.sroa.14.8.extract.trunc.i, 2
  %call31.i = call zeroext i8 @floatx80_is_nan([3 x i32] %.fca.2.insert.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call31.i)
  %tobool32.not.i = icmp eq i8 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then29.i.if.end69.i_crit_edge, label %if.then29.i.unordered.i_crit_edge

if.then29.i.unordered.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unordered.i

if.then29.i.if.end69.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

if.else.i:                                        ; preds = %sw.epilog.i
  %arrayidx36.i = getelementptr [8 x i8], ptr %fType.i, i32 0, i32 %and1.i
  %27 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx36.i, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %28, label %if.else.i.return_crit_edge [
    i8 1, label %sw.bb38.i
    i8 2, label %sw.bb48.i
    i8 3, label %sw.bb58.i
  ]

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb38.i:                                        ; preds = %if.else.i
  %arrayidx40.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %and1.i
  %30 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx40.i, align 4
  %call41.i = call zeroext i8 @float32_is_nan(i32 noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call41.i)
  %tobool42.not.i = icmp eq i8 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %sw.bb38.i.unordered.i_crit_edge

sw.bb38.i.unordered.i_crit_edge:                  ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unordered.i

if.end44.i:                                       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp45.i) #4
  %32 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx40.i, align 4
  call void @float32_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp45.i, i32 noundef %33) #4
  %34 = ptrtoint ptr %tmp45.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %rFm.sroa.0.0.copyload134.i = load i32, ptr %tmp45.i, align 4
  %rFm.sroa.14.0.tmp45.sroa_idx.i = getelementptr inbounds i8, ptr %tmp45.i, i32 4
  %35 = ptrtoint ptr %rFm.sroa.14.0.tmp45.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %rFm.sroa.14.0.copyload138.i = load i64, ptr %rFm.sroa.14.0.tmp45.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp45.i) #4
  %extract.t297.i = trunc i64 %rFm.sroa.14.0.copyload138.i to i32
  %extract304.i = lshr i64 %rFm.sroa.14.0.copyload138.i, 32
  %extract.t305.i = trunc i64 %extract304.i to i32
  br label %if.end69.i

sw.bb48.i:                                        ; preds = %if.else.i
  %arrayidx50.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %and1.i
  %36 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %arrayidx50.i, align 4
  %call51.i = call zeroext i8 @float64_is_nan(i64 noundef %37) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call51.i)
  %tobool52.not.i = icmp eq i8 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %sw.bb48.i.unordered.i_crit_edge

sw.bb48.i.unordered.i_crit_edge:                  ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unordered.i

if.end54.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp55.i) #4
  %38 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %arrayidx50.i, align 4
  call void @float64_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp55.i, i64 noundef %39) #4
  %40 = ptrtoint ptr %tmp55.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %rFm.sroa.0.0.copyload135.i = load i32, ptr %tmp55.i, align 4
  %rFm.sroa.14.0.tmp55.sroa_idx.i = getelementptr inbounds i8, ptr %tmp55.i, i32 4
  %41 = ptrtoint ptr %rFm.sroa.14.0.tmp55.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %rFm.sroa.14.0.copyload139.i = load i64, ptr %rFm.sroa.14.0.tmp55.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp55.i) #4
  %extract.t296.i = trunc i64 %rFm.sroa.14.0.copyload139.i to i32
  %extract302.i = lshr i64 %rFm.sroa.14.0.copyload139.i, 32
  %extract.t303.i = trunc i64 %extract302.i to i32
  br label %if.end69.i

sw.bb58.i:                                        ; preds = %if.else.i
  %arrayidx60.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %and1.i
  %42 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack289.i = load i32, ptr %arrayidx60.i, align 4
  %43 = insertvalue [3 x i32] undef, i32 %.unpack289.i, 0
  %.elt290.i = getelementptr inbounds [3 x i32], ptr %arrayidx60.i, i32 0, i32 1
  %44 = ptrtoint ptr %.elt290.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack291.i = load i32, ptr %.elt290.i, align 4
  %45 = insertvalue [3 x i32] %43, i32 %.unpack291.i, 1
  %.elt292.i = getelementptr inbounds [3 x i32], ptr %arrayidx60.i, i32 0, i32 2
  %46 = ptrtoint ptr %.elt292.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack293.i = load i32, ptr %.elt292.i, align 4
  %47 = insertvalue [3 x i32] %45, i32 %.unpack293.i, 2
  %call61.i = call zeroext i8 @floatx80_is_nan([3 x i32] %47) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call61.i)
  %tobool62.not.i = icmp eq i8 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %sw.bb58.i.unordered.i_crit_edge

sw.bb58.i.unordered.i_crit_edge:                  ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unordered.i

if.end64.i:                                       ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %rFm.sroa.0.0.copyload136.i = load i32, ptr %arrayidx60.i, align 4
  %49 = ptrtoint ptr %.elt290.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %rFm.sroa.14.0.copyload140.i = load i64, ptr %.elt290.i, align 4
  %extract.t295.i = trunc i64 %rFm.sroa.14.0.copyload140.i to i32
  %extract300.i = lshr i64 %rFm.sroa.14.0.copyload140.i, 32
  %extract.t301.i = trunc i64 %extract300.i to i32
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end64.i, %if.end54.i, %if.end44.i, %if.then29.i.if.end69.i_crit_edge
  %rFm.sroa.0.sroa.11.0.in.i = phi i32 [ %tmp30.sroa.0.0.copyload.i, %if.then29.i.if.end69.i_crit_edge ], [ %rFm.sroa.0.0.copyload136.i, %if.end64.i ], [ %rFm.sroa.0.0.copyload135.i, %if.end54.i ], [ %rFm.sroa.0.0.copyload134.i, %if.end44.i ]
  %rFm.sroa.14.0.off0.i = phi i32 [ %rFm.sroa.14.8.extract.trunc.i, %if.then29.i.if.end69.i_crit_edge ], [ %extract.t295.i, %if.end64.i ], [ %extract.t296.i, %if.end54.i ], [ %extract.t297.i, %if.end44.i ]
  %rFm.sroa.14.0.off32.i = phi i32 [ %rFm.sroa.14.4.extract.trunc.i, %if.then29.i.if.end69.i_crit_edge ], [ %extract.t301.i, %if.end64.i ], [ %extract.t303.i, %if.end54.i ], [ %extract.t305.i, %if.end44.i ]
  %rFm.sroa.0.sroa.0.0.i = and i32 %rFm.sroa.0.sroa.11.0.in.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool70.not.i = icmp eq i32 %and3.i, 0
  %50 = xor i32 %rFm.sroa.0.sroa.11.0.in.i, 32768
  %spec.select.i = select i1 %tobool70.not.i, i32 %rFm.sroa.0.sroa.11.0.in.i, i32 %50
  %.fca.0.insert186.i = insertvalue [3 x i32] poison, i32 %rFn.sroa.0.sroa.9.0.in.i, 0
  %.fca.1.insert187.i = insertvalue [3 x i32] %.fca.0.insert186.i, i32 %rFn.sroa.10.0.copyload210.i.sink39.off32, 1
  %.fca.2.insert188.i = insertvalue [3 x i32] %.fca.1.insert187.i, i32 %rFn.sroa.10.0.copyload210.i.sink39.off0, 2
  %rFm.sroa.0.sroa.11.0.insert.ext174.i = and i32 %spec.select.i, 65535
  %rFm.sroa.0.sroa.0.0.insert.insert159.i = or i32 %rFm.sroa.0.sroa.11.0.insert.ext174.i, %rFm.sroa.0.sroa.0.0.i
  %.fca.0.insert109.i = insertvalue [3 x i32] poison, i32 %rFm.sroa.0.sroa.0.0.insert.insert159.i, 0
  %.fca.1.insert112.i = insertvalue [3 x i32] %.fca.0.insert109.i, i32 %rFm.sroa.14.0.off32.i, 1
  %.fca.2.insert115.i = insertvalue [3 x i32] %.fca.1.insert112.i, i32 %rFm.sroa.14.0.off0.i, 2
  %call75.i = call zeroext i8 @floatx80_lt([3 x i32] %.fca.2.insert188.i, [3 x i32] %.fca.2.insert115.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call75.i)
  %tobool76.not.i = icmp eq i8 %call75.i, 0
  %flags.0.i = select i1 %tobool76.not.i, i32 0, i32 -2147483648
  %call79.i = call zeroext i8 @floatx80_eq([3 x i32] %.fca.2.insert188.i, [3 x i32] %.fca.2.insert115.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call79.i)
  %tobool80.not.i = icmp eq i8 %call79.i, 0
  %or82.i = or i32 %flags.0.i, 1073741824
  %flags.1.i = select i1 %tobool80.not.i, i32 %flags.0.i, i32 %or82.i
  %call84.i = call zeroext i8 @floatx80_lt([3 x i32] %.fca.2.insert115.i, [3 x i32] %.fca.2.insert188.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call84.i)
  %tobool85.not.i = icmp eq i8 %call84.i, 0
  %or87.i = or i32 %flags.1.i, 536870912
  %flags.2.i = select i1 %tobool85.not.i, i32 %flags.1.i, i32 %or87.i
  %51 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i = and i32 %51, -16384
  %add.i.i = or i32 %and.i.i.i, 16376
  %52 = inttoptr i32 %add.i.i to ptr
  %arrayidx.i307.i = getelementptr %struct.pt_regs, ptr %52, i32 -1, i32 0, i32 16
  %53 = ptrtoint ptr %arrayidx.i307.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i307.i, align 16
  %and.i308.i = and i32 %54, 268435455
  br label %cleanup.sink.split.i

unordered.i:                                      ; preds = %sw.bb58.i.unordered.i_crit_edge, %sw.bb48.i.unordered.i_crit_edge, %sw.bb38.i.unordered.i_crit_edge, %if.then29.i.unordered.i_crit_edge, %sw.bb18.i.unordered.i_crit_edge, %sw.bb8.i.unordered.i_crit_edge, %sw.bb.i.unordered.i_crit_edge
  %55 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i309.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i309.i to ptr
  %fpsr.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 9, i32 0, i32 0, i32 24
  %57 = ptrtoint ptr %fpsr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fpsr.i.i, align 64
  %and92.i = and i32 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  %spec.select306.i = select i1 %tobool93.not.i, i32 268435456, i32 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool97.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool97.not.i, label %unordered.i.if.end99.i_crit_edge, label %if.then98.i

unordered.i.if.end99.i_crit_edge:                 ; preds = %unordered.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99.i

if.then98.i:                                      ; preds = %unordered.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @float_raise(i8 noundef signext 1) #4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %unordered.i.if.end99.i_crit_edge
  %59 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i310.i = and i32 %59, -16384
  %add.i311.i = or i32 %and.i.i310.i, 16376
  %60 = inttoptr i32 %add.i311.i to ptr
  %arrayidx.i312.i = getelementptr %struct.pt_regs, ptr %60, i32 -1, i32 0, i32 16
  %61 = ptrtoint ptr %arrayidx.i312.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i312.i, align 16
  %and.i313.i = and i32 %62, 268435455
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end99.i, %if.end69.i
  %spec.select306.sink.i = phi i32 [ %spec.select306.i, %if.end99.i ], [ %and.i308.i, %if.end69.i ]
  %and.i313.sink.i = phi i32 [ %and.i313.i, %if.end99.i ], [ %flags.2.i, %if.end69.i ]
  %arrayidx.i312.sink.i = phi ptr [ %arrayidx.i312.i, %if.end99.i ], [ %arrayidx.i307.i, %if.end69.i ]
  %or.i314.i = or i32 %and.i313.sink.i, %spec.select306.sink.i
  %63 = ptrtoint ptr %arrayidx.i312.sink.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i314.i, ptr %arrayidx.i312.sink.i, align 16
  br label %return

if.end:                                           ; preds = %entry
  %and1 = lshr i32 %opcode, 20
  %shr = and i32 %and1, 7
  %64 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %shr, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @PerformFLT(i32 noundef %opcode)
  br label %return

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @PerformFIX(i32 noundef %opcode)
  br label %return

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and6 = lshr i32 %opcode, 12
  %shr7 = and i32 %and6, 15
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i19 = and i32 %65, -16384
  %add.i = or i32 %and.i.i19, 16376
  %66 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr %struct.pt_regs, ptr %66, i32 -1
  %arrayidx.i20 = getelementptr [18 x i32], ptr %add.ptr.i, i32 0, i32 %shr7
  %67 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr7)
  %cmp.i = icmp eq i32 %shr7, 15
  %sub.i = add i32 %68, 16777212
  %spec.select.i21 = select i1 %cmp.i, i32 %sub.i, i32 %68
  %69 = inttoptr i32 %and.i.i19 to ptr
  %fpsr.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 9, i32 0, i32 0, i32 24
  %70 = ptrtoint ptr %fpsr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fpsr.i, align 64
  %and.i23 = and i32 %71, -16777216
  %and1.i24 = and i32 %spec.select.i21, 16777215
  %or.i = or i32 %and1.i24, %and.i23
  store i32 %or.i, ptr %fpsr.i, align 64
  br label %return

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and10 = lshr i32 %opcode, 12
  %shr11 = and i32 %and10, 15
  %72 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i25 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i25 to ptr
  %fpsr.i26 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 9, i32 0, i32 0, i32 24
  %74 = ptrtoint ptr %fpsr.i26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fpsr.i26, align 64
  %add.i28 = or i32 %and.i.i25, 16376
  %76 = inttoptr i32 %add.i28 to ptr
  %add.ptr.i29 = getelementptr %struct.pt_regs, ptr %76, i32 -1
  %arrayidx.i30 = getelementptr [18 x i32], ptr %add.ptr.i29, i32 0, i32 %shr11
  %77 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %arrayidx.i30, align 4
  br label %return

return:                                           ; preds = %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb, %if.end.return_crit_edge, %cleanup.sink.split.i, %if.else.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ 0, %if.end.return_crit_edge ], [ 1, %sw.bb9 ], [ 1, %sw.bb5 ], [ 0, %if.then.return_crit_edge ], [ 0, %if.else.i.return_crit_edge ], [ 1, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PerformFLT(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %roundData = alloca %struct.roundingData, align 1
  %tmp = alloca %struct.floatx80, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roundData) #4
  %2 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 1
  %3 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %call1 = tail call signext i8 @SetRoundingMode(i32 noundef %opcode) #4
  %4 = ptrtoint ptr %roundData to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call1, ptr %roundData, align 1
  %call2 = tail call signext i8 @SetRoundingPrecision(i32 noundef %opcode) #4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call2, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %and = and i32 %opcode, 524416
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 128, label %sw.bb11
    i32 524288, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fType = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %and3 = lshr i32 %opcode, 16
  %shr = and i32 %and3, 7
  %arrayidx = getelementptr [8 x i8], ptr %fType, i32 0, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 1
  %and4 = lshr i32 %opcode, 12
  %shr5 = and i32 %and4, 15
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i = and i32 %9, -16384
  %add.i = or i32 %and.i.i, 16376
  %10 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr %struct.pt_regs, ptr %10, i32 -1
  %arrayidx.i = getelementptr [18 x i32], ptr %add.ptr.i, i32 0, i32 %shr5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr5)
  %cmp.i = icmp eq i32 %shr5, 15
  %sub.i = add i32 %12, -4
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %12
  %call7 = call i32 @int32_to_float32(ptr noundef nonnull %roundData, i32 noundef %spec.select.i) #4
  %arrayidx10 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call7, ptr %arrayidx10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fType12 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %and13 = lshr i32 %opcode, 16
  %shr14 = and i32 %and13, 7
  %arrayidx15 = getelementptr [8 x i8], ptr %fType12, i32 0, i32 %shr14
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %arrayidx15, align 1
  %and16 = lshr i32 %opcode, 12
  %shr17 = and i32 %and16, 15
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i55 = and i32 %15, -16384
  %add.i56 = or i32 %and.i.i55, 16376
  %16 = inttoptr i32 %add.i56 to ptr
  %add.ptr.i57 = getelementptr %struct.pt_regs, ptr %16, i32 -1
  %arrayidx.i58 = getelementptr [18 x i32], ptr %add.ptr.i57, i32 0, i32 %shr17
  %17 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr17)
  %cmp.i59 = icmp eq i32 %shr17, 15
  %sub.i60 = add i32 %18, -4
  %spec.select.i61 = select i1 %cmp.i59, i32 %sub.i60, i32 %18
  %call19 = tail call i64 @int32_to_float64(i32 noundef %spec.select.i61) #4
  %arrayidx23 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr14
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %call19, ptr %arrayidx23, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fType25 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %and26 = lshr i32 %opcode, 16
  %shr27 = and i32 %and26, 7
  %arrayidx28 = getelementptr [8 x i8], ptr %fType25, i32 0, i32 %shr27
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %arrayidx28, align 1
  %arrayidx32 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #4
  %and33 = lshr i32 %opcode, 12
  %shr34 = and i32 %and33, 15
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i62 = and i32 %21, -16384
  %add.i63 = or i32 %and.i.i62, 16376
  %22 = inttoptr i32 %add.i63 to ptr
  %add.ptr.i64 = getelementptr %struct.pt_regs, ptr %22, i32 -1
  %arrayidx.i65 = getelementptr [18 x i32], ptr %add.ptr.i64, i32 0, i32 %shr34
  %23 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr34)
  %cmp.i66 = icmp eq i32 %shr34, 15
  %sub.i67 = add i32 %24, -4
  %spec.select.i68 = select i1 %cmp.i66, i32 %sub.i67, i32 %24
  call void @int32_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp, i32 noundef %spec.select.i68) #4
  %25 = call ptr @memcpy(ptr %arrayidx32, ptr %tmp, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb11, %sw.bb
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void @float_raise(i8 noundef signext %27) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then ], [ 1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roundData) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PerformFIX(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %roundData = alloca %struct.roundingData, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  %and = and i32 %opcode, 7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roundData) #4
  %2 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 1
  %3 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %call1 = tail call signext i8 @SetRoundingMode(i32 noundef %opcode) #4
  %4 = ptrtoint ptr %roundData to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call1, ptr %roundData, align 1
  %call2 = tail call signext i8 @SetRoundingPrecision(i32 noundef %opcode) #4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call2, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %fType = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx = getelementptr [8 x i8], ptr %fType, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %8, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %call5 = call i32 @float32_to_int32(ptr noundef nonnull %roundData, i32 noundef %11) #4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx10 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %arrayidx10, align 4
  %call11 = call i32 @float64_to_int32(ptr noundef nonnull %roundData, i64 noundef %13) #4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx16 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %arrayidx16, align 4
  %15 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %.elt33 = getelementptr inbounds [3 x i32], ptr %arrayidx16, i32 0, i32 1
  %16 = ptrtoint ptr %.elt33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack34 = load i32, ptr %.elt33, align 4
  %17 = insertvalue [3 x i32] %15, i32 %.unpack34, 1
  %.elt35 = getelementptr inbounds [3 x i32], ptr %arrayidx16, i32 0, i32 2
  %18 = ptrtoint ptr %.elt35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack36 = load i32, ptr %.elt35, align 4
  %19 = insertvalue [3 x i32] %17, i32 %.unpack36, 2
  %call17 = call i32 @floatx80_to_int32(ptr noundef nonnull %roundData, [3 x i32] %19) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb6, %sw.bb
  %call17.sink = phi i32 [ %call17, %sw.bb12 ], [ %call11, %sw.bb6 ], [ %call5, %sw.bb ]
  %shr14.sink.in = lshr i32 %opcode, 12
  %shr14.sink = and i32 %shr14.sink.in, 15
  %20 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i41 = and i32 %20, -16384
  %add.i42 = or i32 %and.i.i41, 16376
  %21 = inttoptr i32 %add.i42 to ptr
  %add.ptr.i43 = getelementptr %struct.pt_regs, ptr %21, i32 -1
  %arrayidx.i44 = getelementptr [18 x i32], ptr %add.ptr.i43, i32 0, i32 %shr14.sink
  %22 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call17.sink, ptr %arrayidx.i44, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void @float_raise(i8 noundef signext %24) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then ], [ 1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roundData) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @SetRoundingMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @SetRoundingPrecision(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int32_to_float32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @int32_to_float64(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @int32_to_floatx80(ptr sret(%struct.floatx80) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @float_raise(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_to_int32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float64_to_int32(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @floatx80_to_int32(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @float32_is_nan(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float32_to_floatx80(ptr sret(%struct.floatx80) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @float64_is_nan(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float64_to_floatx80(ptr sret(%struct.floatx80) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @floatx80_is_nan([3 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @floatx80_lt([3 x i32], [3 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @floatx80_eq([3 x i32], [3 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
