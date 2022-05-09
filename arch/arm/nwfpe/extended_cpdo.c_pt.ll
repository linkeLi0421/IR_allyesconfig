; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/extended_cpdo.c_pt.bc'
source_filename = "../arch/arm/nwfpe/extended_cpdo.c"
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

@dyadic_extended = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @floatx80_add, ptr @floatx80_mul, ptr @floatx80_sub, ptr @floatx80_rsf, ptr @floatx80_div, ptr @floatx80_rdv, ptr null, ptr null, ptr @floatx80_rem, ptr @floatx80_mul, ptr @floatx80_div, ptr @floatx80_rdv, ptr null, ptr null, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@monadic_extended = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @floatx80_mvf, ptr @floatx80_mnf, ptr @floatx80_abs, ptr @floatx80_round_to_int, ptr @floatx80_sqrt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @floatx80_round_to_int, ptr @floatx80_mvf], [32 x i8] zeroinitializer }, align 32
@floatx80Constant = external dso_local local_unnamed_addr constant [0 x %struct.floatx80], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"dyadic_extended\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 36, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"monadic_extended\00", align 1
@___asan_gen_.6 = private constant [34 x i8] c"../arch/arm/nwfpe/extended_cpdo.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 68, i32 25 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @dyadic_extended, ptr @monadic_extended], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyadic_extended to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monadic_extended to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ExtendedCPDO(ptr noundef %roundData, i32 noundef %opcode, ptr nocapture noundef writeonly %rFd) local_unnamed_addr #0 align 64 {
entry:
  %tmp2 = alloca %struct.floatx80, align 4
  %tmp5 = alloca %struct.floatx80, align 4
  %tmp22 = alloca %struct.floatx80, align 4
  %tmp26 = alloca %struct.floatx80, align 4
  %tmp36 = alloca %struct.floatx80, align 4
  %tmp45 = alloca %struct.floatx80, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  %and = and i32 %opcode, 7
  %and1 = and i32 %opcode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [0 x %struct.floatx80], ptr @floatx80Constant, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.sroa.0.0.copyload = load i32, ptr %arrayidx.i, align 4
  %tmp.sroa.4.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %3 = ptrtoint ptr %tmp.sroa.4.0.arrayidx.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %tmp.sroa.4.0.copyload = load i64, ptr %tmp.sroa.4.0.arrayidx.i.sroa_idx, align 4
  %extract.t171 = trunc i64 %tmp.sroa.4.0.copyload to i32
  %extract178 = lshr i64 %tmp.sroa.4.0.copyload, 32
  %extract.t179 = trunc i64 %extract178 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %fType = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx = getelementptr [8 x i8], ptr %fType, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.else.cleanup50_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
    i8 3, label %sw.bb8
  ]

if.else.cleanup50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp2) #5
  %arrayidx3 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  call void @float32_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp2, i32 noundef %8) #5
  %9 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %rFm.sroa.0.0.copyload86 = load i32, ptr %tmp2, align 4
  %rFm.sroa.10.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 4
  %10 = ptrtoint ptr %rFm.sroa.10.0.tmp2.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %rFm.sroa.10.0.copyload89 = load i64, ptr %rFm.sroa.10.0.tmp2.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp2) #5
  %extract.t168 = trunc i64 %rFm.sroa.10.0.copyload89 to i32
  %extract172 = lshr i64 %rFm.sroa.10.0.copyload89, 32
  %extract.t173 = trunc i64 %extract172 to i32
  br label %if.end

sw.bb4:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp5) #5
  %arrayidx7 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %arrayidx7, align 4
  call void @float64_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp5, i64 noundef %12) #5
  %13 = ptrtoint ptr %tmp5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %rFm.sroa.0.0.copyload87 = load i32, ptr %tmp5, align 4
  %rFm.sroa.10.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 4
  %14 = ptrtoint ptr %rFm.sroa.10.0.tmp5.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %rFm.sroa.10.0.copyload90 = load i64, ptr %rFm.sroa.10.0.tmp5.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp5) #5
  %extract.t169 = trunc i64 %rFm.sroa.10.0.copyload90 to i32
  %extract174 = lshr i64 %rFm.sroa.10.0.copyload90, 32
  %extract.t175 = trunc i64 %extract174 to i32
  br label %if.end

sw.bb8:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx10 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %rFm.sroa.0.0.copyload88 = load i32, ptr %arrayidx10, align 4
  %rFm.sroa.10.0.arrayidx10.sroa_idx = getelementptr inbounds i8, ptr %arrayidx10, i32 4
  %16 = ptrtoint ptr %rFm.sroa.10.0.arrayidx10.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %rFm.sroa.10.0.copyload91 = load i64, ptr %rFm.sroa.10.0.arrayidx10.sroa_idx, align 4
  %extract.t170 = trunc i64 %rFm.sroa.10.0.copyload91 to i32
  %extract176 = lshr i64 %rFm.sroa.10.0.copyload91, 32
  %extract.t177 = trunc i64 %extract176 to i32
  br label %if.end

if.end:                                           ; preds = %sw.bb8, %sw.bb4, %sw.bb, %if.then
  %rFm.sroa.10.0.copyload89.sink166.off0 = phi i32 [ %extract.t168, %sw.bb ], [ %extract.t169, %sw.bb4 ], [ %extract.t170, %sw.bb8 ], [ %extract.t171, %if.then ]
  %rFm.sroa.10.0.copyload89.sink166.off32 = phi i32 [ %extract.t173, %sw.bb ], [ %extract.t175, %sw.bb4 ], [ %extract.t177, %sw.bb8 ], [ %extract.t179, %if.then ]
  %rFm.sroa.0.sroa.9.0.in = phi i32 [ %rFm.sroa.0.0.copyload86, %sw.bb ], [ %rFm.sroa.0.0.copyload87, %sw.bb4 ], [ %rFm.sroa.0.0.copyload88, %sw.bb8 ], [ %tmp.sroa.0.0.copyload, %if.then ]
  %and11 = lshr i32 %opcode, 20
  %shr = and i32 %and11, 15
  %and12 = and i32 %opcode, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %if.then15, label %if.else41

if.then15:                                        ; preds = %if.end
  %and16 = lshr i32 %opcode, 16
  %shr17 = and i32 %and16, 7
  %fType18 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx19 = getelementptr [8 x i8], ptr %fType18, i32 0, i32 %shr17
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %18, label %if.then15.cleanup50_crit_edge [
    i8 1, label %sw.bb21
    i8 2, label %sw.bb25
    i8 3, label %sw.bb29
  ]

if.then15.cleanup50_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

sw.bb21:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp22) #5
  %arrayidx24 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr17
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  call void @float32_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp22, i32 noundef %21) #5
  %22 = ptrtoint ptr %tmp22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %rFn.sroa.0.0.copyload = load i32, ptr %tmp22, align 4
  %rFn.sroa.8.0.tmp22.sroa_idx = getelementptr inbounds i8, ptr %tmp22, i32 4
  %23 = ptrtoint ptr %rFn.sroa.8.0.tmp22.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %rFn.sroa.8.0.copyload = load i64, ptr %rFn.sroa.8.0.tmp22.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp22) #5
  %extract.t181 = trunc i64 %rFn.sroa.8.0.copyload to i32
  %extract185 = lshr i64 %rFn.sroa.8.0.copyload, 32
  %extract.t186 = trunc i64 %extract185 to i32
  br label %sw.epilog33

sw.bb25:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp26) #5
  %arrayidx28 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr17
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %arrayidx28, align 4
  call void @float64_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp26, i64 noundef %25) #5
  %26 = ptrtoint ptr %tmp26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %rFn.sroa.0.0.copyload54 = load i32, ptr %tmp26, align 4
  %rFn.sroa.8.0.tmp26.sroa_idx = getelementptr inbounds i8, ptr %tmp26, i32 4
  %27 = ptrtoint ptr %rFn.sroa.8.0.tmp26.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %rFn.sroa.8.0.copyload56 = load i64, ptr %rFn.sroa.8.0.tmp26.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp26) #5
  %extract.t180 = trunc i64 %rFn.sroa.8.0.copyload56 to i32
  %extract183 = lshr i64 %rFn.sroa.8.0.copyload56, 32
  %extract.t184 = trunc i64 %extract183 to i32
  br label %sw.epilog33

sw.bb29:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx31 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr17
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %rFn.sroa.0.0.copyload55 = load i32, ptr %arrayidx31, align 4
  %rFn.sroa.8.0.arrayidx31.sroa_idx = getelementptr inbounds i8, ptr %arrayidx31, i32 4
  %29 = ptrtoint ptr %rFn.sroa.8.0.arrayidx31.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %rFn.sroa.8.0.copyload57 = load i64, ptr %rFn.sroa.8.0.arrayidx31.sroa_idx, align 4
  %extract.t = trunc i64 %rFn.sroa.8.0.copyload57 to i32
  %extract = lshr i64 %rFn.sroa.8.0.copyload57, 32
  %extract.t182 = trunc i64 %extract to i32
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.bb29, %sw.bb25, %sw.bb21
  %rFn.sroa.8.0.copyload57.sink167.off0 = phi i32 [ %extract.t, %sw.bb29 ], [ %extract.t180, %sw.bb25 ], [ %extract.t181, %sw.bb21 ]
  %rFn.sroa.8.0.copyload57.sink167.off32 = phi i32 [ %extract.t182, %sw.bb29 ], [ %extract.t184, %sw.bb25 ], [ %extract.t186, %sw.bb21 ]
  %rFn.sroa.0.sroa.7.0.in = phi i32 [ %rFn.sroa.0.0.copyload55, %sw.bb29 ], [ %rFn.sroa.0.0.copyload54, %sw.bb25 ], [ %rFn.sroa.0.0.copyload, %sw.bb21 ]
  %30 = lshr i32 61632, %shr
  %31 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.not = icmp eq i32 %31, 0
  br i1 %tobool.not.not, label %if.then35, label %sw.epilog33.cleanup50_crit_edge

sw.epilog33.cleanup50_crit_edge:                  ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.then35:                                        ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx34 = getelementptr [16 x ptr], ptr @dyadic_extended, i32 0, i32 %shr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp36) #5
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx34, align 4
  %.fca.0.insert = insertvalue [3 x i32] poison, i32 %rFn.sroa.0.sroa.7.0.in, 0
  %.fca.1.insert = insertvalue [3 x i32] %.fca.0.insert, i32 %rFn.sroa.8.0.copyload57.sink167.off32, 1
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %rFn.sroa.8.0.copyload57.sink167.off0, 2
  %.fca.0.insert74 = insertvalue [3 x i32] poison, i32 %rFm.sroa.0.sroa.9.0.in, 0
  %.fca.1.insert75 = insertvalue [3 x i32] %.fca.0.insert74, i32 %rFm.sroa.10.0.copyload89.sink166.off32, 1
  %.fca.2.insert76 = insertvalue [3 x i32] %.fca.1.insert75, i32 %rFm.sroa.10.0.copyload89.sink166.off0, 2
  call void %33(ptr nonnull sret(%struct.floatx80) align 4 %tmp36, ptr noundef %roundData, [3 x i32] %.fca.2.insert, [3 x i32] %.fca.2.insert76) #5
  %34 = call ptr @memcpy(ptr %rFd, ptr %tmp36, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp36) #5
  br label %cleanup50

if.else41:                                        ; preds = %if.end
  %35 = add nsw i32 %shr, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %35)
  %tobool43.not = icmp ult i32 %35, 9
  br i1 %tobool43.not, label %if.else41.cleanup50_crit_edge, label %if.then44

if.else41.cleanup50_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42 = getelementptr [16 x ptr], ptr @monadic_extended, i32 0, i32 %shr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp45) #5
  %36 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx42, align 4
  %.fca.0.insert79 = insertvalue [3 x i32] poison, i32 %rFm.sroa.0.sroa.9.0.in, 0
  %.fca.1.insert82 = insertvalue [3 x i32] %.fca.0.insert79, i32 %rFm.sroa.10.0.copyload89.sink166.off32, 1
  %.fca.2.insert85 = insertvalue [3 x i32] %.fca.1.insert82, i32 %rFm.sroa.10.0.copyload89.sink166.off0, 2
  call void %37(ptr nonnull sret(%struct.floatx80) align 4 %tmp45, ptr noundef %roundData, [3 x i32] %.fca.2.insert85) #5
  %38 = call ptr @memcpy(ptr %rFd, ptr %tmp45, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp45) #5
  br label %cleanup50

cleanup50:                                        ; preds = %if.then44, %if.else41.cleanup50_crit_edge, %if.then35, %sw.epilog33.cleanup50_crit_edge, %if.then15.cleanup50_crit_edge, %if.else.cleanup50_crit_edge
  %retval.1 = phi i32 [ 0, %if.else.cleanup50_crit_edge ], [ 0, %sw.epilog33.cleanup50_crit_edge ], [ 0, %if.then15.cleanup50_crit_edge ], [ 0, %if.else41.cleanup50_crit_edge ], [ 1, %if.then35 ], [ 1, %if.then44 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @float32_to_floatx80(ptr sret(%struct.floatx80) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float64_to_floatx80(ptr sret(%struct.floatx80) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @floatx80_add(ptr sret(%struct.floatx80) align 4, ptr noundef, [3 x i32], [3 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @floatx80_mul(ptr sret(%struct.floatx80) align 4, ptr noundef, [3 x i32], [3 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @floatx80_sub(ptr sret(%struct.floatx80) align 4, ptr noundef, [3 x i32], [3 x i32]) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @floatx80_rsf(ptr noalias sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %rFn.coerce, [3 x i32] %rFm.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @floatx80_sub(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %rFm.coerce, [3 x i32] %rFn.coerce) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @floatx80_div(ptr sret(%struct.floatx80) align 4, ptr noundef, [3 x i32], [3 x i32]) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @floatx80_rdv(ptr noalias sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %rFn.coerce, [3 x i32] %rFm.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @floatx80_div(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %rFm.coerce, [3 x i32] %rFn.coerce) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @floatx80_rem(ptr sret(%struct.floatx80) align 4, ptr noundef, [3 x i32], [3 x i32]) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @floatx80_mvf(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef readnone %roundData, [3 x i32] %rFm.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rFm.coerce.fca.0.extract = extractvalue [3 x i32] %rFm.coerce, 0
  %rFm.coerce.fca.1.extract = extractvalue [3 x i32] %rFm.coerce, 1
  %rFm.coerce.fca.2.extract = extractvalue [3 x i32] %rFm.coerce, 2
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rFm.coerce.fca.0.extract, ptr %agg.result, align 4
  %rFm.sroa.2.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %1 = ptrtoint ptr %rFm.sroa.2.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rFm.coerce.fca.1.extract, ptr %rFm.sroa.2.0.agg.result.sroa_idx, align 4
  %rFm.sroa.3.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %2 = ptrtoint ptr %rFm.sroa.3.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rFm.coerce.fca.2.extract, ptr %rFm.sroa.3.0.agg.result.sroa_idx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @floatx80_mnf(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef readnone %roundData, [3 x i32] %rFm.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rFm.coerce.fca.0.extract = extractvalue [3 x i32] %rFm.coerce, 0
  %rFm.coerce.fca.1.extract = extractvalue [3 x i32] %rFm.coerce, 1
  %rFm.coerce.fca.2.extract = extractvalue [3 x i32] %rFm.coerce, 2
  %rFm.sroa.0.sroa.0.0.insert.insert = xor i32 %rFm.coerce.fca.0.extract, 32768
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rFm.sroa.0.sroa.0.0.insert.insert, ptr %agg.result, align 4
  %rFm.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %1 = ptrtoint ptr %rFm.sroa.4.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rFm.coerce.fca.1.extract, ptr %rFm.sroa.4.0.agg.result.sroa_idx, align 4
  %rFm.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %2 = ptrtoint ptr %rFm.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rFm.coerce.fca.2.extract, ptr %rFm.sroa.5.0.agg.result.sroa_idx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @floatx80_abs(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef readnone %roundData, [3 x i32] %rFm.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rFm.coerce.fca.0.extract = extractvalue [3 x i32] %rFm.coerce, 0
  %rFm.coerce.fca.1.extract = extractvalue [3 x i32] %rFm.coerce, 1
  %rFm.coerce.fca.2.extract = extractvalue [3 x i32] %rFm.coerce, 2
  %rFm.sroa.0.sroa.0.0.insert.insert = and i32 %rFm.coerce.fca.0.extract, -32769
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rFm.sroa.0.sroa.0.0.insert.insert, ptr %agg.result, align 4
  %rFm.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %1 = ptrtoint ptr %rFm.sroa.4.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rFm.coerce.fca.1.extract, ptr %rFm.sroa.4.0.agg.result.sroa_idx, align 4
  %rFm.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %2 = ptrtoint ptr %rFm.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rFm.coerce.fca.2.extract, ptr %rFm.sroa.5.0.agg.result.sroa_idx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @floatx80_round_to_int(ptr sret(%struct.floatx80) align 4, ptr noundef, [3 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @floatx80_sqrt(ptr sret(%struct.floatx80) align 4, ptr noundef, [3 x i32]) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{!"sp"}
!1 = !{ptr @dyadic_extended, !2, !"dyadic_extended", i1 false, i1 false}
!2 = !{!"../arch/arm/nwfpe/extended_cpdo.c", i32 36, i32 25}
!3 = !{ptr @monadic_extended, !4, !"monadic_extended", i1 false, i1 false}
!4 = !{!"../arch/arm/nwfpe/extended_cpdo.c", i32 68, i32 25}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
