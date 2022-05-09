; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mux.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_mux_clr_set_upd_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_mux_clr_set_upd_ops\09\09\09\09"
module asm "\09.long\09__crc_mtk_mux_clr_set_upd_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mux_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mux_clr_set_upd_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mux_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_mux_gate_clr_set_upd_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_mux_gate_clr_set_upd_ops\09\09\09\09"
module asm "\09.long\09__crc_mtk_mux_gate_clr_set_upd_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mux_gate_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mux_gate_clr_set_upd_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mux_gate_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_register_muxes\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_register_muxes\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_register_muxes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_muxes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_muxes\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_muxes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_clk_mux = type { %struct.clk_hw, ptr, ptr, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mtk_mux = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@mtk_mux_clr_set_upd_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_clk_mux_set_parent_setclr_lock, ptr @mtk_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_mux_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mux_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mux_clr_set_upd_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mux_clr_set_upd_ops to i32), ptr @__kstrtab_mtk_mux_clr_set_upd_ops, ptr @__kstrtabns_mtk_mux_clr_set_upd_ops }, section "___ksymtab_gpl+mtk_mux_clr_set_upd_ops", align 4
@mtk_mux_gate_clr_set_upd_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_clk_mux_enable_setclr, ptr @mtk_clk_mux_disable_setclr, ptr @mtk_clk_mux_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_clk_mux_set_parent_setclr_lock, ptr @mtk_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_mux_gate_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mux_gate_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mux_gate_clr_set_upd_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mux_gate_clr_set_upd_ops to i32), ptr @__kstrtab_mtk_mux_gate_clr_set_upd_ops, ptr @__kstrtabns_mtk_mux_gate_clr_set_upd_ops }, section "___ksymtab_gpl+mtk_mux_gate_clr_set_upd_ops", align 4
@mtk_clk_register_muxes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Cannot find regmap for %pOF: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_clk_register_muxes\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/mediatek/clk-mux.c\00", [33 x i8] zeroinitializer }, align 32
@mtk_clk_register_muxes._entry_ptr = internal global ptr @mtk_clk_register_muxes._entry, section ".printk_index", align 4
@mtk_clk_register_muxes._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_clk_register_muxes._entry_ptr.5 = internal global ptr @mtk_clk_register_muxes._entry.3, section ".printk_index", align 4
@__kstrtab_mtk_clk_register_muxes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_muxes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_muxes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_muxes to i32), ptr @__kstrtab_mtk_clk_register_muxes, ptr @__kstrtabns_mtk_clk_register_muxes }, section "___ksymtab_gpl+mtk_clk_register_muxes", align 4
@__UNIQUE_ID_file183 = internal constant [42 x i8] c"clk_mux.file=drivers/clk/mediatek/clk-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [20 x i8] c"clk_mux.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"mtk_mux_clr_set_upd_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 120, i32 22 }
@___asan_gen_.9 = private unnamed_addr constant [29 x i8] c"mtk_mux_gate_clr_set_upd_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 126, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 178, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [34 x i8] c"../drivers/clk/mediatek/clk-mux.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 190, i32 5 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @__ksymtab_mtk_clk_register_muxes, ptr @__ksymtab_mtk_mux_clr_set_upd_ops, ptr @__ksymtab_mtk_mux_gate_clr_set_upd_ops, ptr @mtk_clk_register_muxes._entry, ptr @mtk_clk_register_muxes._entry.3, ptr @mtk_clk_register_muxes._entry_ptr, ptr @mtk_clk_register_muxes._entry_ptr.5, ptr @mtk_mux_clr_set_upd_ops, ptr @mtk_mux_gate_clr_set_upd_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mux_clr_set_upd_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mux_gate_clr_set_upd_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_muxes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_muxes._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_clk_mux_set_parent_setclr_lock(ptr nocapture noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  %orig = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %mux_width = getelementptr inbounds %struct.mtk_mux, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mux_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mux_width, align 1
  %conv = zext i8 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig) #5
  %4 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %orig, align 4, !annotation !32
  %lock = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %6) #5
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call6, %do.body2 ], [ 0, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %mux_ofs = getelementptr inbounds %struct.mtk_mux, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %mux_ofs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mux_ofs, align 4
  %call10 = call i32 @regmap_read(ptr noundef %8, i32 noundef %12, ptr noundef nonnull %orig) #5
  %13 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %orig, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %mux_shift = getelementptr inbounds %struct.mtk_mux, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %mux_shift to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mux_shift, align 4
  %conv12 = zext i8 %18 to i32
  %shl = shl i32 %shr, %conv12
  %neg = xor i32 %shl, -1
  %and13 = and i32 %14, %neg
  %conv14 = zext i8 %index to i32
  %shl18 = shl i32 %conv14, %conv12
  %or = or i32 %and13, %shl18
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %14)
  %cmp19.not = icmp eq i32 %or, %14
  br i1 %cmp19.not, label %if.end.if.end50_crit_edge, label %if.then21

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then21:                                        ; preds = %if.end
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %clr_ofs = getelementptr inbounds %struct.mtk_mux, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %clr_ofs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clr_ofs, align 4
  %call28 = call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %shl) #5
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %set_ofs = getelementptr inbounds %struct.mtk_mux, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %set_ofs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %set_ofs, align 4
  %mux_shift33 = getelementptr inbounds %struct.mtk_mux, ptr %26, i32 0, i32 8
  %29 = ptrtoint ptr %mux_shift33 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mux_shift33, align 4
  %conv34 = zext i8 %30 to i32
  %shl35 = shl i32 %conv14, %conv34
  %call36 = call i32 @regmap_write(ptr noundef %24, i32 noundef %28, i32 noundef %shl35) #5
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %upd_shift = getelementptr inbounds %struct.mtk_mux, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %upd_shift to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %upd_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp39 = icmp sgt i8 %34, -1
  br i1 %cmp39, label %if.then41, label %if.then21.if.end50_crit_edge

if.then21.if.end50_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then41:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %upd_ofs = getelementptr inbounds %struct.mtk_mux, ptr %32, i32 0, i32 7
  %37 = ptrtoint ptr %upd_ofs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %upd_ofs, align 4
  %conv3878 = zext i8 %34 to i32
  %shl47 = shl nuw i32 1, %conv3878
  %call48 = call i32 @regmap_write(ptr noundef %36, i32 noundef %38, i32 noundef %shl47) #5
  %reparent = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 4
  %39 = ptrtoint ptr %reparent to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %reparent, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.then21.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %40 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock, align 4
  %tobool52.not = icmp eq ptr %41, null
  br i1 %tobool52.not, label %if.end50.if.end56_crit_edge, label %if.then53

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %41, i32 noundef %flags.0) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mtk_clk_mux_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %mux_width = getelementptr inbounds %struct.mtk_mux, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mux_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mux_width, align 1
  %conv = zext i8 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !32
  %regmap = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %mux_ofs = getelementptr inbounds %struct.mtk_mux, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %mux_ofs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mux_ofs, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %val) #5
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %mux_shift = getelementptr inbounds %struct.mtk_mux, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %mux_shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mux_shift, align 4
  %conv5 = zext i8 %14 to i32
  %shr6 = lshr i32 %10, %conv5
  %and7 = and i32 %shr6, %shr
  %conv8 = trunc i32 %and7 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i8 %conv8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_clk_mux_enable_setclr(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %clr_ofs = getelementptr inbounds %struct.mtk_mux, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %clr_ofs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clr_ofs, align 4
  %gate_shift = getelementptr inbounds %struct.mtk_mux, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gate_shift, align 2
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv8
  %call9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %7, i32 noundef %shl) #5
  %reparent = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %reparent to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reparent, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %upd_shift = getelementptr inbounds %struct.mtk_mux, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %upd_shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %upd_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp14 = icmp sgt i8 %15, -1
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %upd_ofs = getelementptr inbounds %struct.mtk_mux, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %upd_ofs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upd_ofs, align 4
  %conv1344 = zext i8 %15 to i32
  %shl22 = shl nuw i32 1, %conv1344
  %call23 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %shl22) #5
  %20 = ptrtoint ptr %reparent to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %reparent, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 4
  %tobool27.not = icmp eq ptr %22, null
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %22, i32 noundef %flags.0) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_clk_mux_disable_setclr(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %set_ofs = getelementptr inbounds %struct.mtk_mux, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %set_ofs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %set_ofs, align 4
  %gate_shift = getelementptr inbounds %struct.mtk_mux, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gate_shift, align 2
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %call2 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %5, i32 noundef %shl) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_clk_mux_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !32
  %regmap = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.mtk_clk_mux, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %mux_ofs = getelementptr inbounds %struct.mtk_mux, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %mux_ofs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mux_ofs, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %val) #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %gate_shift = getelementptr inbounds %struct.mtk_mux, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gate_shift, align 2
  %conv = zext i8 %12 to i32
  %13 = xor i32 %8, -1
  %14 = lshr i32 %13, %conv
  %15 = and i32 %14, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_muxes(ptr noundef %muxes, i32 noundef %num, ptr noundef %node, ptr noundef %lock, ptr nocapture noundef readonly %clk_data) #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_node_to_regmap(ptr noundef %node) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp43 = icmp sgt i32 %num, 0
  br i1 %cmp43, label %for.body.lr.ph, label %for.cond.preheader.cleanup22_crit_edge

for.cond.preheader.cleanup22_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = getelementptr inbounds i8, ptr %init.i, i32 12
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents5.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %ops6.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node, i32 noundef %1) #8
  br label %cleanup22

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_mux, ptr %muxes, i32 %i.044
  %2 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_data, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i37 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i37
  br i1 %spec.select.i, label %if.then7, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #5
  %8 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not.i38 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i38, label %mtk_clk_register_mux.exit.thread, label %if.end.i

mtk_clk_register_mux.exit.thread:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  br label %do.end13

if.end.i:                                         ; preds = %if.then7
  %name.i = getelementptr %struct.mtk_mux, ptr %muxes, i32 %i.044, i32 1
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %12 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %init.i, align 4
  %flags.i = getelementptr %struct.mtk_mux, ptr %muxes, i32 %i.044, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %14, 4
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %flags3.i, align 4
  %parent_names.i = getelementptr %struct.mtk_mux, ptr %muxes, i32 %i.044, i32 2
  %16 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent_names.i, align 4
  %18 = ptrtoint ptr %parent_names4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %parent_names4.i, align 4
  %num_parents.i = getelementptr %struct.mtk_mux, ptr %muxes, i32 %i.044, i32 13
  %19 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_parents.i, align 4
  %21 = ptrtoint ptr %num_parents5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %num_parents5.i, align 4
  %ops.i = getelementptr %struct.mtk_mux, ptr %muxes, i32 %i.044, i32 12
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %24 = ptrtoint ptr %ops6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %ops6.i, align 4
  %regmap7.i = getelementptr inbounds %struct.mtk_clk_mux, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %regmap7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %regmap7.i, align 4
  %data.i = getelementptr inbounds %struct.mtk_clk_mux, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx, ptr %data.i, align 8
  %lock8.i = getelementptr inbounds %struct.mtk_clk_mux, ptr %call7.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %lock8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lock, ptr %lock8.i, align 4
  %init9.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %init9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init.i, ptr %init9.i, align 8
  %call11.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #5
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtk_clk_register_mux.exit.thread47, label %if.end17

mtk_clk_register_mux.exit.thread47:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  br label %do.end13

do.end13:                                         ; preds = %mtk_clk_register_mux.exit.thread47, %mtk_clk_register_mux.exit.thread
  %retval.0.i42 = phi ptr [ inttoptr (i32 -12 to ptr), %mtk_clk_register_mux.exit.thread ], [ %call11.i, %mtk_clk_register_mux.exit.thread47 ]
  %name = getelementptr %struct.mtk_mux, ptr %muxes, i32 %i.044, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  %31 = ptrtoint ptr %retval.0.i42 to i32
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %30, i32 noundef %31) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  %32 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_data, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %arrayidx20 = getelementptr ptr, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call11.i, ptr %arrayidx20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end13, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.cleanup22_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.cleanup22_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup.cleanup22_crit_edge, %do.end, %for.cond.preheader.cleanup22_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %for.cond.preheader.cleanup22_crit_edge ], [ 0, %cleanup.cleanup22_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @mtk_mux_clr_set_upd_ops, !1, !"mtk_mux_clr_set_upd_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 120, i32 22}
!2 = !{ptr @__ksymtab_mtk_mux_clr_set_upd_ops, !3, !"__ksymtab_mtk_mux_clr_set_upd_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 124, i32 1}
!4 = !{ptr @mtk_mux_gate_clr_set_upd_ops, !5, !"mtk_mux_gate_clr_set_upd_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 126, i32 22}
!6 = !{ptr @__ksymtab_mtk_mux_gate_clr_set_upd_ops, !7, !"__ksymtab_mtk_mux_gate_clr_set_upd_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 133, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 178, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mtk_clk_register_muxes._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mtk_clk_register_muxes._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 190, i32 5}
!16 = !{ptr @mtk_clk_register_muxes._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_clk_register_muxes._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_mtk_clk_register_muxes, !19, !"__ksymtab_mtk_clk_register_muxes", i1 false, i1 false}
!19 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 201, i32 1}
!20 = !{ptr @__UNIQUE_ID_file183, !21, !"__UNIQUE_ID_file183", i1 false, i1 false}
!21 = !{!"../drivers/clk/mediatek/clk-mux.c", i32 203, i32 1}
!22 = !{ptr @__UNIQUE_ID_license184, !21, !"__UNIQUE_ID_license184", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{i8 0, i8 2}
