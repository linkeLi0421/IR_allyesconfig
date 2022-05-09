; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rl6231.c_pt.bc'
source_filename = "../sound/soc/codecs/rl6231.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rl6231_get_pre_div\22, \22a\22\09"
module asm "\09.weak\09__crc_rl6231_get_pre_div\09\09\09\09"
module asm "\09.long\09__crc_rl6231_get_pre_div\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_get_pre_div:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_get_pre_div\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_get_pre_div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rl6231_calc_dmic_clk\22, \22a\22\09"
module asm "\09.weak\09__crc_rl6231_calc_dmic_clk\09\09\09\09"
module asm "\09.long\09__crc_rl6231_calc_dmic_clk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_calc_dmic_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_calc_dmic_clk\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_calc_dmic_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rl6231_pll_calc\22, \22a\22\09"
module asm "\09.weak\09__crc_rl6231_pll_calc\09\09\09\09"
module asm "\09.long\09__crc_rl6231_pll_calc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_pll_calc:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_pll_calc\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_pll_calc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rl6231_get_clk_info\22, \22a\22\09"
module asm "\09.weak\09__crc_rl6231_get_clk_info\09\09\09\09"
module asm "\09.long\09__crc_rl6231_get_clk_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_get_clk_info:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_get_clk_info\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_get_clk_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pll_calc_map = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }

@__kstrtab_rl6231_get_pre_div = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_get_pre_div = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_get_pre_div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_get_pre_div to i32), ptr @__kstrtab_rl6231_get_pre_div, ptr @__kstrtabns_rl6231_get_pre_div }, section "___ksymtab_gpl+rl6231_get_pre_div", align 4
@rl6231_calc_dmic_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Base clock rate %d is too low\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rl6231_calc_dmic_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rl6231.c\00", [38 x i8] zeroinitializer }, align 32
@rl6231_calc_dmic_clk._entry_ptr = internal global ptr @rl6231_calc_dmic_clk._entry, section ".printk_index", align 4
@rl6231_calc_dmic_clk._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Base clock rate %d is too high\0A\00", [62 x i8] zeroinitializer }, align 32
@rl6231_calc_dmic_clk._entry_ptr.5 = internal global ptr @rl6231_calc_dmic_clk._entry.3, section ".printk_index", align 4
@__kstrtab_rl6231_calc_dmic_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_calc_dmic_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_calc_dmic_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_calc_dmic_clk to i32), ptr @__kstrtab_rl6231_calc_dmic_clk, ptr @__kstrtabns_rl6231_calc_dmic_clk }, section "___ksymtab_gpl+rl6231_calc_dmic_clk", align 4
@pll_preset_table = internal constant { [5 x %struct.pll_calc_map], [40 x i8] } { [5 x %struct.pll_calc_map] [%struct.pll_calc_map { i32 19200000, i32 4096000, i32 23, i32 14, i32 1, i8 0, i8 0 }, %struct.pll_calc_map { i32 19200000, i32 24576000, i32 3, i32 30, i32 3, i8 0, i8 0 }, %struct.pll_calc_map { i32 48000000, i32 3840000, i32 23, i32 2, i32 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 3840000, i32 24576000, i32 3, i32 30, i32 0, i8 1, i8 0 }, %struct.pll_calc_map { i32 3840000, i32 22579200, i32 3, i32 5, i32 0, i8 1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@rl6231_pll_calc.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rl6231\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rl6231_pll_calc\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Use preset PLL parameter table\0A\00", [32 x i8] zeroinitializer }, align 32
@rl6231_pll_calc.__UNIQUE_ID_ddebug161 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Only get approximation about PLL\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_rl6231_pll_calc = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_pll_calc = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_pll_calc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_pll_calc to i32), ptr @__kstrtab_rl6231_pll_calc, ptr @__kstrtabns_rl6231_pll_calc }, section "___ksymtab_gpl+rl6231_pll_calc", align 4
@__kstrtab_rl6231_get_clk_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_get_clk_info = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_get_clk_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_get_clk_info to i32), ptr @__kstrtab_rl6231_get_clk_info, ptr @__kstrtabns_rl6231_get_clk_info }, section "___ksymtab_gpl+rl6231_get_clk_info", align 4
@__UNIQUE_ID_description162 = internal constant [62 x i8] c"snd_soc_rl6231.description=RL6231 class device shared support\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [58 x i8] c"snd_soc_rl6231.author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [52 x i8] c"snd_soc_rl6231.file=sound/soc/codecs/snd-soc-rl6231\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [30 x i8] c"snd_soc_rl6231.license=GPL v2\00", section ".modinfo", align 1
@switch.table.rl6231_get_pre_div = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3840000, i64 19200000, i64 48000000]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 4096000, i64 24576000]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 76, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 88, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"pll_preset_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 103, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 162, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [29 x i8] c"../sound/soc/codecs/rl6231.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 217, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [32 x i8] c"switch.table.rl6231_get_pre_div\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_license165, ptr @__ksymtab_rl6231_calc_dmic_clk, ptr @__ksymtab_rl6231_get_clk_info, ptr @__ksymtab_rl6231_get_pre_div, ptr @__ksymtab_rl6231_pll_calc, ptr @rl6231_calc_dmic_clk._entry, ptr @rl6231_calc_dmic_clk._entry.3, ptr @rl6231_calc_dmic_clk._entry_ptr, ptr @rl6231_calc_dmic_clk._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pll_preset_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.rl6231_get_pre_div], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rl6231_calc_dmic_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rl6231_calc_dmic_clk._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_preset_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rl6231_get_pre_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rl6231_get_pre_div(ptr noundef %map, i32 noundef %reg, i32 noundef %sft) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !48
  %call = call i32 @regmap_read(ptr noundef %map, i32 noundef %reg, ptr noundef nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %shr = ashr i32 %2, %sft
  %and = and i32 %shr, 7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.rl6231_get_pre_div, i32 0, i32 %and
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %switch.load
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rl6231_calc_dmic_clk(i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %rate)
  %cmp = icmp slt i32 %rate, 2000000
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %for.body.preheader

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072000, i32 %rate)
  %cmp7.not = icmp ugt i32 %rate, 3072000
  br i1 %cmp7.not, label %for.inc.1, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %rate)
  %cmp7.not.2 = icmp ugt i32 %rate, 6144000
  br i1 %cmp7.not.2, label %for.inc.3, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %rate)
  %cmp7.not.4 = icmp ugt i32 %rate, 12288000
  br i1 %cmp7.not.4, label %for.inc.3.cleanup.sink.split_crit_edge, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.3.cleanup.sink.split_crit_edge:           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.3.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.4, %for.inc.3.cleanup.sink.split_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, i32 noundef %rate) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.3.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr nocapture noundef writeonly %pll_code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %freq_out, %freq_in
  %0 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %1 = add i32 %freq_in, -50000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49744001, i32 %1)
  %2 = icmp ult i32 %1, -49744001
  br i1 %2, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %3 = zext i32 %freq_in to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq_in, label %for.body.preheader.for.inc.4_crit_edge [
    i32 19200000, label %land.lhs.true
    i32 48000000, label %land.lhs.true.2
    i32 3840000, label %land.lhs.true.3
  ]

for.body.preheader.for.inc.4_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true:                                    ; preds = %for.body.preheader
  %4 = zext i32 %freq_out to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %freq_out, label %land.lhs.true.for.inc.4_crit_edge [
    i32 4096000, label %land.lhs.true.if.then9_crit_edge
    i32 24576000, label %if.then9.fold.split
  ]

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

land.lhs.true.for.inc.4_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then9.fold.split:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9.fold.split307:                           ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true.3.if.then9_crit_edge, %land.lhs.true.2.if.then9_crit_edge, %if.then9.fold.split307, %if.then9.fold.split, %land.lhs.true.if.then9_crit_edge
  %i.0261.lcssa = phi i32 [ 0, %land.lhs.true.if.then9_crit_edge ], [ 2, %land.lhs.true.2.if.then9_crit_edge ], [ 3, %land.lhs.true.3.if.then9_crit_edge ], [ 1, %if.then9.fold.split ], [ 4, %if.then9.fold.split307 ]
  %k11 = getelementptr [5 x %struct.pll_calc_map], ptr @pll_preset_table, i32 0, i32 %i.0261.lcssa, i32 2
  %5 = ptrtoint ptr %k11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %k11, align 4
  %m13 = getelementptr [5 x %struct.pll_calc_map], ptr @pll_preset_table, i32 0, i32 %i.0261.lcssa, i32 4
  %7 = ptrtoint ptr %m13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m13, align 4
  %n15 = getelementptr [5 x %struct.pll_calc_map], ptr @pll_preset_table, i32 0, i32 %i.0261.lcssa, i32 3
  %9 = ptrtoint ptr %n15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n15, align 4
  %11 = add nsw i32 %i.0261.lcssa, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %12 = icmp ult i32 %11, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rl6231_pll_calc.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rl6231_pll_calc, %if.then25)) #7
          to label %code_find [label %if.then25], !srcloc !49

if.then25:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rl6231_pll_calc.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.8) #7
  br label %code_find

land.lhs.true.2:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840000, i32 %freq_out)
  %cmp8.2 = icmp eq i32 %freq_out, 3840000
  br i1 %cmp8.2, label %land.lhs.true.2.if.then9_crit_edge, label %land.lhs.true.2.for.inc.4_crit_edge

land.lhs.true.2.for.inc.4_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.2.if.then9_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

land.lhs.true.3:                                  ; preds = %for.body.preheader
  %13 = zext i32 %freq_out to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %freq_out, label %land.lhs.true.3.for.inc.4_crit_edge [
    i32 24576000, label %land.lhs.true.3.if.then9_crit_edge
    i32 22579200, label %if.then9.fold.split307
  ]

land.lhs.true.3.if.then9_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

land.lhs.true.3.for.inc.4_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.3.for.inc.4_crit_edge, %land.lhs.true.2.for.inc.4_crit_edge, %land.lhs.true.for.inc.4_crit_edge, %for.body.preheader.for.inc.4_crit_edge
  %div28 = udiv i32 80000000, %freq_out
  %sub29 = add nsw i32 %div28, -2
  %div30 = udiv i32 150000000, %freq_out
  %14 = tail call i32 @llvm.smin.i32(i32 %div30, i32 33)
  %15 = add nsw i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2352942, i32 %freq_out)
  %cmp35 = icmp ult i32 %freq_out, 2352942
  %spec.select = select i1 %cmp35, i32 31, i32 %sub29
  %spec.select223 = select i1 %cmp35, i32 31, i32 %15
  %call38 = tail call i32 @gcd(i32 noundef %freq_in, i32 noundef %freq_out) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8405025, i32 %freq_in)
  %cmp.i = icmp ult i32 %freq_in, 8405025
  br i1 %cmp.i, label %for.inc.4.find_best_div.exit_crit_edge, label %if.end.i

for.inc.4.find_best_div.exit_crit_edge:           ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_best_div.exit

if.end.i:                                         ; preds = %for.inc.4
  %div1.i = udiv i32 %freq_in, 8405024
  %16 = mul i32 %div1.i, 8405024
  %rem.i.decomposed = sub i32 %freq_in, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add nuw nsw i32 %div1.i, %inc.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i
  %d.1.i = phi i32 [ %spec.select.i, %if.end.i ], [ %inc6.i, %while.cond.i.while.cond.i_crit_edge ]
  %rem4.i = urem i32 %call38, %d.1.i
  %cmp5.not.i = icmp eq i32 %rem4.i, 0
  %inc6.i = add i32 %d.1.i, 1
  br i1 %cmp5.not.i, label %while.cond.i.find_best_div.exit_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.cond.i.find_best_div.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_best_div.exit

find_best_div.exit:                               ; preds = %while.cond.i.find_best_div.exit_crit_edge, %for.inc.4.find_best_div.exit_crit_edge
  %retval.0.i228 = phi i32 [ 1, %for.inc.4.find_best_div.exit_crit_edge ], [ %d.1.i, %while.cond.i.find_best_div.exit_crit_edge ]
  %div40 = udiv i32 %freq_in, %retval.0.i228
  %div41 = udiv i32 %freq_out, %retval.0.i228
  %17 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 -1)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.select223)
  %cmp46.not276 = icmp sgt i32 %17, %spec.select223
  br i1 %cmp46.not276, label %find_best_div.exit.do.body104_crit_edge, label %find_best_div.exit.for.cond48.preheader_crit_edge

find_best_div.exit.for.cond48.preheader_crit_edge: ; preds = %find_best_div.exit
  br label %for.cond48.preheader

find_best_div.exit.do.body104_crit_edge:          ; preds = %find_best_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

for.cond48.preheader:                             ; preds = %for.inc101.for.cond48.preheader_crit_edge, %find_best_div.exit.for.cond48.preheader_crit_edge
  %k.0282 = phi i32 [ %k.4, %for.inc101.for.cond48.preheader_crit_edge ], [ %spec.select, %find_best_div.exit.for.cond48.preheader_crit_edge ]
  %m_bypass.0.off0281 = phi i1 [ %m_bypass.4.off0, %for.inc101.for.cond48.preheader_crit_edge ], [ false, %find_best_div.exit.for.cond48.preheader_crit_edge ]
  %k_t.0280 = phi i32 [ %inc102, %for.inc101.for.cond48.preheader_crit_edge ], [ %17, %find_best_div.exit.for.cond48.preheader_crit_edge ]
  %red_t.0279 = phi i32 [ %red_t.4, %for.inc101.for.cond48.preheader_crit_edge ], [ %0, %find_best_div.exit.for.cond48.preheader_crit_edge ]
  %m.0278 = phi i32 [ %m.4, %for.inc101.for.cond48.preheader_crit_edge ], [ 0, %find_best_div.exit.for.cond48.preheader_crit_edge ]
  %n.0277 = phi i32 [ %n.4, %for.inc101.for.cond48.preheader_crit_edge ], [ 0, %find_best_div.exit.for.cond48.preheader_crit_edge ]
  %add51 = add nsw i32 %k_t.0280, 2
  %mul52 = mul i32 %add51, %div41
  br label %for.body50

for.body50:                                       ; preds = %for.inc98.for.body50_crit_edge, %for.cond48.preheader
  %k.1275 = phi i32 [ %k.0282, %for.cond48.preheader ], [ %k.4, %for.inc98.for.body50_crit_edge ]
  %n_t.0274 = phi i32 [ 0, %for.cond48.preheader ], [ %inc99, %for.inc98.for.body50_crit_edge ]
  %m_bypass.1.off0273 = phi i1 [ %m_bypass.0.off0281, %for.cond48.preheader ], [ %m_bypass.4.off0, %for.inc98.for.body50_crit_edge ]
  %red_t.1272 = phi i32 [ %red_t.0279, %for.cond48.preheader ], [ %red_t.4, %for.inc98.for.body50_crit_edge ]
  %m.1271 = phi i32 [ %m.0278, %for.cond48.preheader ], [ %m.4, %for.inc98.for.body50_crit_edge ]
  %n.1270 = phi i32 [ %n.0277, %for.cond48.preheader ], [ %n.4, %for.inc98.for.body50_crit_edge ]
  %add = add nuw nsw i32 %n_t.0274, 2
  %mul = mul i32 %add, %div40
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul52)
  %cmp53 = icmp eq i32 %mul, %mul52
  br i1 %cmp53, label %for.body50.code_find_crit_edge, label %if.end55

for.body50.code_find_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %code_find

if.end55:                                         ; preds = %for.body50
  %div57 = udiv i32 %mul, %add51
  %sub59 = sub i32 %div41, %div57
  %18 = tail call i32 @llvm.abs.i32(i32 %sub59, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %red_t.1272)
  %cmp67 = icmp ult i32 %18, %red_t.1272
  br i1 %cmp67, label %if.then68, label %if.end55.for.body75.preheader_crit_edge

if.end55.for.body75.preheader_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75.preheader

if.then68:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_cmp4(i32 %div41, i32 %div57)
  %cmp69 = icmp eq i32 %div41, %div57
  br i1 %cmp69, label %if.then68.code_find_crit_edge, label %if.then68.for.body75.preheader_crit_edge

if.then68.for.body75.preheader_crit_edge:         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75.preheader

if.then68.code_find_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %code_find

for.body75.preheader:                             ; preds = %if.then68.for.body75.preheader_crit_edge, %if.end55.for.body75.preheader_crit_edge
  %k.3269.ph = phi i32 [ %k_t.0280, %if.then68.for.body75.preheader_crit_edge ], [ %k.1275, %if.end55.for.body75.preheader_crit_edge ]
  %m_bypass.3.off0268.ph = phi i1 [ true, %if.then68.for.body75.preheader_crit_edge ], [ %m_bypass.1.off0273, %if.end55.for.body75.preheader_crit_edge ]
  %red_t.3267.ph = phi i32 [ %18, %if.then68.for.body75.preheader_crit_edge ], [ %red_t.1272, %if.end55.for.body75.preheader_crit_edge ]
  %m.3264.ph = phi i32 [ 0, %if.then68.for.body75.preheader_crit_edge ], [ %m.1271, %if.end55.for.body75.preheader_crit_edge ]
  %n.3263.ph = phi i32 [ %n_t.0274, %if.then68.for.body75.preheader_crit_edge ], [ %n.1270, %if.end55.for.body75.preheader_crit_edge ]
  br label %for.body75

for.body75:                                       ; preds = %for.inc95.for.body75_crit_edge, %for.body75.preheader
  %k.3269 = phi i32 [ %k.4, %for.inc95.for.body75_crit_edge ], [ %k.3269.ph, %for.body75.preheader ]
  %m_bypass.3.off0268 = phi i1 [ %m_bypass.4.off0, %for.inc95.for.body75_crit_edge ], [ %m_bypass.3.off0268.ph, %for.body75.preheader ]
  %red_t.3267 = phi i32 [ %red_t.4, %for.inc95.for.body75_crit_edge ], [ %red_t.3267.ph, %for.body75.preheader ]
  %m_t.0265 = phi i32 [ %inc96, %for.inc95.for.body75_crit_edge ], [ 0, %for.body75.preheader ]
  %m.3264 = phi i32 [ %m.4, %for.inc95.for.body75_crit_edge ], [ %m.3264.ph, %for.body75.preheader ]
  %n.3263 = phi i32 [ %n.4, %for.inc95.for.body75_crit_edge ], [ %n.3263.ph, %for.body75.preheader ]
  %add76 = add nuw nsw i32 %m_t.0265, 2
  %mul78 = mul i32 %add76, %add51
  %div79 = udiv i32 %mul, %mul78
  %sub81 = sub i32 %div41, %div79
  %19 = tail call i32 @llvm.abs.i32(i32 %sub81, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %red_t.3267)
  %cmp89 = icmp ult i32 %19, %red_t.3267
  br i1 %cmp89, label %if.then90, label %for.body75.for.inc95_crit_edge

for.body75.for.inc95_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc95

if.then90:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_cmp4(i32 %div41, i32 %div79)
  %cmp91 = icmp eq i32 %div41, %div79
  br i1 %cmp91, label %if.then90.code_find_crit_edge, label %if.then90.for.inc95_crit_edge

if.then90.for.inc95_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc95

if.then90.code_find_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %code_find

for.inc95:                                        ; preds = %if.then90.for.inc95_crit_edge, %for.body75.for.inc95_crit_edge
  %n.4 = phi i32 [ %n.3263, %for.body75.for.inc95_crit_edge ], [ %n_t.0274, %if.then90.for.inc95_crit_edge ]
  %m.4 = phi i32 [ %m.3264, %for.body75.for.inc95_crit_edge ], [ %m_t.0265, %if.then90.for.inc95_crit_edge ]
  %red_t.4 = phi i32 [ %red_t.3267, %for.body75.for.inc95_crit_edge ], [ %19, %if.then90.for.inc95_crit_edge ]
  %m_bypass.4.off0 = phi i1 [ %m_bypass.3.off0268, %for.body75.for.inc95_crit_edge ], [ false, %if.then90.for.inc95_crit_edge ]
  %k.4 = phi i32 [ %k.3269, %for.body75.for.inc95_crit_edge ], [ %k_t.0280, %if.then90.for.inc95_crit_edge ]
  %inc96 = add nuw nsw i32 %m_t.0265, 1
  %exitcond.not = icmp eq i32 %inc96, 16
  br i1 %exitcond.not, label %for.inc98, label %for.inc95.for.body75_crit_edge

for.inc95.for.body75_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75

for.inc98:                                        ; preds = %for.inc95
  %inc99 = add nuw nsw i32 %n_t.0274, 1
  %exitcond293.not = icmp eq i32 %inc99, 512
  br i1 %exitcond293.not, label %for.inc101, label %for.inc98.for.body50_crit_edge

for.inc98.for.body50_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50

for.inc101:                                       ; preds = %for.inc98
  %inc102 = add nsw i32 %k_t.0280, 1
  %exitcond294 = icmp eq i32 %k_t.0280, %spec.select223
  br i1 %exitcond294, label %for.inc101.do.body104_crit_edge, label %for.inc101.for.cond48.preheader_crit_edge

for.inc101.for.cond48.preheader_crit_edge:        ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond48.preheader

for.inc101.do.body104_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

do.body104:                                       ; preds = %for.inc101.do.body104_crit_edge, %find_best_div.exit.do.body104_crit_edge
  %n.0.lcssa = phi i32 [ 0, %find_best_div.exit.do.body104_crit_edge ], [ %n.4, %for.inc101.do.body104_crit_edge ]
  %m.0.lcssa = phi i32 [ 0, %find_best_div.exit.do.body104_crit_edge ], [ %m.4, %for.inc101.do.body104_crit_edge ]
  %m_bypass.0.off0.lcssa = phi i1 [ false, %find_best_div.exit.do.body104_crit_edge ], [ %m_bypass.4.off0, %for.inc101.do.body104_crit_edge ]
  %k.0.lcssa = phi i32 [ %spec.select, %find_best_div.exit.do.body104_crit_edge ], [ %k.4, %for.inc101.do.body104_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rl6231_pll_calc.__UNIQUE_ID_ddebug161, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rl6231_pll_calc, %if.then116)) #7
          to label %code_find [label %if.then116], !srcloc !49

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rl6231_pll_calc.__UNIQUE_ID_ddebug161, ptr noundef nonnull @.str.9) #7
  br label %code_find

code_find:                                        ; preds = %if.then116, %do.body104, %if.then90.code_find_crit_edge, %if.then68.code_find_crit_edge, %for.body50.code_find_crit_edge, %if.then25, %if.then9
  %n.5 = phi i32 [ %10, %if.then25 ], [ %n.0.lcssa, %if.then116 ], [ %10, %if.then9 ], [ %n.0.lcssa, %do.body104 ], [ %n_t.0274, %if.then90.code_find_crit_edge ], [ %n_t.0274, %if.then68.code_find_crit_edge ], [ %n_t.0274, %for.body50.code_find_crit_edge ]
  %m.5 = phi i32 [ %8, %if.then25 ], [ %m.0.lcssa, %if.then116 ], [ %8, %if.then9 ], [ %m.0.lcssa, %do.body104 ], [ %m_t.0265, %if.then90.code_find_crit_edge ], [ %m.1271, %for.body50.code_find_crit_edge ], [ 0, %if.then68.code_find_crit_edge ]
  %m_bypass.5.off0 = phi i1 [ %12, %if.then25 ], [ %m_bypass.0.off0.lcssa, %if.then116 ], [ %12, %if.then9 ], [ %m_bypass.0.off0.lcssa, %do.body104 ], [ false, %if.then90.code_find_crit_edge ], [ true, %if.then68.code_find_crit_edge ], [ true, %for.body50.code_find_crit_edge ]
  %k.5 = phi i32 [ %6, %if.then25 ], [ %k.0.lcssa, %if.then116 ], [ %6, %if.then9 ], [ %k.0.lcssa, %do.body104 ], [ %k_t.0280, %if.then90.code_find_crit_edge ], [ %k_t.0280, %if.then68.code_find_crit_edge ], [ %k_t.0280, %for.body50.code_find_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %k.5)
  %cmp120 = icmp eq i32 %k.5, -1
  %spec.select224 = select i1 %cmp120, i32 0, i32 %k.5
  %frombool125 = zext i1 %m_bypass.5.off0 to i8
  %20 = ptrtoint ptr %pll_code to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool125, ptr %pll_code, align 4
  %k_bp127 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 1
  %frombool128 = zext i1 %cmp120 to i8
  %21 = ptrtoint ptr %k_bp127 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool128, ptr %k_bp127, align 1
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %22 = ptrtoint ptr %m_code to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %m.5, ptr %m_code, align 4
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %23 = ptrtoint ptr %n_code to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %n.5, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %24 = ptrtoint ptr %k_code to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select224, ptr %k_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %code_find, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %code_find ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rl6231_get_clk_info(i32 noundef %sclk, i32 noundef %rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sclk)
  %cmp = icmp slt i32 %sclk, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rate)
  %cmp1 = icmp slt i32 %rate, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %rate, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sclk)
  %cmp3 = icmp eq i32 %shl, %sclk
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %mul.1 = shl i32 %rate, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %sclk)
  %cmp3.1 = icmp eq i32 %mul.1, %sclk
  br i1 %cmp3.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %mul.2 = mul i32 %rate, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %sclk)
  %cmp3.2 = icmp eq i32 %mul.2, %sclk
  br i1 %cmp3.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %mul.3 = shl i32 %rate, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %sclk)
  %cmp3.3 = icmp eq i32 %mul.3, %sclk
  br i1 %cmp3.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %mul.4 = mul i32 %rate, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %sclk)
  %cmp3.4 = icmp eq i32 %mul.4, %sclk
  br i1 %cmp3.4, label %for.inc.3.cleanup_crit_edge, label %for.inc.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %mul.5 = shl i32 %rate, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %sclk)
  %cmp3.5 = icmp eq i32 %mul.5, %sclk
  br i1 %cmp3.5, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %mul.6 = mul i32 %rate, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6, i32 %sclk)
  %cmp3.6 = icmp eq i32 %mul.6, %sclk
  br i1 %cmp3.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %mul.7 = shl i32 %rate, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7, i32 %sclk)
  %cmp3.7 = icmp eq i32 %mul.7, %sclk
  %spec.select = select i1 %cmp3.7, i32 7, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.inc.6, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ], [ %spec.select, %for.inc.6 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_rl6231_get_pre_div, !1, !"__ksymtab_rl6231_get_pre_div", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rl6231.c", i32 60, i32 1}
!2 = distinct !{null, !3, !"div", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/rl6231.c", i32 72, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/rl6231.c", i32 76, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rl6231_calc_dmic_clk._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rl6231_calc_dmic_clk._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rl6231.c", i32 88, i32 2}
!12 = !{ptr @rl6231_calc_dmic_clk._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rl6231_calc_dmic_clk._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_rl6231_calc_dmic_clk, !15, !"__ksymtab_rl6231_calc_dmic_clk", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rl6231.c", i32 91, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/rl6231.c", i32 162, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rl6231_pll_calc.__UNIQUE_ID_ddebug160, !17, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/rl6231.c", i32 217, i32 2}
!23 = !{ptr @rl6231_pll_calc.__UNIQUE_ID_ddebug161, !22, !"__UNIQUE_ID_ddebug161", i1 false, i1 false}
!24 = !{ptr @__ksymtab_rl6231_pll_calc, !25, !"__ksymtab_rl6231_pll_calc", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/rl6231.c", i32 232, i32 1}
!26 = distinct !{null, !27, !"pd", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/rl6231.c", i32 237, i32 19}
!28 = !{ptr @__ksymtab_rl6231_get_clk_info, !29, !"__ksymtab_rl6231_get_clk_info", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/rl6231.c", i32 249, i32 1}
!30 = !{ptr @__UNIQUE_ID_description162, !31, !"__UNIQUE_ID_description162", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/rl6231.c", i32 251, i32 1}
!32 = !{ptr @__UNIQUE_ID_author163, !33, !"__UNIQUE_ID_author163", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/rl6231.c", i32 252, i32 1}
!34 = !{ptr @__UNIQUE_ID_file164, !35, !"__UNIQUE_ID_file164", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rl6231.c", i32 253, i32 1}
!36 = !{ptr @__UNIQUE_ID_license165, !35, !"__UNIQUE_ID_license165", i1 false, i1 false}
!37 = !{ptr @pll_preset_table, !38, !"pll_preset_table", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/rl6231.c", i32 103, i32 34}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 2148956905, i64 2148956910, i64 2148956923, i64 2148956967, i64 2148957001, i64 2148957022}
