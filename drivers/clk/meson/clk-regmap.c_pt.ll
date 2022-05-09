; ModuleID = '/llk/IR_all_yes/drivers/clk/meson/clk-regmap.c_pt.bc'
source_filename = "../drivers/clk/meson/clk-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_gate_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_gate_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_gate_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_gate_ro_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_gate_ro_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_gate_ro_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_gate_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_gate_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_gate_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_divider_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_divider_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_divider_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_divider_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_divider_ro_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_divider_ro_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_divider_ro_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_divider_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_divider_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_divider_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_mux_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_mux_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_mux_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_mux_ro_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_mux_ro_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_mux_ro_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_regmap_gate_data = type { i32, i8, i8 }
%struct.clk_regmap_div_data = type { i32, i8, i8, i8, ptr }
%struct.clk_regmap_mux_data = type { i32, ptr, i32, i8, i8 }

@clk_regmap_gate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_gate_enable, ptr @clk_regmap_gate_disable, ptr @clk_regmap_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_gate_ops to i32), ptr @__kstrtab_clk_regmap_gate_ops, ptr @__kstrtabns_clk_regmap_gate_ops }, section "___ksymtab_gpl+clk_regmap_gate_ops", align 4
@clk_regmap_gate_ro_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_gate_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_gate_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_gate_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_gate_ro_ops to i32), ptr @__kstrtab_clk_regmap_gate_ro_ops, ptr @__kstrtabns_clk_regmap_gate_ro_ops }, section "___ksymtab_gpl+clk_regmap_gate_ro_ops", align 4
@clk_regmap_divider_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_div_recalc_rate, ptr null, ptr @clk_regmap_div_determine_rate, ptr null, ptr null, ptr @clk_regmap_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_divider_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_divider_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_divider_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_divider_ops to i32), ptr @__kstrtab_clk_regmap_divider_ops, ptr @__kstrtabns_clk_regmap_divider_ops }, section "___ksymtab_gpl+clk_regmap_divider_ops", align 4
@clk_regmap_divider_ro_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_div_recalc_rate, ptr null, ptr @clk_regmap_div_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_divider_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_divider_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_divider_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_divider_ro_ops to i32), ptr @__kstrtab_clk_regmap_divider_ro_ops, ptr @__kstrtabns_clk_regmap_divider_ro_ops }, section "___ksymtab_gpl+clk_regmap_divider_ro_ops", align 4
@clk_regmap_mux_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_mux_determine_rate, ptr @clk_regmap_mux_set_parent, ptr @clk_regmap_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_mux_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_ops to i32), ptr @__kstrtab_clk_regmap_mux_ops, ptr @__kstrtabns_clk_regmap_mux_ops }, section "___ksymtab_gpl+clk_regmap_mux_ops", align 4
@clk_regmap_mux_ro_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_mux_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_ro_ops to i32), ptr @__kstrtab_clk_regmap_mux_ro_ops, ptr @__kstrtabns_clk_regmap_mux_ro_ops }, section "___ksymtab_gpl+clk_regmap_mux_ro_ops", align 4
@__UNIQUE_ID_description160 = internal constant [58 x i8] c"clk_regmap.description=Amlogic regmap backed clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author161 = internal constant [55 x i8] c"clk_regmap.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file162 = internal constant [45 x i8] c"clk_regmap.file=drivers/clk/meson/clk-regmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license163 = internal constant [26 x i8] c"clk_regmap.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"clk_regmap_gate_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 47, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"clk_regmap_gate_ro_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 54, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"clk_regmap_divider_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 123, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"clk_regmap_divider_ro_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 130, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"clk_regmap_mux_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 172, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"clk_regmap_mux_ro_ops\00", align 1
@___asan_gen_.17 = private constant [34 x i8] c"../drivers/clk/meson/clk-regmap.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 179, i32 22 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author161, ptr @__UNIQUE_ID_description160, ptr @__UNIQUE_ID_file162, ptr @__UNIQUE_ID_license163, ptr @__ksymtab_clk_regmap_divider_ops, ptr @__ksymtab_clk_regmap_divider_ro_ops, ptr @__ksymtab_clk_regmap_gate_ops, ptr @__ksymtab_clk_regmap_gate_ro_ops, ptr @__ksymtab_clk_regmap_mux_ops, ptr @__ksymtab_clk_regmap_mux_ro_ops, ptr @clk_regmap_gate_ops, ptr @clk_regmap_gate_ro_ops, ptr @clk_regmap_divider_ops, ptr @clk_regmap_divider_ro_ops, ptr @clk_regmap_mux_ops, ptr @clk_regmap_mux_ro_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_gate_ro_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_divider_ro_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_mux_ro_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_gate_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 1
  %4 = and i8 %3, 1
  %map.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %bit_idx.i = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bit_idx.i, align 4
  %conv2.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not.i.not = icmp eq i8 %4, 0
  %spec.select.i = select i1 %tobool3.not.i.not, i32 %shl.i, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_regmap_gate_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 1
  %4 = and i8 %3, 1
  %map.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %bit_idx.i = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bit_idx.i, align 4
  %conv2.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not.i = icmp eq i8 %4, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 0, i32 %shl.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_gate_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !40
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #3
  %flags = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bit_idx = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bit_idx, align 4
  %conv3 = zext i8 %11 to i32
  %shl = shl nuw i32 1, %conv3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %xor = xor i32 %shl, %13
  store i32 %xor, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bit_idx4 = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %bit_idx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bit_idx4, align 4
  %conv5 = zext i8 %15 to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %18 = lshr i32 %17, %conv5
  %19 = and i32 %18, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_div_recalc_rate(ptr noundef %hw, i32 noundef %prate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !40
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %shift = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %shr = lshr i32 %10, %conv
  %width = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width, align 1
  %conv3 = zext i8 %12 to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  store i32 %and, ptr %val, align 4
  %table = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 2
  %conv4 = zext i8 %16 to i32
  %call7 = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %prate, i32 noundef %and, ptr noundef %14, i32 noundef %conv4, i32 noundef %conv3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_div_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !40
  %flags = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 2
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %shift = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift, align 4
  %conv5 = zext i8 %10 to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %shr = lshr i32 %12, %conv5
  %width = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %width, align 1
  %conv6 = zext i8 %14 to i32
  %notmask = shl nsw i32 -1, %conv6
  %sub = xor i32 %notmask, -1
  %and7 = and i32 %shr, %sub
  store i32 %and7, ptr %val, align 4
  %table = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %table, align 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags, align 2
  %conv10 = zext i8 %18 to i32
  %call11 = call i32 @divider_ro_determine_rate(ptr noundef %hw, ptr noundef %req, ptr noundef %16, i8 noundef zeroext %14, i32 noundef %conv10, i32 noundef %and7) #3
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %table13 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %table13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %table13, align 4
  %width14 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %width14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %width14, align 1
  %call17 = tail call i32 @divider_determine_rate(ptr noundef %hw, ptr noundef %req, ptr noundef %20, i8 noundef zeroext %22, i32 noundef %conv) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call17, %if.end12 ], [ %call2, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %table = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %width = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %width, align 1
  %flags = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 2
  %conv = zext i8 %7 to i32
  %call2 = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %3, i8 noundef zeroext %5, i32 noundef %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %shift = getelementptr inbounds %struct.clk_regmap_div_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 4
  %conv4 = zext i8 %9 to i32
  %shl = shl i32 %call2, %conv4
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width, align 1
  %conv6 = zext i8 %15 to i32
  %notmask = shl nsw i32 -1, %conv6
  %sub = xor i32 %notmask, -1
  %shl10 = shl i32 %sub, %conv4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %shl10, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_mux_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %flags = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 @clk_mux_determine_rate_flags(ptr noundef %hw, ptr noundef %req, i32 noundef %conv) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_regmap_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %table = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 1
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @clk_mux_index_to_val(ptr noundef %3, i32 noundef %conv, i8 noundef zeroext %index) #3
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %mask = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %shift = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 4
  %conv3 = zext i8 %13 to i32
  %shl = shl i32 %11, %conv3
  %shl6 = shl i32 %call2, %conv3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_regmap_mux_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !40
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %shift = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv3 = zext i8 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %shr = lshr i32 %10, %conv3
  %mask = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, %shr
  store i32 %and, ptr %val, align 4
  %table = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 1
  %conv4 = zext i8 %16 to i32
  %call5 = call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef %14, i32 noundef %conv4, i32 noundef %and) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  %retval.0 = trunc i32 %retval.0.in to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_ro_determine_rate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_determine_rate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_determine_rate_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @clk_regmap_gate_ops, !1, !"clk_regmap_gate_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/meson/clk-regmap.c", i32 47, i32 22}
!2 = !{ptr @__ksymtab_clk_regmap_gate_ops, !3, !"__ksymtab_clk_regmap_gate_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/meson/clk-regmap.c", i32 52, i32 1}
!4 = !{ptr @clk_regmap_gate_ro_ops, !5, !"clk_regmap_gate_ro_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/meson/clk-regmap.c", i32 54, i32 22}
!6 = !{ptr @__ksymtab_clk_regmap_gate_ro_ops, !7, !"__ksymtab_clk_regmap_gate_ro_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/meson/clk-regmap.c", i32 57, i32 1}
!8 = !{ptr @clk_regmap_divider_ops, !9, !"clk_regmap_divider_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/meson/clk-regmap.c", i32 123, i32 22}
!10 = !{ptr @__ksymtab_clk_regmap_divider_ops, !11, !"__ksymtab_clk_regmap_divider_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/meson/clk-regmap.c", i32 128, i32 1}
!12 = !{ptr @clk_regmap_divider_ro_ops, !13, !"clk_regmap_divider_ro_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/meson/clk-regmap.c", i32 130, i32 22}
!14 = !{ptr @__ksymtab_clk_regmap_divider_ro_ops, !15, !"__ksymtab_clk_regmap_divider_ro_ops", i1 false, i1 false}
!15 = !{!"../drivers/clk/meson/clk-regmap.c", i32 134, i32 1}
!16 = !{ptr @clk_regmap_mux_ops, !17, !"clk_regmap_mux_ops", i1 false, i1 false}
!17 = !{!"../drivers/clk/meson/clk-regmap.c", i32 172, i32 22}
!18 = !{ptr @__ksymtab_clk_regmap_mux_ops, !19, !"__ksymtab_clk_regmap_mux_ops", i1 false, i1 false}
!19 = !{!"../drivers/clk/meson/clk-regmap.c", i32 177, i32 1}
!20 = !{ptr @clk_regmap_mux_ro_ops, !21, !"clk_regmap_mux_ro_ops", i1 false, i1 false}
!21 = !{!"../drivers/clk/meson/clk-regmap.c", i32 179, i32 22}
!22 = !{ptr @__ksymtab_clk_regmap_mux_ro_ops, !23, !"__ksymtab_clk_regmap_mux_ro_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/meson/clk-regmap.c", i32 182, i32 1}
!24 = !{ptr @__UNIQUE_ID_description160, !25, !"__UNIQUE_ID_description160", i1 false, i1 false}
!25 = !{!"../drivers/clk/meson/clk-regmap.c", i32 184, i32 1}
!26 = !{ptr @__UNIQUE_ID_author161, !27, !"__UNIQUE_ID_author161", i1 false, i1 false}
!27 = !{!"../drivers/clk/meson/clk-regmap.c", i32 185, i32 1}
!28 = !{ptr @__UNIQUE_ID_file162, !29, !"__UNIQUE_ID_file162", i1 false, i1 false}
!29 = !{!"../drivers/clk/meson/clk-regmap.c", i32 186, i32 1}
!30 = !{ptr @__UNIQUE_ID_license163, !29, !"__UNIQUE_ID_license163", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
