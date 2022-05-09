; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/divider.c_pt.bc'
source_filename = "../drivers/clk/ti/divider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_omap_divider = type { %struct.clk_hw, %struct.clk_omap_reg, i8, i8, i8, i16, i16, i16, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@ti_clk_divider_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_save_context, ptr @clk_divider_restore_context, ptr @ti_clk_divider_recalc_rate, ptr @ti_clk_divider_round_rate, ptr null, ptr null, ptr null, ptr @ti_clk_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__of_table_divider_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,divider-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_divider_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_divider_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-divider-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_divider_clk_setup }, section "__clk_of_table", align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/ti/divider.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,bit-shift\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,latch-bit\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,index-starts-at-one\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,index-power-of-two\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,set-rate-parent\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,dividers\00", [20 x i8] zeroinitializer }, align 32
@ti_clk_get_div_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: no valid dividers for %pOFn table\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_clk_get_div_table\00", [43 x i8] zeroinitializer }, align 32
@ti_clk_get_div_table._entry_ptr = internal global ptr @ti_clk_get_div_table._entry, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,min-div\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,max-div\00", [21 x i8] zeroinitializer }, align 32
@_populate_divider_min_max._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: no max-div for %pOFn!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_populate_divider_min_max\00", [38 x i8] zeroinitializer }, align 32
@_populate_divider_min_max._entry_ptr = internal global ptr @_populate_divider_min_max._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"ti_clk_divider_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 308, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 112, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 492, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 497, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 505, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 508, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 511, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 405, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 422, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 456, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 459, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [28 x i8] c"../drivers/clk/ti/divider.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 460, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__of_table_divider_clk, ptr @__of_table_ti_composite_divider_clk, ptr @_populate_divider_min_max._entry, ptr @_populate_divider_min_max._entry_ptr, ptr @ti_clk_get_div_table._entry, ptr @ti_clk_get_div_table._entry_ptr, ptr @ti_clk_divider_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_get_div_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_populate_divider_min_max._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_save_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %reg = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 1
  %call = tail call i32 %2(ptr noundef %reg) #8
  %shift = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shift, align 4
  %conv = zext i8 %4 to i32
  %shr = lshr i32 %call, %conv
  %mask = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 7
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mask, align 4
  %conv1 = zext i16 %6 to i32
  %and = and i32 %shr, %conv1
  %context = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 9
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %context, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_divider_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %reg = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 1
  %call = tail call i32 %2(ptr noundef %reg) #8
  %mask = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 7
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mask, align 4
  %conv = zext i16 %4 to i32
  %shift = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv1 = zext i8 %6 to i32
  %shl = shl i32 %conv, %conv1
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %context = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 9
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %context, align 4
  %shl4 = shl i32 %8, %conv1
  %or = or i32 %and, %shl4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_writel, align 4
  tail call void %11(i32 noundef %or, ptr noundef %reg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_clk_divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %reg = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 1
  %call = tail call i32 %2(ptr noundef %reg) #8
  %shift = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shift, align 4
  %conv = zext i8 %4 to i32
  %shr = lshr i32 %call, %conv
  %mask = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 7
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mask, align 4
  %conv1 = zext i16 %6 to i32
  %and = and i32 %shr, %conv1
  %flags.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags.i, align 1
  %conv.i = zext i8 %8 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %_get_div.exit

if.end.i:                                         ; preds = %entry
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %and
  br label %if.end29

if.end6.i:                                        ; preds = %if.end.i
  %table.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 8
  %9 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table.i, align 4
  %tobool7.not.i = icmp eq ptr %10, null
  br i1 %tobool7.not.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  %div6.i.i = getelementptr inbounds %struct.clk_div_table, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %div6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %div6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not7.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not7.i.i, label %if.then8.i.if.then_crit_edge, label %for.body.i.preheader.i

if.then8.i.if.then_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i.preheader.i:                           ; preds = %if.then8.i
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and)
  %cmp.i17.i = icmp eq i32 %14, %and
  br i1 %cmp.i17.i, label %for.body.i.preheader.i.if.end29_crit_edge, label %for.body.i.preheader.i.for.cond.i.i_crit_edge

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.body.i.preheader.i.if.end29_crit_edge:        ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %clkt.08.i18.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %10, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %div.i.i = getelementptr %struct.clk_div_table, ptr %clkt.08.i18.i, i32 1, i32 1
  %15 = ptrtoint ptr %div.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %div.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i.if.then_crit_edge, label %for.body.i.i

for.cond.i.i.if.then_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr.i.i = getelementptr %struct.clk_div_table, ptr %clkt.08.i18.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i.i, align 4
  %cmp.i.i = icmp eq i32 %18, %and
  br i1 %cmp.i.i, label %for.body.i.i.if.end29_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

for.body.i.i.if.end29_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %and, 1
  br label %if.end29

_get_div.exit:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_get_div.exit.if.then_crit_edge, label %_get_div.exit.if.end29_crit_edge

_get_div.exit.if.end29_crit_edge:                 ; preds = %_get_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

_get_div.exit.if.then_crit_edge:                  ; preds = %_get_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %_get_div.exit.if.then_crit_edge, %for.cond.i.i.if.then_crit_edge, %if.then8.i.if.then_crit_edge
  %19 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %do.end, label %if.then.cleanup_crit_edge, !prof !44

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16) #8
  br label %cleanup

if.end29:                                         ; preds = %_get_div.exit.if.end29_crit_edge, %if.end10.i, %for.body.i.i.if.end29_crit_edge, %for.body.i.preheader.i.if.end29_crit_edge, %if.then5.i
  %retval.0.i45 = phi i32 [ %and, %_get_div.exit.if.end29_crit_edge ], [ %12, %for.body.i.preheader.i.if.end29_crit_edge ], [ %add.i, %if.end10.i ], [ %shl.i, %if.then5.i ], [ %16, %for.body.i.i.if.end29_crit_edge ]
  %add = add i32 %parent_rate, -1
  %sub = add i32 %add, %retval.0.i45
  %div30 = udiv i32 %sub, %retval.0.i45
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %div30, %if.end29 ], [ %parent_rate, %do.end ], [ %parent_rate, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_clk_divider_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 1, i32 %rate
  %max.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max.i, align 2
  %conv.i = zext i16 %3 to i32
  %call.i = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #8
  %and.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end11.i

if.then2.i:                                       ; preds = %entry
  %4 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prate, align 4
  %table.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 8
  %6 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %spec.store.select.i, -1
  %sub.i.i = add i32 %add.i.i, %5
  %div.i.i = udiv i32 %sub.i.i, %spec.store.select.i
  br label %_div_round.exit.i

if.end.i.i:                                       ; preds = %if.then2.i
  %conv.i.i.i = zext i32 %5 to i64
  %conv1.i.i.i = zext i32 %spec.store.select.i to i64
  %add.i.i.i = add nsw i64 %conv1.i.i.i, -1
  %sub.i.i.i = add nuw nsw i64 %add.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i)
  %cmp170.i.i.i = icmp ult i64 %sub.i.i.i, 4294967296
  br i1 %cmp170.i.i.i, label %if.then174.i.i.i, label %if.else180.i.i.i, !prof !45

if.then174.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv175.i.i.i = trunc i64 %sub.i.i.i to i32
  %div178.i.i.i = udiv i32 %conv175.i.i.i, %spec.store.select.i
  br label %if.end184.i.i.i

if.else180.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.store.select.i, i64 %sub.i.i.i) #11, !srcloc !46
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t329.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.end184.i.i.i

if.end184.i.i.i:                                  ; preds = %if.else180.i.i.i, %if.then174.i.i.i
  %_tmp.0.off0.i.i.i = phi i32 [ %div178.i.i.i, %if.then174.i.i.i ], [ %extract.t329.i.i.i, %if.else180.i.i.i ]
  %div188331.i.i.i = getelementptr inbounds %struct.clk_div_table, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %div188331.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %div188331.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool189.not332.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool189.not332.i.i.i, label %if.end184.i.i.i._div_round.exit.thread.i_crit_edge, label %if.end184.i.i.i.for.body.i.i.i_crit_edge

if.end184.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %if.end184.i.i.i
  br label %for.body.i.i.i

if.end184.i.i.i._div_round.exit.thread.i_crit_edge: ; preds = %if.end184.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_div_round.exit.thread.i

for.body.i.i.i:                                   ; preds = %if.else195.i.i.i.for.body.i.i.i_crit_edge, %if.end184.i.i.i.for.body.i.i.i_crit_edge
  %11 = phi i32 [ %13, %if.else195.i.i.i.for.body.i.i.i_crit_edge ], [ %10, %if.end184.i.i.i.for.body.i.i.i_crit_edge ]
  %clkt.0334.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.else195.i.i.i.for.body.i.i.i_crit_edge ], [ %7, %if.end184.i.i.i.for.body.i.i.i_crit_edge ]
  %up.0333.i.i.i = phi i32 [ %up.1.i.i.i, %if.else195.i.i.i.for.body.i.i.i_crit_edge ], [ 2147483647, %if.end184.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %_tmp.0.off0.i.i.i)
  %cmp191.i.i.i = icmp eq i32 %11, %_tmp.0.off0.i.i.i
  br i1 %cmp191.i.i.i, label %for.body.i.i.i._div_round.exit.i_crit_edge, label %if.else195.i.i.i

for.body.i.i.i._div_round.exit.i_crit_edge:       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_div_round.exit.i

if.else195.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %_tmp.0.off0.i.i.i)
  %cmp197.i.i.i = icmp ult i32 %11, %_tmp.0.off0.i.i.i
  %sub203.i.i.i = sub i32 %11, %_tmp.0.off0.i.i.i
  %sub204.i.i.i = sub i32 %up.0333.i.i.i, %_tmp.0.off0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub203.i.i.i, i32 %sub204.i.i.i)
  %cmp205.i.i.i = icmp ult i32 %sub203.i.i.i, %sub204.i.i.i
  %spec.select.i.i.i = select i1 %cmp205.i.i.i, i32 %11, i32 %up.0333.i.i.i
  %up.1.i.i.i = select i1 %cmp197.i.i.i, i32 %up.0333.i.i.i, i32 %spec.select.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.clk_div_table, ptr %clkt.0334.i.i.i, i32 1
  %div188.i.i.i = getelementptr %struct.clk_div_table, ptr %clkt.0334.i.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %div188.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %div188.i.i.i, align 4
  %tobool189.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool189.not.i.i.i, label %if.else195.i.i.i._div_round.exit.i_crit_edge, label %if.else195.i.i.i.for.body.i.i.i_crit_edge

if.else195.i.i.i.for.body.i.i.i_crit_edge:        ; preds = %if.else195.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

if.else195.i.i.i._div_round.exit.i_crit_edge:     ; preds = %if.else195.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_div_round.exit.i

_div_round.exit.i:                                ; preds = %if.else195.i.i.i._div_round.exit.i_crit_edge, %for.body.i.i.i._div_round.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %div.i.i, %if.then.i.i ], [ %_tmp.0.off0.i.i.i, %for.body.i.i.i._div_round.exit.i_crit_edge ], [ %up.1.i.i.i, %if.else195.i.i.i._div_round.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %retval.0.i.i
  br label %_div_round.exit.thread.i

_div_round.exit.thread.i:                         ; preds = %_div_round.exit.i, %if.end184.i.i.i._div_round.exit.thread.i_crit_edge
  %14 = phi i32 [ 2147483647, %if.end184.i.i.i._div_round.exit.thread.i_crit_edge ], [ %spec.select.i, %_div_round.exit.i ]
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %conv.i) #8
  br label %ti_clk_divider_bestdiv.exit

if.end11.i:                                       ; preds = %entry
  %div.i = udiv i32 -1, %spec.store.select.i
  %16 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19.not109.i = icmp eq i32 %16, 0
  br i1 %cmp19.not109.i, label %if.end11.i.if.then41.i_crit_edge, label %for.body.lr.ph.i

if.end11.i.if.then41.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %flags.i.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 3
  %table.i.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %best.0114.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bestdiv.0112.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bestdiv.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0110.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags.i.i, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i94.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i94.i, label %if.end.i96.i, label %if.then.i95.i

if.then.i95.i:                                    ; preds = %for.body.i
  %20 = tail call i32 @llvm.ctpop.i32(i32 %i.0110.i) #8, !range !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %if.then.i95.i.if.end23.i_crit_edge, label %if.then.i95.i.for.inc.i_crit_edge

if.then.i95.i.for.inc.i_crit_edge:                ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i95.i.if.end23.i_crit_edge:               ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.i96.i:                                     ; preds = %for.body.i
  %22 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %table.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i.i, label %if.end.i96.i.if.end23.i_crit_edge, label %if.end.i96.i.for.cond.i.i.i_crit_edge

if.end.i96.i.for.cond.i.i.i_crit_edge:            ; preds = %if.end.i96.i
  br label %for.cond.i.i.i

if.end.i96.i.if.end23.i_crit_edge:                ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i96.i.for.cond.i.i.i_crit_edge
  %clkt.0.i.i.i = phi ptr [ %incdec.ptr.i.i99.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ], [ %23, %if.end.i96.i.for.cond.i.i.i_crit_edge ]
  %div1.i.i.i = getelementptr inbounds %struct.clk_div_table, ptr %clkt.0.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %div1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %div1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i97.i = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %i.0110.i)
  %cmp.i.i98.i = icmp eq i32 %25, %i.0110.i
  %or.cond.i.i.i = or i1 %tobool.not.i.i97.i, %cmp.i.i98.i
  %incdec.ptr.i.i99.i = getelementptr %struct.clk_div_table, ptr %clkt.0.i.i.i, i32 1
  br i1 %or.cond.i.i.i, label %_is_valid_table_div.exit.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

_is_valid_table_div.exit.i.i:                     ; preds = %for.cond.i.i.i
  br i1 %tobool.not.i.i97.i, label %_is_valid_table_div.exit.i.i.for.inc.i_crit_edge, label %_is_valid_table_div.exit.i.i.if.end23.i_crit_edge

_is_valid_table_div.exit.i.i.if.end23.i_crit_edge: ; preds = %_is_valid_table_div.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

_is_valid_table_div.exit.i.i.for.inc.i_crit_edge: ; preds = %_is_valid_table_div.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end23.i:                                       ; preds = %_is_valid_table_div.exit.i.i.if.end23.i_crit_edge, %if.end.i96.i.if.end23.i_crit_edge, %if.then.i95.i.if.end23.i_crit_edge
  %mul.i = mul i32 %i.0110.i, %spec.store.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %1)
  %cmp24.i = icmp eq i32 %mul.i, %1
  br i1 %cmp24.i, label %if.then26.i, label %if.end27.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %1, ptr %prate, align 4
  br label %ti_clk_divider_bestdiv.exit

if.end27.i:                                       ; preds = %if.end23.i
  %call28.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %add.i = add nsw i32 %i.0110.i, -1
  %sub.i = add i32 %add.i, %mul.i
  %call30.i = tail call i32 @clk_hw_round_rate(ptr noundef %call28.i, i32 noundef %sub.i) #8
  %sub32.i = add i32 %call30.i, %add.i
  %div33.i = udiv i32 %sub32.i, %i.0110.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div33.i, i32 %spec.store.select.i)
  %cmp34.not.i = icmp ule i32 %div33.i, %spec.store.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div33.i, i32 %best.0114.i)
  %cmp36.i = icmp ugt i32 %div33.i, %best.0114.i
  %or.cond.i = select i1 %cmp34.not.i, i1 %cmp36.i, i1 false
  br i1 %or.cond.i, label %if.then38.i, label %if.end27.i.for.inc.i_crit_edge

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then38.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call30.i, ptr %prate, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then38.i, %if.end27.i.for.inc.i_crit_edge, %_is_valid_table_div.exit.i.i.for.inc.i_crit_edge, %if.then.i95.i.for.inc.i_crit_edge
  %bestdiv.1.i = phi i32 [ %i.0110.i, %if.then38.i ], [ %bestdiv.0112.i, %if.end27.i.for.inc.i_crit_edge ], [ %bestdiv.0112.i, %_is_valid_table_div.exit.i.i.for.inc.i_crit_edge ], [ %bestdiv.0112.i, %if.then.i95.i.for.inc.i_crit_edge ]
  %best.1.i = phi i32 [ %div33.i, %if.then38.i ], [ %best.0114.i, %if.end27.i.for.inc.i_crit_edge ], [ %best.0114.i, %_is_valid_table_div.exit.i.i.for.inc.i_crit_edge ], [ %best.0114.i, %if.then.i95.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0110.i, 1
  %exitcond.i = icmp eq i32 %i.0110.i, %16
  br i1 %exitcond.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestdiv.1.i)
  %tobool40.not.i = icmp eq i32 %bestdiv.1.i, 0
  br i1 %tobool40.not.i, label %for.end.i.if.then41.i_crit_edge, label %for.end.i.ti_clk_divider_bestdiv.exit_crit_edge

for.end.i.ti_clk_divider_bestdiv.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ti_clk_divider_bestdiv.exit

for.end.i.if.then41.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

if.then41.i:                                      ; preds = %for.end.i.if.then41.i_crit_edge, %if.end11.i.if.then41.i_crit_edge
  %28 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max.i, align 2
  %conv43.i = zext i16 %29 to i32
  %call44.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %call45.i = tail call i32 @clk_hw_round_rate(ptr noundef %call44.i, i32 noundef 1) #8
  %30 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call45.i, ptr %prate, align 4
  br label %ti_clk_divider_bestdiv.exit

ti_clk_divider_bestdiv.exit:                      ; preds = %if.then41.i, %for.end.i.ti_clk_divider_bestdiv.exit_crit_edge, %if.then26.i, %_div_round.exit.thread.i
  %retval.0.i = phi i32 [ %i.0110.i, %if.then26.i ], [ %15, %_div_round.exit.thread.i ], [ %bestdiv.1.i, %for.end.i.ti_clk_divider_bestdiv.exit_crit_edge ], [ %conv43.i, %if.then41.i ]
  %31 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prate, align 4
  %add = add i32 %retval.0.i, -1
  %sub = add i32 %add, %32
  %div1 = udiv i32 %sub, %retval.0.i
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_clk_divider_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool1.not = icmp eq i32 %rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %rate, -1
  %sub = add i32 %add, %parent_rate
  %div2 = udiv i32 %sub, %rate
  %max = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max, align 2
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.umin.i32(i32 %div2, i32 %conv)
  %min = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %min, align 4
  %conv8 = zext i16 %4 to i32
  %5 = tail call i32 @llvm.umax.i32(i32 %2, i32 %conv8)
  %flags.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags.i, align 1
  %conv.i = zext i8 %7 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = and i32 %5, 255
  br label %_get_val.exit

if.end.i:                                         ; preds = %if.end
  %and4.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = and i32 %5, 255
  %8 = tail call i32 @llvm.cttz.i32(i32 %conv7.i, i1 false) #8, !range !47
  br label %_get_val.exit

if.end8.i:                                        ; preds = %if.end.i
  %table.i = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 8
  %9 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table.i, align 4
  %tobool9.not.i = icmp eq ptr %10, null
  %conv15.i = and i32 %5, 255
  br i1 %tobool9.not.i, label %if.end14.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %div17.i.i = getelementptr inbounds %struct.clk_div_table, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %div17.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %div17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not8.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not8.i.i, label %if.then10.i._get_val.exit_crit_edge, label %if.then10.i.for.body.i.i_crit_edge

if.then10.i.for.body.i.i_crit_edge:               ; preds = %if.then10.i
  br label %for.body.i.i

if.then10.i._get_val.exit_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_get_val.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then10.i.for.body.i.i_crit_edge
  %13 = phi i32 [ %17, %for.inc.i.i.for.body.i.i_crit_edge ], [ %12, %if.then10.i.for.body.i.i_crit_edge ]
  %clkt.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %10, %if.then10.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv15.i)
  %cmp.i.i = icmp eq i32 %13, %conv15.i
  br i1 %cmp.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %clkt.09.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clkt.09.i.i, align 4
  br label %_get_val.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.clk_div_table, ptr %clkt.09.i.i, i32 1
  %div1.i.i = getelementptr %struct.clk_div_table, ptr %clkt.09.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %div1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div1.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i._get_val.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i._get_val.exit_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_get_val.exit

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %conv15.i, -1
  br label %_get_val.exit

_get_val.exit:                                    ; preds = %if.end14.i, %for.inc.i.i._get_val.exit_crit_edge, %if.then.i.i, %if.then10.i._get_val.exit_crit_edge, %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ %conv1.i, %if.then.i ], [ %8, %if.then6.i ], [ %sub.i, %if.end14.i ], [ %15, %if.then.i.i ], [ 0, %if.then10.i._get_val.exit_crit_edge ], [ 0, %for.inc.i.i._get_val.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %18 = load ptr, ptr @ti_clk_ll_ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %reg = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 1
  %call16 = tail call i32 %20(ptr noundef %reg) #8
  %mask = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 7
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mask, align 4
  %conv17 = zext i16 %22 to i32
  %shift = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 2
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shift, align 4
  %conv18 = zext i8 %24 to i32
  %shl = shl i32 %conv17, %conv18
  %neg = xor i32 %shl, -1
  %and = and i32 %call16, %neg
  %shl21 = shl i32 %retval.0.i, %conv18
  %or = or i32 %and, %shl21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %25 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_writel, align 4
  tail call void %27(i32 noundef %or, ptr noundef %reg) #8
  %latch = getelementptr inbounds %struct.clk_omap_divider, ptr %hw, i32 0, i32 4
  %28 = ptrtoint ptr %latch to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %latch, align 2
  tail call void @ti_clk_latch(ptr noundef %reg, i8 noundef signext %29) #8
  br label %cleanup

cleanup:                                          ; preds = %_get_val.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %_get_val.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_clk_parse_divider_data(ptr noundef readonly %div_table, i32 noundef %num_dividers, i32 noundef %max_div, i8 noundef zeroext %flags, ptr nocapture noundef %divider) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %div_table, null
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_dividers)
  %tobool1.not = icmp eq i32 %num_dividers, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %num_dividers)
  %0 = icmp sgt i32 %num_dividers, -1
  br i1 %0, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  %min = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 5
  %1 = ptrtoint ptr %min to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %min, align 4
  %conv = trunc i32 %max_div to i16
  %max = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 6
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %max, align 2
  %table.i = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 8
  %3 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  %div45.i = getelementptr inbounds %struct.clk_div_table, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %div45.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not46.i = icmp eq i32 %6, 0
  br i1 %tobool2.not46.i, label %for.cond.preheader.i.cleanup.sink.split_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %clkt.048.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %4, %for.cond.preheader.i.for.body.i_crit_edge ]
  %max_val.047.i = phi i32 [ %9, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %clkt.048.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clkt.048.i, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %max_val.047.i) #8
  %incdec.ptr.i = getelementptr %struct.clk_div_table, ptr %clkt.048.i, i32 1
  %div.i = getelementptr %struct.clk_div_table, ptr %clkt.048.i, i32 1, i32 1
  %10 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div.i, align 4
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %for.body.i.cleanup.sink.split_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.cleanup.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %max_div, 65535
  %flags.i = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %15 = icmp eq i8 %14, 0
  %dec.i = sext i1 %15 to i32
  %spec.select41.i = add nsw i32 %conv.i, %dec.i
  br label %cleanup.sink.split

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.0132 = phi i32 [ %inc11, %if.end10.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %valid_div.0131 = phi i32 [ %valid_div.1, %if.end10.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %div_table, i32 %i.0132
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.then9 [
    i32 -1, label %while.body.while.end_crit_edge
    i32 0, label %while.body.if.end10_crit_edge
  ]

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %valid_div.0131, 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.body.if.end10_crit_edge
  %valid_div.1 = phi i32 [ %inc, %if.then9 ], [ %valid_div.0131, %while.body.if.end10_crit_edge ]
  %inc11 = add i32 %i.0132, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc11, i32 %num_dividers)
  %cmp = icmp slt i32 %inc11, %num_dividers
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end10.while.body_crit_edge, label %if.end10.while.end_crit_edge

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %valid_div.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %valid_div.0131, %while.body.while.end_crit_edge ], [ %valid_div.1, %if.end10.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %i.0132, %while.body.while.end_crit_edge ], [ %inc11, %if.end10.while.end_crit_edge ]
  %add = add i32 %valid_div.0.lcssa, 1
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #8
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %while.end.cleanup_crit_edge, label %if.end7.i.i, !prof !44

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %while.end
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #12
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp15136 = icmp sgt i32 %i.0.lcssa, 0
  br i1 %cmp15136, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond.preheader.i94_crit_edge

for.cond.preheader.for.cond.preheader.i94_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i94

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %min_div.0141 = phi i16 [ %min_div.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.1139 = phi i32 [ %inc41, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %valid_div.2138 = phi i32 [ %valid_div.3, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %max_div.addr.0137 = phi i32 [ %max_div.addr.2, %for.inc.for.body_crit_edge ], [ %max_div, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx17 = getelementptr i32, ptr %div_table, i32 %i.1139
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp18 = icmp sgt i32 %23, 0
  br i1 %cmp18, label %if.then20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22 = getelementptr %struct.clk_div_table, ptr %call8.i.i, i32 %valid_div.2138
  %div = getelementptr %struct.clk_div_table, ptr %call8.i.i, i32 %valid_div.2138, i32 1
  %24 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %div, align 4
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.1139, ptr %arrayidx22, align 8
  %inc24 = add i32 %valid_div.2138, 1
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx17, align 4
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 %max_div.addr.0137)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %min_div.0141)
  %tobool31.not = icmp eq i16 %min_div.0141, 0
  %conv33 = zext i16 %min_div.0141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv33)
  %cmp34 = icmp slt i32 %27, %conv33
  %or.cond125 = select i1 %tobool31.not, i1 true, i1 %cmp34
  %conv38 = trunc i32 %27 to i16
  %spec.select127 = select i1 %or.cond125, i16 %conv38, i16 %min_div.0141
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %max_div.addr.2 = phi i32 [ %max_div.addr.0137, %for.body.for.inc_crit_edge ], [ %28, %if.then20 ]
  %valid_div.3 = phi i32 [ %valid_div.2138, %for.body.for.inc_crit_edge ], [ %inc24, %if.then20 ]
  %min_div.1 = phi i16 [ %min_div.0141, %for.body.for.inc_crit_edge ], [ %spec.select127, %if.then20 ]
  %inc41 = add nuw nsw i32 %i.1139, 1
  %exitcond.not = icmp eq i32 %inc41, %i.0.lcssa
  br i1 %exitcond.not, label %for.inc.for.cond.preheader.i94_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.cond.preheader.i94_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i94

for.cond.preheader.i94:                           ; preds = %for.inc.for.cond.preheader.i94_crit_edge, %for.cond.preheader.for.cond.preheader.i94_crit_edge
  %max_div.addr.0.lcssa = phi i32 [ %max_div, %for.cond.preheader.for.cond.preheader.i94_crit_edge ], [ %max_div.addr.2, %for.inc.for.cond.preheader.i94_crit_edge ]
  %min_div.0.lcssa = phi i16 [ 0, %for.cond.preheader.for.cond.preheader.i94_crit_edge ], [ %min_div.1, %for.inc.for.cond.preheader.i94_crit_edge ]
  %min42 = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 5
  %29 = ptrtoint ptr %min42 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %min_div.0.lcssa, ptr %min42, align 4
  %conv43 = trunc i32 %max_div.addr.0.lcssa to i16
  %max44 = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 6
  %30 = ptrtoint ptr %max44 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv43, ptr %max44, align 2
  %table = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 8
  %31 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i, ptr %table, align 4
  %div45.i92 = getelementptr inbounds %struct.clk_div_table, ptr %call8.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %div45.i92 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %div45.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not46.i93 = icmp eq i32 %33, 0
  br i1 %tobool2.not46.i93, label %for.cond.preheader.i94.cleanup.sink.split_crit_edge, label %for.cond.preheader.i94.for.body.i100_crit_edge

for.cond.preheader.i94.for.body.i100_crit_edge:   ; preds = %for.cond.preheader.i94
  br label %for.body.i100

for.cond.preheader.i94.cleanup.sink.split_crit_edge: ; preds = %for.cond.preheader.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.i100:                                    ; preds = %for.body.i100.for.body.i100_crit_edge, %for.cond.preheader.i94.for.body.i100_crit_edge
  %clkt.048.i95 = phi ptr [ %incdec.ptr.i97, %for.body.i100.for.body.i100_crit_edge ], [ %call8.i.i, %for.cond.preheader.i94.for.body.i100_crit_edge ]
  %max_val.047.i96 = phi i32 [ %36, %for.body.i100.for.body.i100_crit_edge ], [ 0, %for.cond.preheader.i94.for.body.i100_crit_edge ]
  %34 = ptrtoint ptr %clkt.048.i95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clkt.048.i95, align 4
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 %max_val.047.i96) #8
  %incdec.ptr.i97 = getelementptr %struct.clk_div_table, ptr %clkt.048.i95, i32 1
  %div.i98 = getelementptr %struct.clk_div_table, ptr %clkt.048.i95, i32 1, i32 1
  %37 = ptrtoint ptr %div.i98 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %div.i98, align 4
  %tobool2.not.i99 = icmp eq i32 %38, 0
  br i1 %tobool2.not.i99, label %for.body.i100.cleanup.sink.split_crit_edge, label %for.body.i100.for.body.i100_crit_edge

for.body.i100.for.body.i100_crit_edge:            ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i100

for.body.i100.cleanup.sink.split_crit_edge:       ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.i100.cleanup.sink.split_crit_edge, %for.cond.preheader.i94.cleanup.sink.split_crit_edge, %if.else.i, %for.body.i.cleanup.sink.split_crit_edge, %for.cond.preheader.i.cleanup.sink.split_crit_edge
  %max_val.2.i.sink153 = phi i32 [ %spec.select41.i, %if.else.i ], [ 0, %for.cond.preheader.i.cleanup.sink.split_crit_edge ], [ 0, %for.cond.preheader.i94.cleanup.sink.split_crit_edge ], [ %9, %for.body.i.cleanup.sink.split_crit_edge ], [ %36, %for.body.i100.cleanup.sink.split_crit_edge ]
  %flags14.i = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 3
  %39 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags14.i, align 1
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool17.not.i = icmp eq i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_val.2.i.sink153)
  %tobool.not.i.i = icmp eq i32 %max_val.2.i.sink153, 0
  %42 = tail call i32 @llvm.ctlz.i32(i32 %max_val.2.i.sink153, i1 true) #8, !range !47
  %sub.i.op.i = xor i32 %42, 31
  %spec.select = select i1 %tobool.not.i.i, i32 65535, i32 %sub.i.op.i
  %mask.0.in.i = select i1 %tobool17.not.i, i32 %max_val.2.i.sink153, i32 %spec.select
  %conv23.i = and i32 %mask.0.in.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.i)
  %tobool.not.i42.i115 = icmp eq i32 %conv23.i, 0
  %43 = tail call i32 @llvm.ctlz.i32(i32 %conv23.i, i1 true) #8, !range !47
  %sub.i43.i116 = sub nuw nsw i32 32, %43
  %sub.i43.op.i117 = shl nsw i32 -1, %sub.i43.i116
  %44 = trunc i32 %sub.i43.op.i117 to i16
  %.op.i118 = xor i16 %44, -1
  %conv26.i119 = select i1 %tobool.not.i42.i115, i16 0, i16 %.op.i118
  %mask27.i120 = getelementptr inbounds %struct.clk_omap_divider, ptr %divider, i32 0, i32 7
  %45 = ptrtoint ptr %mask27.i120 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv26.i119, ptr %mask27.i120, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %while.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_divider_clk_setup(ptr noundef %node) #2 section ".init.text" align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %parent_name.i = alloca ptr, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup11_crit_edge, label %if.end

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ti_clk_divider_populate(ptr noundef %node, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %4 = getelementptr inbounds i8, ptr %init.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i) #8
  %call.i = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #8
  %6 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %parent_name.i, align 4
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 4
  %9 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ti_clk_divider_ops, ptr %ops.i, align 4
  %flags2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %11 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %flags2.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %parent_name..i = select i1 %tobool.not.i, ptr null, ptr %parent_name.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %12 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %parent_name..i, ptr %parent_names.i, align 4
  %tobool3.not.i = icmp ne ptr %call.i, null
  %conv.i = zext i1 %tobool3.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %13 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %init5.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init.i, ptr %init5.i, align 8
  %call8.i = call ptr @ti_clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef %8) #8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %_register_divider.exit.thread, label %if.then7

_register_divider.exit.thread:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  %call8 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call8.i) #8
  %call9 = call i32 @of_ti_clk_autoidle_setup(ptr noundef %node) #8
  br label %cleanup11

cleanup:                                          ; preds = %_register_divider.exit.thread, %if.end.cleanup_crit_edge
  %table = getelementptr inbounds %struct.clk_omap_divider, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %table, align 8
  call void @kfree(ptr noundef %16) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup, %if.then7, %entry.cleanup11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_composite_divider_clk_setup(ptr noundef %node) #2 section ".init.text" align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup9_crit_edge, label %if.end

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ti_clk_divider_populate(ptr noundef %node, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ti_clk_add_component(ptr noundef %node, ptr noundef nonnull %call7.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup9_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.cleanup9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %table = getelementptr inbounds %struct.clk_omap_divider, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 8
  tail call void @kfree(ptr noundef %3) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup, %if.end4.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_latch(ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_clk_divider_populate(ptr noundef %node, ptr noundef %div, ptr nocapture noundef %flags) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %min_div.i = alloca i32, align 4
  %max_div.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !48
  %reg = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 1
  %call = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.2, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %conv = trunc i32 %2 to i8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %.sink = phi i8 [ %conv, %if.then3 ], [ 0, %if.end.if.end5_crit_edge ]
  %3 = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %3, align 4
  %call.i.i57 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i57)
  %tobool7.not = icmp sgt i32 %call.i.i57, -1
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv9 = trunc i32 %6 to i8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5.if.end12_crit_edge
  %.sink66 = phi i8 [ %conv9, %if.then8 ], [ -22, %if.end5.if.end12_crit_edge ]
  %7 = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink66, ptr %7, align 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags, align 4
  %flags13 = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 3
  %10 = ptrtoint ptr %flags13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %flags13, align 1
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags13, align 1
  %13 = or i8 %12, 1
  store i8 %13, ptr %flags13, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  %call.i58 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %tobool.i59.not = icmp eq ptr %call.i58, null
  br i1 %tobool.i59.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags13, align 1
  %16 = or i8 %15, 2
  store i8 %16, ptr %flags13, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  %call.i60 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %tobool.i61.not = icmp eq ptr %call.i60, null
  br i1 %tobool.i61.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or29 = or i32 %18, 4
  store i32 %or29, ptr %flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %call31 = call fastcc i32 @ti_clk_get_div_table(ptr noundef %node, ptr noundef %div) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_div.i) #8
  %19 = ptrtoint ptr %min_div.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %min_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_div.i) #8
  %20 = ptrtoint ptr %max_div.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %max_div.i, align 4
  %table.i = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 8
  %21 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end34
  %div38.i = getelementptr inbounds %struct.clk_div_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %div38.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %div38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9.not39.i = icmp eq i32 %24, 0
  br i1 %tobool9.not39.i, label %for.cond.preheader.i.if.end17.loopexit.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end17.loopexit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.loopexit.i

if.then.i:                                        ; preds = %if.end34
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.10, ptr noundef nonnull %min_div.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool1.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %min_div.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %min_div.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %call.i.i35.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.11, ptr noundef nonnull %max_div.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i35.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i35.i, -1
  br i1 %tobool4.not.i, label %if.end.i.if.end17.i_crit_edge, label %do.end.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %node) #15
  br label %_populate_divider_min_max.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %26 = phi i32 [ %32, %for.body.i.for.body.i_crit_edge ], [ %24, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkt.040.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %22, %for.cond.preheader.i.for.body.i_crit_edge ]
  %27 = phi i32 [ %29, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %28 = phi i32 [ %30, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %29 = call i32 @llvm.umax.i32(i32 %26, i32 %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool13.not.i = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp14.i = icmp ult i32 %26, %28
  %or.cond.i = select i1 %tobool13.not.i, i1 true, i1 %cmp14.i
  %30 = select i1 %or.cond.i, i32 %26, i32 %28
  %incdec.ptr.i = getelementptr %struct.clk_div_table, ptr %clkt.040.i, i32 1
  %div.i = getelementptr %struct.clk_div_table, ptr %clkt.040.i, i32 1, i32 1
  %31 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %div.i, align 4
  %tobool9.not.i = icmp eq i32 %32, 0
  br i1 %tobool9.not.i, label %for.body.i.if.end17.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end17.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.loopexit.i

if.end17.loopexit.i:                              ; preds = %for.body.i.if.end17.loopexit.i_crit_edge, %for.cond.preheader.i.if.end17.loopexit.i_crit_edge
  %.lcssa37.i = phi i32 [ 0, %for.cond.preheader.i.if.end17.loopexit.i_crit_edge ], [ %30, %for.body.i.if.end17.loopexit.i_crit_edge ]
  %.lcssa36.i = phi i32 [ 0, %for.cond.preheader.i.if.end17.loopexit.i_crit_edge ], [ %29, %for.body.i.if.end17.loopexit.i_crit_edge ]
  %33 = ptrtoint ptr %max_div.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.lcssa36.i, ptr %max_div.i, align 4
  %34 = ptrtoint ptr %min_div.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.lcssa37.i, ptr %min_div.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17.loopexit.i, %if.end.i.if.end17.i_crit_edge
  %35 = ptrtoint ptr %min_div.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min_div.i, align 4
  %conv.i = trunc i32 %36 to i16
  %min.i = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 5
  %37 = ptrtoint ptr %min.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %min.i, align 4
  %38 = ptrtoint ptr %max_div.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_div.i, align 4
  %conv18.i = trunc i32 %39 to i16
  %max.i = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 6
  %40 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv18.i, ptr %max.i, align 2
  %41 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %table.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end17.i
  %div45.i.i = getelementptr inbounds %struct.clk_div_table, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %div45.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %div45.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not46.i.i = icmp eq i32 %44, 0
  br i1 %tobool2.not46.i.i, label %for.cond.preheader.i.i._setup_mask.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i._setup_mask.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_setup_mask.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %clkt.048.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %42, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %max_val.047.i.i = phi i32 [ %47, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %45 = ptrtoint ptr %clkt.048.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clkt.048.i.i, align 4
  %47 = call i32 @llvm.umax.i32(i32 %46, i32 %max_val.047.i.i) #8
  %incdec.ptr.i.i = getelementptr %struct.clk_div_table, ptr %clkt.048.i.i, i32 1
  %div.i.i = getelementptr %struct.clk_div_table, ptr %clkt.048.i.i, i32 1, i32 1
  %48 = ptrtoint ptr %div.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %div.i.i, align 4
  %tobool2.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool2.not.i.i, label %for.body.i.i._setup_mask.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i._setup_mask.exit.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_setup_mask.exit.i

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = and i32 %39, 65535
  %50 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags13, align 1
  %52 = and i8 %51, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %53 = icmp eq i8 %52, 0
  %dec.i.i = sext i1 %53 to i32
  %spec.select41.i.i = add nsw i32 %conv.i.i, %dec.i.i
  br label %_setup_mask.exit.i

_setup_mask.exit.i:                               ; preds = %if.else.i.i, %for.body.i.i._setup_mask.exit.i_crit_edge, %for.cond.preheader.i.i._setup_mask.exit.i_crit_edge
  %max_val.2.i.i = phi i32 [ %spec.select41.i.i, %if.else.i.i ], [ 0, %for.cond.preheader.i.i._setup_mask.exit.i_crit_edge ], [ %47, %for.body.i.i._setup_mask.exit.i_crit_edge ]
  %54 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags13, align 1
  %56 = and i8 %55, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool17.not.i.i = icmp eq i8 %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_val.2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %max_val.2.i.i, 0
  %57 = call i32 @llvm.ctlz.i32(i32 %max_val.2.i.i, i1 true) #8, !range !47
  %sub.i.op.i.i = xor i32 %57, 31
  %spec.select = select i1 %tobool.not.i.i.i, i32 65535, i32 %sub.i.op.i.i
  %mask.0.in.i.i = select i1 %tobool17.not.i.i, i32 %max_val.2.i.i, i32 %spec.select
  %conv23.i.i = and i32 %mask.0.in.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.i.i)
  %tobool.not.i42.i.i = icmp eq i32 %conv23.i.i, 0
  %58 = call i32 @llvm.ctlz.i32(i32 %conv23.i.i, i1 true) #8, !range !47
  %sub.i43.i.i = sub nuw nsw i32 32, %58
  %sub.i43.op.i.i = shl nsw i32 -1, %sub.i43.i.i
  %59 = trunc i32 %sub.i43.op.i.i to i16
  %.op.i.i = xor i16 %59, -1
  %conv26.i.i = select i1 %tobool.not.i42.i.i, i16 0, i16 %.op.i.i
  %mask27.i.i = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 7
  %60 = ptrtoint ptr %mask27.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv26.i.i, ptr %mask27.i.i, align 4
  br label %_populate_divider_min_max.exit

_populate_divider_min_max.exit:                   ; preds = %_setup_mask.exit.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %_setup_mask.exit.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_div.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_div.i) #8
  br label %cleanup

cleanup:                                          ; preds = %_populate_divider_min_max.exit, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %_populate_divider_min_max.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_ti_clk_autoidle_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_clk_get_div_table(ptr noundef %node, ptr nocapture noundef writeonly %div) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  %num_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_div) #8
  %1 = ptrtoint ptr %num_div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_div, align 4, !annotation !48
  %call = call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.7, ptr noundef nonnull %num_div) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %num_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_div, align 4
  %div152 = lshr i32 %3, 2
  store i32 %div152, ptr %num_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp55.not = icmp ult i32 %3, 4
  br i1 %cmp55.not, label %if.end.do.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.057 = phi i32 [ %inc6, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %valid_div.056 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call2 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.7, i32 noundef %i.057, ptr noundef nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp ne i32 %5, 0
  %inc = zext i1 %tobool3.not to i32
  %spec.select = add i32 %valid_div.056, %inc
  %inc6 = add nuw i32 %i.057, 1
  %6 = ptrtoint ptr %num_div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_div, align 4
  %cmp = icmp ult i32 %inc6, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool7.not = icmp eq i32 %spec.select, 0
  br i1 %tobool7.not, label %for.end.do.end_crit_edge, label %if.end10

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %if.end.do.end_crit_edge
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %node) #15
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %add = add i32 %spec.select, 1
  %8 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #8
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end10.cleanup_crit_edge, label %if.end7.i.i, !prof !44

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end10
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #12
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond15.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond15.preheader:                             ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %num_div to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1658.not = icmp eq i32 %12, 0
  br i1 %cmp1658.not, label %for.cond15.preheader.for.end28_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.end28_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.body17:                                       ; preds = %for.inc26.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.160 = phi i32 [ %inc27, %for.inc26.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %valid_div.259 = phi i32 [ %valid_div.3, %for.inc26.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %call18 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.7, i32 noundef %i.160, ptr noundef nonnull %val) #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %for.body17.for.inc26_crit_edge, label %if.then20

for.body17.for.inc26_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc26

if.then20:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.clk_div_table, ptr %call8.i.i, i32 %valid_div.259
  %div21 = getelementptr %struct.clk_div_table, ptr %call8.i.i, i32 %valid_div.259, i32 1
  %15 = ptrtoint ptr %div21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %div21, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.160, ptr %arrayidx, align 8
  %inc24 = add i32 %valid_div.259, 1
  br label %for.inc26

for.inc26:                                        ; preds = %if.then20, %for.body17.for.inc26_crit_edge
  %valid_div.3 = phi i32 [ %inc24, %if.then20 ], [ %valid_div.259, %for.body17.for.inc26_crit_edge ]
  %inc27 = add nuw i32 %i.160, 1
  %17 = ptrtoint ptr %num_div to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_div, align 4
  %cmp16 = icmp ult i32 %inc27, %18
  br i1 %cmp16, label %for.inc26.for.body17_crit_edge, label %for.inc26.for.end28_crit_edge

for.inc26.for.end28_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.inc26.for.body17_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.end28:                                        ; preds = %for.inc26.for.end28_crit_edge, %for.cond15.preheader.for.end28_crit_edge
  %table29 = getelementptr inbounds %struct.clk_omap_divider, ptr %div, i32 0, i32 8
  %19 = ptrtoint ptr %table29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %table29, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end28, %if.end7.i.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end28 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_div) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @ti_clk_divider_ops, !1, !"ti_clk_divider_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/divider.c", i32 308, i32 22}
!2 = !{ptr @__of_table_divider_clk, !3, !"__of_table_divider_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/divider.c", i32 551, i32 1}
!4 = !{ptr @__of_table_ti_composite_divider_clk, !5, !"__of_table_ti_composite_divider_clk", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/divider.c", i32 572, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/divider.c", i32 112, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/ti/divider.c", i32 492, i32 34}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/ti/divider.c", i32 497, i32 34}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/ti/divider.c", i32 505, i32 34}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/ti/divider.c", i32 508, i32 34}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/ti/divider.c", i32 511, i32 34}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/ti/divider.c", i32 405, i32 34}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/ti/divider.c", i32 422, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ti_clk_get_div_table._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ti_clk_get_div_table._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ti/divider.c", i32 456, i32 34}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/divider.c", i32 459, i32 34}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/divider.c", i32 460, i32 4}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @_populate_divider_min_max._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @_populate_divider_min_max._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2148952978, i64 2148953258, i64 2148953592, i64 2148953926}
!47 = !{i32 0, i32 33}
!48 = !{!"auto-init"}
