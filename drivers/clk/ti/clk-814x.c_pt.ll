; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clk-814x.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-814x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@dm814_default_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dm814_alwon_clkctrl_regs = internal constant [21 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 336, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 340, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 344, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 348, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 352, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 356, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 360, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 396, ptr null, i16 160, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 400, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 464, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 476, ptr null, i16 32, ptr @.str.4, ptr null }, %struct.omap_clkctrl_reg_data { i16 496, ptr null, i16 160, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 500, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 504, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 508, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 512, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 516, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 540, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 544, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 548, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dm814_alwon_ethernet_clkctrl_regs = internal constant [1 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.7, ptr null }], section ".init.rodata", align 4
@dm814_clkctrl_data = dso_local local_unnamed_addr constant [4 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1209533696, ptr @dm814_default_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1209537536, ptr @dm814_alwon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1209538004, ptr @dm814_alwon_ethernet_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@__initcall__kmod_clk_814x__183_78_dm814x_adpll_early_init1 = internal global ptr @dm814x_adpll_early_init, section ".initcall1.init", align 4
@__initcall__kmod_clk_814x__184_107_dm814x_adpll_enable_init_clocks2 = internal global ptr @dm814x_adpll_enable_init_clocks, section ".initcall2.init", align 4
@dm814_clks = internal global { [2 x %struct.ti_dt_clk], [40 x i8] } { [2 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.16, ptr null, ptr null }, ptr @.str.17 }, %struct.ti_dt_clk zeroinitializer], [40 x i8] zeroinitializer }, align 32
@timer_clocks_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll260dcoclkldo\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysclk10_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysclk6_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysclk18_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mpu_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysclk4_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysclk8_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpsw_125mhz_gclk\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pllss\00", [26 x i8] zeroinitializer }, align 32
@dm814x_adpll_early_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Could not find node for plls\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm814x_adpll_early_init\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/ti/clk-814x.c\00", [38 x i8] zeroinitializer }, align 32
@dm814x_adpll_early_init._entry_ptr = internal global ptr @dm814x_adpll_early_init._entry, section ".printk_index", align 4
@init_clocks = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not find init clock %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not enable init clock %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll040clkout\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll290clkout\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_sys_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"devosc_ck\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"dm814_clks\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 53, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"timer_clocks_initialized\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 13, i32 49 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 18, i32 44 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 21, i32 44 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 25, i32 64 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 28, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 30, i32 43 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 35, i32 43 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 43, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 67, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 69, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"init_clocks\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 80, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 96, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 100, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 81, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 82, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [29 x i8] c"../drivers/clk/ti/clk-814x.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 54, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_clk_814x__183_78_dm814x_adpll_early_init1, ptr @__initcall__kmod_clk_814x__184_107_dm814x_adpll_enable_init_clocks2, ptr @dm814x_adpll_early_init._entry, ptr @dm814x_adpll_early_init._entry_ptr, ptr @dm814_clks, ptr @timer_clocks_initialized, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @init_clocks, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm814_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_clocks_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm814x_adpll_early_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm814x_adpll_early_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %.b8 = load i1, ptr @timer_clocks_initialized, align 1
  br i1 %.b8, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.8) #3
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 @of_platform_populate(ptr noundef nonnull %call, ptr noundef null, ptr noundef null, ptr noundef null) #3
  tail call void @of_node_put(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm814x_adpll_enable_init_clocks() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %.b72 = load i1, ptr @timer_clocks_initialized, align 1
  br i1 %.b72, label %entry.for.body_crit_edge, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup63

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %cmp = phi i1 [ false, %cleanup.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %i.075 = phi i32 [ 1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr @init_clocks, i32 0, i32 %i.075
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef %1) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end26, !prof !62

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %1) #3
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.do.end45_crit_edge

if.end26.do.end45_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end45

if.end.i:                                         ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %call) #3
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i, %if.end26.do.end45_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 101, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end.i.cleanup_crit_edge, %do.end
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup63_crit_edge

cleanup.cleanup63_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup63

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup63:                                        ; preds = %cleanup.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup63_crit_edge ], [ 0, %cleanup.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm814x_dt_clk_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @dm814_clks) #3
  %call = tail call i32 @omap2_clk_disable_autoidle_all() #3
  tail call void @ti_clk_add_aliases() #3
  tail call void @omap2_clk_enable_init_clocks(ptr noundef null, i8 noundef zeroext 0) #3
  store i1 true, ptr @timer_clocks_initialized, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @dm814_clkctrl_data, !1, !"dm814_clkctrl_data", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clk-814x.c", i32 46, i32 32}
!2 = !{ptr @__initcall__kmod_clk_814x__183_78_dm814x_adpll_early_init1, !3, !"__initcall__kmod_clk_814x__183_78_dm814x_adpll_early_init1", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clk-814x.c", i32 78, i32 1}
!4 = !{ptr @__initcall__kmod_clk_814x__184_107_dm814x_adpll_enable_init_clocks2, !5, !"__initcall__kmod_clk_814x__184_107_dm814x_adpll_enable_init_clocks2", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clk-814x.c", i32 107, i32 1}
!6 = distinct !{null, !7, !"timer_clocks_initialized", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clk-814x.c", i32 58, i32 13}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/clk-814x.c", i32 13, i32 49}
!10 = !{ptr @dm814_default_clkctrl_regs, !11, !"dm814_default_clkctrl_regs", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clk-814x.c", i32 12, i32 43}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clk-814x.c", i32 18, i32 44}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/clk-814x.c", i32 21, i32 44}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clk-814x.c", i32 25, i32 64}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/clk-814x.c", i32 28, i32 42}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/clk-814x.c", i32 30, i32 43}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/clk-814x.c", i32 35, i32 43}
!24 = !{ptr @dm814_alwon_clkctrl_regs, !25, !"dm814_alwon_clkctrl_regs", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/clk-814x.c", i32 17, i32 43}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ti/clk-814x.c", i32 43, i32 26}
!28 = !{ptr @dm814_alwon_ethernet_clkctrl_regs, !29, !"dm814_alwon_ethernet_clkctrl_regs", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/clk-814x.c", i32 42, i32 23}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/clk-814x.c", i32 67, i32 34}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ti/clk-814x.c", i32 69, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dm814x_adpll_early_init._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @dm814x_adpll_early_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/clk-814x.c", i32 96, i32 7}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/clk-814x.c", i32 100, i32 7}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/clk-814x.c", i32 81, i32 2}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/clk-814x.c", i32 82, i32 2}
!46 = !{ptr @init_clocks, !47, !"init_clocks", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/clk-814x.c", i32 80, i32 27}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/clk-814x.c", i32 54, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dm814_clks, !52, !"dm814_clks", i1 false, i1 false}
!52 = !{!"../drivers/clk/ti/clk-814x.c", i32 53, i32 25}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
