; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-npcm7xx.c_pt.bc'
source_filename = "../drivers/clk/clk-npcm7xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.npcm7xx_clk_pll_data = type { i32, ptr, ptr, i32, i32 }
%struct.npcm7xx_clk_mux_data = type { i8, i8, ptr, ptr, ptr, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.npcm7xx_clk_div_data = type { i32, i8, i8, ptr, ptr, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.npcm7xx_clk_pll = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_npcm7xx_clk_init = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @npcm7xx_clk_init }, section "__clk_of_table", align 4
@npcm7xx_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%pOFn: failed to get resource, ret %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"npcm7xx_clk_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/clk-npcm7xx.c\00", [38 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry_ptr = internal global ptr @npcm7xx_clk_init._entry, section ".printk_index", align 4
@npcm7xx_plls = internal unnamed_addr constant [4 x %struct.npcm7xx_clk_pll_data] [%struct.npcm7xx_clk_pll_data { i32 12, ptr @.str.25, ptr @.str.26, i32 0, i32 -1 }, %struct.npcm7xx_clk_pll_data { i32 16, ptr @.str.7, ptr @.str.26, i32 0, i32 -1 }, %struct.npcm7xx_clk_pll_data { i32 84, ptr @.str.12, ptr @.str.26, i32 0, i32 -1 }, %struct.npcm7xx_clk_pll_data { i32 96, ptr @.str.27, ptr @.str.26, i32 0, i32 -1 }], section ".init.rodata", align 4
@npcm7xx_clk_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013npcm7xx_clk: Can't register pll\0A\00", [61 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry_ptr.5 = internal global ptr @npcm7xx_clk_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll1_div2\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013npcm7xx_clk: Can't register fixed div\0A\00", [55 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry_ptr.10 = internal global ptr @npcm7xx_clk_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_div2\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013npcm7xx_clk: Can't register div2\0A\00", [60 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry_ptr.15 = internal global ptr @npcm7xx_clk_init._entry.13, section ".printk_index", align 4
@npcm7xx_muxes = internal unnamed_addr constant [11 x %struct.npcm7xx_clk_mux_data] [%struct.npcm7xx_clk_mux_data { i8 0, i8 3, ptr @cpuck_mux_table, ptr @.str.33, ptr @cpuck_mux_parents, i8 4, i32 2048, i32 0 }, %struct.npcm7xx_clk_mux_data { i8 4, i8 3, ptr @pixcksel_mux_table, ptr @.str.34, ptr @pixcksel_mux_parents, i8 2, i32 0, i32 1 }, %struct.npcm7xx_clk_mux_data { i8 6, i8 3, ptr @pll_mux_table, ptr @.str.35, ptr @pll_mux_parents, i8 4, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 8, i8 3, ptr @pll_mux_table, ptr @.str.36, ptr @pll_mux_parents, i8 4, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 10, i8 3, ptr @sucksel_mux_table, ptr @.str.37, ptr @sucksel_mux_parents, i8 2, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 12, i8 3, ptr @mccksel_mux_table, ptr @.str.38, ptr @mccksel_mux_parents, i8 3, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 14, i8 3, ptr @pll_mux_table, ptr @.str.39, ptr @pll_mux_parents, i8 4, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 16, i8 3, ptr @pll_mux_table, ptr @.str.40, ptr @pll_mux_parents, i8 4, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 18, i8 7, ptr @clkoutsel_mux_table, ptr @.str.41, ptr @clkoutsel_mux_parents, i8 5, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 21, i8 3, ptr @gfxmsel_mux_table, ptr @.str.42, ptr @gfxmsel_mux_parents, i8 2, i32 0, i32 -1 }, %struct.npcm7xx_clk_mux_data { i8 23, i8 3, ptr @dvcssel_mux_table, ptr @.str.43, ptr @dvcssel_mux_parents, i8 2, i32 0, i32 -1 }], section ".init.rodata", align 4
@npcm7xx_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013npcm7xx_clk: Can't register mux\0A\00", [61 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry_ptr.18 = internal global ptr @npcm7xx_clk_init._entry.16, section ".printk_index", align 4
@npcm7xx_divs = internal unnamed_addr constant [20 x %struct.npcm7xx_clk_div_data] [%struct.npcm7xx_clk_div_data { i32 8, i8 28, i8 3, ptr @.str.47, ptr @.str.48, i8 2, i32 0, i32 3 }, %struct.npcm7xx_clk_div_data { i32 8, i8 26, i8 2, ptr @.str.49, ptr @.str.50, i8 0, i32 2048, i32 4 }, %struct.npcm7xx_clk_div_data { i32 8, i8 21, i8 5, ptr @.str.48, ptr @.str.39, i8 0, i32 0, i32 5 }, %struct.npcm7xx_clk_div_data { i32 8, i8 16, i8 5, ptr @.str.51, ptr @.str.36, i8 0, i32 0, i32 6 }, %struct.npcm7xx_clk_div_data { i32 8, i8 11, i8 5, ptr @.str.52, ptr @.str.35, i8 0, i32 0, i32 7 }, %struct.npcm7xx_clk_div_data { i32 8, i8 6, i8 5, ptr @.str.53, ptr @.str.49, i8 0, i32 0, i32 8 }, %struct.npcm7xx_clk_div_data { i32 8, i8 2, i8 4, ptr @.str.54, ptr @.str.40, i8 0, i32 0, i32 9 }, %struct.npcm7xx_clk_div_data { i32 8, i8 0, i8 1, ptr @.str.50, ptr @.str.33, i8 2, i32 2048, i32 10 }, %struct.npcm7xx_clk_div_data { i32 44, i8 30, i8 2, ptr @.str.55, ptr @.str.49, i8 2, i32 0, i32 11 }, %struct.npcm7xx_clk_div_data { i32 44, i8 28, i8 2, ptr @.str.56, ptr @.str.49, i8 2, i32 0, i32 12 }, %struct.npcm7xx_clk_div_data { i32 44, i8 26, i8 2, ptr @.str.57, ptr @.str.49, i8 2, i32 0, i32 13 }, %struct.npcm7xx_clk_div_data { i32 44, i8 24, i8 2, ptr @.str.58, ptr @.str.49, i8 2, i32 0, i32 14 }, %struct.npcm7xx_clk_div_data { i32 44, i8 22, i8 2, ptr @.str.59, ptr @.str.49, i8 2, i32 0, i32 15 }, %struct.npcm7xx_clk_div_data { i32 44, i8 16, i8 5, ptr @.str.60, ptr @.str.41, i8 0, i32 0, i32 16 }, %struct.npcm7xx_clk_div_data { i32 44, i8 13, i8 3, ptr @.str.61, ptr @.str.40, i8 0, i32 0, i32 17 }, %struct.npcm7xx_clk_div_data { i32 44, i8 8, i8 5, ptr @.str.62, ptr @.str.37, i8 0, i32 0, i32 18 }, %struct.npcm7xx_clk_div_data { i32 44, i8 4, i8 4, ptr @.str.63, ptr @.str.37, i8 0, i32 0, i32 19 }, %struct.npcm7xx_clk_div_data { i32 44, i8 0, i8 4, ptr @.str.64, ptr @.str.35, i8 0, i32 0, i32 20 }, %struct.npcm7xx_clk_div_data { i32 88, i8 6, i8 5, ptr @.str.65, ptr @.str.49, i8 0, i32 0, i32 21 }, %struct.npcm7xx_clk_div_data { i32 88, i8 1, i8 5, ptr @.str.66, ptr @.str.49, i8 0, i32 0, i32 22 }], section ".init.rodata", align 4
@npcm7xx_clk_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013npcm7xx_clk: Can't register div table\0A\00", [55 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry_ptr.21 = internal global ptr @npcm7xx_clk_init._entry.19, section ".printk_index", align 4
@npcm7xx_clk_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to add DT provider: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@npcm7xx_clk_init._entry_ptr.24 = internal global ptr @npcm7xx_clk_init._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll0\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_gfx\00", [24 x i8] zeroinitializer }, align 32
@npcm7xx_clk_register_pll.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_npcm7xx\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"npcm7xx_clk_register_pll\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s reg, name=%s, p=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@npcm7xx_clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @npcm7xx_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@npcm7xx_clk_pll_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: parent rate is zero\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"npcm7xx_clk_pll_recalc_rate\00", [36 x i8] zeroinitializer }, align 32
@npcm7xx_clk_pll_recalc_rate._entry_ptr = internal global ptr @npcm7xx_clk_pll_recalc_rate._entry, section ".printk_index", align 4
@cpuck_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@cpuck_mux_parents = internal constant [4 x ptr] [ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.44], section ".init.rodata", align 4
@pixcksel_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pixel\00", [22 x i8] zeroinitializer }, align 32
@pixcksel_mux_parents = internal constant [2 x ptr] [ptr @.str.27, ptr @.str.26], section ".init.rodata", align 4
@pll_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sd_mux\00", [25 x i8] zeroinitializer }, align 32
@pll_mux_parents = internal constant [4 x ptr] [ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.11], section ".init.rodata", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_mux\00", [23 x i8] zeroinitializer }, align 32
@sucksel_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_usb_mux\00", [17 x i8] zeroinitializer }, align 32
@sucksel_mux_parents = internal constant [2 x ptr] [ptr @.str.26, ptr @.str.11], section ".init.rodata", align 4
@mccksel_mux_table = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mc_phy\00", [25 x i8] zeroinitializer }, align 32
@mccksel_mux_parents = internal constant [3 x ptr] [ptr @.str.6, ptr @.str.26, ptr @.str.45], section ".init.rodata", align 4
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timer_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfx_mux\00", [24 x i8] zeroinitializer }, align 32
@clkoutsel_mux_table = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkout_mux\00", [21 x i8] zeroinitializer }, align 32
@clkoutsel_mux_parents = internal constant [5 x ptr] [ptr @.str.25, ptr @.str.6, ptr @.str.26, ptr @.str.27, ptr @.str.11], section ".init.rodata", align 4
@gfxmsel_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfxm_mux\00", [23 x i8] zeroinitializer }, align 32
@gfxmsel_mux_parents = internal constant [2 x ptr] [ptr @.str.26, ptr @.str.11], section ".init.rodata", align 4
@dvcssel_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvc_mux\00", [24 x i8] zeroinitializer }, align 32
@dvcssel_mux_parents = internal constant [2 x ptr] [ptr @.str.26, ptr @.str.12], section ".init.rodata", align 4
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sysbypck\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcbypck\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"npcm7xx_clk_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi3\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb4\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb3\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb2\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb1\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb5\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkout\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfx0_gfx1_mem\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_bridge\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_host\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdhc\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi0\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spix\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 444, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 470, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 479, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 480, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 482, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 486, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 487, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 489, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"npcm7xx_clk_lock\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 505, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 524, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 535, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 315, i32 20 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 315, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 323, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 81, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c"npcm7xx_clk_pll_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 64, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 47, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"cpuck_mux_table\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 266, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 328, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant [19 x i8] c"pixcksel_mux_table\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 274, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 332, i32 41 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"pll_mux_table\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 258, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 336, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 339, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"sucksel_mux_table\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 280, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 342, i32 41 }
@___asan_gen_.187 = private unnamed_addr constant [18 x i8] c"mccksel_mux_table\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 286, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 345, i32 41 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 348, i32 37 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 351, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"clkoutsel_mux_table\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 293, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 354, i32 43 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"gfxmsel_mux_table\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 302, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 357, i32 41 }
@___asan_gen_.211 = private unnamed_addr constant [18 x i8] c"dvcssel_mux_table\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 308, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 360, i32 41 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 271, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 290, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 431, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 366, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 367, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 369, i32 27 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 370, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 375, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 378, i32 27 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 381, i32 26 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 384, i32 26 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 391, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 394, i32 27 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 397, i32 27 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 400, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 403, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 406, i32 27 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 409, i32 27 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 412, i32 26 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 415, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 418, i32 26 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 422, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [29 x i8] c"../drivers/clk/clk-npcm7xx.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 425, i32 26 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__of_table_npcm7xx_clk_init, ptr @npcm7xx_clk_init._entry, ptr @npcm7xx_clk_init._entry.13, ptr @npcm7xx_clk_init._entry.16, ptr @npcm7xx_clk_init._entry.19, ptr @npcm7xx_clk_init._entry.22, ptr @npcm7xx_clk_init._entry.3, ptr @npcm7xx_clk_init._entry.8, ptr @npcm7xx_clk_init._entry_ptr, ptr @npcm7xx_clk_init._entry_ptr.10, ptr @npcm7xx_clk_init._entry_ptr.15, ptr @npcm7xx_clk_init._entry_ptr.18, ptr @npcm7xx_clk_init._entry_ptr.21, ptr @npcm7xx_clk_init._entry_ptr.24, ptr @npcm7xx_clk_init._entry_ptr.5, ptr @npcm7xx_clk_pll_recalc_rate._entry, ptr @npcm7xx_clk_pll_recalc_rate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @npcm7xx_clk_lock, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @npcm7xx_clk_pll_ops, ptr @.str.31, ptr @.str.32, ptr @cpuck_mux_table, ptr @.str.33, ptr @pixcksel_mux_table, ptr @.str.34, ptr @pll_mux_table, ptr @.str.35, ptr @.str.36, ptr @sucksel_mux_table, ptr @.str.37, ptr @mccksel_mux_table, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @clkoutsel_mux_table, ptr @.str.41, ptr @gfxmsel_mux_table, ptr @.str.42, ptr @dvcssel_mux_table, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_clk_pll_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuck_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcksel_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sucksel_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccksel_mux_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkoutsel_mux_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxmsel_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvcssel_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_clk_init(ptr noundef %clk_np) #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_address_to_resource(ptr noundef %clk_np, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %clk_np, i32 noundef %call) #10
  br label %cleanup127

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call3 = call ptr @ioremap(i32 noundef %3, i32 noundef %add.i) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.npcm7xx_init_error_crit_edge, label %if.end6

if.end.npcm7xx_init_error_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %npcm7xx_init_error

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 108) #11
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end6.npcm7xx_init_np_err_crit_edge, label %if.end11

if.end6.npcm7xx_init_np_err_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %npcm7xx_init_np_err

if.end11:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 26, ptr %call7.i.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11
  %i.0203 = phi i32 [ 0, %if.end11 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1, i32 %i.0203
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0203, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.body.for.body15_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.body15_crit_edge:                    ; preds = %for.body
  br label %for.body15

for.cond13:                                       ; preds = %for.body15
  %inc33 = add nuw nsw i32 %i.1204, 1
  %exitcond208.not = icmp eq i32 %inc33, 4
  br i1 %exitcond208.not, label %for.end34, label %for.cond13.for.body15_crit_edge

for.cond13.for.body15_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.body15:                                       ; preds = %for.cond13.for.body15_crit_edge, %for.body.for.body15_crit_edge
  %i.1204 = phi i32 [ %inc33, %for.cond13.for.body15_crit_edge ], [ 0, %for.body.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [4 x %struct.npcm7xx_clk_pll_data], ptr @npcm7xx_plls, i32 0, i32 %i.1204
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx16, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 %10
  %name = getelementptr [4 x %struct.npcm7xx_clk_pll_data], ptr @npcm7xx_plls, i32 0, i32 %i.1204, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %parent_name = getelementptr [4 x %struct.npcm7xx_clk_pll_data], ptr @npcm7xx_plls, i32 0, i32 %i.1204, i32 2
  %13 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr [4 x %struct.npcm7xx_clk_pll_data], ptr @npcm7xx_plls, i32 0, i32 %i.1204, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %call17 = call fastcc ptr @npcm7xx_clk_register_pll(ptr noundef %add.ptr, ptr noundef %12, ptr noundef %14, i32 noundef %16)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body15.npcm7xx_init_fail_crit_edge, label %for.cond13

for.body15.npcm7xx_init_fail_crit_edge:           ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %npcm7xx_init_fail

for.end34:                                        ; preds = %for.cond13
  %call35 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %cmp.i196 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %for.end34.npcm7xx_init_fail_crit_edge, label %if.end43

for.end34.npcm7xx_init_fail_crit_edge:            ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %npcm7xx_init_fail

if.end43:                                         ; preds = %for.end34
  %call44 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %cmp.i197 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.end43.npcm7xx_init_fail_crit_edge, label %for.cond53.preheader

if.end43.npcm7xx_init_fail_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %npcm7xx_init_fail

for.cond53.preheader:                             ; preds = %if.end43
  %add.ptr59 = getelementptr i8, ptr %call3, i32 4
  br label %for.body55

for.body55:                                       ; preds = %for.inc80.for.body55_crit_edge, %for.cond53.preheader
  %i.2205 = phi i32 [ 0, %for.cond53.preheader ], [ %inc81, %for.inc80.for.body55_crit_edge ]
  %arrayidx56 = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205
  %name57 = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205, i32 3
  %17 = ptrtoint ptr %name57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name57, align 4
  %num_parents = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205, i32 5
  %19 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_parents, align 4
  %parent_names = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205, i32 4
  %21 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_names, align 4
  %flags58 = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205, i32 6
  %23 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags58, align 4
  %25 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx56, align 4
  %mask = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205, i32 1
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mask, align 1
  %conv = zext i8 %28 to i32
  %table = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205, i32 2
  %29 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %table, align 4
  %call60 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %18, i8 noundef zeroext %20, ptr noundef %22, ptr noundef null, ptr noundef null, i32 noundef %24, ptr noundef %add.ptr59, i8 noundef zeroext %26, i32 noundef %conv, i8 noundef zeroext 0, ptr noundef %30, ptr noundef nonnull @npcm7xx_clk_lock) #7
  %cmp.i198 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %for.body55.npcm7xx_init_fail_crit_edge, label %if.end68

for.body55.npcm7xx_init_fail_crit_edge:           ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %npcm7xx_init_fail

if.end68:                                         ; preds = %for.body55
  %31 = and i32 %i.2205, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %if.then72, label %if.end68.for.inc80_crit_edge

if.end68.for.inc80_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc80

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %onecell_idx69 = getelementptr [11 x %struct.npcm7xx_clk_mux_data], ptr @npcm7xx_muxes, i32 0, i32 %i.2205, i32 7
  %33 = ptrtoint ptr %onecell_idx69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %onecell_idx69, align 4
  %arrayidx75 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1, i32 %34
  %35 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call60, ptr %arrayidx75, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %if.then72, %if.end68.for.inc80_crit_edge
  %inc81 = add nuw nsw i32 %i.2205, 1
  %exitcond209.not = icmp eq i32 %inc81, 11
  br i1 %exitcond209.not, label %for.inc80.for.body86_crit_edge, label %for.inc80.for.body55_crit_edge

for.inc80.for.body55_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55

for.inc80.for.body86_crit_edge:                   ; preds = %for.inc80
  br label %for.body86

for.body86:                                       ; preds = %for.inc114.for.body86_crit_edge, %for.inc80.for.body86_crit_edge
  %i.3207 = phi i32 [ %inc115, %for.inc114.for.body86_crit_edge ], [ 0, %for.inc80.for.body86_crit_edge ]
  %arrayidx87 = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207
  %name88 = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207, i32 3
  %36 = ptrtoint ptr %name88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name88, align 4
  %parent_name89 = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207, i32 4
  %38 = ptrtoint ptr %parent_name89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent_name89, align 4
  %flags90 = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207, i32 6
  %40 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags90, align 4
  %42 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx87, align 4
  %add.ptr92 = getelementptr i8, ptr %call3, i32 %43
  %shift93 = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207, i32 1
  %44 = ptrtoint ptr %shift93 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %shift93, align 4
  %width = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207, i32 2
  %46 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %width, align 1
  %clk_divider_flags = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207, i32 5
  %48 = ptrtoint ptr %clk_divider_flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %clk_divider_flags, align 4
  %call94 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef %37, ptr noundef %39, ptr noundef null, ptr noundef null, i32 noundef %41, ptr noundef %add.ptr92, i8 noundef zeroext %45, i8 noundef zeroext %47, i8 noundef zeroext %49, ptr noundef null, ptr noundef nonnull @npcm7xx_clk_lock) #7
  %cmp.i199 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %for.body86.npcm7xx_init_fail_crit_edge, label %for.inc114

for.body86.npcm7xx_init_fail_crit_edge:           ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %npcm7xx_init_fail

for.inc114:                                       ; preds = %for.body86
  %onecell_idx103 = getelementptr [20 x %struct.npcm7xx_clk_div_data], ptr @npcm7xx_divs, i32 0, i32 %i.3207, i32 7
  %50 = ptrtoint ptr %onecell_idx103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %onecell_idx103, align 4
  %arrayidx109 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1, i32 %51
  %52 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call94, ptr %arrayidx109, align 4
  %inc115 = add nuw nsw i32 %i.3207, 1
  %exitcond210.not = icmp eq i32 %inc115, 20
  br i1 %exitcond210.not, label %for.end116, label %for.inc114.for.body86_crit_edge

for.inc114.for.body86_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.end116:                                       ; preds = %for.inc114
  %call117 = call i32 @of_clk_add_hw_provider(ptr noundef %clk_np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %for.end116.if.end125_crit_edge, label %do.end122

for.end116.if.end125_crit_edge:                   ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

do.end122:                                        ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call117) #10
  br label %if.end125

if.end125:                                        ; preds = %do.end122, %for.end116.if.end125_crit_edge
  call void @of_node_put(ptr noundef %clk_np) #7
  br label %cleanup127

npcm7xx_init_fail:                                ; preds = %for.body86.npcm7xx_init_fail_crit_edge, %for.body55.npcm7xx_init_fail_crit_edge, %if.end43.npcm7xx_init_fail_crit_edge, %for.end34.npcm7xx_init_fail_crit_edge, %for.body15.npcm7xx_init_fail_crit_edge
  %.str.20.sink = phi ptr [ @.str.9, %for.end34.npcm7xx_init_fail_crit_edge ], [ @.str.14, %if.end43.npcm7xx_init_fail_crit_edge ], [ @.str.20, %for.body86.npcm7xx_init_fail_crit_edge ], [ @.str.17, %for.body55.npcm7xx_init_fail_crit_edge ], [ @.str.4, %for.body15.npcm7xx_init_fail_crit_edge ]
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink) #10
  %hws126 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  call void @kfree(ptr noundef %hws126) #7
  br label %npcm7xx_init_np_err

npcm7xx_init_np_err:                              ; preds = %npcm7xx_init_fail, %if.end6.npcm7xx_init_np_err_crit_edge
  call void @iounmap(ptr noundef nonnull %call3) #7
  br label %npcm7xx_init_error

npcm7xx_init_error:                               ; preds = %npcm7xx_init_np_err, %if.end.npcm7xx_init_error_crit_edge
  call void @of_node_put(ptr noundef %clk_np) #7
  br label %cleanup127

cleanup127:                                       ; preds = %npcm7xx_init_error, %if.end125, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @npcm7xx_clk_register_pll(ptr noundef %pllcon, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_clk_register_pll.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@npcm7xx_clk_register_pll, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !174

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name.addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @npcm7xx_clk_register_pll.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @npcm7xx_clk_pll_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %num_parents, align 4
  %flags9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags9, align 4
  %pllcon10 = getelementptr inbounds %struct.npcm7xx_clk_pll, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pllcon10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pllcon, ptr %pllcon10, align 4
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init12, align 8
  %call14 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end.cleanup_crit_edge, label %if.then16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %13 = inttoptr i32 %call14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %if.then16 ], [ %call7.i.i, %do.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_clk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp eq i32 %parent_rate, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pllcon = getelementptr inbounds %struct.npcm7xx_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pllcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pllcon, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 63
  %and36 = lshr i32 %3, 16
  %shr37 = and i32 %and36, 4095
  %and54 = lshr i32 %3, 8
  %shr55 = and i32 %and54, 7
  %and72 = lshr i32 %3, 13
  %shr73 = and i32 %and72, 7
  %conv = zext i32 %parent_rate to i64
  %conv74 = zext i32 %shr37 to i64
  %mul = mul nuw nsw i64 %conv74, %conv
  %mul75 = mul nuw nsw i32 %shr55, %and
  %mul76 = mul nuw nsw i32 %mul75, %shr73
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp250 = icmp ult i64 %mul, 4294967296
  br i1 %cmp250, label %if.then254, label %if.else260, !prof !176

if.then254:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv255 = trunc i64 %mul to i32
  %div258 = udiv i32 %conv255, %mul76
  br label %cleanup

if.else260:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul76, i64 %mul) #12, !srcloc !177
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t382 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else260, %if.then254, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div258, %if.then254 ], [ %extract.t382, %if.else260 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @__of_table_npcm7xx_clk_init, !1, !"__of_table_npcm7xx_clk_init", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-npcm7xx.c", i32 548, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-npcm7xx.c", i32 444, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @npcm7xx_clk_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @npcm7xx_clk_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-npcm7xx.c", i32 470, i32 4}
!10 = !{ptr @npcm7xx_clk_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @npcm7xx_clk_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-npcm7xx.c", i32 479, i32 42}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-npcm7xx.c", i32 480, i32 4}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-npcm7xx.c", i32 482, i32 3}
!18 = !{ptr @npcm7xx_clk_init._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @npcm7xx_clk_init._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-npcm7xx.c", i32 486, i32 42}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-npcm7xx.c", i32 487, i32 4}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-npcm7xx.c", i32 489, i32 3}
!26 = !{ptr @npcm7xx_clk_init._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @npcm7xx_clk_init._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-npcm7xx.c", i32 505, i32 4}
!30 = !{ptr @npcm7xx_clk_init._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @npcm7xx_clk_init._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-npcm7xx.c", i32 524, i32 4}
!34 = !{ptr @npcm7xx_clk_init._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @npcm7xx_clk_init._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-npcm7xx.c", i32 535, i32 3}
!38 = !{ptr @npcm7xx_clk_init._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @npcm7xx_clk_init._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-npcm7xx.c", i32 315, i32 20}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-npcm7xx.c", i32 315, i32 40}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-npcm7xx.c", i32 323, i32 20}
!46 = !{ptr @npcm7xx_plls, !47, !"npcm7xx_plls", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-npcm7xx.c", i32 314, i32 42}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/clk-npcm7xx.c", i32 81, i32 2}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @npcm7xx_clk_register_pll.__UNIQUE_ID_ddebug201, !49, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!53 = !{ptr @npcm7xx_clk_pll_ops, !54, !"npcm7xx_clk_pll_ops", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-npcm7xx.c", i32 64, i32 29}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-npcm7xx.c", i32 47, i32 3}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @npcm7xx_clk_pll_recalc_rate._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @npcm7xx_clk_pll_recalc_rate._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-npcm7xx.c", i32 328, i32 38}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/clk-npcm7xx.c", i32 332, i32 41}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-npcm7xx.c", i32 336, i32 36}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/clk-npcm7xx.c", i32 339, i32 36}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/clk-npcm7xx.c", i32 342, i32 41}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-npcm7xx.c", i32 345, i32 41}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-npcm7xx.c", i32 348, i32 37}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-npcm7xx.c", i32 351, i32 37}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/clk-npcm7xx.c", i32 354, i32 43}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-npcm7xx.c", i32 357, i32 41}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-npcm7xx.c", i32 360, i32 41}
!82 = !{ptr @npcm7xx_muxes, !83, !"npcm7xx_muxes", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-npcm7xx.c", i32 327, i32 42}
!84 = !{ptr @cpuck_mux_table, !85, !"cpuck_mux_table", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-npcm7xx.c", i32 266, i32 12}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/clk-npcm7xx.c", i32 271, i32 2}
!88 = !{ptr @cpuck_mux_parents, !89, !"cpuck_mux_parents", i1 false, i1 false}
!89 = !{!"../drivers/clk/clk-npcm7xx.c", i32 267, i32 27}
!90 = !{ptr @pixcksel_mux_table, !91, !"pixcksel_mux_table", i1 false, i1 false}
!91 = !{!"../drivers/clk/clk-npcm7xx.c", i32 274, i32 12}
!92 = !{ptr @pixcksel_mux_parents, !93, !"pixcksel_mux_parents", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-npcm7xx.c", i32 275, i32 27}
!94 = !{ptr @pll_mux_table, !95, !"pll_mux_table", i1 false, i1 false}
!95 = !{!"../drivers/clk/clk-npcm7xx.c", i32 258, i32 12}
!96 = !{ptr @pll_mux_parents, !97, !"pll_mux_parents", i1 false, i1 false}
!97 = !{!"../drivers/clk/clk-npcm7xx.c", i32 259, i32 27}
!98 = !{ptr @sucksel_mux_table, !99, !"sucksel_mux_table", i1 false, i1 false}
!99 = !{!"../drivers/clk/clk-npcm7xx.c", i32 280, i32 12}
!100 = !{ptr @sucksel_mux_parents, !101, !"sucksel_mux_parents", i1 false, i1 false}
!101 = !{!"../drivers/clk/clk-npcm7xx.c", i32 281, i32 27}
!102 = !{ptr @mccksel_mux_table, !103, !"mccksel_mux_table", i1 false, i1 false}
!103 = !{!"../drivers/clk/clk-npcm7xx.c", i32 286, i32 12}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-npcm7xx.c", i32 290, i32 2}
!106 = !{ptr @mccksel_mux_parents, !107, !"mccksel_mux_parents", i1 false, i1 false}
!107 = !{!"../drivers/clk/clk-npcm7xx.c", i32 287, i32 27}
!108 = !{ptr @clkoutsel_mux_table, !109, !"clkoutsel_mux_table", i1 false, i1 false}
!109 = !{!"../drivers/clk/clk-npcm7xx.c", i32 293, i32 12}
!110 = !{ptr @clkoutsel_mux_parents, !111, !"clkoutsel_mux_parents", i1 false, i1 false}
!111 = !{!"../drivers/clk/clk-npcm7xx.c", i32 294, i32 27}
!112 = !{ptr @gfxmsel_mux_table, !113, !"gfxmsel_mux_table", i1 false, i1 false}
!113 = !{!"../drivers/clk/clk-npcm7xx.c", i32 302, i32 12}
!114 = !{ptr @gfxmsel_mux_parents, !115, !"gfxmsel_mux_parents", i1 false, i1 false}
!115 = !{!"../drivers/clk/clk-npcm7xx.c", i32 303, i32 27}
!116 = !{ptr @dvcssel_mux_table, !117, !"dvcssel_mux_table", i1 false, i1 false}
!117 = !{!"../drivers/clk/clk-npcm7xx.c", i32 308, i32 12}
!118 = !{ptr @dvcssel_mux_parents, !119, !"dvcssel_mux_parents", i1 false, i1 false}
!119 = !{!"../drivers/clk/clk-npcm7xx.c", i32 309, i32 27}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/clk-npcm7xx.c", i32 431, i32 8}
!122 = !{ptr @npcm7xx_clk_lock, !121, !"npcm7xx_clk_lock", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/clk-npcm7xx.c", i32 366, i32 27}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/clk-npcm7xx.c", i32 367, i32 2}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/clk-npcm7xx.c", i32 369, i32 27}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/clk-npcm7xx.c", i32 370, i32 2}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/clk-npcm7xx.c", i32 375, i32 27}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/clk-npcm7xx.c", i32 378, i32 27}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/clk-npcm7xx.c", i32 381, i32 26}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/clk-npcm7xx.c", i32 384, i32 26}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/clk-npcm7xx.c", i32 391, i32 27}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/clk-npcm7xx.c", i32 394, i32 27}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/clk-npcm7xx.c", i32 397, i32 27}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/clk-npcm7xx.c", i32 400, i32 27}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/clk-npcm7xx.c", i32 403, i32 27}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/clk-npcm7xx.c", i32 406, i32 27}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/clk-npcm7xx.c", i32 409, i32 27}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/clk-npcm7xx.c", i32 412, i32 26}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/clk-npcm7xx.c", i32 415, i32 26}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/clk-npcm7xx.c", i32 418, i32 26}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/clk-npcm7xx.c", i32 422, i32 26}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/clk-npcm7xx.c", i32 425, i32 26}
!163 = !{ptr @npcm7xx_divs, !164, !"npcm7xx_divs", i1 false, i1 false}
!164 = !{!"../drivers/clk/clk-npcm7xx.c", i32 365, i32 42}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2148967842, i64 2148967847, i64 2148967860, i64 2148967904, i64 2148967938, i64 2148967959}
!175 = !{i64 4225004}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2148200889, i64 2148201169, i64 2148201503, i64 2148201837}
