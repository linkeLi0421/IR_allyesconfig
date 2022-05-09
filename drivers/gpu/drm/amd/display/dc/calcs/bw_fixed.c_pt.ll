; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/calcs/bw_fixed.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bw_fixed = type { i64 }

@bw_int_to_fixed_nonconst.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c\00", [38 x i8] zeroinitializer }, align 32
@bw_frc_to_fixed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bw_frc_to_fixed.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@bw_frc_to_fixed.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@bw_floor2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bw_mul.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bw_mul.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@bw_mul.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@bw_mul.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 52, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bw_int_to_fixed_nonconst(ptr noalias nocapture writeonly sret(%struct.bw_fixed) align 8 %agg.result, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %value, -549755813887
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1099511627774, i64 %0)
  %1 = icmp ult i64 %0, -1099511627774
  br i1 %1, label %land.rhs4, label %entry.do.end44_crit_edge

entry.do.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

land.rhs4:                                        ; preds = %entry
  %.b50 = load i1, ptr @bw_int_to_fixed_nonconst.__already_done, align 1
  br i1 %.b50, label %land.rhs4.if.then41_crit_edge, label %if.then, !prof !28

land.rhs4.if.then41_crit_edge:                    ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_int_to_fixed_nonconst.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #4
  br label %if.then41

if.then41:                                        ; preds = %if.then, %land.rhs4.if.then41_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %entry.do.end44_crit_edge
  %shl = shl i64 %value, 24
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shl, ptr %agg.result, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bw_frc_to_fixed(ptr noalias nocapture writeonly sret(%struct.bw_fixed) align 8 %agg.result, i64 noundef %numerator, i64 noundef %denominator) local_unnamed_addr #0 align 64 {
entry:
  %remainder = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remainder) #4
  %0 = ptrtoint ptr %remainder to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %remainder, align 8, !annotation !29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %denominator)
  %cmp3.not = icmp eq i64 %denominator, 0
  br i1 %cmp3.not, label %land.rhs, label %entry.do.end45_crit_edge

entry.do.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end45

land.rhs:                                         ; preds = %entry
  %.b221 = load i1, ptr @bw_frc_to_fixed.__already_done, align 1
  br i1 %.b221, label %land.rhs.if.then42_crit_edge, label %if.then, !prof !28

land.rhs.if.then42_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_frc_to_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef null) #4
  br label %if.then42

if.then42:                                        ; preds = %if.then, %land.rhs.if.then42_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %entry.do.end45_crit_edge
  %1 = tail call i64 @llvm.abs.i64(i64 %numerator, i1 false) #4
  %2 = tail call i64 @llvm.abs.i64(i64 %denominator, i1 false) #4
  %call47 = call i64 @div64_u64_rem(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %remainder) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 549755813887, i64 %call47)
  %cmp50 = icmp ugt i64 %call47, 549755813887
  br i1 %cmp50, label %land.rhs59, label %do.end45.do.end109_crit_edge

do.end45.do.end109_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end109

land.rhs59:                                       ; preds = %do.end45
  %.b214220 = load i1, ptr @bw_frc_to_fixed.__already_done.1, align 1
  br i1 %.b214220, label %land.rhs59.if.then106_crit_edge, label %if.then70, !prof !28

land.rhs59.if.then106_crit_edge:                  ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then106

if.then70:                                        ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_frc_to_fixed.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #4
  br label %if.then106

if.then106:                                       ; preds = %if.then70, %land.rhs59.if.then106_crit_edge
  call void @kgdb_breakpoint() #4
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %do.end45.do.end109_crit_edge
  %3 = ptrtoint ptr %remainder to i32
  call void @__asan_load8_noabort(i32 %3)
  %remainder.promoted = load i64, ptr %remainder, align 8
  br label %do.body110

do.body110:                                       ; preds = %do.body110.do.body110_crit_edge, %do.end109
  %storemerge219226 = phi i64 [ %remainder.promoted, %do.end109 ], [ %storemerge219, %do.body110.do.body110_crit_edge ]
  %res_value.0 = phi i64 [ %call47, %do.end109 ], [ %res_value.1, %do.body110.do.body110_crit_edge ]
  %i.0 = phi i32 [ 24, %do.end109 ], [ %dec, %do.body110.do.body110_crit_edge ]
  %shl = shl i64 %storemerge219226, 1
  %shl111 = shl i64 %res_value.0, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %2)
  %cmp112.not = icmp ult i64 %shl, %2
  %sub = select i1 %cmp112.not, i64 0, i64 %2
  %storemerge219 = sub i64 %shl, %sub
  %not.cmp112.not = xor i1 %cmp112.not, true
  %or = zext i1 %not.cmp112.not to i64
  %res_value.1 = or i64 %shl111, %or
  %dec = add nsw i32 %i.0, -1
  %cmp116.not = icmp eq i32 %dec, 0
  br i1 %cmp116.not, label %do.end117, label %do.body110.do.body110_crit_edge

do.body110.do.body110_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body110

do.end117:                                        ; preds = %do.body110
  %4 = ptrtoint ptr %remainder to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge219, ptr %remainder, align 8
  %shl118 = shl i64 %storemerge219, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl118, i64 %2)
  %cmp119 = icmp uge i64 %shl118, %2
  %sub123 = select i1 %cmp119, i64 9223372036854775806, i64 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %res_value.1, i64 %sub123)
  %cmp124.not = icmp ugt i64 %res_value.1, %sub123
  br i1 %cmp124.not, label %land.rhs135, label %do.end117.do.end185_crit_edge

do.end117.do.end185_crit_edge:                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end185

land.rhs135:                                      ; preds = %do.end117
  %.b215218 = load i1, ptr @bw_frc_to_fixed.__already_done.2, align 1
  br i1 %.b215218, label %land.rhs135.if.then182_crit_edge, label %if.then146, !prof !28

land.rhs135.if.then182_crit_edge:                 ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then182

if.then146:                                       ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_frc_to_fixed.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef null) #4
  br label %if.then182

if.then182:                                       ; preds = %if.then146, %land.rhs135.if.then182_crit_edge
  call void @kgdb_breakpoint() #4
  br label %do.end185

do.end185:                                        ; preds = %if.then182, %do.end117.do.end185_crit_edge
  %5 = zext i1 %cmp119 to i64
  %add = add i64 %res_value.1, %5
  %numerator.lobit217 = xor i64 %denominator, %numerator
  %sub193 = sub i64 0, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %numerator.lobit217)
  %tobool190.not225 = icmp slt i64 %numerator.lobit217, 0
  %spec.select = select i1 %tobool190.not225, i64 %sub193, i64 %add
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %spec.select, ptr %agg.result, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remainder) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bw_floor2(ptr noalias nocapture writeonly sret(%struct.bw_fixed) align 8 %agg.result, [1 x i64] %arg.coerce, [1 x i64] %significance.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %significance.coerce.fca.0.extract = extractvalue [1 x i64] %significance.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %significance.coerce.fca.0.extract, i1 false) #4
  %call3 = tail call i64 @div64_s64(i64 noundef %arg.coerce.fca.0.extract, i64 noundef %0) #4
  %mul = mul i64 %call3, %0
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %mul, ptr %agg.result, align 8
  %2 = tail call i64 @llvm.abs.i64(i64 %mul, i1 false) #4
  %3 = tail call i64 @llvm.abs.i64(i64 %arg.coerce.fca.0.extract, i1 false) #4
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %3)
  %cmp.not = icmp ugt i64 %2, %3
  br i1 %cmp.not, label %land.rhs, label %entry.do.end51_crit_edge

entry.do.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end51

land.rhs:                                         ; preds = %entry
  %.b56 = load i1, ptr @bw_floor2.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.then48_crit_edge, label %if.then, !prof !28

land.rhs.if.then48_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then48

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_floor2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #4
  br label %if.then48

if.then48:                                        ; preds = %if.then, %land.rhs.if.then48_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %entry.do.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bw_ceil2(ptr noalias nocapture sret(%struct.bw_fixed) align 8 %agg.result, [1 x i64] %arg.coerce, [1 x i64] %significance.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %significance.coerce.fca.0.extract = extractvalue [1 x i64] %significance.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %significance.coerce.fca.0.extract, i1 false) #4
  %call3 = tail call i64 @div64_s64(i64 noundef %arg.coerce.fca.0.extract, i64 noundef %0) #4
  %mul = mul i64 %call3, %0
  %1 = tail call i64 @llvm.abs.i64(i64 %mul, i1 false) #4
  %2 = tail call i64 @llvm.abs.i64(i64 %arg.coerce.fca.0.extract, i1 false) #4
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %2)
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg.coerce.fca.0.extract)
  %cmp12 = icmp slt i64 %arg.coerce.fca.0.extract, 0
  %3 = sub i64 0, %0
  %sub.sink.p = select i1 %cmp12, i64 %3, i64 %0
  %sub.sink = add i64 %mul, %sub.sink.p
  br label %if.end20

if.end20:                                         ; preds = %if.then, %entry.if.end20_crit_edge
  %storemerge = phi i64 [ %sub.sink, %if.then ], [ %mul, %entry.if.end20_crit_edge ]
  %4 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge, ptr %agg.result, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bw_mul(ptr noalias nocapture sret(%struct.bw_fixed) align 8 %agg.result, [1 x i64] %arg1.coerce, [1 x i64] %arg2.coerce) local_unnamed_addr #0 align 64 {
entry:
  %tmp191 = alloca %struct.bw_fixed, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arg1.coerce.fca.0.extract = extractvalue [1 x i64] %arg1.coerce, 0
  %arg2.coerce.fca.0.extract = extractvalue [1 x i64] %arg2.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %arg1.coerce.fca.0.extract, i1 false) #4
  %1 = tail call i64 @llvm.abs.i64(i64 %arg2.coerce.fca.0.extract, i1 false) #4
  %shr = lshr i64 %0, 24
  %shr8 = lshr i64 %1, 24
  %and = and i64 %0, 16777215
  %and9 = and i64 %1, 16777215
  %mul = mul i64 %shr8, %shr
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %mul, ptr %agg.result, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 549755813887, i64 %mul)
  %cmp12 = icmp sgt i64 %mul, 549755813887
  br i1 %cmp12, label %land.rhs, label %entry.do.end55_crit_edge

entry.do.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end55

land.rhs:                                         ; preds = %entry
  %.b305 = load i1, ptr @bw_mul.__already_done, align 1
  br i1 %.b305, label %land.rhs.if.then52_crit_edge, label %if.then, !prof !28

land.rhs.if.then52_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then52

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_mul.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #4
  br label %if.then52

if.then52:                                        ; preds = %if.then, %land.rhs.if.then52_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %entry.do.end55_crit_edge
  %shl = shl i64 %mul, 24
  %mul57 = mul nuw nsw i64 %and9, %shr
  %sub = sub i64 9223372036854775807, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %mul57, i64 %sub)
  %cmp61.not = icmp ugt i64 %mul57, %sub
  br i1 %cmp61.not, label %land.rhs70, label %do.end55.do.end120_crit_edge

do.end55.do.end120_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end120

land.rhs70:                                       ; preds = %do.end55
  %.b297304 = load i1, ptr @bw_mul.__already_done.3, align 1
  br i1 %.b297304, label %land.rhs70.if.then117_crit_edge, label %if.then81, !prof !28

land.rhs70.if.then117_crit_edge:                  ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then117

if.then81:                                        ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_mul.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef null) #4
  br label %if.then117

if.then117:                                       ; preds = %if.then81, %land.rhs70.if.then117_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %do.end55.do.end120_crit_edge
  %add = add i64 %shl, %mul57
  %mul122 = mul nuw nsw i64 %shr8, %and
  %sub126 = sub i64 9223372036854775807, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %mul122, i64 %sub126)
  %cmp127.not = icmp ugt i64 %mul122, %sub126
  br i1 %cmp127.not, label %land.rhs136, label %do.end120.do.end186_crit_edge

do.end120.do.end186_crit_edge:                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end186

land.rhs136:                                      ; preds = %do.end120
  %.b298303 = load i1, ptr @bw_mul.__already_done.4, align 1
  br i1 %.b298303, label %land.rhs136.if.then183_crit_edge, label %if.then147, !prof !28

land.rhs136.if.then183_crit_edge:                 ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then183

if.then147:                                       ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_mul.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #4
  br label %if.then183

if.then183:                                       ; preds = %if.then147, %land.rhs136.if.then183_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end186

do.end186:                                        ; preds = %if.then183, %do.end120.do.end186_crit_edge
  %add188 = add i64 %add, %mul122
  %mul189 = mul nuw nsw i64 %and9, %and
  %shr190 = lshr i64 %mul189, 24
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp191, i64 noundef 1, i64 noundef 2)
  %3 = ptrtoint ptr %tmp191 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tmp191, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul189, i64 %4)
  %cmp193 = icmp uge i64 %mul189, %4
  %5 = zext i1 %cmp193 to i64
  %add195 = add nuw nsw i64 %shr190, %5
  %sub199 = sub i64 9223372036854775807, %add188
  call void @__sanitizer_cov_trace_cmp8(i64 %add195, i64 %sub199)
  %cmp200.not = icmp ugt i64 %add195, %sub199
  br i1 %cmp200.not, label %land.rhs211, label %do.end186.do.end261_crit_edge

do.end186.do.end261_crit_edge:                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end261

land.rhs211:                                      ; preds = %do.end186
  %.b299302 = load i1, ptr @bw_mul.__already_done.5, align 1
  br i1 %.b299302, label %land.rhs211.if.then258_crit_edge, label %if.then222, !prof !28

land.rhs211.if.then258_crit_edge:                 ; preds = %land.rhs211
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then258

if.then222:                                       ; preds = %land.rhs211
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @bw_mul.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #4
  br label %if.then258

if.then258:                                       ; preds = %if.then222, %land.rhs211.if.then258_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end261

do.end261:                                        ; preds = %if.then258, %do.end186.do.end261_crit_edge
  %add263 = add i64 %add195, %add188
  %arg1.coerce.fca.0.extract.lobit301 = xor i64 %arg2.coerce.fca.0.extract, %arg1.coerce.fca.0.extract
  %sub271 = sub i64 0, %add263
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg1.coerce.fca.0.extract.lobit301)
  %tobool268.not310 = icmp slt i64 %arg1.coerce.fca.0.extract.lobit301, 0
  %spec.select = select i1 %tobool268.not310, i64 %sub271, i64 %add263
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %spec.select, ptr %agg.result, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 52, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 69, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 75, i32 2}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 99, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 120, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 162, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 168, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 174, i32 2}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/bw_fixed.c", i32 183, i32 2}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"auto-init"}
