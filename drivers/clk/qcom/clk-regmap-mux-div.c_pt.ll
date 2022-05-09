; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-regmap-mux-div.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap-mux-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mux_div_set_src_div\22, \22a\22\09"
module asm "\09.weak\09__crc_mux_div_set_src_div\09\09\09\09"
module asm "\09.long\09__crc_mux_div_set_src_div\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mux_div_set_src_div:\09\09\09\09\09"
module asm "\09.asciz \09\22mux_div_set_src_div\22\09\09\09\09\09"
module asm "__kstrtabns_mux_div_set_src_div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_mux_div_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_mux_div_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_mux_div_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_div_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_regmap_mux_div = type { i32, i32, i32, i32, i32, i32, i32, ptr, %struct.clk_regmap, ptr, %struct.notifier_block }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mux_div_set_src_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: RCG did not update its configuration\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mux_div_set_src_div\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clk/qcom/clk-regmap-mux-div.c\00", [58 x i8] zeroinitializer }, align 32
@mux_div_set_src_div._entry_ptr = internal global ptr @mux_div_set_src_div._entry, section ".printk_index", align 4
@__kstrtab_mux_div_set_src_div = external dso_local constant [0 x i8], align 1
@__kstrtabns_mux_div_set_src_div = external dso_local constant [0 x i8], align 1
@__ksymtab_mux_div_set_src_div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mux_div_set_src_div to i32), ptr @__kstrtab_mux_div_set_src_div, ptr @__kstrtabns_mux_div_set_src_div }, section "___ksymtab_gpl+mux_div_set_src_div", align 4
@clk_regmap_mux_div_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mux_div_recalc_rate, ptr null, ptr @mux_div_determine_rate, ptr @mux_div_set_parent, ptr @mux_div_get_parent, ptr @mux_div_set_rate, ptr @mux_div_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_mux_div_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_div_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_div_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_div_ops to i32), ptr @__kstrtab_clk_regmap_mux_div_ops, ptr @__kstrtabns_clk_regmap_mux_div_ops }, section "___ksymtab_gpl+clk_regmap_mux_div_ops", align 4
@mux_div_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Can't find parent %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mux_div_recalc_rate\00", [44 x i8] zeroinitializer }, align 32
@mux_div_recalc_rate._entry_ptr = internal global ptr @mux_div_recalc_rate._entry, section ".printk_index", align 4
@mux_div_get_src_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: RCG configuration is pending\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mux_div_get_src_div\00", [44 x i8] zeroinitializer }, align 32
@mux_div_get_src_div._entry_ptr = internal global ptr @mux_div_get_src_div._entry, section ".printk_index", align 4
@mux_div_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Can't find parent with src %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mux_div_get_parent\00", [45 x i8] zeroinitializer }, align 32
@mux_div_get_parent._entry_ptr = internal global ptr @mux_div_get_parent._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 54, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"clk_regmap_mux_div_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 223, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 219, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 68, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [41 x i8] c"../drivers/clk/qcom/clk-regmap-mux-div.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 175, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_clk_regmap_mux_div_ops, ptr @__ksymtab_mux_div_set_src_div, ptr @mux_div_get_parent._entry, ptr @mux_div_get_parent._entry_ptr, ptr @mux_div_get_src_div._entry, ptr @mux_div_get_src_div._entry_ptr, ptr @mux_div_recalc_rate._entry, ptr @mux_div_recalc_rate._entry_ptr, ptr @mux_div_set_src_div._entry, ptr @mux_div_set_src_div._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk_regmap_mux_div_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_div_set_src_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_mux_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_div_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_div_get_src_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_div_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mux_div_set_src_div(ptr noundef %md, i32 noundef %src, i32 noundef %div) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %clkr = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 8
  %call = tail call ptr @clk_hw_get_name(ptr noundef %clkr) #4
  %hid_shift = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 2
  %0 = ptrtoint ptr %hid_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hid_shift, align 4
  %shl = shl i32 %div, %1
  %src_shift = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 4
  %2 = ptrtoint ptr %src_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_shift, align 4
  %shl1 = shl i32 %src, %3
  %or = or i32 %shl1, %shl
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %val, align 4
  %hid_width = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 1
  %5 = ptrtoint ptr %hid_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hid_width, align 4
  %notmask = shl nsw i32 -1, %6
  %sub = xor i32 %notmask, -1
  %shl4 = shl i32 %sub, %1
  %src_width = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 3
  %7 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_width, align 4
  %notmask54 = shl nsw i32 -1, %8
  %sub6 = xor i32 %notmask54, -1
  %shl8 = shl i32 %sub6, %3
  %or9 = or i32 %shl8, %shl4
  %regmap = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %md, align 4
  %add = add i32 %12, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add, i32 noundef %or9, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %md, align 4
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool17.not = icmp eq i32 %call.i55, 0
  br i1 %tobool17.not, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %if.end.for.body_crit_edge
  %count.056 = phi i32 [ %dec, %if.end30.for.body_crit_edge ], [ 500, %if.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %md, align 4
  %call24 = call i32 @regmap_read(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.end30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748) #4
  %dec = add nsw i32 %count.056, -1
  %cmp = icmp ugt i32 %count.056, 1
  br i1 %cmp, label %if.end30.for.body_crit_edge, label %do.end

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end27.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i55, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %call24, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_div_recalc_rate(ptr noundef %hw, i32 noundef %prate) #0 align 64 {
entry:
  %div = alloca i32, align 4
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #4
  %0 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %div, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %1 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %src, align 4, !annotation !36
  %call1 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  call fastcc void @mux_div_get_src_div(ptr noundef %add.ptr, ptr noundef nonnull %src, ptr noundef nonnull %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp30 = icmp sgt i32 %call1, 0
  br i1 %cmp30, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  %parent_map = getelementptr i8, ptr %hw, i32 -4
  %4 = ptrtoint ptr %parent_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %i.031
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp3 = icmp eq i32 %3, %7
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.031) #4
  %call5 = tail call i32 @clk_hw_get_rate(ptr noundef %call4) #4
  %8 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div, align 4
  %add = add i32 %9, 1
  %call5.frozen = freeze i32 %call5
  %add.frozen = freeze i32 %add
  %div6 = udiv i32 %call5.frozen, %add.frozen
  %10 = mul i32 %div6, %add.frozen
  %rem8.decomposed = sub i32 %call5.frozen, %10
  %mul = shl i32 %div6, 1
  %mul10 = shl i32 %rem8.decomposed, 1
  %div12 = udiv i32 %mul10, %add
  %add13 = add i32 %div12, %mul
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %call2, i32 noundef %12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %add13, %if.then ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_div_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %call172 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp73.not = icmp eq i32 %call172, 0
  br i1 %cmp73.not, label %entry.for.end30.thread_crit_edge, label %for.body.lr.ph

entry.for.end30.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end30.thread

for.body.lr.ph:                                   ; preds = %entry
  %hid_width = getelementptr i8, ptr %hw, i32 -28
  %div766 = lshr i32 %1, 1
  %rem8 = and i32 %1, 1
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.end.for.body_crit_edge ]
  %best_rate.074 = phi i32 [ 0, %for.body.lr.ph ], [ %best_rate.3, %for.end.for.body_crit_edge ]
  %call2 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.075) #4
  %call3 = tail call i32 @clk_hw_get_rate(ptr noundef %call2) #4
  %2 = ptrtoint ptr %hid_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hid_width, align 4
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %notmask)
  %cmp568 = icmp ult i32 %notmask, -2
  br i1 %cmp568, label %for.body.for.body6_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %if.end.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %div.070 = phi i32 [ %inc, %if.end.for.body6_crit_edge ], [ 1, %for.body.for.body6_crit_edge ]
  %best_rate.169 = phi i32 [ %best_rate.2, %if.end.for.body6_crit_edge ], [ %best_rate.074, %for.body.for.body6_crit_edge ]
  %mul = mul i32 %div.070, %div766
  %mul10 = mul nuw nsw i32 %div.070, %rem8
  %div1167 = lshr i32 %mul10, 1
  %add = add i32 %div1167, %mul
  %call12 = tail call i32 @clk_hw_round_rate(ptr noundef %call2, i32 noundef %add) #4
  %call12.frozen = freeze i32 %call12
  %div.070.frozen = freeze i32 %div.070
  %div14 = udiv i32 %call12.frozen, %div.070.frozen
  %4 = mul i32 %div14, %div.070.frozen
  %rem16.decomposed = sub i32 %call12.frozen, %4
  %mul18 = shl i32 %div14, 1
  %mul19 = shl i32 %rem16.decomposed, 1
  %div20 = udiv i32 %mul19, %div.070
  %add21 = add i32 %div20, %mul18
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add21)
  %cmp.not.i = icmp ule i32 %1, %add21
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %best_rate.169)
  %cmp1.i = icmp ult i32 %add21, %best_rate.169
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %for.body6.if.then_crit_edge, label %is_better_rate.exit

for.body6.if.then_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

is_better_rate.exit:                              ; preds = %for.body6
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.169, i32 %1)
  %cmp2.i = icmp ult i32 %best_rate.169, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.169, i32 %add21)
  %cmp3.i = icmp ult i32 %best_rate.169, %add21
  %spec.select.i = and i1 %cmp2.i, %cmp3.i
  br i1 %spec.select.i, label %is_better_rate.exit.if.then_crit_edge, label %is_better_rate.exit.if.end_crit_edge

is_better_rate.exit.if.end_crit_edge:             ; preds = %is_better_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

is_better_rate.exit.if.then_crit_edge:            ; preds = %is_better_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %is_better_rate.exit.if.then_crit_edge, %for.body6.if.then_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add21, ptr %req, align 4
  %6 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call12, ptr %best_parent_rate, align 4
  %7 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %best_parent_hw, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %is_better_rate.exit.if.end_crit_edge
  %best_rate.2 = phi i32 [ %add21, %if.then ], [ %best_rate.169, %is_better_rate.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.2, i32 %1)
  %cmp25.not = icmp ugt i32 %best_rate.2, %1
  %or.cond = select i1 %cmp.not.i, i1 %cmp25.not, i1 false
  %inc = add nuw i32 %div.070, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub)
  %cmp5 = icmp ult i32 %inc, %sub
  %or.cond77 = select i1 %or.cond, i1 %cmp5, i1 false
  br i1 %or.cond77, label %if.end.for.body6_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body6_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %best_rate.3 = phi i32 [ %best_rate.074, %for.body.for.end_crit_edge ], [ %best_rate.2, %if.end.for.end_crit_edge ]
  %inc29 = add nuw i32 %i.075, 1
  %call1 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  %cmp = icmp ult i32 %inc29, %call1
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end30

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.3)
  %tobool.not = icmp eq i32 %best_rate.3, 0
  br i1 %tobool.not, label %for.end30.for.end30.thread_crit_edge, label %for.end30._crit_edge

for.end30._crit_edge:                             ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %8

for.end30.for.end30.thread_crit_edge:             ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end30.thread

for.end30.thread:                                 ; preds = %for.end30.for.end30.thread_crit_edge, %entry.for.end30.thread_crit_edge
  br label %8

8:                                                ; preds = %for.end30.thread, %for.end30._crit_edge
  %9 = phi i32 [ -22, %for.end30.thread ], [ 0, %for.end30._crit_edge ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_div_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -32
  %parent_map = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_map, align 4
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr i32, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %div = getelementptr i8, ptr %hw, i32 -12
  %4 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div, align 4
  %call1 = tail call i32 @mux_div_set_src_div(ptr noundef %add.ptr, i32 noundef %3, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mux_div_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  %div = alloca i32, align 4
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -32
  %call1 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %0 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %src, align 4
  call fastcc void @mux_div_get_src_div(ptr noundef %add.ptr, ptr noundef nonnull %src, ptr noundef nonnull %div)
  %call217 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp18.not = icmp eq i32 %call217, 0
  br i1 %cmp18.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src, align 4
  %parent_map = getelementptr i8, ptr %hw, i32 -4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %parent_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_map, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %i.019
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp3 = icmp eq i32 %2, %6
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %i.019 to i8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.019, 1
  %call2 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  %cmp = icmp ult i32 %inc, %call2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %call1, i32 noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #4
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_div_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @__mux_div_set_rate_and_parent(ptr noundef %hw, i32 noundef %rate)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_div_set_rate_and_parent(ptr noundef %hw, i32 noundef %rate, i32 noundef %prate, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @__mux_div_set_rate_and_parent(ptr noundef %hw, i32 noundef %rate)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mux_div_get_src_div(ptr noundef %md, ptr nocapture noundef writeonly %src, ptr nocapture noundef writeonly %div) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !36
  %clkr = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 8
  %call = tail call ptr @clk_hw_get_name(ptr noundef %clkr) #4
  %regmap = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %md, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %md, align 4
  %add7 = add i32 %10, 4
  %call8 = call i32 @regmap_read(ptr noundef %8, i32 noundef %add7, ptr noundef nonnull %val) #4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %src_shift = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 4
  %13 = ptrtoint ptr %src_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_shift, align 4
  %shr = lshr i32 %12, %14
  %src_width = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 3
  %15 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_width, align 4
  %notmask = shl nsw i32 -1, %16
  %sub = xor i32 %notmask, -1
  %and9 = and i32 %shr, %sub
  %17 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and9, ptr %src, align 4
  %hid_shift = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 2
  %18 = ptrtoint ptr %hid_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hid_shift, align 4
  %shr10 = lshr i32 %12, %19
  %hid_width = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %md, i32 0, i32 1
  %20 = ptrtoint ptr %hid_width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hid_width, align 4
  %notmask27 = shl nsw i32 -1, %21
  %sub12 = xor i32 %notmask27, -1
  %and13 = and i32 %shr10, %sub12
  %22 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and13, ptr %div, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mux_div_set_rate_and_parent(ptr noundef %hw, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -32
  %call114 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp15.not = icmp eq i32 %call114, 0
  br i1 %cmp15.not, label %entry.for.end30_crit_edge, label %for.body.lr.ph

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end30

for.body.lr.ph:                                   ; preds = %entry
  %hid_width = getelementptr i8, ptr %hw, i32 -28
  %div71 = lshr i32 %rate, 1
  %rem8 = and i32 %rate, 1
  %parent_map = getelementptr i8, ptr %hw, i32 -4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %best_src.020 = phi i32 [ 0, %for.body.lr.ph ], [ %best_src.3, %for.end.for.body_crit_edge ]
  %best_div.019 = phi i32 [ 0, %for.body.lr.ph ], [ %best_div.3, %for.end.for.body_crit_edge ]
  %best_rate.018 = phi i32 [ 0, %for.body.lr.ph ], [ %best_rate.3, %for.end.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.end.for.body_crit_edge ]
  %call2 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.016) #4
  %call3 = tail call i32 @clk_hw_get_rate(ptr noundef %call2) #4
  %0 = ptrtoint ptr %hid_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hid_width, align 4
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %notmask)
  %cmp53 = icmp ult i32 %notmask, -2
  br i1 %cmp53, label %for.body.for.body6_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %if.end.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %div.07 = phi i32 [ %inc, %if.end.for.body6_crit_edge ], [ 1, %for.body.for.body6_crit_edge ]
  %best_src.16 = phi i32 [ %best_src.2, %if.end.for.body6_crit_edge ], [ %best_src.020, %for.body.for.body6_crit_edge ]
  %best_div.15 = phi i32 [ %best_div.2, %if.end.for.body6_crit_edge ], [ %best_div.019, %for.body.for.body6_crit_edge ]
  %best_rate.14 = phi i32 [ %best_rate.2, %if.end.for.body6_crit_edge ], [ %best_rate.018, %for.body.for.body6_crit_edge ]
  %mul = mul i32 %div.07, %div71
  %mul10 = mul nuw nsw i32 %div.07, %rem8
  %div112 = lshr i32 %mul10, 1
  %add = add i32 %div112, %mul
  %call12 = tail call i32 @clk_hw_round_rate(ptr noundef %call2, i32 noundef %add) #4
  %call12.frozen = freeze i32 %call12
  %div.07.frozen = freeze i32 %div.07
  %div14 = udiv i32 %call12.frozen, %div.07.frozen
  %2 = mul i32 %div14, %div.07.frozen
  %rem16.decomposed = sub i32 %call12.frozen, %2
  %mul18 = shl i32 %div14, 1
  %mul19 = shl i32 %rem16.decomposed, 1
  %div20 = udiv i32 %mul19, %div.07
  %add21 = add i32 %div20, %mul18
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %rate)
  %cmp.not.i = icmp uge i32 %add21, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %best_rate.14)
  %cmp1.i = icmp ult i32 %add21, %best_rate.14
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %for.body6.if.then_crit_edge, label %is_better_rate.exit

for.body6.if.then_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

is_better_rate.exit:                              ; preds = %for.body6
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.14, i32 %rate)
  %cmp2.i = icmp ult i32 %best_rate.14, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.14, i32 %add21)
  %cmp3.i = icmp ult i32 %best_rate.14, %add21
  %spec.select.i = and i1 %cmp2.i, %cmp3.i
  br i1 %spec.select.i, label %is_better_rate.exit.if.then_crit_edge, label %is_better_rate.exit.if.end_crit_edge

is_better_rate.exit.if.end_crit_edge:             ; preds = %is_better_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

is_better_rate.exit.if.then_crit_edge:            ; preds = %is_better_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %is_better_rate.exit.if.then_crit_edge, %for.body6.if.then_crit_edge
  %3 = ptrtoint ptr %parent_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_map, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %i.016
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %sub23 = add i32 %div.07, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %is_better_rate.exit.if.end_crit_edge
  %best_rate.2 = phi i32 [ %add21, %if.then ], [ %best_rate.14, %is_better_rate.exit.if.end_crit_edge ]
  %best_div.2 = phi i32 [ %sub23, %if.then ], [ %best_div.15, %is_better_rate.exit.if.end_crit_edge ]
  %best_src.2 = phi i32 [ %6, %if.then ], [ %best_src.16, %is_better_rate.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.2, i32 %rate)
  %cmp25.not = icmp ugt i32 %best_rate.2, %rate
  %or.cond = select i1 %cmp.not.i, i1 %cmp25.not, i1 false
  %inc = add nuw i32 %div.07, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub)
  %cmp5 = icmp ult i32 %inc, %sub
  %or.cond23 = select i1 %or.cond, i1 %cmp5, i1 false
  br i1 %or.cond23, label %if.end.for.body6_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body6_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %best_rate.3 = phi i32 [ %best_rate.018, %for.body.for.end_crit_edge ], [ %best_rate.2, %if.end.for.end_crit_edge ]
  %best_div.3 = phi i32 [ %best_div.019, %for.body.for.end_crit_edge ], [ %best_div.2, %if.end.for.end_crit_edge ]
  %best_src.3 = phi i32 [ %best_src.020, %for.body.for.end_crit_edge ], [ %best_src.2, %if.end.for.end_crit_edge ]
  %inc29 = add nuw i32 %i.016, 1
  %call1 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  %cmp = icmp ult i32 %inc29, %call1
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end30_crit_edge

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end30

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end30:                                        ; preds = %for.end.for.end30_crit_edge, %entry.for.end30_crit_edge
  %best_div.0.lcssa = phi i32 [ 0, %entry.for.end30_crit_edge ], [ %best_div.3, %for.end.for.end30_crit_edge ]
  %best_src.0.lcssa = phi i32 [ 0, %entry.for.end30_crit_edge ], [ %best_src.3, %for.end.for.end30_crit_edge ]
  %call31 = tail call i32 @mux_div_set_src_div(ptr noundef %add.ptr, i32 noundef %best_src.0.lcssa, i32 noundef %best_div.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.then32, label %for.end30.if.end35_crit_edge

for.end30.if.end35_crit_edge:                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then32:                                        ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #6
  %div33 = getelementptr i8, ptr %hw, i32 -12
  %7 = ptrtoint ptr %div33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %best_div.0.lcssa, ptr %div33, align 4
  %src34 = getelementptr i8, ptr %hw, i32 -8
  %8 = ptrtoint ptr %src34 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %best_src.0.lcssa, ptr %src34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %for.end30.if.end35_crit_edge
  ret i32 %call31
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-regmap-mux-div.c", i32 54, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mux_div_set_src_div._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mux_div_set_src_div._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mux_div_set_src_div, !7, !"__ksymtab_mux_div_set_src_div", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-regmap-mux-div.c", i32 57, i32 1}
!8 = !{ptr @clk_regmap_mux_div_ops, !9, !"clk_regmap_mux_div_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/clk-regmap-mux-div.c", i32 223, i32 22}
!10 = !{ptr @__ksymtab_clk_regmap_mux_div_ops, !11, !"__ksymtab_clk_regmap_mux_div_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/clk-regmap-mux-div.c", i32 231, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/clk-regmap-mux-div.c", i32 219, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mux_div_recalc_rate._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mux_div_recalc_rate._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/clk-regmap-mux-div.c", i32 68, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mux_div_get_src_div._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mux_div_get_src_div._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/clk-regmap-mux-div.c", i32 175, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mux_div_get_parent._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mux_div_get_parent._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
