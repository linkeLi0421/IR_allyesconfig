; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/gate.c_pt.bc'
source_filename = "../drivers/clk/ti/gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_omap_divider = type { %struct.clk_hw, %struct.clk_omap_reg, i8, i8, i8, i16, i16, i16, ptr, i32 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@omap_gate_clk_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_dflt_clk_enable, ptr @omap2_dflt_clk_disable, ptr @omap2_dflt_clk_is_enabled, ptr null, ptr null, ptr @clk_gate_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__of_table_ti_composite_no_wait_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-no-wait-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_no_wait_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_interface_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_clkdm_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clkdm-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_clkdm_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_hsdiv_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,hsdiv-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_hsdiv_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_wait_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wait-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_wait_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_am35xx_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am35xx-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am35xx_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_dss_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dss-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_dss_gate_clk_setup }, section "__clk_of_table", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,bit-shift\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clkhwops_iclk_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@omap_gate_clkdm_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_clkops_enable_clkdm, ptr @omap2_clkops_disable_clkdm, ptr null, ptr null, ptr null, ptr @clk_gate_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@_of_ti_gate_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: %pOFn must have 1 parent\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_of_ti_gate_clk_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/clk/ti/gate.c\00", [42 x i8] zeroinitializer }, align 32
@_of_ti_gate_clk_setup._entry_ptr = internal global ptr @_of_ti_gate_clk_setup._entry, section ".printk_index", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,set-rate-parent\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,set-bit-to-disable\00", [42 x i8] zeroinitializer }, align 32
@omap_gate_clk_hsdiv_restore_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap36xx_gate_clk_enable_with_hsdiv_restore, ptr @omap2_dflt_clk_disable, ptr @omap2_dflt_clk_is_enabled, ptr null, ptr null, ptr @clk_gate_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@clkhwops_am35xx_ipss_module_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_omap3430es2_dss_usbhost_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"omap_gate_clk_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 39, i32 22 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 188, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"omap_gate_clkdm_clk_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 32, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 155, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 161, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 164, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [32 x i8] c"omap_gate_clk_hsdiv_restore_ops\00", align 1
@___asan_gen_.34 = private constant [25 x i8] c"../drivers/clk/ti/gate.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 47, i32 29 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__of_table_ti_am35xx_gate_clk, ptr @__of_table_ti_clkdm_gate_clk, ptr @__of_table_ti_composite_gate_clk, ptr @__of_table_ti_composite_interface_clk, ptr @__of_table_ti_composite_no_wait_gate_clk, ptr @__of_table_ti_dss_gate_clk, ptr @__of_table_ti_gate_clk, ptr @__of_table_ti_hsdiv_gate_clk, ptr @__of_table_ti_wait_gate_clk, ptr @_of_ti_gate_clk_setup._entry, ptr @_of_ti_gate_clk_setup._entry_ptr, ptr @omap_gate_clk_ops, ptr @.str, ptr @omap_gate_clkdm_clk_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @omap_gate_clk_hsdiv_restore_ops], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gate_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gate_clkdm_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_of_ti_gate_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gate_clk_hsdiv_restore_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_enable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_dflt_clk_disable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_is_enabled(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_gate_restore_context(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_init_clk_clkdm(ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_composite_no_wait_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %node, ptr noundef null) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_composite_interface_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @clkhwops_iclk_wait) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_composite_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @clkhwops_wait) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_clkdm_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @omap_gate_clkdm_clk_ops, ptr noundef null) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_hsdiv_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @omap_gate_clk_hsdiv_restore_ops, ptr noundef nonnull @clkhwops_wait) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef null) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_wait_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef nonnull @clkhwops_wait) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_am35xx_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef nonnull @clkhwops_am35xx_ipss_module_wait) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_dss_gate_clk_setup(ptr noundef %node) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %node, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef nonnull @clkhwops_omap3430es2_dss_usbhost_wait) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %node, ptr noundef %hw_ops) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup10_crit_edge, label %if.end

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.end:                                           ; preds = %entry
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 4
  %call1 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef %enable_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %conv = trunc i32 %3 to i8
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %enable_bit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %enable_bit, align 4
  %ops = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw_ops, ptr %ops, align 8
  %call6 = call i32 @ti_clk_add_component(ptr noundef %node, ptr noundef nonnull %call7.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup10_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.cleanup10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup, %if.end4.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_of_ti_gate_clk_setup(ptr noundef %node, ptr noundef %ops, ptr noundef %hw_ops) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %reg = alloca %struct.clk_omap_reg, align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %reg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !45
  %cmp.not = icmp eq ptr %ops, @omap_gate_clkdm_clk_ops
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %conv = trunc i32 %3 to i8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %enable_bit.0 = phi i8 [ 0, %if.end.if.end6_crit_edge ], [ %conv, %if.then4 ], [ 0, %entry.if.end6_crit_edge ]
  %call7 = call i32 @of_clk_get_parent_count(ptr noundef %node) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 1
  br i1 %cmp8.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %node) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #6
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %call.i46 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %6 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %7 = getelementptr inbounds i8, ptr %init.i, i32 12
  %8 = call ptr @memset(ptr %7, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %_register_gate.exit.thread, label %if.end.i

_register_gate.exit.thread:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %tobool.i47.not = icmp eq ptr %call.i46, null
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool.i.not, i32 0, i32 4
  %init2.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init.i, ptr %init2.i, align 8
  %11 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %init.i, align 4
  %ops4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %12 = ptrtoint ptr %ops4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ops, ptr %ops4.i, align 4
  %enable_reg.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %reg, align 8
  %15 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %enable_reg.i, align 4
  %enable_bit.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %enable_bit.0, ptr %enable_bit.i, align 4
  %ops5.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %ops5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hw_ops, ptr %ops5.i, align 8
  %conv.i = select i1 %tobool.i47.not, i32 0, i32 16
  %flags6.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %flags6.i, align 8
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parent_name.addr.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %num_parents.i, align 4
  %flags7.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %21 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %flags7.i, align 4
  %call9.i = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef %5) #6
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %_register_gate.exit.thread50, label %if.then25

_register_gate.exit.thread50:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %cleanup

if.then25:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %call26 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %_register_gate.exit.thread50, %_register_gate.exit.thread, %do.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkops_enable_clkdm(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clkops_disable_clkdm(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap36xx_gate_clk_enable_with_hsdiv_restore(ptr noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_dflt_clk_enable(ptr noundef %hw) #6
  %call1 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %call2 = tail call ptr @clk_hw_get_parent(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %reg = getelementptr inbounds %struct.clk_omap_divider, ptr %call2, i32 0, i32 1
  %call3 = tail call i32 %2(ptr noundef %reg) #6
  %shift = getelementptr inbounds %struct.clk_omap_divider, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shift, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv
  %xor = xor i32 %shl, %call3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_writel, align 4
  tail call void %7(i32 noundef %xor, ptr noundef %reg) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel5 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %clk_writel5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_writel5, align 4
  tail call void %10(i32 noundef %call3, ptr noundef %reg) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @omap_gate_clk_ops, !1, !"omap_gate_clk_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/gate.c", i32 39, i32 22}
!2 = !{ptr @__of_table_ti_composite_no_wait_gate_clk, !3, !"__of_table_ti_composite_no_wait_gate_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/gate.c", i32 205, i32 1}
!4 = !{ptr @__of_table_ti_composite_interface_clk, !5, !"__of_table_ti_composite_interface_clk", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/gate.c", i32 213, i32 1}
!6 = !{ptr @__of_table_ti_composite_gate_clk, !7, !"__of_table_ti_composite_gate_clk", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/gate.c", i32 221, i32 1}
!8 = !{ptr @__of_table_ti_clkdm_gate_clk, !9, !"__of_table_ti_clkdm_gate_clk", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/gate.c", i32 229, i32 1}
!10 = !{ptr @__of_table_ti_hsdiv_gate_clk, !11, !"__of_table_ti_hsdiv_gate_clk", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/gate.c", i32 237, i32 1}
!12 = !{ptr @__of_table_ti_gate_clk, !13, !"__of_table_ti_gate_clk", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/gate.c", i32 244, i32 1}
!14 = !{ptr @__of_table_ti_wait_gate_clk, !15, !"__of_table_ti_wait_gate_clk", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/gate.c", i32 250, i32 1}
!16 = !{ptr @__of_table_ti_am35xx_gate_clk, !17, !"__of_table_ti_am35xx_gate_clk", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/gate.c", i32 259, i32 1}
!18 = !{ptr @__of_table_ti_dss_gate_clk, !19, !"__of_table_ti_dss_gate_clk", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/gate.c", i32 267, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/gate.c", i32 188, i32 29}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/gate.c", i32 155, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @_of_ti_gate_clk_setup._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @_of_ti_gate_clk_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/gate.c", i32 161, i32 34}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/gate.c", i32 164, i32 34}
!32 = !{ptr @omap_gate_clkdm_clk_ops, !33, !"omap_gate_clkdm_clk_ops", i1 false, i1 false}
!33 = !{!"../drivers/clk/ti/gate.c", i32 32, i32 29}
!34 = !{ptr @omap_gate_clk_hsdiv_restore_ops, !35, !"omap_gate_clk_hsdiv_restore_ops", i1 false, i1 false}
!35 = !{!"../drivers/clk/ti/gate.c", i32 47, i32 29}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
