; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/basics/fixpt31_32.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fixed31_32 = type { i64 }

@dc_fixpt_from_fraction.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c\00", [35 x i8] zeroinitializer }, align 32
@dc_fixpt_from_fraction.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_mul.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_mul.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_mul.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_mul.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_sqr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_sqr.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_sqr.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_sqr.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_recip.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_exp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_exp.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_log.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@complete_integer_division_u64.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_sub.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@dc_fixpt_round.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_shl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fixed31_32_exp_from_taylor_series.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.11 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 88, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 274, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.9], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_from_fraction(ptr noalias nocapture writeonly sret(%struct.fixed31_32) align 8 %agg.result, i64 noundef %numerator, i64 noundef %denominator) local_unnamed_addr #0 align 64 {
entry:
  %remainder = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.abs.i64(i64 %numerator, i1 false)
  %1 = tail call i64 @llvm.abs.i64(i64 %denominator, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remainder) #8
  %2 = ptrtoint ptr %remainder to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %remainder, align 8, !annotation !61
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %denominator)
  %tobool.not.i = icmp eq i64 %denominator, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.complete_integer_division_u64.exit_crit_edge

entry.complete_integer_division_u64.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_integer_division_u64.exit

land.rhs.i:                                       ; preds = %entry
  %.b46.i = load i1, ptr @complete_integer_division_u64.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.if.then39.i_crit_edge, label %if.then.i, !prof !62

land.rhs.i.if.then39.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @complete_integer_division_u64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #8
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then39.i_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %complete_integer_division_u64.exit

complete_integer_division_u64.exit:               ; preds = %if.then39.i, %entry.complete_integer_division_u64.exit_crit_edge
  %call.i = call i64 @div64_u64_rem(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %remainder) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call.i)
  %cmp9 = icmp ugt i64 %call.i, 2147483647
  br i1 %cmp9, label %land.rhs, label %complete_integer_division_u64.exit.do.end52_crit_edge

complete_integer_division_u64.exit.do.end52_crit_edge: ; preds = %complete_integer_division_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

land.rhs:                                         ; preds = %complete_integer_division_u64.exit
  %.b164 = load i1, ptr @dc_fixpt_from_fraction.__already_done, align 1
  br i1 %.b164, label %land.rhs.if.then49_crit_edge, label %if.then, !prof !62

land.rhs.if.then49_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_from_fraction.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef null) #8
  br label %if.then49

if.then49:                                        ; preds = %if.then, %land.rhs.if.then49_crit_edge
  call void @kgdb_breakpoint() #8
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %complete_integer_division_u64.exit.do.end52_crit_edge
  %3 = ptrtoint ptr %remainder to i32
  call void @__asan_load8_noabort(i32 %3)
  %remainder.promoted = load i64, ptr %remainder, align 8
  br label %do.body53

do.body53:                                        ; preds = %do.body53.do.body53_crit_edge, %do.end52
  %storemerge163168 = phi i64 [ %remainder.promoted, %do.end52 ], [ %storemerge163, %do.body53.do.body53_crit_edge ]
  %res_value.0 = phi i64 [ %call.i, %do.end52 ], [ %res_value.1, %do.body53.do.body53_crit_edge ]
  %i.0 = phi i32 [ 32, %do.end52 ], [ %dec, %do.body53.do.body53_crit_edge ]
  %shl = shl i64 %storemerge163168, 1
  %shl54 = shl i64 %res_value.0, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %1)
  %cmp55.not = icmp ult i64 %shl, %1
  %sub57 = select i1 %cmp55.not, i64 0, i64 %1
  %storemerge163 = sub i64 %shl, %sub57
  %not.cmp55.not = xor i1 %cmp55.not, true
  %or = zext i1 %not.cmp55.not to i64
  %res_value.1 = or i64 %shl54, %or
  %dec = add nsw i32 %i.0, -1
  %cmp60.not = icmp eq i32 %dec, 0
  br i1 %cmp60.not, label %do.end61, label %do.body53.do.body53_crit_edge

do.body53.do.body53_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

do.end61:                                         ; preds = %do.body53
  %4 = ptrtoint ptr %remainder to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge163, ptr %remainder, align 8
  %shl62 = shl i64 %storemerge163, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl62, i64 %1)
  %cmp63 = icmp uge i64 %shl62, %1
  %sub67 = select i1 %cmp63, i64 9223372036854775806, i64 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %res_value.1, i64 %sub67)
  %cmp68.not = icmp ugt i64 %res_value.1, %sub67
  br i1 %cmp68.not, label %land.rhs79, label %do.end61.do.end129_crit_edge

do.end61.do.end129_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

land.rhs79:                                       ; preds = %do.end61
  %.b159162 = load i1, ptr @dc_fixpt_from_fraction.__already_done.1, align 1
  br i1 %.b159162, label %land.rhs79.if.then126_crit_edge, label %if.then90, !prof !62

land.rhs79.if.then126_crit_edge:                  ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126

if.then90:                                        ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_from_fraction.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef null) #8
  br label %if.then126

if.then126:                                       ; preds = %if.then90, %land.rhs79.if.then126_crit_edge
  call void @kgdb_breakpoint() #8
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.end61.do.end129_crit_edge
  %5 = zext i1 %cmp63 to i64
  %add = add i64 %res_value.1, %5
  %numerator.lobit161 = xor i64 %denominator, %numerator
  %sub137 = sub i64 0, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %numerator.lobit161)
  %tobool134.not167 = icmp slt i64 %numerator.lobit161, 0
  %spec.select = select i1 %tobool134.not167, i64 %sub137, i64 %add
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %spec.select, ptr %agg.result, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remainder) #8
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
define dso_local void @dc_fixpt_mul(ptr noalias nocapture sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg1.coerce, [1 x i64] %arg2.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg1.coerce.fca.0.extract = extractvalue [1 x i64] %arg1.coerce, 0
  %arg2.coerce.fca.0.extract = extractvalue [1 x i64] %arg2.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %arg1.coerce.fca.0.extract, i1 false)
  %1 = tail call i64 @llvm.abs.i64(i64 %arg2.coerce.fca.0.extract, i1 false)
  %shr = lshr i64 %0, 32
  %shr15 = lshr i64 %1, 32
  %and = and i64 %0, 4294967295
  %and16 = and i64 %1, 4294967295
  %mul = mul nuw nsw i64 %shr15, %shr
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %mul, ptr %agg.result, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %mul)
  %cmp19 = icmp ugt i64 %mul, 2147483647
  br i1 %cmp19, label %land.rhs, label %entry.do.end63_crit_edge

entry.do.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

land.rhs:                                         ; preds = %entry
  %.b316 = load i1, ptr @dc_fixpt_mul.__already_done, align 1
  br i1 %.b316, label %land.rhs.if.then60_crit_edge, label %if.then, !prof !62

land.rhs.if.then60_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_mul.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef null) #8
  br label %if.then60

if.then60:                                        ; preds = %if.then, %land.rhs.if.then60_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %entry.do.end63_crit_edge
  %shl = shl i64 %mul, 32
  %mul65 = mul nuw nsw i64 %and16, %shr
  %sub69 = sub i64 9223372036854775807, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %mul65, i64 %sub69)
  %cmp70.not = icmp ugt i64 %mul65, %sub69
  br i1 %cmp70.not, label %land.rhs79, label %do.end63.do.end129_crit_edge

do.end63.do.end129_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

land.rhs79:                                       ; preds = %do.end63
  %.b308315 = load i1, ptr @dc_fixpt_mul.__already_done.2, align 1
  br i1 %.b308315, label %land.rhs79.if.then126_crit_edge, label %if.then90, !prof !62

land.rhs79.if.then126_crit_edge:                  ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126

if.then90:                                        ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_mul.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef null) #8
  br label %if.then126

if.then126:                                       ; preds = %if.then90, %land.rhs79.if.then126_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.end63.do.end129_crit_edge
  %add = add i64 %shl, %mul65
  %mul131 = mul nuw nsw i64 %shr15, %and
  %sub135 = sub i64 9223372036854775807, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %mul131, i64 %sub135)
  %cmp136.not = icmp ugt i64 %mul131, %sub135
  br i1 %cmp136.not, label %land.rhs145, label %do.end129.do.end195_crit_edge

do.end129.do.end195_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end195

land.rhs145:                                      ; preds = %do.end129
  %.b309314 = load i1, ptr @dc_fixpt_mul.__already_done.3, align 1
  br i1 %.b309314, label %land.rhs145.if.then192_crit_edge, label %if.then156, !prof !62

land.rhs145.if.then192_crit_edge:                 ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then192

if.then156:                                       ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_mul.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #8
  br label %if.then192

if.then192:                                       ; preds = %if.then156, %land.rhs145.if.then192_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end195

do.end195:                                        ; preds = %if.then192, %do.end129.do.end195_crit_edge
  %add197 = add i64 %add, %mul131
  %mul198 = mul nuw i64 %and16, %and
  %shr199 = lshr i64 %mul198, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %mul198)
  %cmp200 = icmp ugt i64 %mul198, 2147483647
  %3 = zext i1 %cmp200 to i64
  %add202 = add nuw nsw i64 %shr199, %3
  %sub206 = sub i64 9223372036854775807, %add197
  call void @__sanitizer_cov_trace_cmp8(i64 %add202, i64 %sub206)
  %cmp207.not = icmp ugt i64 %add202, %sub206
  br i1 %cmp207.not, label %land.rhs218, label %do.end195.do.end268_crit_edge

do.end195.do.end268_crit_edge:                    ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end268

land.rhs218:                                      ; preds = %do.end195
  %.b310313 = load i1, ptr @dc_fixpt_mul.__already_done.4, align 1
  br i1 %.b310313, label %land.rhs218.if.then265_crit_edge, label %if.then229, !prof !62

land.rhs218.if.then265_crit_edge:                 ; preds = %land.rhs218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then265

if.then229:                                       ; preds = %land.rhs218
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_mul.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 9, ptr noundef null) #8
  br label %if.then265

if.then265:                                       ; preds = %if.then229, %land.rhs218.if.then265_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end268

do.end268:                                        ; preds = %if.then265, %do.end195.do.end268_crit_edge
  %add270 = add i64 %add197, %add202
  %arg1.coerce.fca.0.extract.lobit312 = xor i64 %arg2.coerce.fca.0.extract, %arg1.coerce.fca.0.extract
  %sub278 = sub i64 0, %add270
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg1.coerce.fca.0.extract.lobit312)
  %tobool275.not321 = icmp slt i64 %arg1.coerce.fca.0.extract.lobit312, 0
  %spec.select = select i1 %tobool275.not321, i64 %sub278, i64 %add270
  %4 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %spec.select, ptr %agg.result, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_sqr(ptr noalias nocapture sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %arg.coerce.fca.0.extract, i1 false) #8
  %shr = lshr i64 %0, 32
  %and = and i64 %0, 4294967295
  %mul = mul nuw nsw i64 %shr, %shr
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %mul, ptr %agg.result, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %mul)
  %cmp = icmp ugt i64 %mul, 2147483647
  br i1 %cmp, label %land.rhs, label %entry.do.end44_crit_edge

entry.do.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

land.rhs:                                         ; preds = %entry
  %.b276 = load i1, ptr @dc_fixpt_sqr.__already_done, align 1
  br i1 %.b276, label %land.rhs.if.then41_crit_edge, label %if.then, !prof !62

land.rhs.if.then41_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sqr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #8
  br label %if.then41

if.then41:                                        ; preds = %if.then, %land.rhs.if.then41_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %entry.do.end44_crit_edge
  %shl = shl i64 %mul, 32
  %mul46 = mul nuw nsw i64 %shr, %and
  %sub = sub i64 9223372036854775807, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %mul46, i64 %sub)
  %cmp50.not = icmp ugt i64 %mul46, %sub
  br i1 %cmp50.not, label %land.rhs59, label %do.end44.do.end109_crit_edge

do.end44.do.end109_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

land.rhs59:                                       ; preds = %do.end44
  %.b270275 = load i1, ptr @dc_fixpt_sqr.__already_done.5, align 1
  br i1 %.b270275, label %land.rhs59.if.then106_crit_edge, label %if.then70, !prof !62

land.rhs59.if.then106_crit_edge:                  ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.then70:                                        ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sqr.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef null) #8
  br label %if.then106

if.then106:                                       ; preds = %if.then70, %land.rhs59.if.then106_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %do.end44.do.end109_crit_edge
  %add = add i64 %shl, %mul46
  %sub114 = sub i64 9223372036854775807, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %mul46, i64 %sub114)
  %cmp115.not = icmp ugt i64 %mul46, %sub114
  br i1 %cmp115.not, label %land.rhs124, label %do.end109.do.end174_crit_edge

do.end109.do.end174_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end174

land.rhs124:                                      ; preds = %do.end109
  %.b271274 = load i1, ptr @dc_fixpt_sqr.__already_done.6, align 1
  br i1 %.b271274, label %land.rhs124.if.then171_crit_edge, label %if.then135, !prof !62

land.rhs124.if.then171_crit_edge:                 ; preds = %land.rhs124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then171

if.then135:                                       ; preds = %land.rhs124
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sqr.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef null) #8
  br label %if.then171

if.then171:                                       ; preds = %if.then135, %land.rhs124.if.then171_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end174

do.end174:                                        ; preds = %if.then171, %do.end109.do.end174_crit_edge
  %add176 = add i64 %add, %mul46
  %mul177 = mul nuw i64 %and, %and
  %shr178 = lshr i64 %mul177, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %mul177)
  %cmp179 = icmp ugt i64 %mul177, 2147483647
  %2 = zext i1 %cmp179 to i64
  %add181 = add nuw nsw i64 %shr178, %2
  %sub185 = sub i64 9223372036854775807, %add176
  call void @__sanitizer_cov_trace_cmp8(i64 %add181, i64 %sub185)
  %cmp186.not = icmp ugt i64 %add181, %sub185
  br i1 %cmp186.not, label %land.rhs197, label %do.end174.do.end247_crit_edge

do.end174.do.end247_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end247

land.rhs197:                                      ; preds = %do.end174
  %.b272273 = load i1, ptr @dc_fixpt_sqr.__already_done.7, align 1
  br i1 %.b272273, label %land.rhs197.if.then244_crit_edge, label %if.then208, !prof !62

land.rhs197.if.then244_crit_edge:                 ; preds = %land.rhs197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then244

if.then208:                                       ; preds = %land.rhs197
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sqr.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #8
  br label %if.then244

if.then244:                                       ; preds = %if.then208, %land.rhs197.if.then244_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end247

do.end247:                                        ; preds = %if.then244, %do.end174.do.end247_crit_edge
  %add249 = add i64 %add176, %add181
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add249, ptr %agg.result, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_recip(ptr noalias nocapture writeonly sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg.coerce.fca.0.extract)
  %tobool.not = icmp eq i64 %arg.coerce.fca.0.extract, 0
  br i1 %tobool.not, label %land.rhs, label %entry.do.end42_crit_edge

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @dc_fixpt_recip.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !62

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_recip.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #8
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %entry.do.end42_crit_edge
  tail call void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8 %agg.result, i64 noundef 4294967296, i64 noundef %arg.coerce.fca.0.extract)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_sinc(ptr noalias nocapture sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp3 = alloca %struct.fixed31_32, align 8
  %tmp7 = alloca %struct.fixed31_32, align 8
  %agg.tmp10 = alloca %struct.fixed31_32, align 8
  %agg.tmp11 = alloca %struct.fixed31_32, align 8
  %agg.tmp25 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4294967296, ptr %agg.result, align 8
  %1 = tail call i64 @llvm.abs.i64(i64 %arg.coerce.fca.0.extract, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 26986075408, i64 %1)
  %cmp.i = icmp sgt i64 %1, 26986075408
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call4 = tail call i64 @div64_s64(i64 noundef %arg.coerce.fca.0.extract, i64 noundef 26986075409) #8
  %conv1.i.i = shl i64 %call4, 32
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %conv1.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp3, [1 x i64] [i64 26986075409], [1 x i64] %.fca.0.insert.i) #8
  %2 = ptrtoint ptr %agg.tmp3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.0.load38 = load i64, ptr %agg.tmp3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load38)
  %cmp.i75 = icmp slt i64 %.fca.0.load38, 0
  %add.i = xor i64 %.fca.0.load38, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %arg.coerce.fca.0.extract)
  %cmp4.not.i = icmp sgt i64 %add.i, %arg.coerce.fca.0.extract
  %or.cond.i = select i1 %cmp.i75, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %if.then.dc_fixpt_sub.exit_crit_edge

if.then.dc_fixpt_sub.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load38)
  %cmp6.i = icmp sgt i64 %.fca.0.load38, -1
  %add8.i = add i64 %.fca.0.load38, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %arg.coerce.fca.0.extract)
  %cmp10.i = icmp slt i64 %add8.i, %arg.coerce.fca.0.extract
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_sub.exit_crit_edge

lor.rhs.i.dc_fixpt_sub.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !63
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !62

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !63
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !63
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_sub.exit_crit_edge, %if.then.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 %arg.coerce.fca.0.extract, %.fca.0.load38
  br label %if.end

if.end:                                           ; preds = %dc_fixpt_sub.exit, %entry.if.end_crit_edge
  %arg_norm.sroa.0.0 = phi i64 [ %sub.i, %dc_fixpt_sub.exit ], [ %arg.coerce.fca.0.extract, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp7) #8
  %.fca.0.insert48 = insertvalue [1 x i64] poison, i64 %arg_norm.sroa.0.0, 0
  call void @dc_fixpt_sqr(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp7, [1 x i64] %.fca.0.insert48)
  %3 = ptrtoint ptr %tmp7 to i32
  call void @__asan_load8_noabort(i32 %3)
  %square.sroa.0.0.copyload = load i64, ptr %tmp7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp7) #8
  %.fca.0.insert62 = insertvalue [1 x i64] poison, i64 %square.sroa.0.0.copyload, 0
  br label %do.body

do.body:                                          ; preds = %dc_fixpt_sub.exit91.do.body_crit_edge, %if.end
  %n.0 = phi i32 [ 27, %if.end ], [ %sub17, %dc_fixpt_sub.exit91.do.body_crit_edge ]
  %4 = ptrtoint ptr %agg.result to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack = load i64, ptr %agg.result, align 8
  %5 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp11, [1 x i64] %.fca.0.insert62, [1 x i64] %5)
  %sub = add nsw i32 %n.0, -1
  %mul = mul i32 %sub, %n.0
  %conv14 = sext i32 %mul to i64
  %6 = ptrtoint ptr %agg.tmp11 to i32
  call void @__asan_load8_noabort(i32 %6)
  %.fca.0.load32 = load i64, ptr %agg.tmp11, align 8
  %conv1.i.i76 = shl nsw i64 %conv14, 32
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp10, i64 noundef %.fca.0.load32, i64 noundef %conv1.i.i76) #8
  %7 = ptrtoint ptr %agg.tmp10 to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.0.load35 = load i64, ptr %agg.tmp10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808511, i64 %.fca.0.load35)
  %8 = icmp slt i64 %.fca.0.load35, -9223372032559808511
  br i1 %8, label %land.rhs13.i87, label %do.body.dc_fixpt_sub.exit91_crit_edge

do.body.dc_fixpt_sub.exit91_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit91

land.rhs13.i87:                                   ; preds = %do.body
  %.b65.i86 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !66
  br i1 %.b65.i86, label %land.rhs13.i87.if.then50.i89_crit_edge, label %if.then.i88, !prof !62

land.rhs13.i87.if.then50.i89_crit_edge:           ; preds = %land.rhs13.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i89

if.then.i88:                                      ; preds = %land.rhs13.i87
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !66
  br label %if.then50.i89

if.then50.i89:                                    ; preds = %if.then.i88, %land.rhs13.i87.if.then50.i89_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !66
  br label %dc_fixpt_sub.exit91

dc_fixpt_sub.exit91:                              ; preds = %if.then50.i89, %do.body.dc_fixpt_sub.exit91_crit_edge
  %sub.i90 = sub i64 4294967296, %.fca.0.load35
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sub.i90, ptr %agg.result, align 8
  %sub17 = add nsw i32 %n.0, -2
  %cmp = icmp ugt i32 %sub17, 2
  br i1 %cmp, label %dc_fixpt_sub.exit91.do.body_crit_edge, label %do.end

dc_fixpt_sub.exit91.do.body_crit_edge:            ; preds = %dc_fixpt_sub.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %dc_fixpt_sub.exit91
  call void @__sanitizer_cov_trace_cmp8(i64 %arg.coerce.fca.0.extract, i64 %arg_norm.sroa.0.0)
  %cmp21.not = icmp eq i64 %arg.coerce.fca.0.extract, %arg_norm.sroa.0.0
  br i1 %cmp21.not, label %do.end.if.end30_crit_edge, label %if.then23

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = insertvalue [1 x i64] undef, i64 %sub.i90, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp25, [1 x i64] %10, [1 x i64] %.fca.0.insert48)
  %11 = ptrtoint ptr %agg.tmp25 to i32
  call void @__asan_load8_noabort(i32 %11)
  %.fca.0.load = load i64, ptr %agg.tmp25, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.result, i64 noundef %.fca.0.load, i64 noundef %arg.coerce.fca.0.extract) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %do.end.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_sin(ptr noalias nocapture sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @dc_fixpt_sinc(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, [1 x i64] %arg.coerce)
  %0 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %0)
  %.fca.0.load = load i64, ptr %agg.tmp, align 8
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %.fca.0.load, 0
  tail call void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce, [1 x i64] %.fca.0.insert)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_cos(ptr noalias nocapture sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) local_unnamed_addr #0 align 64 {
entry:
  %square = alloca %struct.fixed31_32, align 8
  %agg.tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp2 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %square) #8
  %0 = ptrtoint ptr %square to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %square, align 8, !annotation !61
  call void @dc_fixpt_sqr(ptr nonnull sret(%struct.fixed31_32) align 8 %square, [1 x i64] %arg.coerce)
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 4294967296, ptr %agg.result, align 8
  %2 = ptrtoint ptr %square to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.0.load16 = load i64, ptr %square, align 8
  %.fca.0.insert17 = insertvalue [1 x i64] poison, i64 %.fca.0.load16, 0
  br label %do.body

do.body:                                          ; preds = %dc_fixpt_sub.exit.do.body_crit_edge, %entry
  %n.0 = phi i32 [ 26, %entry ], [ %sub7, %dc_fixpt_sub.exit.do.body_crit_edge ]
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack = load i64, ptr %agg.result, align 8
  %4 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp2, [1 x i64] %.fca.0.insert17, [1 x i64] %4)
  %sub = add nsw i32 %n.0, -1
  %mul = mul i32 %sub, %n.0
  %conv = sext i32 %mul to i64
  %5 = ptrtoint ptr %agg.tmp2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.0.load = load i64, ptr %agg.tmp2, align 8
  %conv1.i.i = shl nsw i64 %conv, 32
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, i64 noundef %.fca.0.load, i64 noundef %conv1.i.i) #8
  %6 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %6)
  %.fca.0.load10 = load i64, ptr %agg.tmp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808511, i64 %.fca.0.load10)
  %7 = icmp slt i64 %.fca.0.load10, -9223372032559808511
  br i1 %7, label %land.rhs13.i, label %do.body.dc_fixpt_sub.exit_crit_edge

do.body.dc_fixpt_sub.exit_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %do.body
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !69
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !62

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !69
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !69
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %do.body.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 4294967296, %.fca.0.load10
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub.i, ptr %agg.result, align 8
  %sub7 = add nsw i32 %n.0, -2
  %cmp.not = icmp eq i32 %sub7, 0
  br i1 %cmp.not, label %do.end, label %dc_fixpt_sub.exit.do.body_crit_edge

dc_fixpt_sub.exit.do.body_crit_edge:              ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %square) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_exp(ptr noalias nocapture writeonly sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp3 = alloca %struct.fixed31_32, align 8
  %agg.tmp7 = alloca %struct.fixed31_32, align 8
  %agg.tmp119 = alloca %struct.fixed31_32, align 8
  %agg.tmp122 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract.i = extractvalue [1 x i64] %arg.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %arg.coerce.fca.0.extract.i, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1488522235, i64 %0)
  %cmp.i = icmp sgt i64 %0, 1488522235
  br i1 %cmp.i, label %if.then, label %if.else126

if.then:                                          ; preds = %entry
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp3, i64 noundef %arg.coerce.fca.0.extract.i, i64 noundef 2977044471) #8
  %1 = ptrtoint ptr %agg.tmp3 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.fca.0.load155 = load i64, ptr %agg.tmp3, align 8
  %2 = tail call i64 @llvm.abs.i64(i64 %.fca.0.load155, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372034707292159, i64 %2)
  %cmp4.i = icmp ugt i64 %2, 9223372034707292159
  br i1 %cmp4.i, label %land.rhs.i, label %if.then.dc_fixpt_round.exit_crit_edge

if.then.dc_fixpt_round.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_round.exit

land.rhs.i:                                       ; preds = %if.then
  %.b62.i = load i1, ptr @dc_fixpt_round.__already_done, align 1
  br i1 %.b62.i, label %land.rhs.i.if.then42.i_crit_edge, label %if.then.i, !prof !62

land.rhs.i.if.then42.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_round.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 466, i32 noundef 9, ptr noundef null) #8
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then42.i_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %dc_fixpt_round.exit

dc_fixpt_round.exit:                              ; preds = %if.then42.i, %if.then.dc_fixpt_round.exit_crit_edge
  %add.i = add nuw i64 %2, 2147483648
  %shr.i = lshr i64 %add.i, 32
  %conv.i = trunc i64 %shr.i to i32
  %sub51.i = sub i32 0, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load155)
  %cmp4764.i = icmp slt i64 %.fca.0.load155, 0
  %retval.0.i = select i1 %cmp4764.i, i32 %sub51.i, i32 %conv.i
  %conv1.i.i = zext i32 %retval.0.i to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %shl.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp7, [1 x i64] [i64 2977044471], [1 x i64] %.fca.0.insert.i) #8
  %3 = ptrtoint ptr %agg.tmp7 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.fca.0.load143 = load i64, ptr %agg.tmp7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load143)
  %cmp.i186 = icmp slt i64 %.fca.0.load143, 0
  %add.i187 = xor i64 %.fca.0.load143, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i187, i64 %arg.coerce.fca.0.extract.i)
  %cmp4.not.i = icmp sgt i64 %add.i187, %arg.coerce.fca.0.extract.i
  %or.cond.i = select i1 %cmp.i186, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %dc_fixpt_round.exit.dc_fixpt_sub.exit_crit_edge

dc_fixpt_round.exit.dc_fixpt_sub.exit_crit_edge:  ; preds = %dc_fixpt_round.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i:                                        ; preds = %dc_fixpt_round.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load143)
  %cmp6.i = icmp sgt i64 %.fca.0.load143, -1
  %add8.i = add i64 %.fca.0.load143, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %arg.coerce.fca.0.extract.i)
  %cmp10.i = icmp slt i64 %add8.i, %arg.coerce.fca.0.extract.i
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_sub.exit_crit_edge

lor.rhs.i.dc_fixpt_sub.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !72
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i188, !prof !62

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i188:                                     ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !72
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i188, %land.rhs13.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !72
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_sub.exit_crit_edge, %dc_fixpt_round.exit.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 %arg.coerce.fca.0.extract.i, %.fca.0.load143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %land.rhs, label %dc_fixpt_sub.exit.do.body52_crit_edge

dc_fixpt_sub.exit.do.body52_crit_edge:            ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

land.rhs:                                         ; preds = %dc_fixpt_sub.exit
  %.b182 = load i1, ptr @dc_fixpt_exp.__already_done, align 1
  br i1 %.b182, label %land.rhs.if.then48_crit_edge, label %if.then17, !prof !62

land.rhs.if.then48_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_exp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #8
  br label %if.then48

if.then48:                                        ; preds = %if.then17, %land.rhs.if.then48_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.body52

do.body52:                                        ; preds = %if.then48, %dc_fixpt_sub.exit.do.body52_crit_edge
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %4)
  %cmp.i189 = icmp slt i64 %4, 4294967296
  br i1 %cmp.i189, label %do.body52.do.end116_crit_edge, label %land.rhs66

do.body52.do.end116_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

land.rhs66:                                       ; preds = %do.body52
  %.b180181 = load i1, ptr @dc_fixpt_exp.__already_done.8, align 1
  br i1 %.b180181, label %land.rhs66.if.then113_crit_edge, label %if.then77, !prof !62

land.rhs66.if.then113_crit_edge:                  ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then113

if.then77:                                        ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_exp.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 366, i32 noundef 9, ptr noundef null) #8
  br label %if.then113

if.then113:                                       ; preds = %if.then77, %land.rhs66.if.then113_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %do.body52.do.end116_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp117 = icmp sgt i32 %retval.0.i, 0
  %.fca.0.insert150 = insertvalue [1 x i64] poison, i64 %sub.i, 0
  br i1 %cmp117, label %if.then118, label %if.else

if.then118:                                       ; preds = %do.end116
  call fastcc void @fixed31_32_exp_from_taylor_series(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp119, [1 x i64] %.fca.0.insert150)
  %5 = ptrtoint ptr %agg.tmp119 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.0.load133 = load i64, ptr %agg.tmp119, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load133)
  %cmp.i190 = icmp sgt i64 %.fca.0.load133, -1
  %conv.mask = and i32 %retval.0.i, 255
  %sh_prom.i = zext i32 %conv.mask to i64
  br i1 %cmp.i190, label %land.lhs.true.i, label %land.rhs.i192

land.lhs.true.i:                                  ; preds = %if.then118
  %shr.i191 = lshr i64 9223372036854775807, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %.fca.0.load133, i64 %shr.i191)
  %cmp2.not.i = icmp ugt i64 %.fca.0.load133, %shr.i191
  br i1 %cmp2.not.i, label %land.lhs.true.i.land.rhs16.i_crit_edge, label %land.lhs.true.i.dc_fixpt_shl.exit_crit_edge

land.lhs.true.i.dc_fixpt_shl.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_shl.exit

land.lhs.true.i.land.rhs16.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs16.i

land.rhs.i192:                                    ; preds = %if.then118
  %neg.i = ashr i64 -9223372036854775808, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %.fca.0.load133, i64 %neg.i)
  %cmp11.i = icmp ult i64 %.fca.0.load133, %neg.i
  br i1 %cmp11.i, label %land.rhs.i192.land.rhs16.i_crit_edge, label %land.rhs.i192.dc_fixpt_shl.exit_crit_edge

land.rhs.i192.dc_fixpt_shl.exit_crit_edge:        ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_shl.exit

land.rhs.i192.land.rhs16.i_crit_edge:             ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs16.i

land.rhs16.i:                                     ; preds = %land.rhs.i192.land.rhs16.i_crit_edge, %land.lhs.true.i.land.rhs16.i_crit_edge
  %.b69.i = load i1, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !75
  br i1 %.b69.i, label %land.rhs16.i.if.then53.i_crit_edge, label %if.then.i193, !prof !62

land.rhs16.i.if.then53.i_crit_edge:               ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53.i

if.then.i193:                                     ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 213, i32 noundef 9, ptr noundef null) #8, !noalias !75
  br label %if.then53.i

if.then53.i:                                      ; preds = %if.then.i193, %land.rhs16.i.if.then53.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !75
  br label %dc_fixpt_shl.exit

dc_fixpt_shl.exit:                                ; preds = %if.then53.i, %land.rhs.i192.dc_fixpt_shl.exit_crit_edge, %land.lhs.true.i.dc_fixpt_shl.exit_crit_edge
  %shl.i = shl i64 %.fca.0.load133, %sh_prom.i
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shl.i, ptr %agg.result, align 8, !alias.scope !75
  br label %return

if.else:                                          ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @fixed31_32_exp_from_taylor_series(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp122, [1 x i64] %.fca.0.insert150)
  %sub = sub i32 0, %retval.0.i
  %sh_prom = zext i32 %sub to i64
  %7 = ptrtoint ptr %agg.tmp122 to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.0.load = load i64, ptr %agg.tmp122, align 8
  %conv1.i.i194 = shl i64 4294967296, %sh_prom
  tail call void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8 %agg.result, i64 noundef %.fca.0.load, i64 noundef %conv1.i.i194) #8
  br label %return

if.else126:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg.coerce.fca.0.extract.i)
  %cmp127.not = icmp eq i64 %arg.coerce.fca.0.extract.i, 0
  br i1 %cmp127.not, label %if.else131, label %if.then129

if.then129:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fixed31_32_exp_from_taylor_series(ptr sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce)
  br label %return

if.else131:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4294967296, ptr %agg.result, align 8
  br label %return

return:                                           ; preds = %if.else131, %if.then129, %if.else, %dc_fixpt_shl.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fixed31_32_exp_from_taylor_series(ptr noalias nocapture writeonly sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.fixed31_32, align 8
  %agg.tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp48 = alloca %struct.fixed31_32, align 8
  %agg.tmp57 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %res, align 8, !annotation !61
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %res, i64 noundef 11, i64 noundef 10)
  %arg1.coerce.fca.0.extract.i = extractvalue [1 x i64] %arg.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %arg1.coerce.fca.0.extract.i)
  %cmp.i = icmp slt i64 %arg1.coerce.fca.0.extract.i, 4294967296
  br i1 %cmp.i, label %entry.do.end45_crit_edge, label %land.rhs

entry.do.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

land.rhs:                                         ; preds = %entry
  %.b89 = load i1, ptr @fixed31_32_exp_from_taylor_series.__already_done, align 1
  br i1 %.b89, label %land.rhs.if.then42_crit_edge, label %if.then, !prof !62

land.rhs.if.then42_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fixed31_32_exp_from_taylor_series.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #8
  br label %if.then42

if.then42:                                        ; preds = %if.then, %land.rhs.if.then42_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %entry.do.end45_crit_edge
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %1)
  %res.promoted = load i64, ptr %res, align 8
  br label %do.body46

do.body46:                                        ; preds = %dc_fixpt_add.exit.do.body46_crit_edge, %do.end45
  %add.i99 = phi i64 [ %res.promoted, %do.end45 ], [ %add.i, %dc_fixpt_add.exit.do.body46_crit_edge ]
  %n.0 = phi i32 [ 9, %do.end45 ], [ %dec, %dc_fixpt_add.exit.do.body46_crit_edge ]
  %.fca.0.insert71 = insertvalue [1 x i64] poison, i64 %add.i99, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp48, [1 x i64] %arg.coerce, [1 x i64] %.fca.0.insert71)
  %conv51 = zext i32 %n.0 to i64
  %2 = ptrtoint ptr %agg.tmp48 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.0.load62 = load i64, ptr %agg.tmp48, align 8
  %conv1.i.i = shl nuw i64 %conv51, 32
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, i64 noundef %.fca.0.load62, i64 noundef %conv1.i.i) #8
  %3 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %3)
  %.fca.0.load65 = load i64, ptr %agg.tmp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %.fca.0.load65)
  %cmp4.not.i = icmp sgt i64 %.fca.0.load65, 9223372032559808511
  br i1 %cmp4.not.i, label %lor.rhs.i, label %do.body46.dc_fixpt_add.exit_crit_edge

do.body46.dc_fixpt_add.exit_crit_edge:            ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

lor.rhs.i:                                        ; preds = %do.body46
  %.b65.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !78
  br i1 %.b65.i, label %lor.rhs.i.if.then50.i_crit_edge, label %if.then.i, !prof !62

lor.rhs.i.if.then50.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !78
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %lor.rhs.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !78
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i, %do.body46.dc_fixpt_add.exit_crit_edge
  %add.i = add i64 %.fca.0.load65, 4294967296
  %dec = add nsw i32 %n.0, -1
  %cmp.not = icmp eq i32 %dec, 1
  br i1 %cmp.not, label %do.end56, label %dc_fixpt_add.exit.do.body46_crit_edge

dc_fixpt_add.exit.do.body46_crit_edge:            ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

do.end56:                                         ; preds = %dc_fixpt_add.exit
  %.fca.0.insert74 = insertvalue [1 x i64] poison, i64 %add.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp57, [1 x i64] %arg.coerce, [1 x i64] %.fca.0.insert74)
  %4 = ptrtoint ptr %agg.tmp57 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load = load i64, ptr %agg.tmp57, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808511, i64 %.fca.0.load)
  %cmp4.not.i91 = icmp sgt i64 %.fca.0.load, 9223372032559808511
  br i1 %cmp4.not.i91, label %lor.rhs.i93, label %do.end56.dc_fixpt_add.exit98_crit_edge

do.end56.dc_fixpt_add.exit98_crit_edge:           ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit98

lor.rhs.i93:                                      ; preds = %do.end56
  %.b65.i94 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !81
  br i1 %.b65.i94, label %lor.rhs.i93.if.then50.i96_crit_edge, label %if.then.i95, !prof !62

lor.rhs.i93.if.then50.i96_crit_edge:              ; preds = %lor.rhs.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i96

if.then.i95:                                      ; preds = %lor.rhs.i93
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !81
  br label %if.then50.i96

if.then50.i96:                                    ; preds = %if.then.i95, %lor.rhs.i93.if.then50.i96_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !81
  br label %dc_fixpt_add.exit98

dc_fixpt_add.exit98:                              ; preds = %if.then50.i96, %do.end56.dc_fixpt_add.exit98_crit_edge
  %add.i97 = add i64 %.fca.0.load, 4294967296
  %5 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %add.i97, ptr %agg.result, align 8, !alias.scope !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_fixpt_log(ptr noalias nocapture sret(%struct.fixed31_32) align 8 %agg.result, [1 x i64] %arg.coerce) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp44 = alloca %struct.fixed31_32, align 8
  %agg.tmp45 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4294967296, ptr %agg.result, align 8, !alias.scope !84
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %arg.coerce.fca.0.extract)
  %cmp = icmp slt i64 %arg.coerce.fca.0.extract, 1
  br i1 %cmp, label %land.rhs, label %entry.do.end41_crit_edge

entry.do.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

land.rhs:                                         ; preds = %entry
  %.b76 = load i1, ptr @dc_fixpt_log.__already_done, align 1
  br i1 %.b76, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !62

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_log.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef null) #8
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %entry.do.end41_crit_edge
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack.pr = load i64, ptr %agg.result, align 8
  br label %do.body42

do.body42:                                        ; preds = %dc_fixpt_sub.exit98.do.body42_crit_edge, %do.end41
  %.unpack = phi i64 [ %add.i, %dc_fixpt_sub.exit98.do.body42_crit_edge ], [ %.unpack.pr, %do.end41 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808512, i64 %.unpack)
  %cmp4.not.i = icmp slt i64 %.unpack, -9223372032559808512
  br i1 %cmp4.not.i, label %lor.rhs.i, label %do.body42.dc_fixpt_sub.exit_crit_edge

do.body42.dc_fixpt_sub.exit_crit_edge:            ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit

lor.rhs.i:                                        ; preds = %do.body42
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !87
  br i1 %.b65.i, label %lor.rhs.i.if.then50.i_crit_edge, label %if.then.i, !prof !62

lor.rhs.i.if.then50.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i

if.then.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !87
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %lor.rhs.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !87
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %do.body42.dc_fixpt_sub.exit_crit_edge
  %sub.i = add i64 %.unpack, -4294967296
  %2 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp45, [1 x i64] %2)
  %3 = ptrtoint ptr %agg.tmp45 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.fca.0.load = load i64, ptr %agg.tmp45, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp44, i64 noundef %arg.coerce.fca.0.extract, i64 noundef %.fca.0.load) #8
  %4 = ptrtoint ptr %agg.tmp44 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load59 = load i64, ptr %agg.tmp44, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp slt i64 %sub.i, 0
  %sub.i78 = sub i64 -9223372032559808513, %.unpack
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i78, i64 %.fca.0.load59)
  %cmp4.not.i79 = icmp slt i64 %sub.i78, %.fca.0.load59
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.not.i79
  br i1 %or.cond.i, label %lor.rhs.i81, label %dc_fixpt_sub.exit.dc_fixpt_add.exit_crit_edge

dc_fixpt_sub.exit.dc_fixpt_add.exit_crit_edge:    ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

lor.rhs.i81:                                      ; preds = %dc_fixpt_sub.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp6.i = icmp sgt i64 %sub.i, -1
  %sub8.i = sub i64 -9223372032559808512, %.unpack
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i, i64 %.fca.0.load59)
  %cmp10.i80 = icmp sgt i64 %sub8.i, %.fca.0.load59
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i80
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i81.dc_fixpt_add.exit_crit_edge

lor.rhs.i81.dc_fixpt_add.exit_crit_edge:          ; preds = %lor.rhs.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_add.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i81
  %.b65.i82 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !90
  br i1 %.b65.i82, label %land.rhs13.i.if.then50.i84_crit_edge, label %if.then.i83, !prof !62

land.rhs13.i.if.then50.i84_crit_edge:             ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i84

if.then.i83:                                      ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 250, i32 noundef 9, ptr noundef null) #8, !noalias !90
  br label %if.then50.i84

if.then50.i84:                                    ; preds = %if.then.i83, %land.rhs13.i.if.then50.i84_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !90
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i84, %lor.rhs.i81.dc_fixpt_add.exit_crit_edge, %dc_fixpt_sub.exit.dc_fixpt_add.exit_crit_edge
  %add.i = add i64 %.fca.0.load59, %sub.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp.i85 = icmp slt i64 %add.i, 0
  %add.i86 = xor i64 %add.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i86, i64 %.unpack)
  %cmp4.not.i87 = icmp sgt i64 %add.i86, %.unpack
  %or.cond.i88 = select i1 %cmp.i85, i1 true, i1 %cmp4.not.i87
  br i1 %or.cond.i88, label %lor.rhs.i92, label %dc_fixpt_add.exit.dc_fixpt_sub.exit98_crit_edge

dc_fixpt_add.exit.dc_fixpt_sub.exit98_crit_edge:  ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit98

lor.rhs.i92:                                      ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add.i)
  %cmp6.i89 = icmp sgt i64 %add.i, -1
  %add8.i = add i64 %add.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %.unpack)
  %cmp10.i90 = icmp slt i64 %add8.i, %.unpack
  %or.cond67.i91 = select i1 %cmp6.i89, i1 true, i1 %cmp10.i90
  br i1 %or.cond67.i91, label %land.rhs13.i94, label %lor.rhs.i92.dc_fixpt_sub.exit98_crit_edge

lor.rhs.i92.dc_fixpt_sub.exit98_crit_edge:        ; preds = %lor.rhs.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_fixpt_sub.exit98

land.rhs13.i94:                                   ; preds = %lor.rhs.i92
  %.b65.i93 = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !93
  br i1 %.b65.i93, label %land.rhs13.i94.if.then50.i96_crit_edge, label %if.then.i95, !prof !62

land.rhs13.i94.if.then50.i96_crit_edge:           ; preds = %land.rhs13.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50.i96

if.then.i95:                                      ; preds = %land.rhs13.i94
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 275, i32 noundef 9, ptr noundef null) #8, !noalias !93
  br label %if.then50.i96

if.then50.i96:                                    ; preds = %if.then.i95, %land.rhs13.i94.if.then50.i96_crit_edge
  tail call void @kgdb_breakpoint() #8, !noalias !93
  br label %dc_fixpt_sub.exit98

dc_fixpt_sub.exit98:                              ; preds = %if.then50.i96, %lor.rhs.i92.dc_fixpt_sub.exit98_crit_edge, %dc_fixpt_add.exit.dc_fixpt_sub.exit98_crit_edge
  %sub.i97 = sub i64 %.unpack, %add.i
  %5 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %add.i, ptr %agg.result, align 8
  %6 = tail call i64 @llvm.abs.i64(i64 %sub.i97, i1 false) #8
  %cmp56 = icmp ugt i64 %6, 100
  br i1 %cmp56, label %dc_fixpt_sub.exit98.do.body42_crit_edge, label %do.end57

dc_fixpt_sub.exit98.do.body42_crit_edge:          ; preds = %dc_fixpt_sub.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

do.end57:                                         ; preds = %dc_fixpt_sub.exit98
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dc_fixpt_u4d19([1 x i64] %arg.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %conv.i = trunc i64 %arg.coerce.fca.0.extract to i32
  %sh.diff = lshr i64 %arg.coerce.fca.0.extract, 13
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl4.i = and i32 %tr.sh.diff, 7864320
  %shr6.i = lshr i32 %conv.i, 13
  %or.i = or i32 %shl4.i, %shr6.i
  ret i32 %or.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dc_fixpt_u3d19([1 x i64] %arg.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %conv.i = trunc i64 %arg.coerce.fca.0.extract to i32
  %sh.diff = lshr i64 %arg.coerce.fca.0.extract, 13
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl4.i = and i32 %tr.sh.diff, 3670016
  %shr6.i = lshr i32 %conv.i, 13
  %or.i = or i32 %shl4.i, %shr6.i
  ret i32 %or.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dc_fixpt_u2d19([1 x i64] %arg.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %conv.i = trunc i64 %arg.coerce.fca.0.extract to i32
  %sh.diff = lshr i64 %arg.coerce.fca.0.extract, 13
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl4.i = and i32 %tr.sh.diff, 1572864
  %shr6.i = lshr i32 %conv.i, 13
  %or.i = or i32 %shl4.i, %shr6.i
  ret i32 %or.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dc_fixpt_u0d19([1 x i64] %arg.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %conv.i = trunc i64 %arg.coerce.fca.0.extract to i32
  %shr6.i = lshr i32 %conv.i, 13
  ret i32 %shr6.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dc_fixpt_clamp_u0d14([1 x i64] %arg.coerce) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %conv.i.i = trunc i64 %arg.coerce.fca.0.extract to i32
  %shr6.i.i = lshr i32 %conv.i.i, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %arg.coerce.fca.0.extract)
  %cmp.i = icmp sgt i64 %arg.coerce.fca.0.extract, 4294967295
  %0 = tail call i32 @llvm.umax.i32(i32 %shr6.i.i, i32 1) #8
  %retval.0.i = select i1 %cmp.i, i32 16383, i32 %0
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dc_fixpt_clamp_u0d10([1 x i64] %arg.coerce) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  %conv.i.i = trunc i64 %arg.coerce.fca.0.extract to i32
  %shr6.i.i = lshr i32 %conv.i.i, 22
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %arg.coerce.fca.0.extract)
  %cmp.i = icmp sgt i64 %arg.coerce.fca.0.extract, 4294967295
  %0 = tail call i32 @llvm.umax.i32(i32 %shr6.i.i, i32 1) #8
  %retval.0.i = select i1 %cmp.i, i32 1023, i32 %0
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dc_fixpt_s4d19([1 x i64] %arg.coerce) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i64] %arg.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg.coerce.fca.0.extract)
  %cmp = icmp slt i64 %arg.coerce.fca.0.extract, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = sub i64 0, %arg.coerce.fca.0.extract
  %conv.i = trunc i64 %0 to i32
  %sh.diff12 = lshr i64 %0, 13
  %tr.sh.diff13 = trunc i64 %sh.diff12 to i32
  %shl4.i = and i32 %tr.sh.diff13, 7864320
  %shr6.i = lshr i32 %conv.i, 13
  %or.i = or i32 %shr6.i, %shl4.i
  %sub = sub nsw i32 0, %or.i
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i7 = trunc i64 %arg.coerce.fca.0.extract to i32
  %sh.diff = lshr i64 %arg.coerce.fca.0.extract, 13
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl4.i9 = and i32 %tr.sh.diff, 7864320
  %shr6.i10 = lshr i32 %conv.i7, 13
  %or.i11 = or i32 %shl4.i9, %shr6.i10
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %or.i11, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 88, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 110, i32 3}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 143, i32 2}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 149, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 155, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 164, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 188, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 194, i32 2}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 198, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 207, i32 2}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 221, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 362, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 364, i32 3}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 389, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 54, i32 2}
!31 = distinct !{null, !32, !"dc_fixpt_half", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 69, i32 32}
!33 = distinct !{null, !34, !"dc_fixpt_one", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 70, i32 32}
!35 = distinct !{null, !36, !"dc_fixpt_two_pi", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 29, i32 32}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"dc_fixpt_ln2_div_2", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 31, i32 32}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 466, i32 2}
!44 = distinct !{null, !45, !"dc_fixpt_ln2", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 30, i32 32}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 212, i32 2}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/fixpt31_32.c", i32 320, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 249, i32 2}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!64}
!64 = distinct !{!64, !65, !"dc_fixpt_sub: %agg.result"}
!65 = distinct !{!65, !"dc_fixpt_sub"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"dc_fixpt_sub: %agg.result"}
!68 = distinct !{!68, !"dc_fixpt_sub"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"dc_fixpt_sub: %agg.result"}
!71 = distinct !{!71, !"dc_fixpt_sub"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"dc_fixpt_sub: %agg.result"}
!74 = distinct !{!74, !"dc_fixpt_sub"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"dc_fixpt_shl: %agg.result"}
!77 = distinct !{!77, !"dc_fixpt_shl"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"dc_fixpt_add: %agg.result"}
!80 = distinct !{!80, !"dc_fixpt_add"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"dc_fixpt_add: %agg.result"}
!83 = distinct !{!83, !"dc_fixpt_add"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"dc_fixpt_neg: %agg.result"}
!86 = distinct !{!86, !"dc_fixpt_neg"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"dc_fixpt_sub: %agg.result"}
!89 = distinct !{!89, !"dc_fixpt_sub"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"dc_fixpt_add: %agg.result"}
!92 = distinct !{!92, !"dc_fixpt_add"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"dc_fixpt_sub: %agg.result"}
!95 = distinct !{!95, !"dc_fixpt_sub"}
