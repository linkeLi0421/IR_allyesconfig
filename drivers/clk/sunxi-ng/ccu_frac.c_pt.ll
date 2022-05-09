; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_frac.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_frac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_frac_helper_is_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_frac_helper_is_enabled\09\09\09\09"
module asm "\09.long\09__crc_ccu_frac_helper_is_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_frac_helper_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_frac_helper_enable\09\09\09\09"
module asm "\09.long\09__crc_ccu_frac_helper_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_frac_helper_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_frac_helper_disable\09\09\09\09"
module asm "\09.long\09__crc_ccu_frac_helper_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_frac_helper_has_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_frac_helper_has_rate\09\09\09\09"
module asm "\09.long\09__crc_ccu_frac_helper_has_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_has_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_has_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_has_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_frac_helper_read_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_frac_helper_read_rate\09\09\09\09"
module asm "\09.long\09__crc_ccu_frac_helper_read_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_read_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_read_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_read_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_frac_helper_set_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_frac_helper_set_rate\09\09\09\09"
module asm "\09.long\09__crc_ccu_frac_helper_set_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_set_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }

@__kstrtab_ccu_frac_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_is_enabled to i32), ptr @__kstrtab_ccu_frac_helper_is_enabled, ptr @__kstrtabns_ccu_frac_helper_is_enabled }, section "___ksymtab_gpl+ccu_frac_helper_is_enabled", align 4
@__kstrtab_ccu_frac_helper_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_enable to i32), ptr @__kstrtab_ccu_frac_helper_enable, ptr @__kstrtabns_ccu_frac_helper_enable }, section "___ksymtab_gpl+ccu_frac_helper_enable", align 4
@__kstrtab_ccu_frac_helper_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_disable to i32), ptr @__kstrtab_ccu_frac_helper_disable, ptr @__kstrtabns_ccu_frac_helper_disable }, section "___ksymtab_gpl+ccu_frac_helper_disable", align 4
@__kstrtab_ccu_frac_helper_has_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_has_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_has_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_has_rate to i32), ptr @__kstrtab_ccu_frac_helper_has_rate, ptr @__kstrtabns_ccu_frac_helper_has_rate }, section "___ksymtab_gpl+ccu_frac_helper_has_rate", align 4
@ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug100 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi_ccu\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ccu_frac_helper_read_rate\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/sunxi-ng/ccu_frac.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Read fractional\0A\00", [43 x i8] zeroinitializer }, align 32
@ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug101 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: clock is fractional (rates %lu and %lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug102 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: clock reg is 0x%x (select is 0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_frac_helper_read_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_read_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_read_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_read_rate to i32), ptr @__kstrtab_ccu_frac_helper_read_rate, ptr @__kstrtabns_ccu_frac_helper_read_rate }, section "___ksymtab_gpl+ccu_frac_helper_read_rate", align 4
@__kstrtab_ccu_frac_helper_set_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_set_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_set_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_set_rate to i32), ptr @__kstrtab_ccu_frac_helper_set_rate, ptr @__kstrtabns_ccu_frac_helper_set_rate }, section "___ksymtab_gpl+ccu_frac_helper_set_rate", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 71, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 76, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [35 x i8] c"../drivers/clk/sunxi-ng/ccu_frac.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 81, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_ccu_frac_helper_disable, ptr @__ksymtab_ccu_frac_helper_enable, ptr @__ksymtab_ccu_frac_helper_has_rate, ptr @__ksymtab_ccu_frac_helper_is_enabled, ptr @__ksymtab_ccu_frac_helper_read_rate, ptr @__ksymtab_ccu_frac_helper_set_rate, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ccu_frac_helper_is_enabled(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %cf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %reg = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg, align 4
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %8 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cf, align 4
  %and2 = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool3.not, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccu_frac_helper_enable(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %cf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 5
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %reg5 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %6 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg5, align 4
  %conv6 = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cf, align 4
  %neg = xor i32 %11, -1
  %and13 = and i32 %9, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and13)
  %13 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common, align 4
  %15 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg5, align 4
  %conv16 = zext i16 %16 to i32
  %add.ptr17 = getelementptr i8, ptr %14, i32 %conv16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #4, !srcloc !37
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccu_frac_helper_disable(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %cf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 5
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %reg5 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %6 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg5, align 4
  %conv6 = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cf, align 4
  %or = or i32 %11, %9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common, align 4
  %15 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg5, align 4
  %conv15 = zext i16 %16 to i32
  %add.ptr16 = getelementptr i8, ptr %14, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #4, !srcloc !37
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ccu_frac_helper_has_rate(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %cf, i32 noundef %rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %rates = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2
  %2 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp = icmp eq i32 %3, %rate
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.rhs

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx2 = getelementptr %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp3 = icmp eq i32 %5, %rate
  br label %return

return:                                           ; preds = %lor.rhs, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ %cmp3, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccu_frac_helper_read_rate(ptr noundef %common, ptr nocapture noundef readonly %cf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug100, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccu_frac_helper_read_rate, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 6
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug100, ptr noundef nonnull @.str.3, ptr noundef %call3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %features = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %do.body7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug101, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccu_frac_helper_read_rate, %if.then19)) #4
          to label %do.end26 [label %if.then19], !srcloc !40

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %hw20 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 6
  %call21 = tail call ptr @clk_hw_get_name(ptr noundef %hw20) #4
  %rates = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2
  %2 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rates, align 4
  %arrayidx23 = getelementptr %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug101, ptr noundef nonnull @.str.4, ptr noundef %call21, i32 noundef %3, i32 noundef %5) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then19, %do.body7
  %6 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common, align 4
  %reg27 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %8 = ptrtoint ptr %reg27 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg27, align 4
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug102, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccu_frac_helper_read_rate, %if.then43)) #4
          to label %do.end48 [label %if.then43], !srcloc !40

if.then43:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #6
  %hw44 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 6
  %call45 = tail call ptr @clk_hw_get_name(ptr noundef %hw44) #4
  %select = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 1
  %12 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %select, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug102, ptr noundef nonnull @.str.5, ptr noundef %call45, i32 noundef %11, i32 noundef %13) #4
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.end26
  %select49 = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 1
  %14 = ptrtoint ptr %select49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %select49, align 4
  %and50 = and i32 %15, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %arrayidx53 = getelementptr %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2, i32 1
  %rates54 = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2
  %cond.in = select i1 %tobool51.not, ptr %rates54, ptr %arrayidx53
  %16 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond = load i32, ptr %cond.in, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.end48 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccu_frac_helper_set_rate(ptr noundef %common, ptr nocapture noundef readonly %cf, i32 noundef %rate, i32 noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %rates = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2
  %2 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp = icmp eq i32 %3, %rate
  br i1 %cmp, label %if.end.do.body9_crit_edge, label %if.else

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body9

if.else:                                          ; preds = %if.end
  %arrayidx3 = getelementptr %struct.ccu_frac_internal, ptr %cf, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp4 = icmp eq i32 %5, %rate
  br i1 %cmp4, label %if.then5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %select = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 1
  %6 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %select, align 4
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %if.end.do.body9_crit_edge
  %sel.0 = phi i32 [ %7, %if.then5 ], [ 0, %if.end.do.body9_crit_edge ]
  %lock11 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 5
  %8 = ptrtoint ptr %lock11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock11, align 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #4
  %10 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common, align 4
  %reg15 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %12 = ptrtoint ptr %reg15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reg15, align 4
  %conv16 = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %conv16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %select20 = getelementptr inbounds %struct.ccu_frac_internal, ptr %cf, i32 0, i32 1
  %16 = ptrtoint ptr %select20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %select20, align 4
  %neg = xor i32 %17, -1
  %and21 = and i32 %15, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %or = or i32 %and21, %sel.0
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common, align 4
  %21 = ptrtoint ptr %reg15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg15, align 4
  %conv27 = zext i16 %22 to i32
  %add.ptr28 = getelementptr i8, ptr %20, i32 %conv27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %18) #4, !srcloc !37
  %23 = ptrtoint ptr %lock11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call12) #4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %common, i32 noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_ccu_frac_helper_is_enabled, !1, !"__ksymtab_ccu_frac_helper_is_enabled", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 21, i32 1}
!2 = !{ptr @__ksymtab_ccu_frac_helper_enable, !3, !"__ksymtab_ccu_frac_helper_enable", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 37, i32 1}
!4 = !{ptr @__ksymtab_ccu_frac_helper_disable, !5, !"__ksymtab_ccu_frac_helper_disable", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 53, i32 1}
!6 = !{ptr @__ksymtab_ccu_frac_helper_has_rate, !7, !"__ksymtab_ccu_frac_helper_has_rate", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 64, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 71, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug100, !9, !"__UNIQUE_ID_ddebug100", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 76, i32 2}
!16 = !{ptr @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug101, !15, !"__UNIQUE_ID_ddebug101", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 81, i32 2}
!19 = !{ptr @ccu_frac_helper_read_rate.__UNIQUE_ID_ddebug102, !18, !"__UNIQUE_ID_ddebug102", i1 false, i1 false}
!20 = !{ptr @__ksymtab_ccu_frac_helper_read_rate, !21, !"__ksymtab_ccu_frac_helper_read_rate", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 86, i32 1}
!22 = !{ptr @__ksymtab_ccu_frac_helper_set_rate, !23, !"__ksymtab_ccu_frac_helper_set_rate", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi-ng/ccu_frac.c", i32 115, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4028103}
!34 = !{i64 2151591520}
!35 = !{i64 2151594172}
!36 = !{i64 2151594409}
!37 = !{i64 4027685}
!38 = !{i64 2151597191}
!39 = !{i64 2151597427}
!40 = !{i64 2148917882, i64 2148917887, i64 2148917900, i64 2148917944, i64 2148917978, i64 2148917999}
!41 = !{i64 2151606558}
!42 = !{i64 2151611746}
!43 = !{i64 2151611975}
