; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-gate.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_gate_ops_setclr\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_gate_ops_setclr\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_gate_ops_setclr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_setclr\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_gate_ops_setclr_inv\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_gate_ops_setclr_inv\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_gate_ops_setclr_inv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_setclr_inv\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_gate_ops_no_setclr\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_gate_ops_no_setclr\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_gate_ops_no_setclr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_no_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_no_setclr\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_no_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_gate_ops_no_setclr_inv\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_gate_ops_no_setclr_inv\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_gate_ops_no_setclr_inv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_no_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_no_setclr_inv\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_no_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_register_gate\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_register_gate\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_register_gate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_gate\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtk_clk_gate = type { %struct.clk_hw, ptr, i32, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@mtk_clk_gate_ops_setclr = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable, ptr @mtk_cg_disable, ptr @mtk_cg_bit_is_cleared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_clk_gate_ops_setclr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_setclr = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_setclr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_setclr to i32), ptr @__kstrtab_mtk_clk_gate_ops_setclr, ptr @__kstrtabns_mtk_clk_gate_ops_setclr }, section "___ksymtab_gpl+mtk_clk_gate_ops_setclr", align 4
@mtk_clk_gate_ops_setclr_inv = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable_inv, ptr @mtk_cg_disable_inv, ptr @mtk_cg_bit_is_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_clk_gate_ops_setclr_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_setclr_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_setclr_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_setclr_inv to i32), ptr @__kstrtab_mtk_clk_gate_ops_setclr_inv, ptr @__kstrtabns_mtk_clk_gate_ops_setclr_inv }, section "___ksymtab_gpl+mtk_clk_gate_ops_setclr_inv", align 4
@mtk_clk_gate_ops_no_setclr = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable_no_setclr, ptr @mtk_cg_disable_no_setclr, ptr @mtk_cg_bit_is_cleared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_clk_gate_ops_no_setclr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_no_setclr = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_no_setclr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_no_setclr to i32), ptr @__kstrtab_mtk_clk_gate_ops_no_setclr, ptr @__kstrtabns_mtk_clk_gate_ops_no_setclr }, section "___ksymtab_gpl+mtk_clk_gate_ops_no_setclr", align 4
@mtk_clk_gate_ops_no_setclr_inv = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable_inv_no_setclr, ptr @mtk_cg_disable_inv_no_setclr, ptr @mtk_cg_bit_is_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_clk_gate_ops_no_setclr_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_no_setclr_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_no_setclr_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_no_setclr_inv to i32), ptr @__kstrtab_mtk_clk_gate_ops_no_setclr_inv, ptr @__kstrtabns_mtk_clk_gate_ops_no_setclr_inv }, section "___ksymtab_gpl+mtk_clk_gate_ops_no_setclr_inv", align 4
@__kstrtab_mtk_clk_register_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_gate to i32), ptr @__kstrtab_mtk_clk_register_gate, ptr @__kstrtabns_mtk_clk_register_gate }, section "___ksymtab_gpl+mtk_clk_register_gate", align 4
@__UNIQUE_ID_file183 = internal constant [44 x i8] c"clk_gate.file=drivers/clk/mediatek/clk-gate\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [21 x i8] c"clk_gate.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"mtk_clk_gate_ops_setclr\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 115, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [28 x i8] c"mtk_clk_gate_ops_setclr_inv\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 122, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"mtk_clk_gate_ops_no_setclr\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 129, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"mtk_clk_gate_ops_no_setclr_inv\00", align 1
@___asan_gen_.11 = private constant [35 x i8] c"../drivers/clk/mediatek/clk-gate.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 136, i32 22 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @__ksymtab_mtk_clk_gate_ops_no_setclr, ptr @__ksymtab_mtk_clk_gate_ops_no_setclr_inv, ptr @__ksymtab_mtk_clk_gate_ops_setclr, ptr @__ksymtab_mtk_clk_gate_ops_setclr_inv, ptr @__ksymtab_mtk_clk_register_gate, ptr @mtk_clk_gate_ops_setclr, ptr @mtk_clk_gate_ops_setclr_inv, ptr @mtk_clk_gate_ops_no_setclr, ptr @mtk_clk_gate_ops_no_setclr_inv], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_gate_ops_setclr to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_gate_ops_setclr_inv to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_gate_ops_no_setclr to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_gate_ops_no_setclr_inv to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %clr_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %clr_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clr_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call1.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cg_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %set_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %set_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %set_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call1.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cg_bit_is_cleared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !30
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %sta_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %sta_ofs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_ofs.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val.i) #4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %7 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  %9 = xor i32 %6, -1
  %10 = lshr i32 %9, %conv.i
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable_inv(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %set_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %set_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %set_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call1.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cg_disable_inv(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %clr_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %clr_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clr_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call1.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cg_bit_is_set(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !30
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %sta_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %sta_ofs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_ofs.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val.i) #4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %7 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  %9 = lshr i32 %6, %conv.i
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable_no_setclr(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %sta_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %sta_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sta_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cg_disable_no_setclr(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %sta_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %sta_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sta_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable_inv_no_setclr(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %sta_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %sta_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sta_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cg_disable_inv_no_setclr(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %sta_ofs.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %sta_ofs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sta_ofs.i, align 4
  %bit.i = getelementptr inbounds %struct.mtk_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_clk_register_gate(ptr noundef %name, ptr noundef %parent_name, ptr noundef %regmap, i32 noundef %set_ofs, i32 noundef %clr_ofs, i32 noundef %sta_ofs, i8 noundef zeroext %bit, ptr noundef %ops, i32 noundef %flags, ptr noundef %dev) #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #4
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %or = or i32 %flags, 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %flags3, align 4
  %6 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_name.addr, align 4
  %tobool4.not = icmp eq ptr %7, null
  %parent_name.addr. = select i1 %tobool4.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool5.not = icmp ne ptr %7, null
  %conv = zext i1 %tobool5.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num_parents, align 4
  %ops7 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %10 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ops, ptr %ops7, align 4
  %regmap8 = getelementptr inbounds %struct.mtk_clk_gate, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regmap, ptr %regmap8, align 4
  %set_ofs9 = getelementptr inbounds %struct.mtk_clk_gate, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %set_ofs9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %set_ofs, ptr %set_ofs9, align 8
  %clr_ofs10 = getelementptr inbounds %struct.mtk_clk_gate, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %clr_ofs10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %clr_ofs, ptr %clr_ofs10, align 4
  %sta_ofs11 = getelementptr inbounds %struct.mtk_clk_gate, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %sta_ofs11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sta_ofs, ptr %sta_ofs11, align 8
  %bit12 = getelementptr inbounds %struct.mtk_clk_gate, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %bit12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bit, ptr %bit12, align 4
  %init13 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %init13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init13, align 8
  %call15 = call ptr @clk_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call15, %if.then17 ], [ %call15, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @mtk_clk_gate_ops_setclr, !1, !"mtk_clk_gate_ops_setclr", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 115, i32 22}
!2 = !{ptr @__ksymtab_mtk_clk_gate_ops_setclr, !3, !"__ksymtab_mtk_clk_gate_ops_setclr", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 120, i32 1}
!4 = !{ptr @mtk_clk_gate_ops_setclr_inv, !5, !"mtk_clk_gate_ops_setclr_inv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 122, i32 22}
!6 = !{ptr @__ksymtab_mtk_clk_gate_ops_setclr_inv, !7, !"__ksymtab_mtk_clk_gate_ops_setclr_inv", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 127, i32 1}
!8 = !{ptr @mtk_clk_gate_ops_no_setclr, !9, !"mtk_clk_gate_ops_no_setclr", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 129, i32 22}
!10 = !{ptr @__ksymtab_mtk_clk_gate_ops_no_setclr, !11, !"__ksymtab_mtk_clk_gate_ops_no_setclr", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 134, i32 1}
!12 = !{ptr @mtk_clk_gate_ops_no_setclr_inv, !13, !"mtk_clk_gate_ops_no_setclr_inv", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 136, i32 22}
!14 = !{ptr @__ksymtab_mtk_clk_gate_ops_no_setclr_inv, !15, !"__ksymtab_mtk_clk_gate_ops_no_setclr_inv", i1 false, i1 false}
!15 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 141, i32 1}
!16 = !{ptr @__ksymtab_mtk_clk_register_gate, !17, !"__ksymtab_mtk_clk_register_gate", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 183, i32 1}
!18 = !{ptr @__UNIQUE_ID_file183, !19, !"__UNIQUE_ID_file183", i1 false, i1 false}
!19 = !{!"../drivers/clk/mediatek/clk-gate.c", i32 185, i32 1}
!20 = !{ptr @__UNIQUE_ID_license184, !19, !"__UNIQUE_ID_license184", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
