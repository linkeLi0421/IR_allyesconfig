; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_div.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_div_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_div_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_div_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_div_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_div_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_enable, ptr @ccu_div_disable, ptr @ccu_div_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_div_recalc_rate, ptr null, ptr @ccu_div_determine_rate, ptr @ccu_div_set_parent, ptr @ccu_div_get_parent, ptr @ccu_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_div_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_div_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_div_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_div_ops to i32), ptr @__kstrtab_ccu_div_ops, ptr @__kstrtabns_ccu_div_ops }, section "___ksymtab_gpl+ccu_div_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"ccu_div_ops\00", align 1
@___asan_gen_.2 = private constant [34 x i8] c"../drivers/clk/sunxi-ng/ccu_div.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 132, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_div_ops, ptr @ccu_div_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -68
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_enable(ptr noundef %common, i32 noundef %1) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_div_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -68
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %common, i32 noundef %1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -68
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %common, i32 noundef %1) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %reg2 = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg2, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %div = getelementptr i8, ptr %hw, i32 -64
  %6 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %div, align 4
  %conv5 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv5
  %width = getelementptr i8, ptr %hw, i32 -63
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 1
  %conv7 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv7
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call9 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %common, ptr noundef %mux, i32 noundef -1, i32 noundef %parent_rate) #3
  %table = getelementptr i8, ptr %hw, i32 -48
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table, align 4
  %flags = getelementptr i8, ptr %hw, i32 -52
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width, align 1
  %conv14 = zext i8 %15 to i32
  %call15 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %call9, i32 noundef %and, ptr noundef %11, i32 noundef %13, i32 noundef %conv14) #3
  %features = getelementptr i8, ptr %hw, i32 -8
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 4
  %and17 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fixed_post_div = getelementptr i8, ptr %hw, i32 12
  %18 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fixed_post_div, align 4
  %div18 = udiv i32 %call15, %19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %div18, %if.then ], [ %call15, %entry.if.end_crit_edge ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -68
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call1 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %common, ptr noundef %mux, ptr noundef %req, ptr noundef nonnull @ccu_div_round_rate, ptr noundef %add.ptr.i) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call1 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %common, ptr noundef %mux, i8 noundef zeroext %index) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ccu_div_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call1 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %common, ptr noundef %mux) #3
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call1 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %common, ptr noundef %mux, i32 noundef -1, i32 noundef %parent_rate) #3
  %features = getelementptr i8, ptr %hw, i32 -8
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
  %fixed_post_div = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %3, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %entry.if.end_crit_edge ]
  %div = getelementptr i8, ptr %hw, i32 -64
  %table = getelementptr i8, ptr %hw, i32 -48
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %width = getelementptr i8, ptr %hw, i32 -63
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %flags5 = getelementptr i8, ptr %hw, i32 -52
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags5, align 4
  %call6 = tail call i32 @divider_get_val(i32 noundef %rate.addr.0, i32 noundef %call1, ptr noundef %5, i8 noundef zeroext %7, i32 noundef %9) #3
  %lock = getelementptr i8, ptr %hw, i32 -4
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #3
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %reg15 = getelementptr i8, ptr %hw, i32 -16
  %14 = ptrtoint ptr %reg15 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg15, align 4
  %conv16 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %18 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %div, align 4
  %conv21 = zext i8 %19 to i32
  %shl.neg = shl nsw i32 -1, %conv21
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width, align 1
  %conv24 = zext i8 %21 to i32
  %22 = add nuw nsw i32 %conv21, %conv24
  %sub30 = sub nsw i32 32, %22
  %shr = lshr i32 -1, %sub30
  %and31 = and i32 %shr, %shl.neg
  %neg = xor i32 %and31, -1
  %and33 = and i32 %17, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %23 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %div, align 4
  %conv39 = zext i8 %24 to i32
  %shl40 = shl i32 %call6, %conv39
  %or = or i32 %and33, %shl40
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common, align 4
  %28 = ptrtoint ptr %reg15 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg15, align 4
  %conv45 = zext i16 %29 to i32
  %add.ptr46 = getelementptr i8, ptr %27, i32 %conv45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %25) #3, !srcloc !17
  %30 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %call10) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_apply_prediv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_round_rate(ptr nocapture noundef readnone %mux, ptr noundef %parent, ptr noundef %parent_rate, i32 noundef %rate, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ccu_div, ptr %data, i32 0, i32 3, i32 4
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
  %fixed_post_div = getelementptr inbounds %struct.ccu_div, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %3, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %entry.if.end_crit_edge ]
  %hw = getelementptr inbounds %struct.ccu_div, ptr %data, i32 0, i32 3, i32 6
  %table = getelementptr inbounds %struct.ccu_div, ptr %data, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %width = getelementptr inbounds %struct.ccu_div, ptr %data, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %flags = getelementptr inbounds %struct.ccu_div, ptr %data, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %call = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %parent, i32 noundef %rate.addr.0, ptr noundef %parent_rate, ptr noundef %5, i8 noundef zeroext %7, i32 noundef %9) #3
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features, align 4
  %and6 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %fixed_post_div9 = getelementptr inbounds %struct.ccu_div, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %fixed_post_div9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fixed_post_div9, align 4
  %div10 = udiv i32 %call, %13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %rate.addr.1 = phi i32 [ %div10, %if.then8 ], [ %call, %if.end.if.end11_crit_edge ]
  ret i32 %rate.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_div_ops, !1, !"ccu_div_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_div.c", i32 132, i32 22}
!2 = !{ptr @__ksymtab_ccu_div_ops, !3, !"__ksymtab_ccu_div_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_div.c", i32 144, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4028580}
!14 = !{i64 2151609266}
!15 = !{i64 2151610338}
!16 = !{i64 2151611604}
!17 = !{i64 4028162}
