; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/composite.c_pt.bc'
source_filename = "../drivers/clk/ti/composite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_hw_omap_comp = type { %struct.clk_hw, [3 x ptr], [3 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.component_clk = type { i32, ptr, ptr, i32, ptr, %struct.list_head }

@__of_table_ti_composite_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_clk_setup }, section "__clk_of_table", align 4
@ti_clk_add_component._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: component-clock %pOFn must have parent(s)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_clk_add_component\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/ti/composite.c\00", [37 x i8] zeroinitializer }, align 32
@ti_clk_add_component._entry_ptr = internal global ptr @ti_clk_add_component._entry, section ".printk_index", align 4
@component_clks = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @component_clks, ptr @component_clks }, [24 x i8] zeroinitializer }, align 32
@of_ti_composite_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: composite clk %pOFn must have component(s)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"of_ti_composite_clk_setup\00", [38 x i8] zeroinitializer }, align 32
@of_ti_composite_clk_setup._entry_ptr = internal global ptr @of_ti_composite_clk_setup._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@_register_composite.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"composite\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_register_composite\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"component %s not ready for %pOFn, retry\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: component %s not ready for %pOFn, retry\0A\00", [51 x i8] zeroinitializer }, align 32
@_register_composite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: duplicate component types for %pOFn (%s)!\0A\00", [47 x i8] zeroinitializer }, align 32
@_register_composite._entry_ptr = internal global ptr @_register_composite._entry, section ".printk_index", align 4
@component_clk_types = internal unnamed_addr constant [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], section ".init.rodata", align 4
@_register_composite._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: %s: no parents found for %pOFn!\0A\00", [57 x i8] zeroinitializer }, align 32
@_register_composite._entry_ptr.14 = internal global ptr @_register_composite._entry.12, section ".printk_index", align 4
@ti_clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@ti_composite_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_composite_recalc_rate, ptr @ti_composite_round_rate, ptr null, ptr null, ptr null, ptr @ti_composite_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ti_composite_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_dflt_clk_enable, ptr @omap2_dflt_clk_disable, ptr @omap2_dflt_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gate\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"divider\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@ti_clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 252, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"component_clks\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 74, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 216, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 81, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 81, i32 50 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 138, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 147, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 171, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"ti_composite_divider_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 49, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"ti_composite_gate_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 55, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 71, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 71, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [30 x i8] c"../drivers/clk/ti/composite.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 71, i32 21 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__of_table_ti_composite_clock, ptr @_register_composite._entry, ptr @_register_composite._entry.12, ptr @_register_composite._entry_ptr, ptr @_register_composite._entry_ptr.14, ptr @of_ti_composite_clk_setup._entry, ptr @of_ti_composite_clk_setup._entry_ptr, ptr @ti_clk_add_component._entry, ptr @ti_clk_add_component._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @component_clks, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ti_composite_divider_ops, ptr @ti_composite_gate_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_add_component._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @component_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_composite_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_register_composite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_register_composite._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_composite_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_composite_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_composite_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %clkspec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %node) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %_get_component_node.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %_get_component_node.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i) #8
  %1 = call ptr @memset(ptr %clkspec.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef -1, i32 noundef %i.019, ptr noundef nonnull %clkspec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body._get_component_node.exit_crit_edge

for.body._get_component_node.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %_get_component_node.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %clkspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkspec.i, align 4
  br label %_get_component_node.exit

_get_component_node.exit:                         ; preds = %if.end.i, %for.body._get_component_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %for.body._get_component_node.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #8
  %arrayidx = getelementptr %struct.clk_hw_omap_comp, ptr %call7.i.i, i32 0, i32 1, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %retval.0.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %_get_component_node.exit.for.body_crit_edge

_get_component_node.exit.for.body_crit_edge:      ; preds = %_get_component_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %_get_component_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_register_composite(ptr noundef nonnull %call7.i.i, ptr noundef %node) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_clk_add_component(ptr noundef %node, ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %node) #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %mul = shl i32 %call, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #14
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %call6 = tail call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %call9.i.i, i32 noundef %call) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #12
  %tobool8.not = icmp eq ptr %call7.i.i38, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %1 = ptrtoint ptr %call7.i.i38 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %call7.i.i38, align 8
  %parent_names12 = getelementptr inbounds %struct.component_clk, ptr %call7.i.i38, i32 0, i32 1
  %2 = ptrtoint ptr %parent_names12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %parent_names12, align 4
  %hw13 = getelementptr inbounds %struct.component_clk, ptr %call7.i.i38, i32 0, i32 4
  %3 = ptrtoint ptr %hw13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hw, ptr %hw13, align 8
  %node14 = getelementptr inbounds %struct.component_clk, ptr %call7.i.i38, i32 0, i32 2
  %4 = ptrtoint ptr %node14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node, ptr %node14, align 8
  %type15 = getelementptr inbounds %struct.component_clk, ptr %call7.i.i38, i32 0, i32 3
  %5 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type, ptr %type15, align 4
  %link = getelementptr inbounds %struct.component_clk, ptr %call7.i.i38, i32 0, i32 5
  %6 = load ptr, ptr @component_clks, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef nonnull @component_clks, ptr noundef %6) #8
  br i1 %call.i.i, label %if.end.i.i41, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i41:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.component_clk, ptr %call7.i.i38, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @component_clks, ptr %prev3.i.i, align 8
  store volatile ptr %link, ptr @component_clks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i41, %if.end10.cleanup_crit_edge, %if.then9, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %if.then9 ], [ -22, %do.end ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end.i.i41 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @_register_composite(ptr noundef %user, ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0189 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_omap_comp, ptr %user, i32 0, i32 1, i32 %i.0189
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @component_clks, %for.body.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @component_clks
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %node1.i = getelementptr i8, ptr %.pn.i, i32 -12
  %3 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node1.i, align 4
  %cmp2.i = icmp eq ptr %4, %1
  br i1 %cmp2.i, label %_lookup_component.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

_lookup_component.exit:                           ; preds = %for.body.i
  %comp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %tobool3.not = icmp eq ptr %comp.0.le.i, null
  br i1 %tobool3.not, label %_lookup_component.exit.do.body_crit_edge, label %if.end18

_lookup_component.exit.do.body_crit_edge:         ; preds = %_lookup_component.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %_lookup_component.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_register_composite.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_register_composite, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !54

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_register_composite.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %8, ptr noundef %node) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call14 = tail call i32 @ti_clk_retry_init(ptr noundef %node, ptr noundef %user, ptr noundef nonnull @_register_composite) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end.cleanup91_crit_edge, label %do.end.for.body75.preheader_crit_edge

do.end.for.body75.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body75.preheader

do.end.cleanup91_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end18:                                         ; preds = %_lookup_component.exit
  %type = getelementptr i8, ptr %.pn.i, i32 -8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %arrayidx19 = getelementptr %struct.clk_hw_omap_comp, ptr %user, i32 0, i32 2, i32 %10
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx19, align 4
  %cmp20.not = icmp eq ptr %12, null
  br i1 %cmp20.not, label %if.end29, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx27 = getelementptr [3 x ptr], ptr @component_clk_types, i32 0, i32 %10
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx27, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef %node, ptr noundef %14) #11
  br label %for.body75.preheader

if.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %comp.0.le.i, ptr %arrayidx19, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0189, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.body37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.body37_crit_edge:                     ; preds = %for.inc
  br label %for.body37

for.body37:                                       ; preds = %for.inc49.for.body37_crit_edge, %for.inc.for.body37_crit_edge
  %i.1190 = phi i32 [ %dec, %for.inc49.for.body37_crit_edge ], [ 2, %for.inc.for.body37_crit_edge ]
  %arrayidx39 = getelementptr %struct.clk_hw_omap_comp, ptr %user, i32 0, i32 2, i32 %i.1190
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %18, null
  br i1 %tobool40.not, label %for.body37.for.inc49_crit_edge, label %if.end42

for.body37.for.inc49_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc49

if.end42:                                         ; preds = %for.body37
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool44.not = icmp eq i32 %20, 0
  br i1 %tobool44.not, label %if.end42.for.inc49_crit_edge, label %if.end58

if.end42.for.inc49_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc49

for.inc49:                                        ; preds = %if.end42.for.inc49_crit_edge, %for.body37.for.inc49_crit_edge
  %dec = add nsw i32 %i.1190, -1
  %cmp36.not = icmp eq i32 %i.1190, 0
  br i1 %cmp36.not, label %do.end55, label %for.inc49.for.body37_crit_edge

for.inc49.for.body37_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

do.end55:                                         ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.8, ptr noundef %node) #11
  br label %for.body75.preheader

if.end58:                                         ; preds = %if.end42
  %parent_names47 = getelementptr inbounds %struct.component_clk, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %parent_names47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_names47, align 4
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node, align 4
  %tobool.not.i = icmp eq ptr %user, null
  br i1 %tobool.not.i, label %if.end58._get_hw.exit166_crit_edge, label %if.end.i

if.end58._get_hw.exit166_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %_get_hw.exit166

if.end.i:                                         ; preds = %if.end58
  %arrayidx.i = getelementptr %struct.clk_hw_omap_comp, ptr %user, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %if.end.i.if.end.i154_crit_edge, label %if.end3.i

if.end.i.if.end.i154_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i154

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %hw.i = getelementptr inbounds %struct.component_clk, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 4
  br label %if.end.i154

if.end.i154:                                      ; preds = %if.end3.i, %if.end.i.if.end.i154_crit_edge
  %retval.0.i150.ph = phi ptr [ null, %if.end.i.if.end.i154_crit_edge ], [ %28, %if.end3.i ]
  %arrayidx.i152 = getelementptr %struct.clk_hw_omap_comp, ptr %user, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i152, align 4
  %tobool1.not.i153 = icmp eq ptr %30, null
  br i1 %tobool1.not.i153, label %if.end.i154.if.end.i162_crit_edge, label %if.end3.i156

if.end.i154.if.end.i162_crit_edge:                ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i162

if.end3.i156:                                     ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  %hw.i155 = getelementptr inbounds %struct.component_clk, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %hw.i155 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw.i155, align 4
  br label %if.end.i162

if.end.i162:                                      ; preds = %if.end3.i156, %if.end.i154.if.end.i162_crit_edge
  %retval.0.i157.ph = phi ptr [ null, %if.end.i154.if.end.i162_crit_edge ], [ %32, %if.end3.i156 ]
  %arrayidx.i160 = getelementptr %struct.clk_hw_omap_comp, ptr %user, i32 0, i32 2, i32 0
  %33 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i160, align 4
  %tobool1.not.i161 = icmp eq ptr %34, null
  br i1 %tobool1.not.i161, label %if.end.i162._get_hw.exit166_crit_edge, label %if.end3.i164

if.end.i162._get_hw.exit166_crit_edge:            ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %_get_hw.exit166

if.end3.i164:                                     ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  %hw.i163 = getelementptr inbounds %struct.component_clk, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %hw.i163 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i163, align 4
  br label %_get_hw.exit166

_get_hw.exit166:                                  ; preds = %if.end3.i164, %if.end.i162._get_hw.exit166_crit_edge, %if.end58._get_hw.exit166_crit_edge
  %retval.0.i157181 = phi ptr [ %retval.0.i157.ph, %if.end3.i164 ], [ %retval.0.i157.ph, %if.end.i162._get_hw.exit166_crit_edge ], [ null, %if.end58._get_hw.exit166_crit_edge ]
  %retval.0.i150175179 = phi ptr [ %retval.0.i150.ph, %if.end3.i164 ], [ %retval.0.i150.ph, %if.end.i162._get_hw.exit166_crit_edge ], [ null, %if.end58._get_hw.exit166_crit_edge ]
  %retval.0.i165 = phi ptr [ %36, %if.end3.i164 ], [ null, %if.end.i162._get_hw.exit166_crit_edge ], [ null, %if.end58._get_hw.exit166_crit_edge ]
  %call63 = tail call ptr @clk_register_composite(ptr noundef null, ptr noundef %24, ptr noundef %22, i32 noundef %20, ptr noundef %retval.0.i150175179, ptr noundef nonnull @ti_clk_mux_ops, ptr noundef %retval.0.i157181, ptr noundef nonnull @ti_composite_divider_ops, ptr noundef %retval.0.i165, ptr noundef nonnull @ti_composite_gate_ops, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_get_hw.exit166.for.body75.preheader_crit_edge, label %if.then65

_get_hw.exit166.for.body75.preheader_crit_edge:   ; preds = %_get_hw.exit166
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body75.preheader

if.then65:                                        ; preds = %_get_hw.exit166
  %37 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %node, align 4
  %call67 = tail call i32 @ti_clk_add_alias(ptr noundef null, ptr noundef %call63, ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unregister(ptr noundef %call63) #8
  br label %for.body75.preheader

if.end70:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call63) #8
  br label %for.body75.preheader

for.body75.preheader:                             ; preds = %if.end70, %if.then69, %_get_hw.exit166.for.body75.preheader_crit_edge, %do.end55, %do.end24, %do.end.for.body75.preheader_crit_edge
  br label %for.body75

for.body75:                                       ; preds = %for.inc88.for.body75_crit_edge, %for.body75.preheader
  %i.2191 = phi i32 [ %inc89, %for.inc88.for.body75_crit_edge ], [ 0, %for.body75.preheader ]
  %arrayidx77 = getelementptr %struct.clk_hw_omap_comp, ptr %user, i32 0, i32 2, i32 %i.2191
  %39 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %40, null
  br i1 %tobool78.not, label %for.body75.for.inc88_crit_edge, label %if.end80

for.body75.for.inc88_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

if.end80:                                         ; preds = %for.body75
  %link = getelementptr inbounds %struct.component_clk, ptr %40, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end80.list_del.exit_crit_edge

if.end80.list_del.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.component_clk, ptr %40, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end80.list_del.exit_crit_edge
  %47 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.component_clk, ptr %40, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %49 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx77, align 4
  %parent_names85 = getelementptr inbounds %struct.component_clk, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %parent_names85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent_names85, align 4
  tail call void @kfree(ptr noundef %52) #8
  %53 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx77, align 4
  tail call void @kfree(ptr noundef %54) #8
  br label %for.inc88

for.inc88:                                        ; preds = %list_del.exit, %for.body75.for.inc88_crit_edge
  %inc89 = add nuw nsw i32 %i.2191, 1
  %exitcond201.not = icmp eq i32 %inc89, 3
  br i1 %exitcond201.not, label %for.end90, label %for.inc88.for.body75_crit_edge

for.inc88.for.body75_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body75

for.end90:                                        ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %user) #8
  br label %cleanup91

cleanup91:                                        ; preds = %for.end90, %do.end.cleanup91_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_composite_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @ti_clk_divider_ops, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @ti_clk_divider_ops, i32 0, i32 10), align 4
  %call = tail call i32 %0(ptr noundef %hw, i32 noundef %parent_rate) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_composite_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_composite_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_dflt_clk_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_is_enabled(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__of_table_ti_composite_clock, !1, !"__of_table_ti_composite_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/composite.c", i32 230, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/composite.c", i32 252, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ti_clk_add_component._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ti_clk_add_component._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/composite.c", i32 216, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @of_ti_composite_clk_setup._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @of_ti_composite_clk_setup._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/ti/composite.c", i32 81, i32 40}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/ti/composite.c", i32 81, i32 50}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/ti/composite.c", i32 138, i32 4}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @_register_composite.__UNIQUE_ID_ddebug175, !18, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!22 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/ti/composite.c", i32 147, i32 4}
!25 = !{ptr @_register_composite._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @_register_composite._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/ti/composite.c", i32 171, i32 3}
!29 = !{ptr @_register_composite._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @_register_composite._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/ti/composite.c", i32 71, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/ti/composite.c", i32 71, i32 10}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/ti/composite.c", i32 71, i32 21}
!37 = !{ptr @component_clk_types, !38, !"component_clk_types", i1 false, i1 false}
!38 = !{!"../drivers/clk/ti/composite.c", i32 70, i32 27}
!39 = !{ptr @ti_composite_divider_ops, !40, !"ti_composite_divider_ops", i1 false, i1 false}
!40 = !{!"../drivers/clk/ti/composite.c", i32 49, i32 29}
!41 = !{ptr @ti_composite_gate_ops, !42, !"ti_composite_gate_ops", i1 false, i1 false}
!42 = !{!"../drivers/clk/ti/composite.c", i32 55, i32 29}
!43 = !{ptr @component_clks, !44, !"component_clks", i1 false, i1 false}
!44 = !{!"../drivers/clk/ti/composite.c", i32 74, i32 8}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148921574, i64 2148921579, i64 2148921592, i64 2148921636, i64 2148921670, i64 2148921691}
