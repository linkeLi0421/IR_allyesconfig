; ModuleID = '/llk/IR_all_yes/drivers/clk/meson/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/meson/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+meson_clk_pcie_pll_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_clk_pcie_pll_ops\09\09\09\09"
module asm "\09.long\09__crc_meson_clk_pcie_pll_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_pcie_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_pcie_pll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_pcie_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_clk_pll_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_clk_pll_ops\09\09\09\09"
module asm "\09.long\09__crc_meson_clk_pll_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_pll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_clk_pll_ro_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_clk_pll_ro_ops\09\09\09\09"
module asm "\09.long\09__crc_meson_clk_pll_ro_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_pll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_pll_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_pll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.meson_clk_pll_data = type { %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, ptr, i32, ptr, ptr, i8 }
%struct.parm = type { i16, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.pll_mult_range = type { i32, i32 }
%struct.pll_params_table = type { i32, i32 }

@meson_clk_pcie_pll_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pcie_pll_enable, ptr @meson_clk_pll_disable, ptr @meson_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @meson_clk_pll_recalc_rate, ptr null, ptr @meson_clk_pll_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_meson_clk_pcie_pll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_pcie_pll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_pcie_pll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_pcie_pll_ops to i32), ptr @__kstrtab_meson_clk_pcie_pll_ops, ptr @__kstrtabns_meson_clk_pcie_pll_ops }, section "___ksymtab_gpl+meson_clk_pcie_pll_ops", align 4
@meson_clk_pll_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pll_enable, ptr @meson_clk_pll_disable, ptr @meson_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @meson_clk_pll_recalc_rate, ptr null, ptr @meson_clk_pll_determine_rate, ptr null, ptr null, ptr @meson_clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pll_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_meson_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_pll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_pll_ops to i32), ptr @__kstrtab_meson_clk_pll_ops, ptr @__kstrtabns_meson_clk_pll_ops }, section "___ksymtab_gpl+meson_clk_pll_ops", align 4
@meson_clk_pll_ro_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @meson_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_meson_clk_pll_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_pll_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_pll_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_pll_ro_ops to i32), ptr @__kstrtab_meson_clk_pll_ro_ops, ptr @__kstrtabns_meson_clk_pll_ro_ops }, section "___ksymtab_gpl+meson_clk_pll_ro_ops", align 4
@__UNIQUE_ID_description162 = internal constant [39 x i8] c"clk_pll.description=Amlogic PLL driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [49 x i8] c"clk_pll.author=Carlo Caione <carlo@endlessm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author164 = internal constant [52 x i8] c"clk_pll.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [39 x i8] c"clk_pll.file=drivers/clk/meson/clk-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [23 x i8] c"clk_pll.license=GPL v2\00", section ".modinfo", align 1
@meson_clk_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014%s: pll did not lock, trying to restore old rate %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_clk_pll_set_rate\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/meson/clk-pll.c\00", [36 x i8] zeroinitializer }, align 32
@meson_clk_pll_set_rate._entry_ptr = internal global ptr @meson_clk_pll_set_rate._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [23 x i8] c"meson_clk_pcie_pll_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 424, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"meson_clk_pll_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 433, i32 22 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"meson_clk_pll_ro_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 444, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [31 x i8] c"../drivers/clk/meson/clk-pll.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 403, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_author164, ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__ksymtab_meson_clk_pcie_pll_ops, ptr @__ksymtab_meson_clk_pll_ops, ptr @__ksymtab_meson_clk_pll_ro_ops, ptr @meson_clk_pll_set_rate._entry, ptr @meson_clk_pll_set_rate._entry_ptr, ptr @meson_clk_pcie_pll_ops, ptr @meson_clk_pll_ops, ptr @meson_clk_pll_ro_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_clk_pcie_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_clk_pll_ro_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_clk_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_clk_pcie_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @meson_clk_pll_init(ptr noundef %hw)
  %data.i.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %map.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %l.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 4
  %shift.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 4, i32 1
  %width.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 4, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %delay.0.i = phi i32 [ 24000000, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !36
  %5 = ptrtoint ptr %l.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %l.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %call.i.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv.i.i, ptr noundef nonnull %val.i.i) #5
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  %9 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift.i.i, align 2
  %conv1.i.i = zext i8 %10 to i32
  %shl.neg.i.i = shl nsw i32 -1, %conv1.i.i
  %11 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width.i.i, align 1
  %conv4.i.i = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv1.i.i, %conv4.i.i
  %sub7.i.i = sub nsw i32 32, %13
  %shr.i.i = lshr i32 -1, %sub7.i.i
  %and.i.i = and i32 %shl.neg.i.i, %8
  %and9.i.i = and i32 %and.i.i, %shr.i.i
  %shr12.i.i = lshr i32 %and9.i.i, %conv1.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i.i)
  %tobool.not.i = icmp eq i32 %shr12.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.meson_clk_pll_wait_lock.exit_crit_edge

do.body.i.meson_clk_pll_wait_lock.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_clk_pll_wait_lock.exit

if.end.i:                                         ; preds = %do.body.i
  %dec.i = add nsw i32 %delay.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.meson_clk_pll_wait_lock.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i.meson_clk_pll_wait_lock.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_clk_pll_wait_lock.exit

meson_clk_pll_wait_lock.exit:                     ; preds = %if.end.i.meson_clk_pll_wait_lock.exit_crit_edge, %do.body.i.meson_clk_pll_wait_lock.exit_crit_edge
  %14 = phi i32 [ -5, %if.end.i.meson_clk_pll_wait_lock.exit_crit_edge ], [ 0, %do.body.i.meson_clk_pll_wait_lock.exit_crit_edge ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_clk_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %rst = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rst, align 2
  %conv.i = zext i16 %5 to i32
  %shift.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %7 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %9 to i32
  %10 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %10
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl11.i = shl nuw i32 1, %conv1.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %shl11.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %conv.i6 = zext i16 %14 to i32
  %shift.i7 = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %shift.i7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift.i7, align 2
  %conv1.i8 = zext i8 %16 to i32
  %shl.neg.i9 = shl nsw i32 -1, %conv1.i8
  %width.i10 = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %width.i10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width.i10, align 1
  %conv4.i11 = zext i8 %18 to i32
  %19 = add nuw nsw i32 %conv1.i8, %conv4.i11
  %sub7.i12 = sub nsw i32 32, %19
  %shr.i13 = lshr i32 -1, %sub7.i12
  %and.i14 = and i32 %shr.i13, %shl.neg.i9
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %conv.i6, i32 noundef %and.i14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val.i29 = alloca i32, align 4
  %val.i16 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %rst = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !36
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rst, align 2
  %conv.i = zext i16 %6 to i32
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv.i, ptr noundef nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %shift.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %10 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %13
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shl.neg.i, %8
  %and9.i = and i32 %and.i, %shr.i
  %shr12.i = lshr i32 %and9.i, %conv1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i)
  %tobool.not = icmp eq i32 %shr12.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i16) #5
  %16 = ptrtoint ptr %val.i16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i16, align 4, !annotation !36
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 2
  %conv.i17 = zext i16 %18 to i32
  %call.i18 = call i32 @regmap_read(ptr noundef %15, i32 noundef %conv.i17, ptr noundef nonnull %val.i16) #5
  %19 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i16, align 4
  %shift.i19 = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %shift.i19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift.i19, align 2
  %conv1.i20 = zext i8 %22 to i32
  %shl.neg.i21 = shl nsw i32 -1, %conv1.i20
  %width.i22 = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %width.i22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %width.i22, align 1
  %conv4.i23 = zext i8 %24 to i32
  %25 = add nuw nsw i32 %conv1.i20, %conv4.i23
  %sub7.i24 = sub nsw i32 32, %25
  %shr.i25 = lshr i32 -1, %sub7.i24
  %and.i26 = and i32 %shl.neg.i21, %20
  %and9.i27 = and i32 %and.i26, %shr.i25
  %shr12.i28 = lshr i32 %and9.i27, %conv1.i20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i28)
  %tobool5.not = icmp eq i32 %shr12.i28, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %l = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i29) #5
  %28 = ptrtoint ptr %val.i29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i29, align 4, !annotation !36
  %29 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %l, align 2
  %conv.i30 = zext i16 %30 to i32
  %call.i31 = call i32 @regmap_read(ptr noundef %27, i32 noundef %conv.i30, ptr noundef nonnull %val.i29) #5
  %31 = ptrtoint ptr %val.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i29, align 4
  %shift.i32 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %shift.i32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %shift.i32, align 2
  %conv1.i33 = zext i8 %34 to i32
  %shl.neg.i34 = shl nsw i32 -1, %conv1.i33
  %width.i35 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %width.i35 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %width.i35, align 1
  %conv4.i36 = zext i8 %36 to i32
  %37 = add nuw nsw i32 %conv1.i33, %conv4.i36
  %sub7.i37 = sub nsw i32 32, %37
  %shr.i38 = lshr i32 -1, %sub7.i37
  %and.i39 = and i32 %shl.neg.i34, %32
  %and9.i40 = and i32 %and.i39, %shr.i38
  %shr12.i41 = lshr i32 %and9.i40, %conv1.i33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i41)
  %tobool9.not = icmp ne i32 %shr12.i41, 0
  %spec.select = zext i1 %tobool9.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val.i37 = alloca i32, align 4
  %val.i24 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %n2 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !36
  %5 = ptrtoint ptr %n2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %n2, align 2
  %conv.i = zext i16 %6 to i32
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv.i, ptr noundef nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %shift.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %10 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %13
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shl.neg.i, %8
  %and9.i = and i32 %and.i, %shr.i
  %shr12.i = lshr i32 %and9.i, %conv1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i)
  %cmp = icmp eq i32 %shr12.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %m5 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i24) #5
  %16 = ptrtoint ptr %val.i24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i24, align 4, !annotation !36
  %17 = ptrtoint ptr %m5 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %m5, align 2
  %conv.i25 = zext i16 %18 to i32
  %call.i26 = call i32 @regmap_read(ptr noundef %15, i32 noundef %conv.i25, ptr noundef nonnull %val.i24) #5
  %19 = ptrtoint ptr %val.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i24, align 4
  %shift.i27 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %shift.i27 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift.i27, align 2
  %conv1.i28 = zext i8 %22 to i32
  %shl.neg.i29 = shl nsw i32 -1, %conv1.i28
  %width.i30 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %width.i30 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %width.i30, align 1
  %conv4.i31 = zext i8 %24 to i32
  %25 = add nuw nsw i32 %conv1.i28, %conv4.i31
  %sub7.i32 = sub nsw i32 32, %25
  %shr.i33 = lshr i32 -1, %sub7.i32
  %and.i34 = and i32 %shl.neg.i29, %20
  %and9.i35 = and i32 %and.i34, %shr.i33
  %shr12.i36 = lshr i32 %and9.i35, %conv1.i28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i24) #5
  %width = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i5055 = zext i32 %parent_rate to i64
  %conv1.i5156 = zext i32 %shr12.i36 to i64
  %mul.i57 = mul nuw i64 %conv1.i5156, %conv.i5055
  br label %if.end205.i

cond.end:                                         ; preds = %if.end
  %frac7 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i37) #5
  %30 = ptrtoint ptr %val.i37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i37, align 4, !annotation !36
  %31 = ptrtoint ptr %frac7 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %frac7, align 2
  %conv.i38 = zext i16 %32 to i32
  %call.i39 = call i32 @regmap_read(ptr noundef %29, i32 noundef %conv.i38, ptr noundef nonnull %val.i37) #5
  %33 = ptrtoint ptr %val.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i37, align 4
  %shift.i40 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %shift.i40 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %shift.i40, align 2
  %conv1.i41 = zext i8 %36 to i32
  %shl.neg.i42 = shl nsw i32 -1, %conv1.i41
  %37 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %width, align 1
  %conv4.i44 = zext i8 %38 to i32
  %39 = add nuw nsw i32 %conv1.i41, %conv4.i44
  %sub7.i45 = sub nsw i32 32, %39
  %shr.i46 = lshr i32 -1, %sub7.i45
  %and.i47 = and i32 %shl.neg.i42, %34
  %and9.i48 = and i32 %and.i47, %shr.i46
  %shr12.i49 = lshr i32 %and9.i48, %conv1.i41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i37) #5
  %conv.i50 = zext i32 %parent_rate to i64
  %conv1.i51 = zext i32 %shr12.i36 to i64
  %mul.i = mul nuw i64 %conv1.i51, %conv.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i49)
  %tobool.not.i = icmp eq i32 %shr12.i49, 0
  br i1 %tobool.not.i, label %cond.end.if.end205.i_crit_edge, label %land.lhs.true.i

cond.end.if.end205.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205.i

land.lhs.true.i:                                  ; preds = %cond.end
  %40 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool3.not.i = icmp eq i8 %41, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end205.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end205.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %conv5.i = zext i32 %shr12.i49 to i64
  %mul6.i = mul nuw i64 %conv5.i, %conv.i50
  %conv9.i = zext i8 %41 to i32
  %shl.i = shl nuw i32 1, %conv9.i
  %conv10.i = sext i32 %shl.i to i64
  %add.i = add i64 %mul6.i, -1
  %sub.i = add i64 %add.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp187.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp187.i, label %if.then191.i, label %if.else197.i, !prof !37

if.then191.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv192.i = trunc i64 %sub.i to i32
  %div195598.i = lshr i32 %conv192.i, %conv9.i
  %conv196.i = zext i32 %div195598.i to i64
  br label %if.end201.i

if.else197.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i, i64 %sub.i) #8, !srcloc !38
  %asmresult1.i.i = extractvalue { i64, i64 } %42, 1
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.else197.i, %if.then191.i
  %_tmp.0.i = phi i64 [ %conv196.i, %if.then191.i ], [ %asmresult1.i.i, %if.else197.i ]
  %add204.i = add i64 %_tmp.0.i, %mul.i
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.end201.i, %land.lhs.true.i.if.end205.i_crit_edge, %cond.end.if.end205.i_crit_edge, %cond.end.thread
  %rate.0.i = phi i64 [ %add204.i, %if.end201.i ], [ %mul.i, %land.lhs.true.i.if.end205.i_crit_edge ], [ %mul.i, %cond.end.if.end205.i_crit_edge ], [ %mul.i57, %cond.end.thread ]
  %conv207.i = zext i32 %shr12.i to i64
  %add208.i = add nsw i64 %conv207.i, -1
  %sub209.i = add i64 %rate.0.i, %add208.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub209.i)
  %cmp411.i = icmp ult i64 %sub209.i, 4294967296
  br i1 %cmp411.i, label %if.then419.i, label %if.else425.i, !prof !37

if.then419.i:                                     ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv420.i = trunc i64 %sub209.i to i32
  %div423.i = udiv i32 %conv420.i, %shr12.i
  br label %cleanup

if.else425.i:                                     ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr12.i, i64 %sub209.i) #8, !srcloc !38
  %asmresult1.i607.i = extractvalue { i64, i64 } %43, 1
  %extract.t637.i = trunc i64 %asmresult1.i607.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else425.i, %if.then419.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %div423.i, %if.then419.i ], [ %extract.t637.i, %if.else425.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %m, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %n, align 4, !annotation !36
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %best_parent_rate, align 4
  %call2 = call fastcc i32 @meson_clk_get_pll_settings(i32 noundef %5, i32 noundef %7, ptr noundef nonnull %m, ptr noundef nonnull %n, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %best_parent_rate, align 4
  %10 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m, align 4
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  %conv.i = zext i32 %9 to i64
  %conv1.i = zext i32 %11 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %conv207.i = zext i32 %13 to i64
  %add208.i = add nsw i64 %conv207.i, -1
  %sub209.i = add i64 %add208.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub209.i)
  %cmp411.i = icmp ult i64 %sub209.i, 4294967296
  br i1 %cmp411.i, label %if.then419.i, label %if.else425.i, !prof !37

if.then419.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv420.i = trunc i64 %sub209.i to i32
  %div423.i = udiv i32 %conv420.i, %13
  br label %__pll_params_to_rate.exit

if.else425.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %sub209.i) #8, !srcloc !38
  %asmresult1.i607.i = extractvalue { i64, i64 } %14, 1
  %extract.t637.i = trunc i64 %asmresult1.i607.i to i32
  br label %__pll_params_to_rate.exit

__pll_params_to_rate.exit:                        ; preds = %if.else425.i, %if.then419.i
  %_tmp206.0.off0.i = phi i32 [ %div423.i, %if.then419.i ], [ %extract.t637.i, %if.else425.i ]
  %width = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %__pll_params_to_rate.exit.cleanup.sink.split_crit_edge, label %lor.lhs.false

__pll_params_to_rate.exit.cleanup.sink.split_crit_edge: ; preds = %__pll_params_to_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %__pll_params_to_rate.exit
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %_tmp206.0.off0.i)
  %cmp = icmp eq i32 %18, %_tmp206.0.off0.i
  br i1 %cmp, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end10

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end10:                                         ; preds = %lor.lhs.false
  %conv.i37 = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv.i37
  %mul3.i = mul i32 %11, %9
  %div.i = udiv i32 %mul3.i, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %18)
  %cmp.i = icmp ugt i32 %div.i, %18
  br i1 %cmp.i, label %if.end10.if.else409.i182_crit_edge, label %if.end.i

if.end10.if.else409.i182_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else409.i182

if.end.i:                                         ; preds = %if.end10
  %conv1.i38 = zext i32 %18 to i64
  %flags.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 4
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %conv203.i = zext i32 %shl.i to i64
  %mul.i39 = mul nuw i64 %conv203.i, %conv207.i
  %mul204.i = mul i64 %mul.i39, %conv1.i38
  br i1 %tobool.not.i, label %if.else162.i.i.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %div9315.i = lshr i32 %9, 1
  %conv10.i = zext i32 %div9315.i to i64
  %add.i = add i64 %mul204.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp185.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp185.i, label %if.then189.i, label %if.else195.i, !prof !37

if.then189.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv190.i = trunc i64 %add.i to i32
  %div193.i = udiv i32 %conv190.i, %9
  br label %__pll_params_with_frac.exit

if.else195.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %add.i) #8, !srcloc !38
  %asmresult1.i.i = extractvalue { i64, i64 } %22, 1
  %extract.t343.i = trunc i64 %asmresult1.i.i to i32
  br label %__pll_params_with_frac.exit

if.else162.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul204.i)
  %cmp164.i.i.i = icmp ult i64 %mul204.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !37

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i = trunc i64 %mul204.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %9
  br label %__pll_params_with_frac.exit

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %mul204.i) #8, !srcloc !38
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %23, 1
  %extract.t346.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %__pll_params_with_frac.exit

__pll_params_with_frac.exit:                      ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.else195.i, %if.then189.i
  %val.0.off0.i = phi i32 [ %div193.i, %if.then189.i ], [ %extract.t343.i, %if.else195.i ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t346.i, %if.else174.i.i.i ]
  %mul207.i = shl i32 %11, %conv.i37
  %conv210.i = sub i32 %val.0.off0.i, %mul207.i
  %sub211.i = add i32 %shl.i, -1
  %24 = tail call i32 @llvm.umin.i32(i32 %conv210.i, i32 %sub211.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i61 = icmp eq i32 %24, 0
  br i1 %tobool.not.i61, label %__pll_params_with_frac.exit.if.else409.i182_crit_edge, label %if.then.i

__pll_params_with_frac.exit.if.else409.i182_crit_edge: ; preds = %__pll_params_with_frac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else409.i182

if.then.i:                                        ; preds = %__pll_params_with_frac.exit
  %conv5.i = zext i32 %24 to i64
  %mul6.i = mul nuw i64 %conv5.i, %conv.i
  %conv10.i64 = sext i32 %shl.i to i64
  %add.i65 = add nsw i64 %conv10.i64, -1
  %sub.i = add i64 %add.i65, %mul6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp187.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp187.i, label %if.then191.i, label %if.else197.i, !prof !37

if.then191.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv192.i = trunc i64 %sub.i to i32
  %div195598.i = lshr i32 %conv192.i, %conv.i37
  %conv196.i = zext i32 %div195598.i to i64
  br label %if.end201.i

if.else197.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i, i64 %sub.i) #8, !srcloc !38
  %asmresult1.i.i73 = extractvalue { i64, i64 } %25, 1
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.else197.i, %if.then191.i
  %_tmp.0.i = phi i64 [ %conv196.i, %if.then191.i ], [ %asmresult1.i.i73, %if.else197.i ]
  %add204.i = add i64 %_tmp.0.i, %mul.i
  %.pre = add i64 %add204.i, %add208.i
  br label %if.else409.i182

if.else409.i182:                                  ; preds = %if.end201.i, %__pll_params_with_frac.exit.if.else409.i182_crit_edge, %if.end10.if.else409.i182_crit_edge
  %sub209.i76.pre-phi = phi i64 [ %sub209.i, %if.end10.if.else409.i182_crit_edge ], [ %.pre, %if.end201.i ], [ %sub209.i, %__pll_params_with_frac.exit.if.else409.i182_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub209.i76.pre-phi)
  %cmp411.i181 = icmp ult i64 %sub209.i76.pre-phi, 4294967296
  br i1 %cmp411.i181, label %if.then419.i185, label %if.else425.i188, !prof !37

if.then419.i185:                                  ; preds = %if.else409.i182
  call void @__sanitizer_cov_trace_pc() #7
  %conv420.i183 = trunc i64 %sub209.i76.pre-phi to i32
  %div423.i184 = udiv i32 %conv420.i183, %13
  br label %cleanup.sink.split

if.else425.i188:                                  ; preds = %if.else409.i182
  call void @__sanitizer_cov_trace_pc() #7
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %sub209.i76.pre-phi) #8, !srcloc !38
  %asmresult1.i607.i186 = extractvalue { i64, i64 } %26, 1
  %extract.t637.i187 = trunc i64 %asmresult1.i607.i186 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else425.i188, %if.then419.i185, %lor.lhs.false.cleanup.sink.split_crit_edge, %__pll_params_to_rate.exit.cleanup.sink.split_crit_edge
  %_tmp206.0.off0.i189.sink = phi i32 [ %_tmp206.0.off0.i, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %_tmp206.0.off0.i, %__pll_params_to_rate.exit.cleanup.sink.split_crit_edge ], [ %div423.i184, %if.then419.i185 ], [ %extract.t637.i187, %if.else425.i188 ]
  %27 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %_tmp206.0.off0.i189.sink, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_enable(ptr noundef %hw) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %call2 = tail call zeroext i1 @clk_hw_is_enabled(ptr noundef %hw) #5
  br i1 %call2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %rst = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rst, align 2
  %conv.i = zext i16 %5 to i32
  %shift.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %7 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %9 to i32
  %10 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %10
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl11.i = shl nuw i32 1, %conv1.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %shl11.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %conv.i17 = zext i16 %14 to i32
  %shift.i18 = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %shift.i18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift.i18, align 2
  %conv1.i19 = zext i8 %16 to i32
  %shl.neg.i20 = shl nsw i32 -1, %conv1.i19
  %width.i21 = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %width.i21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width.i21, align 1
  %conv4.i22 = zext i8 %18 to i32
  %19 = add nuw nsw i32 %conv1.i19, %conv4.i22
  %sub7.i23 = sub nsw i32 32, %19
  %shr.i24 = lshr i32 -1, %sub7.i23
  %and.i25 = and i32 %shr.i24, %shl.neg.i20
  %shl11.i26 = shl nuw i32 1, %conv1.i19
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %conv.i17, i32 noundef %and.i25, i32 noundef %shl11.i26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %22 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rst, align 2
  %conv.i28 = zext i16 %23 to i32
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shift.i, align 2
  %conv1.i30 = zext i8 %25 to i32
  %shl.neg.i31 = shl nsw i32 -1, %conv1.i30
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %width.i, align 1
  %conv4.i33 = zext i8 %27 to i32
  %28 = add nuw nsw i32 %conv1.i30, %conv4.i33
  %sub7.i34 = sub nsw i32 32, %28
  %shr.i35 = lshr i32 -1, %sub7.i34
  %and.i36 = and i32 %shr.i35, %shl.neg.i31
  %call.i.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %conv.i28, i32 noundef %and.i36, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %l.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %30, i32 0, i32 4
  %shift.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %30, i32 0, i32 4, i32 1
  %width.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %30, i32 0, i32 4, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %delay.0.i = phi i32 [ 24000000, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %val.i.i, align 4, !annotation !36
  %34 = ptrtoint ptr %l.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %l.i, align 2
  %conv.i.i = zext i16 %35 to i32
  %call.i.i38 = call i32 @regmap_read(ptr noundef %32, i32 noundef %conv.i.i, ptr noundef nonnull %val.i.i) #5
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i.i, align 4
  %38 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %shift.i.i, align 2
  %conv1.i.i = zext i8 %39 to i32
  %shl.neg.i.i = shl nsw i32 -1, %conv1.i.i
  %40 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %width.i.i, align 1
  %conv4.i.i = zext i8 %41 to i32
  %42 = add nuw nsw i32 %conv1.i.i, %conv4.i.i
  %sub7.i.i = sub nsw i32 32, %42
  %shr.i.i = lshr i32 -1, %sub7.i.i
  %and.i.i = and i32 %shl.neg.i.i, %37
  %and9.i.i = and i32 %and.i.i, %shr.i.i
  %shr12.i.i = lshr i32 %and9.i.i, %conv1.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i.i)
  %tobool.not.i = icmp eq i32 %shr12.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  %dec.i = add nsw i32 %delay.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %m, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %n, align 4, !annotation !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp eq i32 %parent_rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp2 = icmp eq i32 %rate, 0
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #5
  %call4 = call fastcc i32 @meson_clk_get_pll_settings(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef nonnull %m, ptr noundef nonnull %n, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !36
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %conv.i = zext i16 %8 to i32
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %conv.i, ptr noundef nonnull %val.i) #5
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %shift.i = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %12 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.parm, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %14 to i32
  %15 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %15
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shl.neg.i, %10
  %and9.i = and i32 %and.i, %shr.i
  %shr12.i = lshr i32 %and9.i, %conv1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr12.i)
  %tobool8.not = icmp eq i32 %shr12.i, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %rst.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %rst.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rst.i, align 2
  %conv.i.i = zext i16 %21 to i32
  %shift.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %17, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shift.i.i, align 2
  %conv1.i.i = zext i8 %23 to i32
  %shl.neg.i.i = shl nsw i32 -1, %conv1.i.i
  %width.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %17, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %width.i.i, align 1
  %conv4.i.i = zext i8 %25 to i32
  %26 = add nuw nsw i32 %conv1.i.i, %conv4.i.i
  %sub7.i.i = sub nsw i32 32, %26
  %shr.i.i = lshr i32 -1, %sub7.i.i
  %and.i.i = and i32 %shr.i.i, %shl.neg.i.i
  %shl11.i.i = shl nuw i32 1, %conv1.i.i
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv.i.i, i32 noundef %and.i.i, i32 noundef %shl11.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 4
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %17, align 2
  %conv.i6.i = zext i16 %30 to i32
  %shift.i7.i = getelementptr inbounds %struct.parm, ptr %17, i32 0, i32 1
  %31 = ptrtoint ptr %shift.i7.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %shift.i7.i, align 2
  %conv1.i8.i = zext i8 %32 to i32
  %shl.neg.i9.i = shl nsw i32 -1, %conv1.i8.i
  %width.i10.i = getelementptr inbounds %struct.parm, ptr %17, i32 0, i32 2
  %33 = ptrtoint ptr %width.i10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %width.i10.i, align 1
  %conv4.i11.i = zext i8 %34 to i32
  %35 = add nuw nsw i32 %conv1.i8.i, %conv4.i11.i
  %sub7.i12.i = sub nsw i32 32, %35
  %shr.i13.i = lshr i32 -1, %sub7.i12.i
  %and.i14.i = and i32 %shr.i13.i, %shl.neg.i9.i
  %call.i.i15.i = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %conv.i6.i, i32 noundef %and.i14.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %n12 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n, align 4
  %40 = ptrtoint ptr %n12 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %n12, align 2
  %conv.i62 = zext i16 %41 to i32
  %shift.i63 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %shift.i63 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %shift.i63, align 2
  %conv1.i64 = zext i8 %43 to i32
  %shl.neg.i65 = shl nsw i32 -1, %conv1.i64
  %width.i66 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %width.i66 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %width.i66, align 1
  %conv4.i67 = zext i8 %45 to i32
  %46 = add nuw nsw i32 %conv1.i64, %conv4.i67
  %sub7.i68 = sub nsw i32 32, %46
  %shr.i69 = lshr i32 -1, %sub7.i68
  %and.i70 = and i32 %shr.i69, %shl.neg.i65
  %shl11.i = shl i32 %39, %conv1.i64
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %conv.i62, i32 noundef %and.i70, i32 noundef %shl11.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 4
  %m14 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %m, align 4
  %51 = ptrtoint ptr %m14 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %m14, align 2
  %conv.i71 = zext i16 %52 to i32
  %shift.i72 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %shift.i72 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %shift.i72, align 2
  %conv1.i73 = zext i8 %54 to i32
  %shl.neg.i74 = shl nsw i32 -1, %conv1.i73
  %width.i75 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %width.i75 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %width.i75, align 1
  %conv4.i76 = zext i8 %56 to i32
  %57 = add nuw nsw i32 %conv1.i73, %conv4.i76
  %sub7.i77 = sub nsw i32 32, %57
  %shr.i78 = lshr i32 -1, %sub7.i77
  %and.i79 = and i32 %shr.i78, %shl.neg.i74
  %shl11.i80 = shl i32 %50, %conv1.i73
  %call.i.i81 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %conv.i71, i32 noundef %and.i79, i32 noundef %shl11.i80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %width = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool16.not = icmp eq i8 %59, 0
  br i1 %tobool16.not, label %if.end10.if.end21_crit_edge, label %if.then17

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then17:                                        ; preds = %if.end10
  %frac15 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 3
  %conv.i83 = zext i8 %59 to i32
  %shl.i = shl nuw i32 1, %conv.i83
  %mul3.i = mul i32 %50, %parent_rate
  %div.i = udiv i32 %mul3.i, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %rate)
  %cmp.i = icmp ugt i32 %div.i, %rate
  br i1 %cmp.i, label %if.then17.__pll_params_with_frac.exit_crit_edge, label %if.end.i

if.then17.__pll_params_with_frac.exit_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %__pll_params_with_frac.exit

if.end.i:                                         ; preds = %if.then17
  %conv2.i = zext i32 %39 to i64
  %conv1.i84 = zext i32 %rate to i64
  %mul.i = mul nuw i64 %conv2.i, %conv1.i84
  %flags.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags.i, align 4
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  %conv203.i = zext i32 %shl.i to i64
  %mul204.i = mul i64 %mul.i, %conv203.i
  br i1 %tobool.not.i, label %if.else162.i.i.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %div9315.i = lshr i32 %parent_rate, 1
  %conv10.i = zext i32 %div9315.i to i64
  %add.i = add i64 %mul204.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp185.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp185.i, label %if.then189.i, label %if.else195.i, !prof !37

if.then189.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv190.i = trunc i64 %add.i to i32
  %div193.i = udiv i32 %conv190.i, %parent_rate
  br label %if.end206.i

if.else195.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %add.i) #8, !srcloc !38
  %asmresult1.i.i = extractvalue { i64, i64 } %63, 1
  %extract.t343.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end206.i

if.else162.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul204.i)
  %cmp164.i.i.i = icmp ult i64 %mul204.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !37

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i = trunc i64 %mul204.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %parent_rate
  br label %if.end206.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul204.i) #8, !srcloc !38
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %64, 1
  %extract.t346.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.else195.i, %if.then189.i
  %val.0.off0.i = phi i32 [ %div193.i, %if.then189.i ], [ %extract.t343.i, %if.else195.i ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t346.i, %if.else174.i.i.i ]
  %mul207.i = shl i32 %50, %conv.i83
  %conv210.i = sub i32 %val.0.off0.i, %mul207.i
  %sub211.i = add i32 %shl.i, -1
  %65 = call i32 @llvm.umin.i32(i32 %conv210.i, i32 %sub211.i) #5
  br label %__pll_params_with_frac.exit

__pll_params_with_frac.exit:                      ; preds = %if.end206.i, %if.then17.__pll_params_with_frac.exit_crit_edge
  %retval.0.i = phi i32 [ %65, %if.end206.i ], [ 0, %if.then17.__pll_params_with_frac.exit_crit_edge ]
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 4
  %68 = ptrtoint ptr %frac15 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %frac15, align 2
  %conv.i87 = zext i16 %69 to i32
  %shift.i88 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %shift.i88 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %shift.i88, align 2
  %conv1.i89 = zext i8 %71 to i32
  %shl.neg.i90 = shl nsw i32 -1, %conv1.i89
  %72 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %width, align 1
  %conv4.i92 = zext i8 %73 to i32
  %74 = add nuw nsw i32 %conv1.i89, %conv4.i92
  %sub7.i93 = sub nsw i32 32, %74
  %shr.i94 = lshr i32 -1, %sub7.i93
  %and.i95 = and i32 %shr.i94, %shl.neg.i90
  %shl11.i96 = shl i32 %retval.0.i, %conv1.i89
  %call.i.i97 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef %conv.i87, i32 noundef %and.i95, i32 noundef %shl11.i96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end21

if.end21:                                         ; preds = %__pll_params_with_frac.exit, %if.end10.if.end21_crit_edge
  br i1 %tobool8.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %call25 = call i32 @meson_clk_pll_enable(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %do.end

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call3) #9
  %call29 = call i32 @meson_clk_pll_set_rate(ptr noundef %hw, i32 noundef %call3, i32 noundef %parent_rate)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %call25, %do.end ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_init(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %init_count = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %map = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %rst = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rst, align 2
  %conv.i = zext i16 %7 to i32
  %shift.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift.i, align 2
  %conv1.i = zext i8 %9 to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %width.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %11 to i32
  %12 = add nuw nsw i32 %conv1.i, %conv4.i
  %sub7.i = sub nsw i32 32, %12
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl11.i = shl nuw i32 1, %conv1.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %shl11.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %init_regs = getelementptr inbounds %struct.meson_clk_pll_data, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %init_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_regs, align 4
  %17 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %init_count, align 4
  %call4 = tail call i32 @regmap_multi_reg_write(ptr noundef %14, ptr noundef %16, i32 noundef %18) #5
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %21 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rst, align 2
  %conv.i14 = zext i16 %22 to i32
  %23 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shift.i, align 2
  %conv1.i16 = zext i8 %24 to i32
  %shl.neg.i17 = shl nsw i32 -1, %conv1.i16
  %25 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %width.i, align 1
  %conv4.i19 = zext i8 %26 to i32
  %27 = add nuw nsw i32 %conv1.i16, %conv4.i19
  %sub7.i20 = sub nsw i32 32, %27
  %shr.i21 = lshr i32 -1, %sub7.i20
  %and.i22 = and i32 %shr.i21, %shl.neg.i17
  %call.i.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %conv.i14, i32 noundef %and.i22, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_clk_get_pll_settings(i32 noundef %rate, i32 noundef %parent_rate, ptr nocapture noundef writeonly %best_m, ptr nocapture noundef writeonly %best_n, ptr nocapture noundef readonly %pll) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %table.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %pll, i32 0, i32 8
  %range.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %pll, i32 0, i32 9
  %width.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %pll, i32 0, i32 2, i32 2
  %conv.i.i.i = zext i32 %rate to i64
  %flags.i.i.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %pll, i32 0, i32 10
  %width.i.i.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %pll, i32 0, i32 3, i32 2
  %div277.i.i.i = lshr i32 %parent_rate, 1
  %conv2.i.i.i = zext i32 %div277.i.i.i to i64
  %conv35.i.i.i = zext i32 %parent_rate to i64
  %width22.i.i = getelementptr inbounds %struct.meson_clk_pll_data, ptr %pll, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %best.038 = phi i32 [ 0, %entry ], [ %best.1, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %range.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %add.i.i = add i32 %i.040, 1
  %2 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %add.highbits.i.i = lshr i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.highbits.i.i)
  %cmp.not.i.i = icmp eq i32 %add.highbits.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.for.end_crit_edge

if.then.i.for.end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %cmp3.i.i = icmp eq i32 %i.040, 0
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.end.i.i.if.end20.i.i_crit_edge

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %mul.i.i = mul i32 %5, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %rate)
  %cmp6.not.i.i = icmp ult i32 %mul.i.i, %rate
  br i1 %cmp6.not.i.i, label %if.else.i.i, label %if.then5.i.i.if.end_crit_edge

if.then5.i.i.if.end_crit_edge:                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else.i.i:                                      ; preds = %if.then5.i.i
  %max.i.i = getelementptr inbounds %struct.pll_mult_range, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max.i.i, align 4
  %mul12.i.i = mul i32 %7, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul12.i.i, i32 %rate)
  %cmp13.not.i.i = icmp ugt i32 %mul12.i.i, %rate
  br i1 %cmp13.not.i.i, label %if.else.i.i.if.end20.i.i_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else.i.i.if.end20.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i.if.end20.i.i_crit_edge, %if.end.i.i.if.end20.i.i_crit_edge
  %conv1.i.i.i = zext i32 %add.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %8 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i.i.i.i, align 4
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i.i.i, label %if.end20.i.i.if.else162.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end20.i.i.if.else162.i.i.i.i.i_crit_edge:      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else162.i.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end20.i.i
  %11 = ptrtoint ptr %width.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.i.if.else162.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.else162.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else162.i.i.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.i
  %add.i.i.i = add nuw i64 %mul.i.i.i, %conv2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i.i)
  %cmp174.i.i.i = icmp ult i64 %add.i.i.i, 4294967296
  br i1 %cmp174.i.i.i, label %if.then178.i.i.i, label %if.else184.i.i.i, !prof !37

if.then178.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv179.i.i.i = trunc i64 %add.i.i.i to i32
  %div182.i.i.i = udiv i32 %conv179.i.i.i, %parent_rate
  br label %meson_clk_get_pll_range_m.exit.i.i

if.else184.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %add.i.i.i) #8, !srcloc !38
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %13, 1
  %extract.t311.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %meson_clk_get_pll_range_m.exit.i.i

if.else162.i.i.i.i.i:                             ; preds = %land.lhs.true.i.i.i.i.if.else162.i.i.i.i.i_crit_edge, %if.end20.i.i.if.else162.i.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i.i)
  %cmp164.i.i.i.i.i = icmp ult i64 %mul.i.i.i, 4294967296
  br i1 %cmp164.i.i.i.i.i, label %if.then168.i.i.i.i.i, label %if.else174.i.i.i.i.i, !prof !37

if.then168.i.i.i.i.i:                             ; preds = %if.else162.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i.i.i = trunc i64 %mul.i.i.i to i32
  %div172.i.i.i.i.i = udiv i32 %conv169.i.i.i.i.i, %parent_rate
  br label %meson_clk_get_pll_range_m.exit.i.i

if.else174.i.i.i.i.i:                             ; preds = %if.else162.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul.i.i.i) #8, !srcloc !38
  %asmresult1.i.i.i.i.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t307.i.i.i = trunc i64 %asmresult1.i.i.i.i.i.i to i32
  br label %meson_clk_get_pll_range_m.exit.i.i

meson_clk_get_pll_range_m.exit.i.i:               ; preds = %if.else174.i.i.i.i.i, %if.then168.i.i.i.i.i, %if.else184.i.i.i, %if.then178.i.i.i
  %retval.0.i.i.i = phi i32 [ %div182.i.i.i, %if.then178.i.i.i ], [ %extract.t311.i.i.i, %if.else184.i.i.i ], [ %div172.i.i.i.i.i, %if.then168.i.i.i.i.i ], [ %extract.t307.i.i.i, %if.else174.i.i.i.i.i ]
  %15 = ptrtoint ptr %width22.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %width22.i.i, align 1
  %conv23.i.i = zext i8 %16 to i32
  %call.highbits.i.i = lshr i32 %retval.0.i.i.i, %conv23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.highbits.i.i)
  %cmp25.not.i.i = icmp eq i32 %call.highbits.i.i, 0
  br i1 %cmp25.not.i.i, label %meson_clk_get_pll_range_m.exit.i.i.if.end_crit_edge, label %meson_clk_get_pll_range_m.exit.i.i.for.end_crit_edge

meson_clk_get_pll_range_m.exit.i.i.for.end_crit_edge: ; preds = %meson_clk_get_pll_range_m.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

meson_clk_get_pll_range_m.exit.i.i.if.end_crit_edge: ; preds = %meson_clk_get_pll_range_m.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else.i:                                        ; preds = %for.body
  %17 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %table.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.else.i.for.end_crit_edge, label %if.then2.i

if.else.i.for.end_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then2.i:                                       ; preds = %if.else.i
  %n1.i.i = getelementptr %struct.pll_params_table, ptr %18, i32 %i.040, i32 1
  %19 = ptrtoint ptr %n1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.then2.i.for.end_crit_edge, label %if.end.i11.i

if.then2.i.for.end_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i11.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.pll_params_table, ptr %18, i32 %i.040
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i11.i, %meson_clk_get_pll_range_m.exit.i.i.if.end_crit_edge, %if.else.i.i.if.end_crit_edge, %if.then5.i.i.if.end_crit_edge
  %m.1 = phi i32 [ %22, %if.end.i11.i ], [ %5, %if.then5.i.i.if.end_crit_edge ], [ %7, %if.else.i.i.if.end_crit_edge ], [ %retval.0.i.i.i, %meson_clk_get_pll_range_m.exit.i.i.if.end_crit_edge ]
  %n.1 = phi i32 [ %20, %if.end.i11.i ], [ 1, %if.then5.i.i.if.end_crit_edge ], [ 1, %if.else.i.i.if.end_crit_edge ], [ %add.i.i, %meson_clk_get_pll_range_m.exit.i.i.if.end_crit_edge ]
  %tobool.not = phi i1 [ true, %if.end.i11.i ], [ false, %if.then5.i.i.if.end_crit_edge ], [ false, %if.else.i.i.if.end_crit_edge ], [ true, %meson_clk_get_pll_range_m.exit.i.i.if.end_crit_edge ]
  %conv1.i = zext i32 %m.1 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv35.i.i.i
  %conv207.i = zext i32 %n.1 to i64
  %add208.i = add nsw i64 %conv207.i, -1
  %sub209.i = add i64 %add208.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub209.i)
  %cmp411.i = icmp ult i64 %sub209.i, 4294967296
  br i1 %cmp411.i, label %if.then419.i, label %if.else425.i, !prof !37

if.then419.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv420.i = trunc i64 %sub209.i to i32
  %div423.i = udiv i32 %conv420.i, %n.1
  br label %__pll_params_to_rate.exit

if.else425.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %n.1, i64 %sub209.i) #8, !srcloc !38
  %asmresult1.i607.i = extractvalue { i64, i64 } %23, 1
  %extract.t637.i = trunc i64 %asmresult1.i607.i to i32
  br label %__pll_params_to_rate.exit

__pll_params_to_rate.exit:                        ; preds = %if.else425.i, %if.then419.i
  %_tmp206.0.off0.i = phi i32 [ %div423.i, %if.then419.i ], [ %extract.t637.i, %if.else425.i ]
  %24 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags.i.i.i.i, align 4
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i22 = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i22, label %__pll_params_to_rate.exit.if.else.i26_crit_edge, label %land.lhs.true.i.i

__pll_params_to_rate.exit.if.else.i26_crit_edge:  ; preds = %__pll_params_to_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i26

land.lhs.true.i.i:                                ; preds = %__pll_params_to_rate.exit
  %27 = ptrtoint ptr %width.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %width.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not.i.i24 = icmp eq i8 %28, 0
  br i1 %tobool1.not.i.i24, label %if.then.i25, label %land.lhs.true.i.i.if.else.i26_crit_edge

land.lhs.true.i.i.if.else.i26_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i26

if.then.i25:                                      ; preds = %land.lhs.true.i.i
  %sub.i = sub i32 %_tmp206.0.off0.i, %rate
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #5
  %sub3.i = sub i32 %best.038, %rate
  %30 = tail call i32 @llvm.abs.i32(i32 %sub3.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp11.i = icmp slt i32 %29, %30
  br i1 %cmp11.i, label %if.then.i25.if.then3_crit_edge, label %if.then.i25.for.inc_crit_edge

if.then.i25.for.inc_crit_edge:                    ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then.i25.if.then3_crit_edge:                   ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.else.i26:                                      ; preds = %land.lhs.true.i.i.if.else.i26_crit_edge, %__pll_params_to_rate.exit.if.else.i26_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %_tmp206.0.off0.i, i32 %rate)
  %cmp13.not.i = icmp ule i32 %_tmp206.0.off0.i, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %best.038, i32 %_tmp206.0.off0.i)
  %cmp14.i = icmp ult i32 %best.038, %_tmp206.0.off0.i
  %or.cond.i = and i1 %cmp13.not.i, %cmp14.i
  br i1 %or.cond.i, label %if.else.i26.if.then3_crit_edge, label %if.else.i26.for.inc_crit_edge

if.else.i26.for.inc_crit_edge:                    ; preds = %if.else.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else.i26.if.then3_crit_edge:                   ; preds = %if.else.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %if.else.i26.if.then3_crit_edge, %if.then.i25.if.then3_crit_edge
  %31 = ptrtoint ptr %best_m to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %m.1, ptr %best_m, align 4
  %32 = ptrtoint ptr %best_n to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %n.1, ptr %best_n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %_tmp206.0.off0.i, i32 %rate)
  %cmp4 = icmp eq i32 %_tmp206.0.off0.i, %rate
  br i1 %cmp4, label %if.then3.for.end_crit_edge, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %if.then3.for.inc_crit_edge, %if.else.i26.for.inc_crit_edge, %if.then.i25.for.inc_crit_edge
  %best.1 = phi i32 [ %_tmp206.0.off0.i, %if.then3.for.inc_crit_edge ], [ %best.038, %if.then.i25.for.inc_crit_edge ], [ %best.038, %if.else.i26.for.inc_crit_edge ]
  %inc = add i32 %i.040, 1
  br i1 %tobool.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3.for.end_crit_edge, %if.then2.i.for.end_crit_edge, %if.else.i.for.end_crit_edge, %meson_clk_get_pll_range_m.exit.i.i.for.end_crit_edge, %if.then.i.for.end_crit_edge
  %best.2 = phi i32 [ %rate, %if.then3.for.end_crit_edge ], [ %best.1, %for.inc.for.end_crit_edge ], [ %best.038, %if.else.i.for.end_crit_edge ], [ %best.038, %if.then.i.for.end_crit_edge ], [ %best.038, %meson_clk_get_pll_range_m.exit.i.i.for.end_crit_edge ], [ %best.038, %if.then2.i.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best.2)
  %tobool8.not = icmp eq i32 %best.2, 0
  %cond = select i1 %tobool8.not, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_hw_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @meson_clk_pcie_pll_ops, !1, !"meson_clk_pcie_pll_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/meson/clk-pll.c", i32 424, i32 22}
!2 = !{ptr @__ksymtab_meson_clk_pcie_pll_ops, !3, !"__ksymtab_meson_clk_pcie_pll_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/meson/clk-pll.c", i32 431, i32 1}
!4 = !{ptr @meson_clk_pll_ops, !5, !"meson_clk_pll_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/meson/clk-pll.c", i32 433, i32 22}
!6 = !{ptr @__ksymtab_meson_clk_pll_ops, !7, !"__ksymtab_meson_clk_pll_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/meson/clk-pll.c", i32 442, i32 1}
!8 = !{ptr @meson_clk_pll_ro_ops, !9, !"meson_clk_pll_ro_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/meson/clk-pll.c", i32 444, i32 22}
!10 = !{ptr @__ksymtab_meson_clk_pll_ro_ops, !11, !"__ksymtab_meson_clk_pll_ro_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/meson/clk-pll.c", i32 448, i32 1}
!12 = !{ptr @__UNIQUE_ID_description162, !13, !"__UNIQUE_ID_description162", i1 false, i1 false}
!13 = !{!"../drivers/clk/meson/clk-pll.c", i32 450, i32 1}
!14 = !{ptr @__UNIQUE_ID_author163, !15, !"__UNIQUE_ID_author163", i1 false, i1 false}
!15 = !{!"../drivers/clk/meson/clk-pll.c", i32 451, i32 1}
!16 = !{ptr @__UNIQUE_ID_author164, !17, !"__UNIQUE_ID_author164", i1 false, i1 false}
!17 = !{!"../drivers/clk/meson/clk-pll.c", i32 452, i32 1}
!18 = !{ptr @__UNIQUE_ID_file165, !19, !"__UNIQUE_ID_file165", i1 false, i1 false}
!19 = !{!"../drivers/clk/meson/clk-pll.c", i32 453, i32 1}
!20 = !{ptr @__UNIQUE_ID_license166, !19, !"__UNIQUE_ID_license166", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/meson/clk-pll.c", i32 403, i32 3}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @meson_clk_pll_set_rate._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @meson_clk_pll_set_rate._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
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
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2148951407, i64 2148951687, i64 2148952021, i64 2148952355}
