; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/calcs/custom_float.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/custom_float.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fixed31_32 = type { i64 }
%struct.custom_float_format = type { i32, i32, i8 }

@dc_fixpt_shl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.setup_custom_float = private unnamed_addr constant [19 x i8] c"setup_custom_float\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 212, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/custom_float.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 145, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @convert_to_custom_float_format([1 x i64] %value.coerce, ptr nocapture noundef readonly %format, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %mantissa_constant_plus_max_fraction.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %value.coerce.fca.0.extract.i = extractvalue [1 x i64] %value.coerce, 0
  %exponenta_bits.i = getelementptr inbounds %struct.custom_float_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %exponenta_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exponenta_bits.i, align 4
  %sub.i = add i32 %1, -1
  %notmask.i = shl nsw i32 -1, %sub.i
  %sub1.i = xor i32 %notmask.i, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mantissa_constant_plus_max_fraction.i) #4
  %2 = ptrtoint ptr %mantissa_constant_plus_max_fraction.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %mantissa_constant_plus_max_fraction.i, align 8, !annotation !21
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %add.i = add i32 %4, 1
  %sh_prom.i = zext i32 %add.i to i64
  %notmask1.i = shl nsw i64 -1, %sh_prom.i
  %sub3.i = xor i64 %notmask1.i, -1
  %sh_prom5.i = zext i32 %4 to i64
  %shl6.i = shl nuw i64 1, %sh_prom5.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %mantissa_constant_plus_max_fraction.i, i64 noundef %sub3.i, i64 noundef %shl6.i) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %value.coerce.fca.0.extract.i)
  %cmp.i.i = icmp eq i64 %value.coerce.fca.0.extract.i, 0
  br i1 %cmp.i.i, label %entry.build_custom_float.exit_crit_edge, label %if.end.i

entry.build_custom_float.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %build_custom_float.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %value.coerce.fca.0.extract.i)
  %cmp.i3.i = icmp slt i64 %value.coerce.fca.0.extract.i, 0
  br i1 %cmp.i3.i, label %if.then10.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sign.i = getelementptr inbounds %struct.custom_float_format, ptr %format, i32 0, i32 2
  %5 = ptrtoint ptr %sign.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sign.i, align 4, !range !22
  %sub.i.i = sub i64 0, %value.coerce.fca.0.extract.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i.if.end12.i_crit_edge
  %negative.0 = phi i8 [ %6, %if.then10.i ], [ 0, %if.end.i.if.end12.i_crit_edge ]
  %value.sroa.0.0.i = phi i64 [ %sub.i.i, %if.then10.i ], [ %value.coerce.fca.0.extract.i, %if.end.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %value.sroa.0.0.i)
  %cmp.i4.i = icmp slt i64 %value.sroa.0.0.i, 4294967296
  br i1 %cmp.i4.i, label %if.end12.i.do.body.i_crit_edge, label %if.else23.i

if.end12.i.do.body.i_crit_edge:                   ; preds = %if.end12.i
  br label %do.body.i

do.body.i:                                        ; preds = %dc_fixpt_shl.exit.i.do.body.i_crit_edge, %if.end12.i.do.body.i_crit_edge
  %value.sroa.0.1.i = phi i64 [ %shl.i.i, %dc_fixpt_shl.exit.i.do.body.i_crit_edge ], [ %value.sroa.0.0.i, %if.end12.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ %inc.i, %dc_fixpt_shl.exit.i.do.body.i_crit_edge ], [ 1, %if.end12.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %value.sroa.0.1.i)
  %cmp.i5.i = icmp sgt i64 %value.sroa.0.1.i, -1
  br i1 %cmp.i5.i, label %land.lhs.true.i.i, label %land.rhs.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4611686018427387903, i64 %value.sroa.0.1.i)
  %cmp2.not.i.i = icmp ugt i64 %value.sroa.0.1.i, 4611686018427387903
  br i1 %cmp2.not.i.i, label %land.lhs.true.i.i.land.rhs16.i.i_crit_edge, label %land.lhs.true.i.i.dc_fixpt_shl.exit.i_crit_edge

land.lhs.true.i.i.dc_fixpt_shl.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_shl.exit.i

land.lhs.true.i.i.land.rhs16.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs16.i.i

land.rhs.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4611686018427387904, i64 %value.sroa.0.1.i)
  %cmp11.i.i = icmp ult i64 %value.sroa.0.1.i, -4611686018427387904
  br i1 %cmp11.i.i, label %land.rhs.i.i.land.rhs16.i.i_crit_edge, label %land.rhs.i.i.dc_fixpt_shl.exit.i_crit_edge

land.rhs.i.i.dc_fixpt_shl.exit.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_shl.exit.i

land.rhs.i.i.land.rhs16.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs16.i.i

land.rhs16.i.i:                                   ; preds = %land.rhs.i.i.land.rhs16.i.i_crit_edge, %land.lhs.true.i.i.land.rhs16.i.i_crit_edge
  %.b69.i.i = load i1, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !23
  br i1 %.b69.i.i, label %land.rhs16.i.i.if.then53.i.i_crit_edge, label %if.then.i.i, !prof !26

land.rhs16.i.i.if.then53.i.i_crit_edge:           ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53.i.i

if.then.i.i:                                      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !23
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #4, !noalias !23
  br label %if.then53.i.i

if.then53.i.i:                                    ; preds = %if.then.i.i, %land.rhs16.i.i.if.then53.i.i_crit_edge
  call void @kgdb_breakpoint() #4, !noalias !23
  br label %dc_fixpt_shl.exit.i

dc_fixpt_shl.exit.i:                              ; preds = %if.then53.i.i, %land.rhs.i.i.dc_fixpt_shl.exit.i_crit_edge, %land.lhs.true.i.i.dc_fixpt_shl.exit.i_crit_edge
  %shl.i.i = shl i64 %value.sroa.0.1.i, 1
  %inc.i = add i32 %i.0.i, 1
  %cmp.i6.i = icmp slt i64 %shl.i.i, 4294967296
  br i1 %cmp.i6.i, label %dc_fixpt_shl.exit.i.do.body.i_crit_edge, label %do.end.i

dc_fixpt_shl.exit.i.do.body.i_crit_edge:          ; preds = %dc_fixpt_shl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %dc_fixpt_shl.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %sub1.i)
  %cmp.not.i = icmp ult i32 %i.0.i, %sub1.i
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i.build_custom_float.exit_crit_edge

do.end.i.build_custom_float.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %build_custom_float.exit

if.end21.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub22.i = sub i32 %sub1.i, %i.0.i
  br label %dc_fixpt_sub.exit.i

if.else23.i:                                      ; preds = %if.end12.i
  %7 = ptrtoint ptr %mantissa_constant_plus_max_fraction.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.0.load.i = load i64, ptr %mantissa_constant_plus_max_fraction.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.fca.0.load.i, i64 %value.sroa.0.0.i)
  %cmp.i7.not.i = icmp sgt i64 %.fca.0.load.i, %value.sroa.0.0.i
  br i1 %cmp.i7.not.i, label %if.else23.i.dc_fixpt_sub.exit.i_crit_edge, label %if.else23.i.do.body29.i_crit_edge

if.else23.i.do.body29.i_crit_edge:                ; preds = %if.else23.i
  br label %do.body29.i

if.else23.i.dc_fixpt_sub.exit.i_crit_edge:        ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_sub.exit.i

do.body29.i:                                      ; preds = %do.body29.i.do.body29.i_crit_edge, %if.else23.i.do.body29.i_crit_edge
  %value.sroa.0.2.i = phi i64 [ %arg.sroa.0.1.i.i, %do.body29.i.do.body29.i_crit_edge ], [ %value.sroa.0.0.i, %if.else23.i.do.body29.i_crit_edge ]
  %i28.0.i = phi i32 [ %inc32.i, %do.body29.i.do.body29.i_crit_edge ], [ 1, %if.else23.i.do.body29.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %value.sroa.0.2.i)
  %cmp.i8.i = icmp slt i64 %value.sroa.0.2.i, 0
  %8 = call i64 @llvm.abs.i64(i64 %value.sroa.0.2.i, i1 true) #4
  %shr.i31.i = lshr i64 %8, 1
  %sub8.i.i = sub nsw i64 0, %shr.i31.i
  %arg.sroa.0.1.i.i = select i1 %cmp.i8.i, i64 %sub8.i.i, i64 %shr.i31.i
  %inc32.i = add i32 %i28.0.i, 1
  %cmp.i9.i = icmp slt i64 %.fca.0.load.i, %arg.sroa.0.1.i.i
  br i1 %cmp.i9.i, label %do.body29.i.do.body29.i_crit_edge, label %do.end37.i

do.body29.i.do.body29.i_crit_edge:                ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body29.i

do.end37.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub39.i = add i32 %i28.0.i, %sub1.i
  br label %dc_fixpt_sub.exit.i

dc_fixpt_sub.exit.i:                              ; preds = %do.end37.i, %if.else23.i.dc_fixpt_sub.exit.i_crit_edge, %if.end21.i
  %sub1.sink.i = phi i32 [ %sub39.i, %do.end37.i ], [ %sub22.i, %if.end21.i ], [ %sub1.i, %if.else23.i.dc_fixpt_sub.exit.i_crit_edge ]
  %value.sroa.0.3.i = phi i64 [ %arg.sroa.0.1.i.i, %do.end37.i ], [ %shl.i.i, %if.end21.i ], [ %value.sroa.0.0.i, %if.else23.i.dc_fixpt_sub.exit.i_crit_edge ]
  %sub.i11.i = add nsw i64 %value.sroa.0.3.i, -4294967296
  %9 = add nsw i64 %value.sroa.0.3.i, -8589934593
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %9)
  %10 = icmp ult i64 %9, -4294967297
  br i1 %10, label %dc_fixpt_sub.exit.i.build_custom_float.exit_crit_edge, label %land.lhs.true.i17.i

dc_fixpt_sub.exit.i.build_custom_float.exit_crit_edge: ; preds = %dc_fixpt_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %build_custom_float.exit

land.lhs.true.i17.i:                              ; preds = %dc_fixpt_sub.exit.i
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format, align 4
  %conv.mask.i = and i32 %12, 255
  %sh_prom.i.i = zext i32 %conv.mask.i to i64
  %shr.i15.i = lshr i64 9223372036854775807, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i11.i, i64 %shr.i15.i)
  %cmp2.not.i16.i = icmp ugt i64 %sub.i11.i, %shr.i15.i
  br i1 %cmp2.not.i16.i, label %land.rhs16.i21.i, label %land.lhs.true.i17.i.if.end54.i_crit_edge

land.lhs.true.i17.i.if.end54.i_crit_edge:         ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54.i

land.rhs16.i21.i:                                 ; preds = %land.lhs.true.i17.i
  %.b69.i20.i = load i1, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !27
  br i1 %.b69.i20.i, label %land.rhs16.i21.i.if.then53.i23.i_crit_edge, label %if.then.i22.i, !prof !26

land.rhs16.i21.i.if.then53.i23.i_crit_edge:       ; preds = %land.rhs16.i21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53.i23.i

if.then.i22.i:                                    ; preds = %land.rhs16.i21.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #4, !noalias !27
  br label %if.then53.i23.i

if.then53.i23.i:                                  ; preds = %if.then.i22.i, %land.rhs16.i21.i.if.then53.i23.i_crit_edge
  call void @kgdb_breakpoint() #4, !noalias !27
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i23.i, %land.lhs.true.i17.i.if.end54.i_crit_edge
  %shl.i24.i = shl i64 %sub.i11.i, %sh_prom.i.i
  %13 = call i64 @llvm.abs.i64(i64 %shl.i24.i, i1 false) #4
  %extract12.i.i = lshr i64 %13, 32
  %extract.t13.i.i = trunc i64 %extract12.i.i to i32
  %sub7.i.i = sub i32 0, %extract.t13.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i24.i)
  %cmp414.i.i = icmp slt i64 %shl.i24.i, 0
  %spec.select.i = select i1 %cmp414.i.i, i32 %sub7.i.i, i32 %extract.t13.i.i
  br label %build_custom_float.exit

build_custom_float.exit:                          ; preds = %if.end54.i, %dc_fixpt_sub.exit.i.build_custom_float.exit_crit_edge, %do.end.i.build_custom_float.exit_crit_edge, %entry.build_custom_float.exit_crit_edge
  %mantissa.0 = phi i32 [ 0, %entry.build_custom_float.exit_crit_edge ], [ 0, %do.end.i.build_custom_float.exit_crit_edge ], [ 0, %dc_fixpt_sub.exit.i.build_custom_float.exit_crit_edge ], [ %spec.select.i, %if.end54.i ]
  %exponenta.0 = phi i32 [ 0, %entry.build_custom_float.exit_crit_edge ], [ 0, %do.end.i.build_custom_float.exit_crit_edge ], [ %sub1.sink.i, %dc_fixpt_sub.exit.i.build_custom_float.exit_crit_edge ], [ %sub1.sink.i, %if.end54.i ]
  %negative.1 = phi i8 [ 0, %entry.build_custom_float.exit_crit_edge ], [ %negative.0, %do.end.i.build_custom_float.exit_crit_edge ], [ %negative.0, %dc_fixpt_sub.exit.i.build_custom_float.exit_crit_edge ], [ %negative.0, %if.end54.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mantissa_constant_plus_max_fraction.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %negative.1)
  %tobool.not = icmp eq i8 %negative.1, 0
  %14 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format, align 4
  %add.i4 = add i32 %15, 1
  %notmask.i5 = shl nsw i32 -1, %add.i4
  %16 = ptrtoint ptr %exponenta_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exponenta_bits.i, align 4
  %add1.i = add i32 %17, 1
  %notmask1.i7 = shl nsw i32 -1, %add1.i
  %sub3.i8 = xor i32 %notmask1.i7, -1
  %and.i = and i32 %notmask.i5, %mantissa.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %build_custom_float.exit.if.end.i11_crit_edge, label %do.body.i10

build_custom_float.exit.if.end.i11_crit_edge:     ; preds = %build_custom_float.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i11

do.body.i10:                                      ; preds = %build_custom_float.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i9 = xor i32 %notmask.i5, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.setup_custom_float, i32 noundef 145) #4
  call void @kgdb_breakpoint() #4
  br label %if.end.i11

if.end.i11:                                       ; preds = %do.body.i10, %build_custom_float.exit.if.end.i11_crit_edge
  %mantissa.addr.0.i = phi i32 [ %sub.i9, %do.body.i10 ], [ %mantissa.0, %build_custom_float.exit.if.end.i11_crit_edge ]
  %and5.i = and i32 %notmask1.i7, %exponenta.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i11.if.end11.i_crit_edge, label %do.body8.i

if.end.i11.if.end11.i_crit_edge:                  ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

do.body8.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.setup_custom_float, i32 noundef 150) #4
  call void @kgdb_breakpoint() #4
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.body8.i, %if.end.i11.if.end11.i_crit_edge
  %exponenta.addr.0.i = phi i32 [ %sub3.i8, %do.body8.i ], [ %exponenta.0, %if.end.i11.if.end11.i_crit_edge ]
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.not.i = icmp eq i32 %19, 0
  br i1 %cmp2.not.i, label %if.end11.i.while.cond18.preheader.i_crit_edge, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  br label %while.body.i

if.end11.i.while.cond18.preheader.i_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond18.preheader.i

while.cond18.preheader.i:                         ; preds = %while.body.i.while.cond18.preheader.i_crit_edge, %if.end11.i.while.cond18.preheader.i_crit_edge
  %value.0.lcssa.i = phi i32 [ 0, %if.end11.i.while.cond18.preheader.i_crit_edge ], [ %spec.select.i12, %while.body.i.while.cond18.preheader.i_crit_edge ]
  %20 = ptrtoint ptr %exponenta_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %exponenta_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp206.not.i = icmp eq i32 %21, 0
  br i1 %cmp206.not.i, label %while.cond18.preheader.i.while.end31.i_crit_edge, label %while.cond18.preheader.i.while.body21.i_crit_edge

while.cond18.preheader.i.while.body21.i_crit_edge: ; preds = %while.cond18.preheader.i
  br label %while.body21.i

while.cond18.preheader.i.while.end31.i_crit_edge: ; preds = %while.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end31.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end11.i.while.body.i_crit_edge
  %value.04.i = phi i32 [ %spec.select.i12, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end11.i.while.body.i_crit_edge ]
  %i.03.i = phi i32 [ %inc.i13, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end11.i.while.body.i_crit_edge ]
  %shl13.i = shl nuw i32 1, %i.03.i
  %and14.i = and i32 %shl13.i, %mantissa.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.i = select i1 %tobool15.not.i, i32 0, i32 %shl13.i
  %spec.select.i12 = or i32 %or.i, %value.04.i
  %inc.i13 = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i13, %19
  br i1 %exitcond.not.i, label %while.body.i.while.cond18.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.while.cond18.preheader.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond18.preheader.i

while.body21.i:                                   ; preds = %while.body21.i.while.body21.i_crit_edge, %while.cond18.preheader.i.while.body21.i_crit_edge
  %value.28.i = phi i32 [ %value.3.i, %while.body21.i.while.body21.i_crit_edge ], [ %value.0.lcssa.i, %while.cond18.preheader.i.while.body21.i_crit_edge ]
  %j.07.i = phi i32 [ %inc30.i, %while.body21.i.while.body21.i_crit_edge ], [ 0, %while.cond18.preheader.i.while.body21.i_crit_edge ]
  %shl23.i = shl nuw i32 1, %j.07.i
  %and24.i = and i32 %shl23.i, %exponenta.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %shl27.i = shl i32 %shl23.i, %19
  %or28.i = select i1 %tobool25.not.i, i32 0, i32 %shl27.i
  %value.3.i = or i32 %or28.i, %value.28.i
  %inc30.i = add nuw i32 %j.07.i, 1
  %exitcond11.not.i = icmp eq i32 %inc30.i, %21
  br i1 %exitcond11.not.i, label %while.body21.i.while.end31.i_crit_edge, label %while.body21.i.while.body21.i_crit_edge

while.body21.i.while.body21.i_crit_edge:          ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body21.i

while.body21.i.while.end31.i_crit_edge:           ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end31.i

while.end31.i:                                    ; preds = %while.body21.i.while.end31.i_crit_edge, %while.cond18.preheader.i.while.end31.i_crit_edge
  %value.2.lcssa.i = phi i32 [ %value.0.lcssa.i, %while.cond18.preheader.i.while.end31.i_crit_edge ], [ %value.3.i, %while.body21.i.while.end31.i_crit_edge ]
  br i1 %tobool.not, label %while.end31.i.setup_custom_float.exit_crit_edge, label %land.lhs.true.i

while.end31.i.setup_custom_float.exit_crit_edge:  ; preds = %while.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %setup_custom_float.exit

land.lhs.true.i:                                  ; preds = %while.end31.i
  %sign.i14 = getelementptr inbounds %struct.custom_float_format, ptr %format, i32 0, i32 2
  %22 = ptrtoint ptr %sign.i14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sign.i14, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not.i = icmp eq i8 %23, 0
  br i1 %tobool33.not.i, label %land.lhs.true.i.setup_custom_float.exit_crit_edge, label %if.then34.i

land.lhs.true.i.setup_custom_float.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %setup_custom_float.exit

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %add35.i = add i32 %21, %19
  %shl36.i = shl nuw i32 1, %add35.i
  %or37.i = or i32 %value.2.lcssa.i, %shl36.i
  br label %setup_custom_float.exit

setup_custom_float.exit:                          ; preds = %if.then34.i, %land.lhs.true.i.setup_custom_float.exit_crit_edge, %while.end31.i.setup_custom_float.exit_crit_edge
  %value.4.i = phi i32 [ %or37.i, %if.then34.i ], [ %value.2.lcssa.i, %land.lhs.true.i.setup_custom_float.exit_crit_edge ], [ %value.2.lcssa.i, %while.end31.i.setup_custom_float.exit_crit_edge ]
  %24 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %value.4.i, ptr %result, align 4
  ret i1 true
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, !1, !"dc_fixpt_zero", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 67, i32 32}
!2 = distinct !{null, !3, !"dc_fixpt_one", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 70, i32 32}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 212, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/custom_float.c", i32 145, i32 3}
!11 = !{ptr @__func__.setup_custom_float, !10, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
!23 = !{!24}
!24 = distinct !{!24, !25, !"dc_fixpt_shl: %agg.result"}
!25 = distinct !{!25, !"dc_fixpt_shl"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!28}
!28 = distinct !{!28, !29, !"dc_fixpt_shl: %agg.result"}
!29 = distinct !{!29, !"dc_fixpt_shl"}
