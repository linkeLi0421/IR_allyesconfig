; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_mp.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_mp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_mp_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_mp_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_mp_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mp_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_mp_mmc_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_mp_mmc_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_mp_mmc_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mp_mmc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mp_mmc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mp_mmc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_mp_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_mp_enable, ptr @ccu_mp_disable, ptr @ccu_mp_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_mp_recalc_rate, ptr null, ptr @ccu_mp_determine_rate, ptr @ccu_mp_set_parent, ptr @ccu_mp_get_parent, ptr @ccu_mp_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_mp_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mp_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mp_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mp_ops to i32), ptr @__kstrtab_ccu_mp_ops, ptr @__kstrtabns_ccu_mp_ops }, section "___ksymtab_gpl+ccu_mp_ops", align 4
@ccu_mp_mmc_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_mp_enable, ptr @ccu_mp_disable, ptr @ccu_mp_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_mp_mmc_recalc_rate, ptr null, ptr @ccu_mp_mmc_determine_rate, ptr @ccu_mp_set_parent, ptr @ccu_mp_get_parent, ptr @ccu_mp_mmc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_mp_mmc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mp_mmc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mp_mmc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mp_mmc_ops to i32), ptr @__kstrtab_ccu_mp_mmc_ops, ptr @__kstrtabns_ccu_mp_mmc_ops }, section "___ksymtab_gpl+ccu_mp_mmc_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"ccu_mp_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 236, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"ccu_mp_mmc_ops\00", align 1
@___asan_gen_.5 = private constant [33 x i8] c"../drivers/clk/sunxi-ng/ccu_mp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 317, i32 22 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ccu_mp_mmc_ops, ptr @__ksymtab_ccu_mp_ops, ptr @ccu_mp_ops, ptr @ccu_mp_mmc_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_mp_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_mp_mmc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -92
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_enable(ptr noundef %common, i32 noundef %1) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_mp_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -92
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %common, i32 noundef %1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -92
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %common, i32 noundef %1) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %common, ptr noundef %mux, i32 noundef -1, i32 noundef %parent_rate) #3
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %reg4 = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg4, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %m7 = getelementptr i8, ptr %hw, i32 -88
  %6 = ptrtoint ptr %m7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m7, align 4
  %conv8 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv8
  %width = getelementptr i8, ptr %hw, i32 -87
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 1
  %conv10 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv10
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %offset = getelementptr i8, ptr %hw, i32 -80
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add = add i32 %and, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %add
  %p12 = getelementptr i8, ptr %hw, i32 -68
  %12 = ptrtoint ptr %p12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p12, align 4
  %conv14 = zext i8 %13 to i32
  %shr15 = lshr i32 %5, %conv14
  %width17 = getelementptr i8, ptr %hw, i32 -67
  %14 = ptrtoint ptr %width17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width17, align 1
  %conv18 = zext i8 %15 to i32
  %notmask47 = shl nsw i32 -1, %conv18
  %sub20 = xor i32 %notmask47, -1
  %and21 = and i32 %shr15, %sub20
  %shr22 = lshr i32 %call1, %and21
  %div = udiv i32 %shr22, %spec.select
  %features = getelementptr i8, ptr %hw, i32 -8
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 4
  %and24 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %entry.if.end28_crit_edge, label %if.then26

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -24
  %18 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fixed_post_div, align 4
  %div27 = udiv i32 %div, %19
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %entry.if.end28_crit_edge
  %rate.0 = phi i32 [ %div27, %if.then26 ], [ %div, %entry.if.end28_crit_edge ]
  ret i32 %rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -92
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %common, ptr noundef %mux, ptr noundef %req, ptr noundef nonnull @ccu_mp_round_rate, ptr noundef %add.ptr.i) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %common, ptr noundef %mux, i8 noundef zeroext %index) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ccu_mp_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %common, ptr noundef %mux) #3
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %common, ptr noundef %mux, i32 noundef -1, i32 noundef %parent_rate) #3
  %max = getelementptr i8, ptr %hw, i32 -84
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %width = getelementptr i8, ptr %hw, i32 -87
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %shl, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %max5 = getelementptr i8, ptr %hw, i32 -64
  %4 = ptrtoint ptr %max5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %cond.false8, label %cond.end.cond.end14_crit_edge

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end14

cond.false8:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %width10 = getelementptr i8, ptr %hw, i32 -67
  %6 = ptrtoint ptr %width10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width10, align 1
  %conv11 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv11
  %sub = xor i32 %notmask, -1
  %shl13 = shl nuw i32 1, %sub
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false8, %cond.end.cond.end14_crit_edge
  %cond15 = phi i32 [ %shl13, %cond.false8 ], [ %5, %cond.end.cond.end14_crit_edge ]
  %features = getelementptr i8, ptr %hw, i32 -8
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %cond.end14.if.end_crit_edge, label %if.then

cond.end14.if.end_crit_edge:                      ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #5
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -24
  %10 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %11, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end14.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %cond.end14.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond15)
  %cmp.not30.i = icmp eq i32 %cond15, 0
  br i1 %cmp.not30.i, label %if.end.ccu_mp_find_best.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

if.end.ccu_mp_find_best.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %ccu_mp_find_best.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp2.not22.i = icmp eq i32 %cond, 0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc10.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %_p.034.i = phi i32 [ 1, %for.cond1.preheader.lr.ph.i ], [ %shl.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  %best_p.033.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %best_p.1.lcssa.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  %best_m.032.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  %best_rate.031.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp2.not22.i, label %for.cond1.preheader.i.for.inc10.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.inc10.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc10.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %div.i = udiv i32 %call1, %_p.034.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %cleanup.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %_m.026.i = phi i32 [ 1, %for.body3.lr.ph.i ], [ %inc.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_p.125.i = phi i32 [ %best_p.033.i, %for.body3.lr.ph.i ], [ %best_p.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_m.124.i = phi i32 [ %best_m.032.i, %for.body3.lr.ph.i ], [ %best_m.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_rate.123.i = phi i32 [ %best_rate.031.i, %for.body3.lr.ph.i ], [ %best_rate.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %div4.i = udiv i32 %div.i, %_m.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %div4.i)
  %cmp5.i = icmp ult i32 %rate.addr.0, %div4.i
  br i1 %cmp5.i, label %for.body3.i.cleanup.i_crit_edge, label %if.end.i

for.body3.i.cleanup.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = sub i32 %rate.addr.0, %div4.i
  %sub6.i = sub i32 %rate.addr.0, %best_rate.123.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub6.i)
  %cmp7.i = icmp ult i32 %sub.i, %sub6.i
  %best_rate.2.i = select i1 %cmp7.i, i32 %div4.i, i32 %best_rate.123.i
  %best_m.2.i = select i1 %cmp7.i, i32 %_m.026.i, i32 %best_m.124.i
  %best_p.2.i = select i1 %cmp7.i, i32 %_p.034.i, i32 %best_p.125.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body3.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.2.i, %if.end.i ], [ %best_rate.123.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_m.3.i = phi i32 [ %best_m.2.i, %if.end.i ], [ %best_m.124.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_p.3.i = phi i32 [ %best_p.2.i, %if.end.i ], [ %best_p.125.i, %for.body3.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_m.026.i, 1
  %cmp2.not.i = icmp ugt i32 %inc.i, %cond
  br i1 %cmp2.not.i, label %cleanup.i.for.inc10.i_crit_edge, label %cleanup.i.for.body3.i_crit_edge

cleanup.i.for.body3.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3.i

cleanup.i.for.inc10.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %cleanup.i.for.inc10.i_crit_edge, %for.cond1.preheader.i.for.inc10.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.031.i, %for.cond1.preheader.i.for.inc10.i_crit_edge ], [ %best_rate.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.032.i, %for.cond1.preheader.i.for.inc10.i_crit_edge ], [ %best_m.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_p.1.lcssa.i = phi i32 [ %best_p.033.i, %for.cond1.preheader.i.for.inc10.i_crit_edge ], [ %best_p.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %shl.i = shl i32 %_p.034.i, 1
  %cmp.not.i = icmp ugt i32 %shl.i, %cond15
  br i1 %cmp.not.i, label %for.inc10.i.ccu_mp_find_best.exit_crit_edge, label %for.inc10.i.for.cond1.preheader.i_crit_edge

for.inc10.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader.i

for.inc10.i.ccu_mp_find_best.exit_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ccu_mp_find_best.exit

ccu_mp_find_best.exit:                            ; preds = %for.inc10.i.ccu_mp_find_best.exit_crit_edge, %if.end.ccu_mp_find_best.exit_crit_edge
  %best_m.0.lcssa.i = phi i32 [ 0, %if.end.ccu_mp_find_best.exit_crit_edge ], [ %best_m.1.lcssa.i, %for.inc10.i.ccu_mp_find_best.exit_crit_edge ]
  %best_p.0.lcssa.i = phi i32 [ 0, %if.end.ccu_mp_find_best.exit_crit_edge ], [ %best_p.1.lcssa.i, %for.inc10.i.ccu_mp_find_best.exit_crit_edge ]
  %p4 = getelementptr i8, ptr %hw, i32 -68
  %m2 = getelementptr i8, ptr %hw, i32 -88
  %lock = getelementptr i8, ptr %hw, i32 -4
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #3
  %14 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common, align 4
  %reg28 = getelementptr i8, ptr %hw, i32 -16
  %16 = ptrtoint ptr %reg28 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg28, align 4
  %conv29 = zext i16 %17 to i32
  %add.ptr = getelementptr i8, ptr %15, i32 %conv29
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %19 = ptrtoint ptr %m2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %m2, align 4
  %width38 = getelementptr i8, ptr %hw, i32 -87
  %21 = ptrtoint ptr %width38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %width38, align 1
  %23 = ptrtoint ptr %p4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p4, align 4
  %width56 = getelementptr i8, ptr %hw, i32 -67
  %25 = ptrtoint ptr %width56 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %width56, align 1
  %offset = getelementptr i8, ptr %hw, i32 -80
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_p.0.lcssa.i)
  %tobool.not.i.i = icmp eq i32 %best_p.0.lcssa.i, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %best_p.0.lcssa.i, i1 true) #3, !range !20
  %sub.i.op.i = xor i32 %29, 31
  %sub.i134 = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv34 = zext i8 %20 to i32
  %shl35.neg = shl nsw i32 -1, %conv34
  %conv39 = zext i8 %22 to i32
  %31 = add nuw nsw i32 %conv34, %conv39
  %sub45 = sub nsw i32 32, %31
  %shr = lshr i32 -1, %sub45
  %and46 = and i32 %shr, %shl35.neg
  %conv51 = zext i8 %24 to i32
  %shl52.neg = shl nsw i32 -1, %conv51
  %conv57 = zext i8 %26 to i32
  %32 = add nuw nsw i32 %conv51, %conv57
  %sub63 = sub nsw i32 32, %32
  %shr64 = lshr i32 -1, %sub63
  %and65 = and i32 %shr64, %shl52.neg
  %33 = or i32 %and65, %and46
  %34 = xor i32 %33, -1
  %and68 = and i32 %30, %34
  %sub70 = sub i32 %best_m.0.lcssa.i, %28
  %shl74 = shl i32 %sub70, %conv34
  %or = or i32 %and68, %shl74
  %shl91 = shl i32 %sub.i134, %conv51
  %or92 = or i32 %or, %shl91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %35 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %36 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %common, align 4
  %38 = ptrtoint ptr %reg28 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %reg28, align 4
  %conv100 = zext i16 %39 to i32
  %add.ptr101 = getelementptr i8, ptr %37, i32 %conv100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %35) #3, !srcloc !22
  %40 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %call23) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_mmc_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr i8, ptr %hw, i32 -20
  %mux.i = getelementptr i8, ptr %hw, i32 -48
  %call1.i = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %common.i, ptr noundef %mux.i, i32 noundef -1, i32 noundef %parent_rate) #3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %reg4.i = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg4.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !17
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %m7.i = getelementptr i8, ptr %hw, i32 -88
  %6 = ptrtoint ptr %m7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m7.i, align 4
  %conv8.i = zext i8 %7 to i32
  %shr.i = lshr i32 %5, %conv8.i
  %width.i = getelementptr i8, ptr %hw, i32 -87
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width.i, align 1
  %conv10.i = zext i8 %9 to i32
  %notmask.i = shl nsw i32 -1, %conv10.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %offset.i = getelementptr i8, ptr %hw, i32 -80
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %and.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i = icmp eq i32 %add.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 %add.i
  %p12.i = getelementptr i8, ptr %hw, i32 -68
  %12 = ptrtoint ptr %p12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p12.i, align 4
  %conv14.i = zext i8 %13 to i32
  %shr15.i = lshr i32 %5, %conv14.i
  %width17.i = getelementptr i8, ptr %hw, i32 -67
  %14 = ptrtoint ptr %width17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width17.i, align 1
  %conv18.i = zext i8 %15 to i32
  %notmask47.i = shl nsw i32 -1, %conv18.i
  %sub20.i = xor i32 %notmask47.i, -1
  %and21.i = and i32 %shr15.i, %sub20.i
  %shr22.i = lshr i32 %call1.i, %and21.i
  %div.i = udiv i32 %shr22.i, %spec.select.i
  %features.i = getelementptr i8, ptr %hw, i32 -8
  %16 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features.i, align 4
  %and24.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %entry.ccu_mp_recalc_rate.exit_crit_edge, label %if.then26.i

entry.ccu_mp_recalc_rate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ccu_mp_recalc_rate.exit

if.then26.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fixed_post_div.i = getelementptr i8, ptr %hw, i32 -24
  %18 = ptrtoint ptr %fixed_post_div.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fixed_post_div.i, align 4
  %div27.i = udiv i32 %div.i, %19
  br label %ccu_mp_recalc_rate.exit

ccu_mp_recalc_rate.exit:                          ; preds = %if.then26.i, %entry.ccu_mp_recalc_rate.exit_crit_edge
  %rate.0.i = phi i32 [ %div27.i, %if.then26.i ], [ %div.i, %entry.ccu_mp_recalc_rate.exit_crit_edge ]
  %20 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common.i, align 4
  %22 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reg4.i, align 4
  %conv = zext i16 %23 to i32
  %add.ptr = getelementptr i8, ptr %21, i32 %conv
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  %25 = lshr i32 %24, 6
  %.lobit = and i32 %25, 1
  %retval.0 = lshr i32 %rate.0.i, %.lobit
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_mmc_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %reg = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.thread, label %if.then8

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i27 = getelementptr i8, ptr %hw, i32 -92
  %mux.i28 = getelementptr i8, ptr %hw, i32 -48
  %call1.i29 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %add.ptr.i, ptr noundef %mux.i28, ptr noundef %req, ptr noundef nonnull @ccu_mp_round_rate, ptr noundef %add.ptr.i.i27) #3
  br label %if.end14

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  %mul = shl i32 %7, 1
  store i32 %mul, ptr %req, align 4
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_rate, align 4
  %mul3 = shl i32 %9, 1
  store i32 %mul3, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_rate, align 4
  %mul4 = shl i32 %11, 1
  store i32 %mul4, ptr %max_rate, align 4
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -92
  %mux.i = getelementptr i8, ptr %hw, i32 -48
  %call1.i = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %add.ptr.i, ptr noundef %mux.i, ptr noundef %req, ptr noundef nonnull @ccu_mp_round_rate, ptr noundef %add.ptr.i.i) #3
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 4
  %div24 = lshr i32 %13, 1
  store i32 %div24, ptr %req, align 4
  %14 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_rate, align 4
  %div1125 = lshr i32 %15, 1
  store i32 %div1125, ptr %min_rate, align 4
  %16 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_rate, align 4
  %div1326 = lshr i32 %17, 1
  store i32 %div1326, ptr %max_rate, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.thread
  %call1.i30 = phi i32 [ %call1.i29, %if.end.thread ], [ %call1.i, %if.then8 ]
  ret i32 %call1.i30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_mmc_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %reg = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %5 = lshr i32 %4, 6
  %.lobit = and i32 %5, 1
  %spec.select = shl i32 %rate, %.lobit
  %call3 = tail call i32 @ccu_mp_set_rate(ptr noundef %hw, i32 noundef %spec.select, i32 noundef %parent_rate)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_apply_prediv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mp_round_rate(ptr nocapture noundef readnone %mux, ptr noundef %hw, ptr nocapture noundef %parent_rate, i32 noundef %rate, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fixed_post_div = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %3, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %entry.if.end_crit_edge ]
  %max = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %width = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %shl, %cond.false ], [ %5, %if.end.cond.end_crit_edge ]
  %max5 = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %max5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %cond.false8, label %cond.end.cond.end14_crit_edge

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end14

cond.false8:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %width10 = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %width10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width10, align 1
  %conv11 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv11
  %sub = xor i32 %notmask, -1
  %shl13 = shl nuw i32 1, %sub
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false8, %cond.end.cond.end14_crit_edge
  %cond15 = phi i32 [ %shl13, %cond.false8 ], [ %9, %cond.end.cond.end14_crit_edge ]
  %hw17 = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 5, i32 6
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw17) #3
  %and18 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %12 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parent_rate, align 4
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %cond.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond15)
  %cmp.not30.i = icmp eq i32 %cond15, 0
  br i1 %cmp.not30.i, label %if.then20.ccu_mp_find_best.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

if.then20.ccu_mp_find_best.exit_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  br label %ccu_mp_find_best.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp2.not22.i = icmp eq i32 %cond, 0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc10.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %_p.034.i = phi i32 [ 1, %for.cond1.preheader.lr.ph.i ], [ %shl.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  %best_p.033.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %best_p.1.lcssa.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  %best_m.032.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  %best_rate.031.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc10.i.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp2.not22.i, label %for.cond1.preheader.i.for.inc10.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.inc10.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc10.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %div.i = udiv i32 %13, %_p.034.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %cleanup.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %_m.026.i = phi i32 [ 1, %for.body3.lr.ph.i ], [ %inc.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_p.125.i = phi i32 [ %best_p.033.i, %for.body3.lr.ph.i ], [ %best_p.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_m.124.i = phi i32 [ %best_m.032.i, %for.body3.lr.ph.i ], [ %best_m.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_rate.123.i = phi i32 [ %best_rate.031.i, %for.body3.lr.ph.i ], [ %best_rate.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %div4.i = udiv i32 %div.i, %_m.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %div4.i)
  %cmp5.i = icmp ult i32 %rate.addr.0, %div4.i
  br i1 %cmp5.i, label %for.body3.i.cleanup.i_crit_edge, label %if.end.i

for.body3.i.cleanup.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = sub i32 %rate.addr.0, %div4.i
  %sub6.i = sub i32 %rate.addr.0, %best_rate.123.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub6.i)
  %cmp7.i = icmp ult i32 %sub.i, %sub6.i
  %best_rate.2.i = select i1 %cmp7.i, i32 %div4.i, i32 %best_rate.123.i
  %best_m.2.i = select i1 %cmp7.i, i32 %_m.026.i, i32 %best_m.124.i
  %best_p.2.i = select i1 %cmp7.i, i32 %_p.034.i, i32 %best_p.125.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body3.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.2.i, %if.end.i ], [ %best_rate.123.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_m.3.i = phi i32 [ %best_m.2.i, %if.end.i ], [ %best_m.124.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_p.3.i = phi i32 [ %best_p.2.i, %if.end.i ], [ %best_p.125.i, %for.body3.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_m.026.i, 1
  %cmp2.not.i = icmp ugt i32 %inc.i, %cond
  br i1 %cmp2.not.i, label %cleanup.i.for.inc10.i_crit_edge, label %cleanup.i.for.body3.i_crit_edge

cleanup.i.for.body3.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3.i

cleanup.i.for.inc10.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %cleanup.i.for.inc10.i_crit_edge, %for.cond1.preheader.i.for.inc10.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.031.i, %for.cond1.preheader.i.for.inc10.i_crit_edge ], [ %best_rate.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.032.i, %for.cond1.preheader.i.for.inc10.i_crit_edge ], [ %best_m.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_p.1.lcssa.i = phi i32 [ %best_p.033.i, %for.cond1.preheader.i.for.inc10.i_crit_edge ], [ %best_p.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %shl.i = shl i32 %_p.034.i, 1
  %cmp.not.i = icmp ugt i32 %shl.i, %cond15
  br i1 %cmp.not.i, label %for.inc10.i.ccu_mp_find_best.exit_crit_edge, label %for.inc10.i.for.cond1.preheader.i_crit_edge

for.inc10.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader.i

for.inc10.i.ccu_mp_find_best.exit_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ccu_mp_find_best.exit

ccu_mp_find_best.exit:                            ; preds = %for.inc10.i.ccu_mp_find_best.exit_crit_edge, %if.then20.ccu_mp_find_best.exit_crit_edge
  %best_m.0.lcssa.i = phi i32 [ 0, %if.then20.ccu_mp_find_best.exit_crit_edge ], [ %best_m.1.lcssa.i, %for.inc10.i.ccu_mp_find_best.exit_crit_edge ]
  %best_p.0.lcssa.i = phi i32 [ 0, %if.then20.ccu_mp_find_best.exit_crit_edge ], [ %best_p.1.lcssa.i, %for.inc10.i.ccu_mp_find_best.exit_crit_edge ]
  %div = udiv i32 %13, %best_p.0.lcssa.i
  %div21 = udiv i32 %div, %best_m.0.lcssa.i
  br label %if.end23

if.else:                                          ; preds = %cond.end14
  %mul.i = mul i32 %cond15, %cond
  %div1.i = udiv i32 -1, %rate.addr.0
  %14 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 %mul.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond15)
  %cmp2.not65.i = icmp eq i32 %cond15, 0
  br i1 %cmp2.not65.i, label %if.else.if.end23_crit_edge, label %for.cond3.preheader.lr.ph.i

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

for.cond3.preheader.lr.ph.i:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp4.not61.i = icmp eq i32 %cond, 0
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc21.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %_p.067.i = phi i32 [ 1, %for.cond3.preheader.lr.ph.i ], [ %shl.i54, %for.inc21.i.for.cond3.preheader.i_crit_edge ]
  %best_rate.066.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %best_rate.1.lcssa.i53, %for.inc21.i.for.cond3.preheader.i_crit_edge ]
  br i1 %cmp4.not61.i, label %for.cond3.preheader.i.for.inc21.i_crit_edge, label %for.cond3.preheader.i.for.body5.i_crit_edge

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

for.cond3.preheader.i.for.inc21.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc21.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %_m.063.i = phi i32 [ %inc.i52, %for.inc.i.for.body5.i_crit_edge ], [ 1, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %best_rate.162.i = phi i32 [ %best_rate.2.i51, %for.inc.i.for.body5.i_crit_edge ], [ %best_rate.066.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %mul6.i = mul i32 %_m.063.i, %_p.067.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i, i32 %14)
  %cmp7.i49 = icmp ugt i32 %mul6.i, %14
  br i1 %cmp7.i49, label %for.body5.i.for.inc21.i_crit_edge, label %if.end.i50

for.body5.i.for.inc21.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc21.i

if.end.i50:                                       ; preds = %for.body5.i
  %mul8.i = mul i32 %mul6.i, %rate.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.i, i32 %13)
  %cmp9.i = icmp eq i32 %mul8.i, %13
  br i1 %cmp9.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %parent_rate, align 4
  br label %if.end23

if.end11.i:                                       ; preds = %if.end.i50
  %call.i = tail call i32 @clk_hw_round_rate(ptr noundef %hw, i32 noundef %mul8.i) #3
  %div13.i = udiv i32 %call.i, %mul6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i, i32 %rate.addr.0)
  %cmp14.not.i = icmp ule i32 %div13.i, %rate.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i, i32 %best_rate.162.i)
  %cmp15.i = icmp ugt i32 %div13.i, %best_rate.162.i
  %or.cond.i = select i1 %cmp14.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then16.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end11.i
  %16 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i, i32 %rate.addr.0)
  %cmp17.i = icmp eq i32 %div13.i, %rate.addr.0
  br i1 %cmp17.i, label %if.then16.i.if.end23_crit_edge, label %if.then16.i.for.inc.i_crit_edge

if.then16.i.for.inc.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then16.i.if.end23_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

for.inc.i:                                        ; preds = %if.then16.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge
  %best_rate.2.i51 = phi i32 [ %div13.i, %if.then16.i.for.inc.i_crit_edge ], [ %best_rate.162.i, %if.end11.i.for.inc.i_crit_edge ]
  %inc.i52 = add i32 %_m.063.i, 1
  %cmp4.not.i = icmp ugt i32 %inc.i52, %cond
  br i1 %cmp4.not.i, label %for.inc.i.for.inc21.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body5.i

for.inc.i.for.inc21.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %for.inc.i.for.inc21.i_crit_edge, %for.body5.i.for.inc21.i_crit_edge, %for.cond3.preheader.i.for.inc21.i_crit_edge
  %best_rate.1.lcssa.i53 = phi i32 [ %best_rate.066.i, %for.cond3.preheader.i.for.inc21.i_crit_edge ], [ %best_rate.162.i, %for.body5.i.for.inc21.i_crit_edge ], [ %best_rate.2.i51, %for.inc.i.for.inc21.i_crit_edge ]
  %shl.i54 = shl i32 %_p.067.i, 1
  %cmp2.not.i55 = icmp ugt i32 %shl.i54, %cond15
  br i1 %cmp2.not.i55, label %for.inc21.i.if.end23_crit_edge, label %for.inc21.i.for.cond3.preheader.i_crit_edge

for.inc21.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond3.preheader.i

for.inc21.i.if.end23_crit_edge:                   ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.end23:                                         ; preds = %for.inc21.i.if.end23_crit_edge, %if.then16.i.if.end23_crit_edge, %if.then10.i, %if.else.if.end23_crit_edge, %ccu_mp_find_best.exit
  %rate.addr.1 = phi i32 [ %div21, %ccu_mp_find_best.exit ], [ %rate.addr.0, %if.then10.i ], [ 0, %if.else.if.end23_crit_edge ], [ %rate.addr.0, %if.then16.i.if.end23_crit_edge ], [ %best_rate.1.lcssa.i53, %for.inc21.i.if.end23_crit_edge ]
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features, align 4
  %and26 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end23.if.end31_crit_edge, label %if.then28

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  %fixed_post_div29 = getelementptr inbounds %struct.ccu_mp, ptr %data, i32 0, i32 4
  %19 = ptrtoint ptr %fixed_post_div29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fixed_post_div29, align 4
  %div30 = udiv i32 %rate.addr.1, %20
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end23.if.end31_crit_edge
  %rate.addr.2 = phi i32 [ %div30, %if.then28 ], [ %rate.addr.1, %if.end23.if.end31_crit_edge ]
  ret i32 %rate.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @ccu_mp_ops, !1, !"ccu_mp_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_mp.c", i32 236, i32 22}
!2 = !{ptr @__ksymtab_ccu_mp_ops, !3, !"__ksymtab_ccu_mp_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_mp.c", i32 248, i32 1}
!4 = !{ptr @ccu_mp_mmc_ops, !5, !"ccu_mp_mmc_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi-ng/ccu_mp.c", i32 317, i32 22}
!6 = !{ptr @__ksymtab_ccu_mp_mmc_ops, !7, !"__ksymtab_ccu_mp_mmc_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi-ng/ccu_mp.c", i32 329, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4033300}
!18 = !{i64 2151625782}
!19 = !{i64 2151626864}
!20 = !{i32 0, i32 33}
!21 = !{i64 2151629236}
!22 = !{i64 4032882}
!23 = !{i64 2151631226}
!24 = !{i64 2151631800}
!25 = !{i64 2151632458}
