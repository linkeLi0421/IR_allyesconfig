; ModuleID = '/llk/IR_all_yes/drivers/clk/versatile/icst.c_pt.bc'
source_filename = "../drivers/clk/versatile/icst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+icst307_s2div\22, \22a\22\09"
module asm "\09.weak\09__crc_icst307_s2div\09\09\09\09"
module asm "\09.long\09__crc_icst307_s2div\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst307_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22icst307_s2div\22\09\09\09\09\09"
module asm "__kstrtabns_icst307_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icst525_s2div\22, \22a\22\09"
module asm "\09.weak\09__crc_icst525_s2div\09\09\09\09"
module asm "\09.long\09__crc_icst525_s2div\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst525_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22icst525_s2div\22\09\09\09\09\09"
module asm "__kstrtabns_icst525_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icst_hz\22, \22a\22\09"
module asm "\09.weak\09__crc_icst_hz\09\09\09\09"
module asm "\09.long\09__crc_icst_hz\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_hz:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_hz\22\09\09\09\09\09"
module asm "__kstrtabns_icst_hz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icst307_idx2s\22, \22a\22\09"
module asm "\09.weak\09__crc_icst307_idx2s\09\09\09\09"
module asm "\09.long\09__crc_icst307_idx2s\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst307_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22icst307_idx2s\22\09\09\09\09\09"
module asm "__kstrtabns_icst307_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icst525_idx2s\22, \22a\22\09"
module asm "\09.weak\09__crc_icst525_idx2s\09\09\09\09"
module asm "\09.long\09__crc_icst525_idx2s\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst525_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22icst525_idx2s\22\09\09\09\09\09"
module asm "__kstrtabns_icst525_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icst_hz_to_vco\22, \22a\22\09"
module asm "\09.weak\09__crc_icst_hz_to_vco\09\09\09\09"
module asm "\09.long\09__crc_icst_hz_to_vco\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_hz_to_vco:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_hz_to_vco\22\09\09\09\09\09"
module asm "__kstrtabns_icst_hz_to_vco:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.icst_params = type { i32, i32, i32, i16, i16, i8, i8, ptr, ptr }

@icst307_s2div = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A\02\08\04\05\07\03\06", [24 x i8] zeroinitializer }, align 32
@icst525_s2div = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A\02\08\04\05\07\09\06", [24 x i8] zeroinitializer }, align 32
@__kstrtab_icst307_s2div = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst307_s2div = external dso_local constant [0 x i8], align 1
@__ksymtab_icst307_s2div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst307_s2div to i32), ptr @__kstrtab_icst307_s2div, ptr @__kstrtabns_icst307_s2div }, section "___ksymtab+icst307_s2div", align 4
@__kstrtab_icst525_s2div = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst525_s2div = external dso_local constant [0 x i8], align 1
@__ksymtab_icst525_s2div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst525_s2div to i32), ptr @__kstrtab_icst525_s2div, ptr @__kstrtabns_icst525_s2div }, section "___ksymtab+icst525_s2div", align 4
@__kstrtab_icst_hz = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_hz = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_hz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_hz to i32), ptr @__kstrtab_icst_hz, ptr @__kstrtabns_icst_hz }, section "___ksymtab+icst_hz", align 4
@icst307_idx2s = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\06\03\04\07\05\02\00", [24 x i8] zeroinitializer }, align 32
@icst525_idx2s = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\04\07\05\02\06\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_icst307_idx2s = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst307_idx2s = external dso_local constant [0 x i8], align 1
@__ksymtab_icst307_idx2s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst307_idx2s to i32), ptr @__kstrtab_icst307_idx2s, ptr @__kstrtabns_icst307_idx2s }, section "___ksymtab+icst307_idx2s", align 4
@__kstrtab_icst525_idx2s = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst525_idx2s = external dso_local constant [0 x i8], align 1
@__ksymtab_icst525_idx2s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst525_idx2s to i32), ptr @__kstrtab_icst525_idx2s, ptr @__kstrtabns_icst525_idx2s }, section "___ksymtab+icst525_idx2s", align 4
@__kstrtab_icst_hz_to_vco = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_hz_to_vco = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_hz_to_vco = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_hz_to_vco to i32), ptr @__kstrtab_icst_hz_to_vco, ptr @__kstrtabns_icst_hz_to_vco }, section "___ksymtab+icst_hz_to_vco", align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"icst307_s2div\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 22, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"icst525_s2div\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 23, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"icst307_idx2s\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 41, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"icst525_idx2s\00", align 1
@___asan_gen_.11 = private constant [32 x i8] c"../drivers/clk/versatile/icst.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 42, i32 21 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_icst307_idx2s, ptr @__ksymtab_icst307_s2div, ptr @__ksymtab_icst525_idx2s, ptr @__ksymtab_icst525_s2div, ptr @__ksymtab_icst_hz, ptr @__ksymtab_icst_hz_to_vco, ptr @icst307_s2div, ptr @icst525_s2div, ptr @icst307_idx2s, ptr @icst525_idx2s], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst307_s2div to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst525_s2div to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst307_idx2s to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icst525_idx2s to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icst_hz(ptr nocapture noundef readonly %p, [1 x i32] %vco.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vco.coerce.fca.0.extract = extractvalue [1 x i32] %vco.coerce, 0
  %vco.sroa.0.0.extract.shift = lshr i32 %vco.coerce.fca.0.extract, 16
  %vco.sroa.2.0.extract.shift = lshr i32 %vco.coerce.fca.0.extract, 8
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %mul = shl i32 %1, 1
  %conv = zext i32 %mul to i64
  %add = add nuw nsw i32 %vco.sroa.0.0.extract.shift, 8
  %2 = zext i32 %add to i64
  %mul3 = mul nuw nsw i64 %conv, %2
  %conv4 = and i32 %vco.sroa.2.0.extract.shift, 255
  %add5 = add nuw nsw i32 %conv4, 2
  %s2div = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 7
  %3 = ptrtoint ptr %s2div to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s2div, align 4
  %idxprom = and i32 %vco.coerce.fca.0.extract, 255
  %arrayidx = getelementptr i8, ptr %4, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %6 to i32
  %mul7 = mul nuw nsw i32 %add5, %conv6
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul3)
  %cmp175 = icmp ult i64 %mul3, 4294967296
  br i1 %cmp175, label %if.then179, label %if.else185, !prof !29

if.then179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv180 = trunc i64 %mul3 to i32
  %div183 = udiv i32 %conv180, %mul7
  br label %if.end189

if.else185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul7, i64 %mul3) #6, !srcloc !30
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %extract.t298 = trunc i64 %asmresult1.i to i32
  br label %if.end189

if.end189:                                        ; preds = %if.else185, %if.then179
  %dividend.0.off0 = phi i32 [ %div183, %if.then179 ], [ %extract.t298, %if.else185 ]
  ret i32 %dividend.0.off0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icst_hz_to_vco(ptr nocapture noundef readonly %p, i32 noundef %freq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vd_max = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %vd_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vd_max, align 2
  %rd_max = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %rd_max to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rd_max, align 1
  %s2div = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %s2div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s2div, align 4
  %idx2s = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 8
  %6 = ptrtoint ptr %idx2s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %idx2s, align 4
  %vco_min = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 2
  %8 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vco_min, align 4
  %vco_max = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx1 = getelementptr i8, ptr %5, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %13 to i32
  %mul = mul i32 %conv, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %9)
  %cmp = icmp ugt i32 %mul, %9
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %15)
  %cmp3.not = icmp ugt i32 %mul, %15
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %7, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1, align 1
  %idxprom.1 = zext i8 %17 to i32
  %arrayidx1.1 = getelementptr i8, ptr %5, i32 %idxprom.1
  %18 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.1, align 1
  %conv.1 = zext i8 %19 to i32
  %mul.1 = mul i32 %conv.1, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %9)
  %cmp.1 = icmp ugt i32 %mul.1, %9
  br i1 %cmp.1, label %land.lhs.true.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %20 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %21)
  %cmp3.not.1 = icmp ugt i32 %mul.1, %21
  br i1 %cmp3.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %land.lhs.true.1.if.end10_crit_edge

land.lhs.true.1.if.end10_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.1

if.end.1:                                         ; preds = %land.lhs.true.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %7, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2, align 1
  %idxprom.2 = zext i8 %23 to i32
  %arrayidx1.2 = getelementptr i8, ptr %5, i32 %idxprom.2
  %24 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx1.2, align 1
  %conv.2 = zext i8 %25 to i32
  %mul.2 = mul i32 %conv.2, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %9)
  %cmp.2 = icmp ugt i32 %mul.2, %9
  br i1 %cmp.2, label %land.lhs.true.2, label %if.end.1.if.end.2_crit_edge

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  %26 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %27)
  %cmp3.not.2 = icmp ugt i32 %mul.2, %27
  br i1 %cmp3.not.2, label %land.lhs.true.2.if.end.2_crit_edge, label %land.lhs.true.2.if.end10_crit_edge

land.lhs.true.2.if.end10_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.2.if.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.2

if.end.2:                                         ; preds = %land.lhs.true.2.if.end.2_crit_edge, %if.end.1.if.end.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %7, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3, align 1
  %idxprom.3 = zext i8 %29 to i32
  %arrayidx1.3 = getelementptr i8, ptr %5, i32 %idxprom.3
  %30 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.3, align 1
  %conv.3 = zext i8 %31 to i32
  %mul.3 = mul i32 %conv.3, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %9)
  %cmp.3 = icmp ugt i32 %mul.3, %9
  br i1 %cmp.3, label %land.lhs.true.3, label %if.end.2.if.end.3_crit_edge

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  %32 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %33)
  %cmp3.not.3 = icmp ugt i32 %mul.3, %33
  br i1 %cmp3.not.3, label %land.lhs.true.3.if.end.3_crit_edge, label %land.lhs.true.3.if.end10_crit_edge

land.lhs.true.3.if.end10_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.3.if.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.3

if.end.3:                                         ; preds = %land.lhs.true.3.if.end.3_crit_edge, %if.end.2.if.end.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %7, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.4, align 1
  %idxprom.4 = zext i8 %35 to i32
  %arrayidx1.4 = getelementptr i8, ptr %5, i32 %idxprom.4
  %36 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx1.4, align 1
  %conv.4 = zext i8 %37 to i32
  %mul.4 = mul i32 %conv.4, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %9)
  %cmp.4 = icmp ugt i32 %mul.4, %9
  br i1 %cmp.4, label %land.lhs.true.4, label %if.end.3.if.end.4_crit_edge

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.4

land.lhs.true.4:                                  ; preds = %if.end.3
  %38 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %39)
  %cmp3.not.4 = icmp ugt i32 %mul.4, %39
  br i1 %cmp3.not.4, label %land.lhs.true.4.if.end.4_crit_edge, label %land.lhs.true.4.if.end10_crit_edge

land.lhs.true.4.if.end10_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.4.if.end.4_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.4

if.end.4:                                         ; preds = %land.lhs.true.4.if.end.4_crit_edge, %if.end.3.if.end.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %7, i32 5
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.5, align 1
  %idxprom.5 = zext i8 %41 to i32
  %arrayidx1.5 = getelementptr i8, ptr %5, i32 %idxprom.5
  %42 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx1.5, align 1
  %conv.5 = zext i8 %43 to i32
  %mul.5 = mul i32 %conv.5, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %9)
  %cmp.5 = icmp ugt i32 %mul.5, %9
  br i1 %cmp.5, label %land.lhs.true.5, label %if.end.4.if.end.5_crit_edge

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.5

land.lhs.true.5:                                  ; preds = %if.end.4
  %44 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %45)
  %cmp3.not.5 = icmp ugt i32 %mul.5, %45
  br i1 %cmp3.not.5, label %land.lhs.true.5.if.end.5_crit_edge, label %land.lhs.true.5.if.end10_crit_edge

land.lhs.true.5.if.end10_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.5.if.end.5_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.5

if.end.5:                                         ; preds = %land.lhs.true.5.if.end.5_crit_edge, %if.end.4.if.end.5_crit_edge
  %arrayidx.6 = getelementptr i8, ptr %7, i32 6
  %46 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.6, align 1
  %idxprom.6 = zext i8 %47 to i32
  %arrayidx1.6 = getelementptr i8, ptr %5, i32 %idxprom.6
  %48 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx1.6, align 1
  %conv.6 = zext i8 %49 to i32
  %mul.6 = mul i32 %conv.6, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6, i32 %9)
  %cmp.6 = icmp ugt i32 %mul.6, %9
  br i1 %cmp.6, label %land.lhs.true.6, label %if.end.5.if.end.6_crit_edge

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.6

land.lhs.true.6:                                  ; preds = %if.end.5
  %50 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6, i32 %51)
  %cmp3.not.6 = icmp ugt i32 %mul.6, %51
  br i1 %cmp3.not.6, label %land.lhs.true.6.if.end.6_crit_edge, label %land.lhs.true.6.if.end10_crit_edge

land.lhs.true.6.if.end10_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.6.if.end.6_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.6

if.end.6:                                         ; preds = %land.lhs.true.6.if.end.6_crit_edge, %if.end.5.if.end.6_crit_edge
  %arrayidx.7 = getelementptr i8, ptr %7, i32 7
  %52 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.7, align 1
  %idxprom.7 = zext i8 %53 to i32
  %arrayidx1.7 = getelementptr i8, ptr %5, i32 %idxprom.7
  %54 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx1.7, align 1
  %conv.7 = zext i8 %55 to i32
  %mul.7 = mul i32 %conv.7, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7, i32 %9)
  %cmp.7 = icmp ugt i32 %mul.7, %9
  br i1 %cmp.7, label %land.lhs.true.7, label %if.end.6.cleanup55_crit_edge

if.end.6.cleanup55_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup55

land.lhs.true.7:                                  ; preds = %if.end.6
  %56 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7, i32 %57)
  %cmp3.not.7 = icmp ugt i32 %mul.7, %57
  br i1 %cmp3.not.7, label %land.lhs.true.7.cleanup55_crit_edge, label %land.lhs.true.7.if.end10_crit_edge

land.lhs.true.7.if.end10_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.7.cleanup55_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup55

if.end10:                                         ; preds = %land.lhs.true.7.if.end10_crit_edge, %land.lhs.true.6.if.end10_crit_edge, %land.lhs.true.5.if.end10_crit_edge, %land.lhs.true.4.if.end10_crit_edge, %land.lhs.true.3.if.end10_crit_edge, %land.lhs.true.2.if.end10_crit_edge, %land.lhs.true.1.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %i.0.lcssa = phi i32 [ 0, %land.lhs.true.if.end10_crit_edge ], [ 1, %land.lhs.true.1.if.end10_crit_edge ], [ 2, %land.lhs.true.2.if.end10_crit_edge ], [ 3, %land.lhs.true.3.if.end10_crit_edge ], [ 4, %land.lhs.true.4.if.end10_crit_edge ], [ 5, %land.lhs.true.5.if.end10_crit_edge ], [ 6, %land.lhs.true.6.if.end10_crit_edge ], [ 7, %land.lhs.true.7.if.end10_crit_edge ]
  %mul.lcssa = phi i32 [ %mul, %land.lhs.true.if.end10_crit_edge ], [ %mul.1, %land.lhs.true.1.if.end10_crit_edge ], [ %mul.2, %land.lhs.true.2.if.end10_crit_edge ], [ %mul.3, %land.lhs.true.3.if.end10_crit_edge ], [ %mul.4, %land.lhs.true.4.if.end10_crit_edge ], [ %mul.5, %land.lhs.true.5.if.end10_crit_edge ], [ %mul.6, %land.lhs.true.6.if.end10_crit_edge ], [ %mul.7, %land.lhs.true.7.if.end10_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %7, i32 %i.0.lcssa
  %58 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx12, align 1
  %rd_min = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 5
  %60 = ptrtoint ptr %rd_min to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rd_min, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %3)
  %cmp17.not104 = icmp ugt i8 %61, %3
  br i1 %cmp17.not104, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %conv16 = zext i8 %3 to i32
  %conv14 = zext i8 %61 to i32
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %p, align 4
  %mul19 = shl i32 %63, 1
  %vd_min = getelementptr inbounds %struct.icst_params, ptr %p, i32 0, i32 3
  %64 = ptrtoint ptr %vd_min to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vd_min, align 4
  %conv22 = zext i16 %65 to i32
  %conv26 = zext i16 %1 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best.0109 = phi i32 [ -1, %for.body.lr.ph ], [ %best.2.ph, %for.inc.for.body_crit_edge ]
  %rd.0107 = phi i32 [ %conv14, %for.body.lr.ph ], [ %inc54, %for.inc.for.body_crit_edge ]
  %retval.sroa.4.0106 = phi i8 [ %3, %for.body.lr.ph ], [ %retval.sroa.4.2.ph, %for.inc.for.body_crit_edge ]
  %retval.sroa.0.0105 = phi i16 [ %1, %for.body.lr.ph ], [ %retval.sroa.0.2.ph, %for.inc.for.body_crit_edge ]
  %div = udiv i32 %mul19, %rd.0107
  %div2089 = lshr i32 %div, 1
  %add = add i32 %div2089, %mul.lcssa
  %div21 = udiv i32 %add, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div21, i32 %conv22)
  %cmp23 = icmp ult i32 %div21, %conv22
  call void @__sanitizer_cov_trace_cmp4(i32 %div21, i32 %conv26)
  %cmp27 = icmp ugt i32 %div21, %conv26
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp27
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end30:                                         ; preds = %for.body
  %mul31 = mul i32 %div21, %div
  %sub = sub i32 %mul31, %mul.lcssa
  %66 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %best.0109)
  %cmp37 = icmp ult i32 %66, %best.0109
  br i1 %cmp37, label %if.then39, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then39:                                        ; preds = %if.end30
  %67 = trunc i32 %div21 to i16
  %conv41 = add i16 %67, -8
  %68 = trunc i32 %rd.0107 to i8
  %conv44 = add i8 %68, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul31, i32 %mul.lcssa)
  %cmp46 = icmp eq i32 %mul31, %mul.lcssa
  br i1 %cmp46, label %if.then39.for.end_crit_edge, label %if.then39.for.inc_crit_edge

if.then39.for.inc_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then39.for.end_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %if.then39.for.inc_crit_edge, %if.end30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %retval.sroa.0.2.ph = phi i16 [ %retval.sroa.0.0105, %for.body.for.inc_crit_edge ], [ %retval.sroa.0.0105, %if.end30.for.inc_crit_edge ], [ %conv41, %if.then39.for.inc_crit_edge ]
  %retval.sroa.4.2.ph = phi i8 [ %retval.sroa.4.0106, %for.body.for.inc_crit_edge ], [ %retval.sroa.4.0106, %if.end30.for.inc_crit_edge ], [ %conv44, %if.then39.for.inc_crit_edge ]
  %best.2.ph = phi i32 [ %best.0109, %for.body.for.inc_crit_edge ], [ %best.0109, %if.end30.for.inc_crit_edge ], [ %66, %if.then39.for.inc_crit_edge ]
  %inc54 = add nuw nsw i32 %rd.0107, 1
  %exitcond = icmp eq i32 %rd.0107, %conv16
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then39.for.end_crit_edge, %if.end10.for.end_crit_edge
  %retval.sroa.0.3 = phi i16 [ %1, %if.end10.for.end_crit_edge ], [ %conv41, %if.then39.for.end_crit_edge ], [ %retval.sroa.0.2.ph, %for.inc.for.end_crit_edge ]
  %retval.sroa.4.3 = phi i8 [ %3, %if.end10.for.end_crit_edge ], [ %conv44, %if.then39.for.end_crit_edge ], [ %retval.sroa.4.2.ph, %for.inc.for.end_crit_edge ]
  %phi.cast = zext i8 %59 to i32
  br label %cleanup55

cleanup55:                                        ; preds = %for.end, %land.lhs.true.7.cleanup55_crit_edge, %if.end.6.cleanup55_crit_edge
  %retval.sroa.0.4 = phi i16 [ %retval.sroa.0.3, %for.end ], [ %1, %land.lhs.true.7.cleanup55_crit_edge ], [ %1, %if.end.6.cleanup55_crit_edge ]
  %retval.sroa.4.4 = phi i8 [ %retval.sroa.4.3, %for.end ], [ %3, %land.lhs.true.7.cleanup55_crit_edge ], [ %3, %if.end.6.cleanup55_crit_edge ]
  %retval.sroa.7.0 = phi i32 [ %phi.cast, %for.end ], [ 1, %land.lhs.true.7.cleanup55_crit_edge ], [ 1, %if.end.6.cleanup55_crit_edge ]
  %retval.sroa.4.0.insert.ext = zext i8 %retval.sroa.4.4 to i32
  %retval.sroa.4.0.insert.shift = shl nuw nsw i32 %retval.sroa.4.0.insert.ext, 8
  %retval.sroa.4.0.insert.insert = or i32 %retval.sroa.4.0.insert.shift, %retval.sroa.7.0
  %retval.sroa.0.0.insert.ext = zext i16 %retval.sroa.0.4 to i32
  %retval.sroa.0.0.insert.shift = shl nuw i32 %retval.sroa.0.0.insert.ext, 16
  %retval.sroa.0.0.insert.insert = or i32 %retval.sroa.4.0.insert.insert, %retval.sroa.0.0.insert.shift
  ret i32 %retval.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @icst307_s2div, !1, !"icst307_s2div", i1 false, i1 false}
!1 = !{!"../drivers/clk/versatile/icst.c", i32 22, i32 21}
!2 = !{ptr @icst525_s2div, !3, !"icst525_s2div", i1 false, i1 false}
!3 = !{!"../drivers/clk/versatile/icst.c", i32 23, i32 21}
!4 = !{ptr @__ksymtab_icst307_s2div, !5, !"__ksymtab_icst307_s2div", i1 false, i1 false}
!5 = !{!"../drivers/clk/versatile/icst.c", i32 24, i32 1}
!6 = !{ptr @__ksymtab_icst525_s2div, !7, !"__ksymtab_icst525_s2div", i1 false, i1 false}
!7 = !{!"../drivers/clk/versatile/icst.c", i32 25, i32 1}
!8 = !{ptr @__ksymtab_icst_hz, !9, !"__ksymtab_icst_hz", i1 false, i1 false}
!9 = !{!"../drivers/clk/versatile/icst.c", i32 36, i32 1}
!10 = !{ptr @icst307_idx2s, !11, !"icst307_idx2s", i1 false, i1 false}
!11 = !{!"../drivers/clk/versatile/icst.c", i32 41, i32 21}
!12 = !{ptr @icst525_idx2s, !13, !"icst525_idx2s", i1 false, i1 false}
!13 = !{!"../drivers/clk/versatile/icst.c", i32 42, i32 21}
!14 = !{ptr @__ksymtab_icst307_idx2s, !15, !"__ksymtab_icst307_idx2s", i1 false, i1 false}
!15 = !{!"../drivers/clk/versatile/icst.c", i32 43, i32 1}
!16 = !{ptr @__ksymtab_icst525_idx2s, !17, !"__ksymtab_icst525_idx2s", i1 false, i1 false}
!17 = !{!"../drivers/clk/versatile/icst.c", i32 44, i32 1}
!18 = !{ptr @__ksymtab_icst_hz_to_vco, !19, !"__ksymtab_icst_hz_to_vco", i1 false, i1 false}
!19 = !{!"../drivers/clk/versatile/icst.c", i32 102, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148186843, i64 2148187123, i64 2148187457, i64 2148187791}
