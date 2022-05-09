; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_gate.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_gate_helper_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_gate_helper_disable\09\09\09\09"
module asm "\09.long\09__crc_ccu_gate_helper_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_helper_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_gate_helper_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_gate_helper_enable\09\09\09\09"
module asm "\09.long\09__crc_ccu_gate_helper_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_helper_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_gate_helper_is_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_gate_helper_is_enabled\09\09\09\09"
module asm "\09.long\09__crc_ccu_gate_helper_is_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_helper_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_gate_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_gate_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_gate_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@__kstrtab_ccu_gate_helper_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_helper_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_helper_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_helper_disable to i32), ptr @__kstrtab_ccu_gate_helper_disable, ptr @__kstrtabns_ccu_gate_helper_disable }, section "___ksymtab_gpl+ccu_gate_helper_disable", align 4
@__kstrtab_ccu_gate_helper_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_helper_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_helper_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_helper_enable to i32), ptr @__kstrtab_ccu_gate_helper_enable, ptr @__kstrtabns_ccu_gate_helper_enable }, section "___ksymtab_gpl+ccu_gate_helper_enable", align 4
@__kstrtab_ccu_gate_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_helper_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_helper_is_enabled to i32), ptr @__kstrtab_ccu_gate_helper_is_enabled, ptr @__kstrtabns_ccu_gate_helper_is_enabled }, section "___ksymtab_gpl+ccu_gate_helper_is_enabled", align 4
@ccu_gate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_gate_enable, ptr @ccu_gate_disable, ptr @ccu_gate_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_gate_recalc_rate, ptr @ccu_gate_round_rate, ptr null, ptr null, ptr null, ptr @ccu_gate_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_ops to i32), ptr @__kstrtab_ccu_gate_ops, ptr @__kstrtabns_ccu_gate_ops }, section "___ksymtab_gpl+ccu_gate_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"ccu_gate_ops\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/clk/sunxi-ng/ccu_gate.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 122, i32 22 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ccu_gate_helper_disable, ptr @__ksymtab_ccu_gate_helper_enable, ptr @__ksymtab_ccu_gate_helper_is_enabled, ptr @__ksymtab_ccu_gate_ops, ptr @ccu_gate_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccu_gate_helper_disable(ptr nocapture noundef readonly %common, i32 noundef %gate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gate)
  %tobool.not = icmp eq i32 %gate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 5
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %reg5 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %4 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg5, align 4
  %conv6 = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %neg = xor i32 %gate, -1
  %and = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common, align 4
  %11 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg5, align 4
  %conv15 = zext i16 %12 to i32
  %add.ptr16 = getelementptr i8, ptr %10, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %8) #5, !srcloc !22
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccu_gate_helper_enable(ptr nocapture noundef readonly %common, i32 noundef %gate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gate)
  %tobool.not = icmp eq i32 %gate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 5
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %reg5 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %4 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg5, align 4
  %conv6 = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or = or i32 %7, %gate
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common, align 4
  %11 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg5, align 4
  %conv15 = zext i16 %12 to i32
  %add.ptr16 = getelementptr i8, ptr %10, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %8) #5, !srcloc !22
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccu_gate_helper_is_enabled(ptr nocapture noundef readonly %common, i32 noundef %gate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gate)
  %tobool.not = icmp eq i32 %gate, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %reg = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %and = and i32 %5, %gate
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_gate_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.ccu_gate_helper_enable.exit_crit_edge, label %do.body1.i

entry.ccu_gate_helper_enable.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ccu_gate_helper_enable.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %common = getelementptr i8, ptr %hw, i32 -20
  %lock.i = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %reg5.i = getelementptr i8, ptr %hw, i32 -16
  %6 = ptrtoint ptr %reg5.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg5.i, align 4
  %conv6.i = zext i16 %7 to i32
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 %conv6.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !19
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %or.i = or i32 %9, %1
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %11 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common, align 4
  %13 = ptrtoint ptr %reg5.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg5.i, align 4
  %conv15.i = zext i16 %14 to i32
  %add.ptr16.i = getelementptr i8, ptr %12, i32 %conv15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %10) #5, !srcloc !22
  %15 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call2.i) #5
  br label %ccu_gate_helper_enable.exit

ccu_gate_helper_enable.exit:                      ; preds = %do.body1.i, %entry.ccu_gate_helper_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_gate_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.ccu_gate_helper_disable.exit_crit_edge, label %do.body1.i

entry.ccu_gate_helper_disable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ccu_gate_helper_disable.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %common = getelementptr i8, ptr %hw, i32 -20
  %lock.i = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %reg5.i = getelementptr i8, ptr %hw, i32 -16
  %6 = ptrtoint ptr %reg5.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg5.i, align 4
  %conv6.i = zext i16 %7 to i32
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 %conv6.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #5, !srcloc !19
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %11 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common, align 4
  %13 = ptrtoint ptr %reg5.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg5.i, align 4
  %conv15.i = zext i16 %14 to i32
  %add.ptr16.i = getelementptr i8, ptr %12, i32 %conv15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %10) #5, !srcloc !22
  %15 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call2.i) #5
  br label %ccu_gate_helper_disable.exit

ccu_gate_helper_disable.exit:                     ; preds = %do.body1.i, %entry.ccu_gate_helper_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_gate_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.ccu_gate_helper_is_enabled.exit_crit_edge, label %if.end.i

entry.ccu_gate_helper_is_enabled.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ccu_gate_helper_is_enabled.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %common = getelementptr i8, ptr %hw, i32 -20
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %reg.i = getelementptr i8, ptr %hw, i32 -16
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %and.i = and i32 %7, %1
  br label %ccu_gate_helper_is_enabled.exit

ccu_gate_helper_is_enabled.exit:                  ; preds = %if.end.i, %entry.ccu_gate_helper_is_enabled.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i, %if.end.i ], [ 1, %entry.ccu_gate_helper_is_enabled.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_gate_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prediv = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %prediv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prediv, align 4
  %div = udiv i32 %parent_rate, %3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.0 = phi i32 [ %div, %if.then ], [ %parent_rate, %entry.if.end_crit_edge ]
  ret i32 %rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_gate_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prediv = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %prediv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prediv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %div.0 = phi i32 [ %3, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call2 = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #5
  %and3 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and8 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %mul = select i1 %tobool9.not, i32 1, i32 %div.0
  %spec.select = mul i32 %mul, %rate
  %call12 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  %call13 = tail call i32 @clk_hw_round_rate(ptr noundef %call12, i32 noundef %spec.select) #5
  %6 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call13, ptr %prate, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.end.if.end14_crit_edge
  %7 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prate, align 4
  %div15 = udiv i32 %8, %div.0
  ret i32 %div15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_gate_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_ccu_gate_helper_disable, !1, !"__ksymtab_ccu_gate_helper_disable", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_gate.c", i32 27, i32 1}
!2 = !{ptr @__ksymtab_ccu_gate_helper_enable, !3, !"__ksymtab_ccu_gate_helper_enable", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_gate.c", i32 53, i32 1}
!4 = !{ptr @__ksymtab_ccu_gate_helper_is_enabled, !5, !"__ksymtab_ccu_gate_helper_is_enabled", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi-ng/ccu_gate.c", i32 69, i32 1}
!6 = !{ptr @ccu_gate_ops, !7, !"ccu_gate_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi-ng/ccu_gate.c", i32 122, i32 22}
!8 = !{ptr @__ksymtab_ccu_gate_ops, !9, !"__ksymtab_ccu_gate_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu_gate.c", i32 130, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 4028045}
!20 = !{i64 2151595105}
!21 = !{i64 2151595336}
!22 = !{i64 4027627}
!23 = !{i64 2151598042}
!24 = !{i64 2151598272}
!25 = !{i64 2151600595}
