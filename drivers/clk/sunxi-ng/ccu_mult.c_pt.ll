; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_mult.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_mult.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_mult_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_mult_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_mult_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mult_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mult_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mult_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_mult = type { i32, i32, %struct.ccu_frac_internal, %struct.ccu_mult_internal, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_mult_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_mult_enable, ptr @ccu_mult_disable, ptr @ccu_mult_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_mult_recalc_rate, ptr null, ptr @ccu_mult_determine_rate, ptr @ccu_mult_set_parent, ptr @ccu_mult_get_parent, ptr @ccu_mult_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_mult_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mult_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mult_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mult_ops to i32), ptr @__kstrtab_ccu_mult_ops, ptr @__kstrtabns_ccu_mult_ops }, section "___ksymtab_gpl+ccu_mult_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"ccu_mult_ops\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/clk/sunxi-ng/ccu_mult.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 161, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_mult_ops, ptr @ccu_mult_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_mult_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mult_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -76
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_enable(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_mult_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -76
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %common, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mult_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -76
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mult_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %frac = getelementptr i8, ptr %hw, i32 -68
  %call1 = tail call zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef %common, ptr noundef %frac) #4
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @ccu_frac_helper_read_rate(ptr noundef %common, ptr noundef %frac) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %reg7 = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg7 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg7, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %mult = getelementptr i8, ptr %hw, i32 -52
  %shift = getelementptr i8, ptr %hw, i32 -51
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 1
  %conv10 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv10
  %width = getelementptr i8, ptr %hw, i32 -50
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 2
  %conv12 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv12
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call14 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %common, ptr noundef %mux, i32 noundef -1, i32 noundef %parent_rate) #4
  %10 = ptrtoint ptr %mult to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mult, align 4
  %conv16 = zext i8 %11 to i32
  %add = add i32 %and, %conv16
  %mul = mul i32 %add, %call14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %mul, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mult_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -76
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call1 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %common, ptr noundef %mux, ptr noundef %req, ptr noundef nonnull @ccu_mult_round_rate, ptr noundef %add.ptr.i) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mult_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call1 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %common, ptr noundef %mux, i8 noundef zeroext %index) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ccu_mult_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call1 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %common, ptr noundef %mux) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_mult_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %frac = getelementptr i8, ptr %hw, i32 -68
  %call1 = tail call zeroext i1 @ccu_frac_helper_has_rate(ptr noundef %common, ptr noundef %frac, i32 noundef %rate) #4
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ccu_frac_helper_enable(ptr noundef %common, ptr noundef %frac) #4
  %lock = getelementptr i8, ptr %hw, i32 -72
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lock, align 4
  %call6 = tail call i32 @ccu_frac_helper_set_rate(ptr noundef %common, ptr noundef %frac, i32 noundef %rate, i32 noundef %1) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  tail call void @ccu_frac_helper_disable(ptr noundef %common, ptr noundef %frac) #4
  %mux = getelementptr i8, ptr %hw, i32 -44
  %call10 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %common, ptr noundef %mux, i32 noundef -1, i32 noundef %parent_rate) #4
  %mult = getelementptr i8, ptr %hw, i32 -52
  %min = getelementptr i8, ptr %hw, i32 -49
  %2 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %min, align 1
  %conv = zext i8 %3 to i32
  %max = getelementptr i8, ptr %hw, i32 -48
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else18, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conv16 = zext i8 %5 to i32
  br label %if.end24

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr i8, ptr %hw, i32 -50
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 2
  %conv20 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv20
  %8 = ptrtoint ptr %mult to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mult, align 4
  %conv22 = zext i8 %9 to i32
  %add = add nsw i32 %conv22, -1
  %sub = add i32 %add, %shl
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then13
  %storemerge = phi i32 [ %sub, %if.else18 ], [ %conv16, %if.then13 ]
  %div.i = udiv i32 %rate, %call10
  %10 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 %conv) #4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %storemerge) #4
  %lock28 = getelementptr i8, ptr %hw, i32 -4
  %12 = ptrtoint ptr %lock28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock28, align 4
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #4
  %14 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common, align 4
  %reg35 = getelementptr i8, ptr %hw, i32 -16
  %16 = ptrtoint ptr %reg35 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg35, align 4
  %conv36 = zext i16 %17 to i32
  %add.ptr = getelementptr i8, ptr %15, i32 %conv36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %shift = getelementptr i8, ptr %hw, i32 -51
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift, align 1
  %conv41 = zext i8 %21 to i32
  %shl42.neg = shl nsw i32 -1, %conv41
  %width46 = getelementptr i8, ptr %hw, i32 -50
  %22 = ptrtoint ptr %width46 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width46, align 2
  %conv47 = zext i8 %23 to i32
  %24 = add nuw nsw i32 %conv41, %conv47
  %sub53 = sub nsw i32 32, %24
  %shr = lshr i32 -1, %sub53
  %and = and i32 %shr, %shl42.neg
  %neg = xor i32 %and, -1
  %and55 = and i32 %19, %neg
  %25 = ptrtoint ptr %mult to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mult, align 4
  %conv59 = zext i8 %26 to i32
  %sub60 = sub i32 %11, %conv59
  %shl64 = shl i32 %sub60, %conv41
  %or = or i32 %and55, %shl64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %common, align 4
  %30 = ptrtoint ptr %reg35 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reg35, align 4
  %conv72 = zext i16 %31 to i32
  %add.ptr73 = getelementptr i8, ptr %29, i32 %conv72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %27) #4, !srcloc !17
  %32 = ptrtoint ptr %lock28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call30) #4
  %lock77 = getelementptr i8, ptr %hw, i32 -72
  %34 = ptrtoint ptr %lock77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lock77, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %common, i32 noundef %35) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_read_rate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_apply_prediv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_mult_round_rate(ptr nocapture noundef readnone %mux, ptr nocapture noundef readnone %parent, ptr nocapture noundef readonly %parent_rate, i32 noundef %rate, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %min = getelementptr inbounds %struct.ccu_mult, ptr %data, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %min, align 1
  %max = getelementptr inbounds %struct.ccu_mult, ptr %data, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv5 = zext i8 %3 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mult = getelementptr inbounds %struct.ccu_mult, ptr %data, i32 0, i32 3
  %width = getelementptr inbounds %struct.ccu_mult, ptr %data, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %width, align 2
  %conv8 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv8
  %6 = ptrtoint ptr %mult to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mult, align 4
  %conv10 = zext i8 %7 to i32
  %add = add nsw i32 %conv10, -1
  %sub = add i32 %add, %shl
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %conv5, %if.then ]
  %conv = zext i8 %1 to i32
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate, align 4
  %div.i = udiv i32 %rate, %9
  %10 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 %conv) #4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %storemerge) #4
  %mul = mul i32 %11, %9
  ret i32 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_has_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_mult_ops, !1, !"ccu_mult_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_mult.c", i32 161, i32 22}
!2 = !{ptr @__ksymtab_ccu_mult_ops, !3, !"__ksymtab_ccu_mult_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_mult.c", i32 173, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4029161}
!14 = !{i64 2151605330}
!15 = !{i64 2151606238}
!16 = !{i64 2151607503}
!17 = !{i64 4028743}
