; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-of-mmp2.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-of-mmp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mmp_param_fixed_rate_clk = type { i32, ptr, ptr, i32, i32 }
%struct.mmp_param_pll_clk = type { i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.mmp_param_fixed_factor_clk = type { i32, ptr, ptr, i32, i32, i32 }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_clk_factor_tbl = type { i32, i32 }
%struct.mmp_param_gate_clk = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.mmp_param_mux_clk = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr }
%struct.mmp_clk_mix_config = type { %struct.mmp_clk_mix_reg_info, ptr, i32, ptr, ptr, i8, i8 }
%struct.mmp_clk_mix_reg_info = type { ptr, ptr, i8, i8, i8, i8, i8 }
%struct.mmp_param_div_clk = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mmp2_clk_unit = type { %struct.mmp_clk_unit, i32, %struct.genpd_onecell_data, [3 x ptr], ptr, ptr, ptr }
%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.mmp_clk_reset_cell = type { i32, ptr, i32, i32, ptr }

@__of_table_mmp2_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_clk_init }, section "__clk_of_table", align 4
@__of_table_mmp3_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp3-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_clk_init }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"marvell,mmp3-clock\00", [45 x i8] zeroinitializer }, align 32
@mmp2_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to map mpmu registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmp2_clk_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/mmp/clk-of-mmp2.c\00", [34 x i8] zeroinitializer }, align 32
@mmp2_clk_init._entry_ptr = internal global ptr @mmp2_clk_init._entry, section ".printk_index", align 4
@mmp2_clk_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to map apmu registers\0A\00", [32 x i8] zeroinitializer }, align 32
@mmp2_clk_init._entry_ptr.6 = internal global ptr @mmp2_clk_init._entry.4, section ".printk_index", align 4
@mmp2_clk_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to map apbc registers\0A\00", [32 x i8] zeroinitializer }, align 32
@mmp2_clk_init._entry_ptr.9 = internal global ptr @mmp2_clk_init._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@gpu_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@audio_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpu_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_lock\00", [21 x i8] zeroinitializer }, align 32
@fixed_rate_clks = internal global { [4 x %struct.mmp_param_fixed_rate_clk], [48 x i8] } { [4 x %struct.mmp_param_fixed_rate_clk] [%struct.mmp_param_fixed_rate_clk { i32 1, ptr @.str.19, ptr null, i32 0, i32 32768 }, %struct.mmp_param_fixed_rate_clk { i32 2, ptr @.str.20, ptr null, i32 0, i32 26000000 }, %struct.mmp_param_fixed_rate_clk { i32 27, ptr @.str.21, ptr null, i32 0, i32 480000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.22, ptr null, i32 0, i32 99666667 }], [48 x i8] zeroinitializer }, align 32
@mmp3_pll_clks = internal global { [5 x %struct.mmp_param_pll_clk], [56 x i8] } { [5 x %struct.mmp_param_pll_clk] [%struct.mmp_param_pll_clk { i32 16, ptr @.str.23, i32 797330000, i32 8, i32 16384, i32 16, i8 0, i32 26000000, i32 92, i32 25 }, %struct.mmp_param_pll_clk { i32 16, ptr @.str.24, i32 0, i32 52, i32 768, i32 52, i8 10, i32 26000000, i32 1044, i32 25 }, %struct.mmp_param_pll_clk { i32 28, ptr @.str.25, i32 0, i32 104, i32 16, i32 0, i8 0, i32 797330000, i32 104, i32 0 }, %struct.mmp_param_pll_clk { i32 29, ptr @.str.26, i32 0, i32 104, i32 256, i32 52, i8 10, i32 26000000, i32 104, i32 5 }, %struct.mmp_param_pll_clk { i32 30, ptr @.str.27, i32 0, i32 80, i32 768, i32 80, i8 10, i32 26000000, i32 88, i32 25 }], [56 x i8] zeroinitializer }, align 32
@pll_clks = internal global { [2 x %struct.mmp_param_pll_clk], [48 x i8] } { [2 x %struct.mmp_param_pll_clk] [%struct.mmp_param_pll_clk { i32 3, ptr @.str.23, i32 797330000, i32 8, i32 16384, i32 16, i8 0, i32 0, i32 0, i32 0 }, %struct.mmp_param_pll_clk { i32 16, ptr @.str.24, i32 0, i32 52, i32 768, i32 52, i8 10, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@fixed_factor_clks = internal global { [17 x %struct.mmp_param_fixed_factor_clk], [104 x i8] } { [17 x %struct.mmp_param_fixed_factor_clk] [%struct.mmp_param_fixed_factor_clk { i32 8, ptr @.str.28, ptr @.str.23, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 9, ptr @.str.16, ptr @.str.28, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 10, ptr @.str.29, ptr @.str.16, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 11, ptr @.str.30, ptr @.str.29, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 15, ptr @.str.31, ptr @.str.16, i32 1, i32 5, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 12, ptr @.str.32, ptr @.str.23, i32 1, i32 3, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 13, ptr @.str.33, ptr @.str.32, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 14, ptr @.str.34, ptr @.str.33, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 17, ptr @.str.35, ptr @.str.24, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 18, ptr @.str.36, ptr @.str.35, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 19, ptr @.str.37, ptr @.str.36, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 20, ptr @.str.38, ptr @.str.37, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 21, ptr @.str.39, ptr @.str.24, i32 1, i32 3, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 22, ptr @.str.40, ptr @.str.39, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 23, ptr @.str.41, ptr @.str.40, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 24, ptr @.str.42, ptr @.str.20, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 25, ptr @.str.43, ptr @.str.42, i32 1, i32 2, i32 0 }], [104 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_4\00", [25 x i8] zeroinitializer }, align 32
@uart_factor_masks = internal global { %struct.mmp_clk_factor_masks, [40 x i8] } { %struct.mmp_clk_factor_masks { i32 2, i32 8191, i32 8191, i32 16, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@uart_factor_tbl = internal global { [2 x %struct.mmp_clk_factor_tbl], [16 x i8] } { [2 x %struct.mmp_clk_factor_tbl] [%struct.mmp_clk_factor_tbl { i32 8125, i32 1536 }, %struct.mmp_clk_factor_tbl { i32 3521, i32 689 }], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0_pll\00", [23 x i8] zeroinitializer }, align 32
@i2s_factor_masks = internal global { %struct.mmp_clk_factor_masks, [40 x i8] } { %struct.mmp_clk_factor_masks { i32 2, i32 32767, i32 8191, i32 0, i32 15, i32 -805306368 }, [40 x i8] zeroinitializer }, align 32
@i2s_factor_tbl = internal global { [9 x %struct.mmp_clk_factor_tbl], [56 x i8] } { [9 x %struct.mmp_clk_factor_tbl] [%struct.mmp_clk_factor_tbl { i32 24868, i32 511 }, %struct.mmp_clk_factor_tbl { i32 28003, i32 793 }, %struct.mmp_clk_factor_tbl { i32 24941, i32 1025 }, %struct.mmp_clk_factor_tbl { i32 28003, i32 1586 }, %struct.mmp_clk_factor_tbl { i32 31158, i32 2561 }, %struct.mmp_clk_factor_tbl { i32 16288, i32 1845 }, %struct.mmp_clk_factor_tbl { i32 20772, i32 2561 }, %struct.mmp_clk_factor_tbl { i32 8144, i32 1845 }, %struct.mmp_clk_factor_tbl { i32 10386, i32 2561 }], [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_pll\00", [23 x i8] zeroinitializer }, align 32
@mpmu_gate_clks = internal global { [2 x %struct.mmp_param_gate_clk], [48 x i8] } { [2 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 31, ptr @.str.44, ptr @.str.17, i32 4, i32 4132, i32 2097152, i32 2097152, i32 0, i32 0, ptr @acgr_lock }, %struct.mmp_param_gate_clk { i32 32, ptr @.str.45, ptr @.str.18, i32 4, i32 4132, i32 1048576, i32 1048576, i32 0, i32 0, ptr @acgr_lock }], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk32\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vctcxo\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_p\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_p\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_2\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_8\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_16\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_20\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_3\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_6\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_12\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_2\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_4\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_8\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll2_16\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_3\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_6\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll2_12\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vctcxo_2\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vctcxo_4\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0_clk\00", [23 x i8] zeroinitializer }, align 32
@acgr_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acgr_lock\00", [22 x i8] zeroinitializer }, align 32
@apbc_mux_clks = internal global { [9 x %struct.mmp_param_mux_clk], [64 x i8] } { [9 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.47, ptr @uart_parent_names, i8 2, i32 4, i32 44, i8 4, i8 3, i8 0, ptr @uart0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.48, ptr @uart_parent_names, i8 2, i32 4, i32 48, i8 4, i8 3, i8 0, ptr @uart1_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.49, ptr @uart_parent_names, i8 2, i32 4, i32 52, i8 4, i8 3, i8 0, ptr @uart2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.50, ptr @uart_parent_names, i8 2, i32 4, i32 136, i8 4, i8 3, i8 0, ptr @uart2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.51, ptr @ssp_parent_names, i8 4, i32 4, i32 80, i8 4, i8 3, i8 0, ptr @ssp0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.52, ptr @ssp_parent_names, i8 4, i32 4, i32 84, i8 4, i8 3, i8 0, ptr @ssp1_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.53, ptr @ssp_parent_names, i8 4, i32 4, i32 88, i8 4, i8 3, i8 0, ptr @ssp2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.54, ptr @ssp_parent_names, i8 4, i32 4, i32 92, i8 4, i8 3, i8 0, ptr @ssp3_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.55, ptr @timer_parent_names, i8 4, i32 4, i32 36, i8 4, i8 3, i8 0, ptr @timer_lock }], [64 x i8] zeroinitializer }, align 32
@apbc_gate_clks = internal global { [23 x %struct.mmp_param_gate_clk], [232 x i8] } { [23 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 60, ptr @.str.64, ptr @.str.20, i32 4, i32 4, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 61, ptr @.str.65, ptr @.str.20, i32 4, i32 8, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 62, ptr @.str.66, ptr @.str.20, i32 4, i32 12, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 63, ptr @.str.67, ptr @.str.20, i32 4, i32 16, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 64, ptr @.str.68, ptr @.str.20, i32 4, i32 124, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 65, ptr @.str.69, ptr @.str.20, i32 4, i32 128, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 66, ptr @.str.70, ptr @.str.20, i32 4, i32 56, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 67, ptr @.str.71, ptr @.str.19, i32 4, i32 24, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 68, ptr @.str.72, ptr @.str.19, i32 4, i32 0, i32 135, i32 131, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 69, ptr @.str.73, ptr @.str.74, i32 4, i32 60, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 70, ptr @.str.75, ptr @.str.74, i32 4, i32 64, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 71, ptr @.str.76, ptr @.str.74, i32 4, i32 68, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 72, ptr @.str.77, ptr @.str.74, i32 4, i32 72, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 73, ptr @.str.78, ptr @.str.47, i32 4, i32 44, i32 7, i32 3, i32 0, i32 0, ptr @uart0_lock }, %struct.mmp_param_gate_clk { i32 74, ptr @.str.79, ptr @.str.48, i32 4, i32 48, i32 7, i32 3, i32 0, i32 0, ptr @uart1_lock }, %struct.mmp_param_gate_clk { i32 75, ptr @.str.80, ptr @.str.49, i32 4, i32 52, i32 7, i32 3, i32 0, i32 0, ptr @uart2_lock }, %struct.mmp_param_gate_clk { i32 76, ptr @.str.81, ptr @.str.50, i32 4, i32 136, i32 7, i32 3, i32 0, i32 0, ptr @uart2_lock }, %struct.mmp_param_gate_clk { i32 77, ptr @.str.82, ptr @.str.51, i32 4, i32 80, i32 7, i32 3, i32 0, i32 0, ptr @ssp0_lock }, %struct.mmp_param_gate_clk { i32 78, ptr @.str.83, ptr @.str.52, i32 4, i32 84, i32 7, i32 3, i32 0, i32 0, ptr @ssp1_lock }, %struct.mmp_param_gate_clk { i32 79, ptr @.str.84, ptr @.str.53, i32 4, i32 88, i32 7, i32 3, i32 0, i32 0, ptr @ssp2_lock }, %struct.mmp_param_gate_clk { i32 80, ptr @.str.85, ptr @.str.54, i32 4, i32 92, i32 7, i32 3, i32 0, i32 0, ptr @ssp3_lock }, %struct.mmp_param_gate_clk { i32 81, ptr @.str.86, ptr @.str.55, i32 4, i32 36, i32 7, i32 3, i32 0, i32 0, ptr @timer_lock }, %struct.mmp_param_gate_clk { i32 82, ptr @.str.87, ptr @.str.20, i32 4, i32 144, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }], [232 x i8] zeroinitializer }, align 32
@mmp3_apbc_gate_clks = internal global { [3 x %struct.mmp_param_gate_clk], [40 x i8] } { [3 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 83, ptr @.str.89, ptr @.str.20, i32 4, i32 152, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 84, ptr @.str.90, ptr @.str.20, i32 4, i32 156, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 85, ptr @.str.91, ptr @.str.20, i32 4, i32 160, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }], [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_mux\00", [22 x i8] zeroinitializer }, align 32
@uart_parent_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@uart0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_mux\00", [22 x i8] zeroinitializer }, align 32
@uart1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_mux\00", [22 x i8] zeroinitializer }, align 32
@uart2_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp0_mux\00", [23 x i8] zeroinitializer }, align 32
@ssp_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.43, ptr @.str.42, ptr @.str.20, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@ssp0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp1_mux\00", [23 x i8] zeroinitializer }, align 32
@ssp1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp2_mux\00", [23 x i8] zeroinitializer }, align 32
@ssp2_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp3_mux\00", [23 x i8] zeroinitializer }, align 32
@ssp3_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timer_mux\00", [22 x i8] zeroinitializer }, align 32
@timer_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.43, ptr @.str.42, ptr @.str.20], [16 x i8] zeroinitializer }, align 32
@timer_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart0_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp0_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp1_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp2_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp3_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi0_clk\00", [22 x i8] zeroinitializer }, align 32
@reset_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi4_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi5_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kpc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_48\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timer_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thermal0_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thermal1_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thermal2_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thermal3_clk\00", [19 x i8] zeroinitializer }, align 32
@sdh_mix_config = internal global { %struct.mmp_clk_mix_config, [60 x i8] } { %struct.mmp_clk_mix_config { %struct.mmp_clk_mix_reg_info { ptr null, ptr null, i8 4, i8 10, i8 2, i8 8, i8 32 }, ptr null, i32 0, ptr null, ptr null, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdh_mix_clk\00", [20 x i8] zeroinitializer }, align 32
@sdh_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.24, ptr @.str.21, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@sdh_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.97, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ccic0_mix_config = internal global { %struct.mmp_clk_mix_config, [60 x i8] } { %struct.mmp_clk_mix_config { %struct.mmp_clk_mix_reg_info { ptr null, ptr null, i8 4, i8 17, i8 2, i8 6, i8 32 }, ptr null, i32 0, ptr null, ptr null, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccic0_mix_clk\00", [18 x i8] zeroinitializer }, align 32
@ccic_parent_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.30, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@ccic0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.98, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ccic1_mix_config = internal global { %struct.mmp_clk_mix_config, [60 x i8] } { %struct.mmp_clk_mix_config { %struct.mmp_clk_mix_reg_info { ptr null, ptr null, i8 4, i8 16, i8 2, i8 6, i8 32 }, ptr null, i32 0, ptr null, ptr null, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccic1_mix_clk\00", [18 x i8] zeroinitializer }, align 32
@ccic1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.99, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@apmu_mux_clks = internal global { [2 x %struct.mmp_param_mux_clk], [32 x i8] } { [2 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 107, ptr @.str.100, ptr @disp_parent_names, i8 4, i32 4, i32 76, i8 6, i8 2, i8 0, ptr @disp0_lock }, %struct.mmp_param_mux_clk { i32 110, ptr @.str.101, ptr @disp_parent_names, i8 4, i32 4, i32 272, i8 6, i8 2, i8 0, ptr @disp1_lock }], [32 x i8] zeroinitializer }, align 32
@apmu_div_clks = internal global { [5 x %struct.mmp_param_div_clk], [52 x i8] } { [5 x %struct.mmp_param_div_clk] [%struct.mmp_param_div_clk { i32 0, ptr @.str.104, ptr @.str.100, i32 4, i32 76, i8 8, i8 4, i8 1, ptr @disp0_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.105, ptr @.str.100, i32 4, i32 76, i8 15, i8 5, i8 0, ptr @disp0_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.106, ptr @.str.101, i32 4, i32 272, i8 8, i8 4, i8 1, ptr @disp1_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.107, ptr @.str.93, i32 4, i32 80, i8 10, i8 5, i8 0, ptr @ccic0_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.108, ptr @.str.94, i32 4, i32 244, i8 10, i8 5, i8 0, ptr @ccic1_lock }], [52 x i8] zeroinitializer }, align 32
@apmu_gate_clks = internal global { [20 x %struct.mmp_param_gate_clk], [192 x i8] } { [20 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 105, ptr @.str.109, ptr @.str.21, i32 0, i32 92, i32 9, i32 9, i32 0, i32 0, ptr @usb_lock }, %struct.mmp_param_gate_clk { i32 121, ptr @.str.110, ptr @.str.21, i32 0, i32 248, i32 27, i32 27, i32 0, i32 0, ptr @usbhsic0_lock }, %struct.mmp_param_gate_clk { i32 122, ptr @.str.111, ptr @.str.21, i32 0, i32 252, i32 27, i32 27, i32 0, i32 0, ptr @usbhsic1_lock }, %struct.mmp_param_gate_clk { i32 101, ptr @.str.112, ptr @.str.92, i32 4, i32 84, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 102, ptr @.str.113, ptr @.str.92, i32 4, i32 88, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 103, ptr @.str.114, ptr @.str.92, i32 4, i32 232, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 104, ptr @.str.115, ptr @.str.92, i32 4, i32 236, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 106, ptr @.str.116, ptr @.str.104, i32 4, i32 76, i32 18, i32 18, i32 0, i32 0, ptr @disp0_lock }, %struct.mmp_param_gate_clk { i32 120, ptr @.str.117, ptr @.str.100, i32 4, i32 76, i32 9, i32 9, i32 0, i32 0, ptr @disp0_lock }, %struct.mmp_param_gate_clk { i32 108, ptr @.str.118, ptr @.str.105, i32 4, i32 76, i32 4132, i32 4132, i32 0, i32 0, ptr @disp0_lock }, %struct.mmp_param_gate_clk { i32 109, ptr @.str.119, ptr @.str.106, i32 4, i32 272, i32 9, i32 9, i32 0, i32 0, ptr @disp1_lock }, %struct.mmp_param_gate_clk { i32 111, ptr @.str.120, ptr @.str.20, i32 4, i32 80, i32 6144, i32 6144, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 112, ptr @.str.121, ptr @.str.93, i32 4, i32 80, i32 27, i32 27, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 114, ptr @.str.122, ptr @.str.93, i32 4, i32 80, i32 36, i32 36, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 115, ptr @.str.123, ptr @.str.107, i32 4, i32 80, i32 768, i32 768, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 116, ptr @.str.124, ptr @.str.94, i32 4, i32 244, i32 27, i32 27, i32 0, i32 0, ptr @ccic1_lock }, %struct.mmp_param_gate_clk { i32 118, ptr @.str.125, ptr @.str.94, i32 4, i32 244, i32 36, i32 36, i32 0, i32 0, ptr @ccic1_lock }, %struct.mmp_param_gate_clk { i32 119, ptr @.str.126, ptr @.str.108, i32 4, i32 244, i32 768, i32 768, i32 0, i32 0, ptr @ccic1_lock }, %struct.mmp_param_gate_clk { i32 123, ptr @.str.127, ptr @.str.96, i32 4, i32 204, i32 10, i32 10, i32 0, i32 1, ptr @gpu_lock }, %struct.mmp_param_gate_clk { i32 127, ptr @.str.128, ptr @.str.129, i32 4, i32 268, i32 18, i32 18, i32 0, i32 0, ptr @audio_lock }], [192 x i8] zeroinitializer }, align 32
@mmp3_apmu_mux_clks = internal global { [3 x %struct.mmp_param_mux_clk], [32 x i8] } { [3 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.96, ptr @mmp3_gpu_bus_parent_names, i8 4, i32 4, i32 204, i8 4, i8 2, i8 0, ptr @gpu_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.95, ptr @mmp3_gpu_gc_parent_names, i8 4, i32 4, i32 204, i8 6, i8 2, i8 0, ptr @gpu_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.133, ptr @mmp3_gpu_gc_parent_names, i8 4, i32 4, i32 204, i8 12, i8 2, i8 0, ptr @gpu_lock }], [32 x i8] zeroinitializer }, align 32
@mmp3_apmu_div_clks = internal global { [2 x %struct.mmp_param_div_clk], [40 x i8] } { [2 x %struct.mmp_param_div_clk] [%struct.mmp_param_div_clk { i32 0, ptr @.str.134, ptr @.str.95, i32 4, i32 204, i8 24, i8 4, i8 0, ptr @gpu_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.135, ptr @.str.133, i32 4, i32 204, i8 28, i8 4, i8 0, ptr @gpu_lock }], [40 x i8] zeroinitializer }, align 32
@mmp3_apmu_gate_clks = internal global { [3 x %struct.mmp_param_gate_clk], [40 x i8] } { [3 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 126, ptr @.str.136, ptr @.str.92, i32 4, i32 348, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 124, ptr @.str.137, ptr @.str.134, i32 4, i32 204, i32 5, i32 5, i32 0, i32 1, ptr @gpu_lock }, %struct.mmp_param_gate_clk { i32 125, ptr @.str.138, ptr @.str.135, i32 4, i32 204, i32 1835008, i32 1835008, i32 0, i32 1, ptr @gpu_lock }], [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_3d_mux\00", [21 x i8] zeroinitializer }, align 32
@mmp2_gpu_gc_parent_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.28, ptr @.str.32, ptr @.str.35, ptr @.str.39, ptr @.str.24, ptr @.str.21], [40 x i8] zeroinitializer }, align 32
@mmp2_gpu_gc_parent_table = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 64, i32 128, i32 192, i32 4096, i32 4160], [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_bus_mux\00", [20 x i8] zeroinitializer }, align 32
@mmp2_gpu_bus_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.24, ptr @.str.35, ptr @.str.21], [16 x i8] zeroinitializer }, align 32
@mmp2_gpu_bus_parent_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 32, i32 48, i32 16416], [16 x i8] zeroinitializer }, align 32
@mmp2_apmu_gate_clks = internal global { [1 x %struct.mmp_param_gate_clk], [56 x i8] } { [1 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 124, ptr @.str.137, ptr @.str.95, i32 4, i32 204, i32 5, i32 5, i32 0, i32 1, ptr @gpu_lock }], [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic0_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic1_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp0_mux\00", [22 x i8] zeroinitializer }, align 32
@disp_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.30, ptr @.str.24, ptr @.str.20], [16 x i8] zeroinitializer }, align 32
@disp0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.102, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp1_mux\00", [22 x i8] zeroinitializer }, align 32
@disp1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.103, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp0_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp1_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp0_div\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp0_sphy_div\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp1_div\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccic0_sphy_div\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccic1_sphy_div\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_clk\00", [24 x i8] zeroinitializer }, align 32
@usb_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.130, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbhsic0_clk\00", [19 x i8] zeroinitializer }, align 32
@usbhsic0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.131, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbhsic1_clk\00", [19 x i8] zeroinitializer }, align 32
@usbhsic1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.132, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp0_lcdc_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp0_sphy_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccic_arbiter\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccic0_phy_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccic0_sphy_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccic1_phy_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccic1_sphy_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_bus_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_mix_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbhsic0_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbhsic1_lock\00", [18 x i8] zeroinitializer }, align 32
@mmp3_gpu_bus_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.33, ptr @.str.28, ptr @.str.35], [16 x i8] zeroinitializer }, align 32
@mmp3_gpu_gc_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_2d_mux\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_3d_div\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_2d_div\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh4_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_3d_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_2d_clk\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 524, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 531, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 537, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 543, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 486, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"gpu_lock\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 499, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"audio_lock\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 506, i32 29 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 318, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 326, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"fixed_rate_clks\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 99, i32 40 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"mmp3_pll_clks\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 111, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant [9 x i8] c"pll_clks\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 106, i32 33 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"fixed_factor_clks\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 119, i32 42 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 201, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 201, i32 44 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"uart_factor_masks\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 139, i32 36 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"uart_factor_tbl\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 147, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 208, i32 26 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"i2s_factor_masks\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 152, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"i2s_factor_tbl\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 161, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 213, i32 26 }
@___asan_gen_.223 = private unnamed_addr constant [15 x i8] c"mpmu_gate_clks\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 175, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 100, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 101, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 102, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 103, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 112, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 113, i32 20 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 114, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 115, i32 20 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 116, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 120, i32 20 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 122, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 123, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 124, i32 21 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 125, i32 20 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 126, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 127, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 128, i32 20 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 129, i32 20 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 130, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 131, i32 21 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 132, i32 20 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 133, i32 20 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 134, i32 21 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 135, i32 22 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 136, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 176, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant [10 x i8] c"acgr_lock\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 177, i32 18 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 173, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant [14 x i8] c"apbc_mux_clks\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 239, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant [15 x i8] c"apbc_gate_clks\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 251, i32 34 }
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c"mmp3_apbc_gate_clks\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 278, i32 34 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 240, i32 6 }
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"uart_parent_names\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 226, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant [11 x i8] c"uart0_lock\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 241, i32 6 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"uart1_lock\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 242, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant [11 x i8] c"uart2_lock\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 243, i32 6 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 244, i32 6 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"ssp_parent_names\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 232, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant [10 x i8] c"ssp0_lock\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 245, i32 6 }
@___asan_gen_.358 = private unnamed_addr constant [10 x i8] c"ssp1_lock\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 246, i32 6 }
@___asan_gen_.364 = private unnamed_addr constant [10 x i8] c"ssp2_lock\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 247, i32 6 }
@___asan_gen_.370 = private unnamed_addr constant [10 x i8] c"ssp3_lock\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 248, i32 6 }
@___asan_gen_.376 = private unnamed_addr constant [19 x i8] c"timer_parent_names\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 235, i32 27 }
@___asan_gen_.379 = private unnamed_addr constant [11 x i8] c"timer_lock\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 223, i32 8 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 224, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 225, i32 8 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 228, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 229, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 230, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 231, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 234, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 252, i32 19 }
@___asan_gen_.409 = private unnamed_addr constant [11 x i8] c"reset_lock\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 253, i32 19 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 254, i32 19 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 255, i32 19 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 256, i32 19 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 257, i32 19 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 258, i32 18 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 259, i32 17 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 260, i32 17 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 261, i32 18 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 261, i32 30 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 262, i32 18 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 263, i32 18 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 264, i32 18 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 266, i32 19 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 267, i32 19 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 268, i32 19 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 269, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 270, i32 18 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 271, i32 18 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 272, i32 18 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 273, i32 18 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 274, i32 19 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 275, i32 22 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 237, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 279, i32 22 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 280, i32 22 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 281, i32 22 }
@___asan_gen_.493 = private unnamed_addr constant [15 x i8] c"sdh_mix_config\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 302, i32 34 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 402, i32 35 }
@___asan_gen_.499 = private unnamed_addr constant [17 x i8] c"sdh_parent_names\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 301, i32 27 }
@___asan_gen_.502 = private unnamed_addr constant [9 x i8] c"sdh_lock\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [17 x i8] c"ccic0_mix_config\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 328, i32 34 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 408, i32 35 }
@___asan_gen_.511 = private unnamed_addr constant [18 x i8] c"ccic_parent_names\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 316, i32 27 }
@___asan_gen_.514 = private unnamed_addr constant [11 x i8] c"ccic0_lock\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"ccic1_mix_config\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 331, i32 34 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 415, i32 35 }
@___asan_gen_.523 = private unnamed_addr constant [11 x i8] c"ccic1_lock\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [14 x i8] c"apmu_mux_clks\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 335, i32 33 }
@___asan_gen_.529 = private unnamed_addr constant [14 x i8] c"apmu_div_clks\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 349, i32 33 }
@___asan_gen_.532 = private unnamed_addr constant [15 x i8] c"apmu_gate_clks\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 362, i32 34 }
@___asan_gen_.535 = private unnamed_addr constant [19 x i8] c"mmp3_apmu_mux_clks\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 340, i32 33 }
@___asan_gen_.538 = private unnamed_addr constant [19 x i8] c"mmp3_apmu_div_clks\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 357, i32 33 }
@___asan_gen_.541 = private unnamed_addr constant [20 x i8] c"mmp3_apmu_gate_clks\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 390, i32 34 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 440, i32 32 }
@___asan_gen_.547 = private unnamed_addr constant [25 x i8] c"mmp2_gpu_gc_parent_names\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 319, i32 27 }
@___asan_gen_.550 = private unnamed_addr constant [25 x i8] c"mmp2_gpu_gc_parent_table\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 320, i32 12 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 447, i32 32 }
@___asan_gen_.556 = private unnamed_addr constant [26 x i8] c"mmp2_gpu_bus_parent_names\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 321, i32 27 }
@___asan_gen_.559 = private unnamed_addr constant [26 x i8] c"mmp2_gpu_bus_parent_table\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 322, i32 12 }
@___asan_gen_.562 = private unnamed_addr constant [20 x i8] c"mmp2_apmu_gate_clks\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 386, i32 34 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 300, i32 8 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 314, i32 8 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 315, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 336, i32 23 }
@___asan_gen_.577 = private unnamed_addr constant [18 x i8] c"disp_parent_names\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 312, i32 27 }
@___asan_gen_.580 = private unnamed_addr constant [11 x i8] c"disp0_lock\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 337, i32 23 }
@___asan_gen_.586 = private unnamed_addr constant [11 x i8] c"disp1_lock\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 310, i32 8 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 311, i32 8 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 350, i32 6 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 351, i32 6 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 352, i32 6 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 353, i32 6 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 354, i32 6 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 363, i32 17 }
@___asan_gen_.613 = private unnamed_addr constant [9 x i8] c"usb_lock\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 364, i32 22 }
@___asan_gen_.619 = private unnamed_addr constant [14 x i8] c"usbhsic0_lock\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 365, i32 22 }
@___asan_gen_.625 = private unnamed_addr constant [14 x i8] c"usbhsic1_lock\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 367, i32 18 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 368, i32 18 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 369, i32 18 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 370, i32 18 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 371, i32 19 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 372, i32 24 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 373, i32 24 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 374, i32 19 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 375, i32 26 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 376, i32 19 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 377, i32 23 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 378, i32 24 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 379, i32 19 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 380, i32 23 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 381, i32 24 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 382, i32 21 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 383, i32 19 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 383, i32 32 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 306, i32 8 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 307, i32 8 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 308, i32 8 }
@___asan_gen_.691 = private unnamed_addr constant [26 x i8] c"mmp3_gpu_bus_parent_names\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 323, i32 27 }
@___asan_gen_.694 = private unnamed_addr constant [25 x i8] c"mmp3_gpu_gc_parent_names\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 324, i32 27 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 345, i32 6 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 358, i32 6 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 359, i32 6 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 391, i32 18 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 392, i32 20 }
@___asan_gen_.712 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.713 = private constant [33 x i8] c"../drivers/clk/mmp/clk-of-mmp2.c\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 393, i32 20 }
@llvm.compiler.used = appending global [197 x ptr] [ptr @__of_table_mmp2_clk, ptr @__of_table_mmp3_clk, ptr @mmp2_clk_init._entry, ptr @mmp2_clk_init._entry.4, ptr @mmp2_clk_init._entry.7, ptr @mmp2_clk_init._entry_ptr, ptr @mmp2_clk_init._entry_ptr.6, ptr @mmp2_clk_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @gpu_lock, ptr @.str.11, ptr @audio_lock, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @fixed_rate_clks, ptr @mmp3_pll_clks, ptr @pll_clks, ptr @fixed_factor_clks, ptr @.str.15, ptr @.str.16, ptr @uart_factor_masks, ptr @uart_factor_tbl, ptr @.str.17, ptr @i2s_factor_masks, ptr @i2s_factor_tbl, ptr @.str.18, ptr @mpmu_gate_clks, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @acgr_lock, ptr @.str.45, ptr @.str.46, ptr @apbc_mux_clks, ptr @apbc_gate_clks, ptr @mmp3_apbc_gate_clks, ptr @.str.47, ptr @uart_parent_names, ptr @uart0_lock, ptr @.str.48, ptr @uart1_lock, ptr @.str.49, ptr @uart2_lock, ptr @.str.50, ptr @.str.51, ptr @ssp_parent_names, ptr @ssp0_lock, ptr @.str.52, ptr @ssp1_lock, ptr @.str.53, ptr @ssp2_lock, ptr @.str.54, ptr @ssp3_lock, ptr @.str.55, ptr @timer_parent_names, ptr @timer_lock, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @reset_lock, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @sdh_mix_config, ptr @.str.92, ptr @sdh_parent_names, ptr @sdh_lock, ptr @ccic0_mix_config, ptr @.str.93, ptr @ccic_parent_names, ptr @ccic0_lock, ptr @ccic1_mix_config, ptr @.str.94, ptr @ccic1_lock, ptr @apmu_mux_clks, ptr @apmu_div_clks, ptr @apmu_gate_clks, ptr @mmp3_apmu_mux_clks, ptr @mmp3_apmu_div_clks, ptr @mmp3_apmu_gate_clks, ptr @.str.95, ptr @mmp2_gpu_gc_parent_names, ptr @mmp2_gpu_gc_parent_table, ptr @.str.96, ptr @mmp2_gpu_bus_parent_names, ptr @mmp2_gpu_bus_parent_table, ptr @mmp2_apmu_gate_clks, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @disp_parent_names, ptr @disp0_lock, ptr @.str.101, ptr @disp1_lock, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @usb_lock, ptr @.str.110, ptr @usbhsic0_lock, ptr @.str.111, ptr @usbhsic1_lock, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @mmp3_gpu_bus_parent_names, ptr @mmp3_gpu_gc_parent_names, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], section "llvm.metadata"
@0 = internal global [192 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_clk_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_clk_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_rate_clks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_pll_clks to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_clks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_factor_clks to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_factor_masks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_factor_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_factor_masks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_factor_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpmu_gate_clks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acgr_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apbc_mux_clks to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apbc_gate_clks to i32), i32 920, i32 1152, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_apbc_gate_clks to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parent_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp3_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh_mix_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccic0_mix_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccic_parent_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccic0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccic1_mix_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccic1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_mux_clks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_div_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_gate_clks to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_apmu_mux_clks to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_apmu_div_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_apmu_gate_clks to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_gpu_gc_parent_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_gpu_gc_parent_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_gpu_bus_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_gpu_bus_parent_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_apmu_gate_clks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsic0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsic1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_gpu_bus_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_gpu_gc_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmp2_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp ne i32 %call1, 0
  %spec.select = zext i1 %tobool2.not to i32
  %1 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %1, align 8
  %call6 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #4
  %mpmu_base = getelementptr inbounds %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %mpmu_base, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %free_memory

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 1) #4
  %apmu_base = getelementptr inbounds %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %apmu_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %apmu_base, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %unmap_mpmu_region

if.end21:                                         ; preds = %if.end11
  %call22 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 2) #4
  %apbc_base = getelementptr inbounds %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %apbc_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %apbc_base, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  %6 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apmu_base, align 8
  tail call void @iounmap(ptr noundef %7) #4
  br label %unmap_mpmu_region

if.end31:                                         ; preds = %if.end21
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %10 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apmu_base, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 204
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.10, ptr noundef %add.ptr.i, i32 noundef 1536, i32 noundef 262147, i32 noundef 1572876, i32 noundef 0, ptr noundef nonnull @gpu_lock) #4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.10, ptr noundef %add.ptr.i, i32 noundef 34304, i32 noundef 3, i32 noundef 12, i32 noundef 1, ptr noundef nonnull @gpu_lock) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call3.sink.i = phi ptr [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  %12 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3.sink.i, ptr %12, align 8
  %num_domains.i = getelementptr inbounds %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_domains.i, align 8
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %num_domains.i, align 8
  %16 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apmu_base, align 8
  %add.ptr7.i = getelementptr i8, ptr %17, i32 268
  %call8.i = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.11, ptr noundef %add.ptr7.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @audio_lock) #4
  %arrayidx10.i = getelementptr %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i, ptr %arrayidx10.i, align 4
  %19 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_domains.i, align 8
  %inc13.i = add i32 %20, 1
  store i32 %inc13.i, ptr %num_domains.i, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp15.i = icmp eq i32 %22, 1
  br i1 %cmp15.i, label %if.then16.i, label %if.end.i.mmp2_pm_domain_init.exit_crit_edge

if.end.i.mmp2_pm_domain_init.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmp2_pm_domain_init.exit

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %apmu_base, align 8
  %add.ptr18.i = getelementptr i8, ptr %24, i32 508
  %call19.i = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.12, ptr noundef %add.ptr18.i, i32 noundef 1536, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  %arrayidx21.i = getelementptr %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call19.i, ptr %arrayidx21.i, align 8
  %26 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_domains.i, align 8
  %inc24.i = add i32 %27, 1
  store i32 %inc24.i, ptr %num_domains.i, align 8
  br label %mmp2_pm_domain_init.exit

mmp2_pm_domain_init.exit:                         ; preds = %if.then16.i, %if.end.i.mmp2_pm_domain_init.exit_crit_edge
  %pd_data.i = getelementptr inbounds %struct.mmp2_clk_unit, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %pd_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %12, ptr %pd_data.i, align 4
  %call29.i = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %np, ptr noundef %pd_data.i) #4
  tail call void @mmp_clk_init(ptr noundef %np, ptr noundef nonnull %call7.i.i, i32 noundef 200) #4
  tail call void @mmp_register_fixed_rate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fixed_rate_clks, i32 noundef 4) #4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i58 = icmp eq i32 %30, 1
  %31 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mpmu_base, align 4
  br i1 %cmp.i58, label %if.then.i59, label %if.else.i60

if.then.i59:                                      ; preds = %mmp2_pm_domain_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_register_pll_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mmp3_pll_clks, ptr noundef %32, i32 noundef 5) #4
  br label %mmp2_main_clk_init.exit

if.else.i60:                                      ; preds = %mmp2_pm_domain_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_register_pll_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @pll_clks, ptr noundef %32, i32 noundef 2) #4
  br label %mmp2_main_clk_init.exit

mmp2_main_clk_init.exit:                          ; preds = %if.else.i60, %if.then.i59
  tail call void @mmp_register_fixed_factor_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fixed_factor_clks, i32 noundef 17) #4
  %33 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mpmu_base, align 4
  %add.ptr.i61 = getelementptr i8, ptr %34, i32 20
  %call.i62 = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr.i61, ptr noundef nonnull @uart_factor_masks, ptr noundef nonnull @uart_factor_tbl, i32 noundef 2, ptr noundef null) #4
  tail call void @mmp_clk_add(ptr noundef nonnull %call7.i.i, i32 noundef 26, ptr noundef %call.i62) #4
  %35 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mpmu_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %36, i32 64
  %call6.i = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr5.i, ptr noundef nonnull @i2s_factor_masks, ptr noundef nonnull @i2s_factor_tbl, i32 noundef 9, ptr noundef null) #4
  %37 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mpmu_base, align 4
  %add.ptr8.i = getelementptr i8, ptr %38, i32 68
  %call9.i = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr8.i, ptr noundef nonnull @i2s_factor_masks, ptr noundef nonnull @i2s_factor_tbl, i32 noundef 9, ptr noundef null) #4
  %39 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mpmu_base, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mpmu_gate_clks, ptr noundef %40, i32 noundef 2) #4
  %41 = ptrtoint ptr %apbc_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %apbc_base, align 4
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apbc_mux_clks, ptr noundef %42, i32 noundef 9) #4
  %43 = ptrtoint ptr %apbc_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %apbc_base, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apbc_gate_clks, ptr noundef %44, i32 noundef 23) #4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i65 = icmp eq i32 %46, 1
  br i1 %cmp.i65, label %if.then.i66, label %mmp2_main_clk_init.exit.mmp2_apb_periph_clk_init.exit_crit_edge

mmp2_main_clk_init.exit.mmp2_apb_periph_clk_init.exit_crit_edge: ; preds = %mmp2_main_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmp2_apb_periph_clk_init.exit

if.then.i66:                                      ; preds = %mmp2_main_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %apbc_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %apbc_base, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mmp3_apbc_gate_clks, ptr noundef %48, i32 noundef 3) #4
  br label %mmp2_apb_periph_clk_init.exit

mmp2_apb_periph_clk_init.exit:                    ; preds = %if.then.i66, %mmp2_main_clk_init.exit.mmp2_apb_periph_clk_init.exit_crit_edge
  %49 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %apmu_base, align 8
  %add.ptr.i69 = getelementptr i8, ptr %50, i32 84
  store ptr %add.ptr.i69, ptr @sdh_mix_config, align 4
  %call.i70 = tail call ptr @mmp_clk_register_mix(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @sdh_parent_names, i8 noundef zeroext 4, i32 noundef 4, ptr noundef nonnull @sdh_mix_config, ptr noundef nonnull @sdh_lock) #4
  %51 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %apmu_base, align 8
  %add.ptr3.i = getelementptr i8, ptr %52, i32 80
  store ptr %add.ptr3.i, ptr @ccic0_mix_config, align 4
  %call4.i = tail call ptr @mmp_clk_register_mix(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @ccic_parent_names, i8 noundef zeroext 3, i32 noundef 4, ptr noundef nonnull @ccic0_mix_config, ptr noundef nonnull @ccic0_lock) #4
  tail call void @mmp_clk_add(ptr noundef nonnull %call7.i.i, i32 noundef 113, ptr noundef %call4.i) #4
  %53 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %apmu_base, align 8
  %add.ptr6.i = getelementptr i8, ptr %54, i32 244
  store ptr %add.ptr6.i, ptr @ccic1_mix_config, align 4
  %call7.i = tail call ptr @mmp_clk_register_mix(ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @ccic_parent_names, i8 noundef zeroext 3, i32 noundef 4, ptr noundef nonnull @ccic1_mix_config, ptr noundef nonnull @ccic1_lock) #4
  tail call void @mmp_clk_add(ptr noundef nonnull %call7.i.i, i32 noundef 117, ptr noundef %call7.i) #4
  %55 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %apmu_base, align 8
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apmu_mux_clks, ptr noundef %56, i32 noundef 2) #4
  %57 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %apmu_base, align 8
  tail call void @mmp_register_div_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apmu_div_clks, ptr noundef %58, i32 noundef 5) #4
  %59 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %apmu_base, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apmu_gate_clks, ptr noundef %60, i32 noundef 20) #4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i72 = icmp eq i32 %62, 1
  %63 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %apmu_base, align 8
  br i1 %cmp.i72, label %if.then.i73, label %if.else.i76

if.then.i73:                                      ; preds = %mmp2_apb_periph_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mmp3_apmu_mux_clks, ptr noundef %64, i32 noundef 3) #4
  %65 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %apmu_base, align 8
  tail call void @mmp_register_div_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mmp3_apmu_div_clks, ptr noundef %66, i32 noundef 2) #4
  %67 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %apmu_base, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mmp3_apmu_gate_clks, ptr noundef %68, i32 noundef 3) #4
  br label %mmp2_axi_periph_clk_init.exit

if.else.i76:                                      ; preds = %mmp2_apb_periph_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr15.i = getelementptr i8, ptr %64, i32 204
  %call16.i = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @mmp2_gpu_gc_parent_names, i8 noundef zeroext 6, i32 noundef 4, ptr noundef %add.ptr15.i, i8 noundef zeroext 0, i32 noundef 4288, i8 noundef zeroext 0, ptr noundef nonnull @mmp2_gpu_gc_parent_table, ptr noundef nonnull @gpu_lock) #4
  %69 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %apmu_base, align 8
  %add.ptr18.i74 = getelementptr i8, ptr %70, i32 204
  %call19.i75 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @mmp2_gpu_bus_parent_names, i8 noundef zeroext 4, i32 noundef 4, ptr noundef %add.ptr18.i74, i8 noundef zeroext 0, i32 noundef 16432, i8 noundef zeroext 0, ptr noundef nonnull @mmp2_gpu_bus_parent_table, ptr noundef nonnull @gpu_lock) #4
  %71 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %apmu_base, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mmp2_apmu_gate_clks, ptr noundef %72, i32 noundef 1) #4
  br label %mmp2_axi_periph_clk_init.exit

mmp2_axi_periph_clk_init.exit:                    ; preds = %if.else.i76, %if.then.i73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 460) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %mmp2_axi_periph_clk_init.exit.cleanup_crit_edge, label %for.cond.preheader.i

mmp2_axi_periph_clk_init.exit.cleanup_crit_edge:  ; preds = %mmp2_axi_periph_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.i:                             ; preds = %mmp2_axi_periph_clk_init.exit
  %74 = ptrtoint ptr %apbc_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %apbc_base, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.028.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i80, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [23 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %i.028.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.028.i
  %78 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx1.i, align 4
  %offset.i = getelementptr [23 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %i.028.i, i32 4
  %79 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offset.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %75, i32 %80
  %reg.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.028.i, i32 1
  %81 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i79, ptr %reg.i, align 4
  %flags.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.028.i, i32 3
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %flags.i, align 4
  %lock.i = getelementptr [23 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %i.028.i, i32 9
  %83 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lock.i, align 4
  %lock7.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.028.i, i32 4
  %85 = ptrtoint ptr %lock7.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %lock7.i, align 4
  %bits.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.028.i, i32 2
  %86 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4, ptr %bits.i, align 4
  %inc.i80 = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i80, 23
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_clk_reset_register(ptr noundef %np, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 23) #4
  br label %cleanup

unmap_mpmu_region:                                ; preds = %do.end28, %do.end18
  %87 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mpmu_base, align 4
  tail call void @iounmap(ptr noundef %88) #4
  br label %free_memory

free_memory:                                      ; preds = %unmap_mpmu_region, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %free_memory, %for.end.i, %mmp2_axi_periph_clk_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_pm_domain_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_rate_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_pll_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_factor_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_factor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_gate_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_mux_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_mix(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_div_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_reset_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !142, !143, !145, !146, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !243, !245, !247, !249, !250, !252, !254, !255, !257, !259, !261, !263, !265, !266, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !328, !330, !331, !333, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @__of_table_mmp2_clk, !1, !"__of_table_mmp2_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 569, i32 1}
!2 = !{ptr @__of_table_mmp3_clk, !3, !"__of_table_mmp3_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 570, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 524, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 531, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mmp2_clk_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @mmp2_clk_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 537, i32 3}
!14 = !{ptr @mmp2_clk_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mmp2_clk_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 543, i32 3}
!18 = !{ptr @mmp2_clk_init._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mmp2_clk_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 486, i32 29}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 499, i32 28}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 506, i32 29}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 318, i32 8}
!28 = !{ptr @gpu_lock, !27, !"gpu_lock", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 326, i32 8}
!31 = !{ptr @audio_lock, !30, !"audio_lock", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 201, i32 32}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 201, i32 44}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 208, i32 26}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 213, i32 26}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 100, i32 19}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 101, i32 20}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 102, i32 21}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 103, i32 6}
!48 = !{ptr @fixed_rate_clks, !49, !"fixed_rate_clks", i1 false, i1 false}
!49 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 99, i32 40}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 112, i32 20}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 113, i32 20}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 114, i32 20}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 115, i32 20}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 116, i32 20}
!60 = !{ptr @mmp3_pll_clks, !61, !"mmp3_pll_clks", i1 false, i1 false}
!61 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 111, i32 33}
!62 = !{ptr @pll_clks, !63, !"pll_clks", i1 false, i1 false}
!63 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 106, i32 33}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 120, i32 20}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 122, i32 20}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 123, i32 21}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 124, i32 21}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 125, i32 20}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 126, i32 20}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 127, i32 21}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 128, i32 20}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 129, i32 20}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 130, i32 20}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 131, i32 21}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 132, i32 20}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 133, i32 20}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 134, i32 21}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 135, i32 22}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 136, i32 22}
!96 = !{ptr @fixed_factor_clks, !97, !"fixed_factor_clks", i1 false, i1 false}
!97 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 119, i32 42}
!98 = !{ptr @uart_factor_masks, !99, !"uart_factor_masks", i1 false, i1 false}
!99 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 139, i32 36}
!100 = !{ptr @uart_factor_tbl, !101, !"uart_factor_tbl", i1 false, i1 false}
!101 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 147, i32 34}
!102 = !{ptr @i2s_factor_masks, !103, !"i2s_factor_masks", i1 false, i1 false}
!103 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 152, i32 36}
!104 = !{ptr @i2s_factor_tbl, !105, !"i2s_factor_tbl", i1 false, i1 false}
!105 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 161, i32 34}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 176, i32 18}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 177, i32 18}
!110 = !{ptr @mpmu_gate_clks, !111, !"mpmu_gate_clks", i1 false, i1 false}
!111 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 175, i32 34}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 173, i32 8}
!114 = !{ptr @acgr_lock, !113, !"acgr_lock", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 240, i32 6}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 241, i32 6}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 242, i32 6}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 243, i32 6}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 244, i32 6}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 245, i32 6}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 246, i32 6}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 247, i32 6}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 248, i32 6}
!133 = !{ptr @apbc_mux_clks, !134, !"apbc_mux_clks", i1 false, i1 false}
!134 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 239, i32 33}
!135 = !{ptr @uart_parent_names, !136, !"uart_parent_names", i1 false, i1 false}
!136 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 226, i32 27}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 223, i32 8}
!139 = !{ptr @uart0_lock, !138, !"uart0_lock", i1 false, i1 false}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 224, i32 8}
!142 = !{ptr @uart1_lock, !141, !"uart1_lock", i1 false, i1 false}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 225, i32 8}
!145 = !{ptr @uart2_lock, !144, !"uart2_lock", i1 false, i1 false}
!146 = !{ptr @ssp_parent_names, !147, !"ssp_parent_names", i1 false, i1 false}
!147 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 232, i32 27}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 228, i32 8}
!150 = !{ptr @ssp0_lock, !149, !"ssp0_lock", i1 false, i1 false}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 229, i32 8}
!153 = !{ptr @ssp1_lock, !152, !"ssp1_lock", i1 false, i1 false}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 230, i32 8}
!156 = !{ptr @ssp2_lock, !155, !"ssp2_lock", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 231, i32 8}
!159 = !{ptr @ssp3_lock, !158, !"ssp3_lock", i1 false, i1 false}
!160 = !{ptr @timer_parent_names, !161, !"timer_parent_names", i1 false, i1 false}
!161 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 235, i32 27}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 234, i32 8}
!164 = !{ptr @timer_lock, !163, !"timer_lock", i1 false, i1 false}
!165 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 252, i32 19}
!167 = !{ptr @.str.65, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 253, i32 19}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 254, i32 19}
!171 = !{ptr @.str.67, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 255, i32 19}
!173 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 256, i32 19}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 257, i32 19}
!177 = !{ptr @.str.70, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 258, i32 18}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 259, i32 17}
!181 = !{ptr @.str.72, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 260, i32 17}
!183 = !{ptr @.str.73, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 261, i32 18}
!185 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 261, i32 30}
!187 = !{ptr @.str.75, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 262, i32 18}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 263, i32 18}
!191 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 264, i32 18}
!193 = !{ptr @.str.78, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 266, i32 19}
!195 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 267, i32 19}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 268, i32 19}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 269, i32 19}
!201 = !{ptr @.str.82, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 270, i32 18}
!203 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 271, i32 18}
!205 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 272, i32 18}
!207 = !{ptr @.str.85, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 273, i32 18}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 274, i32 19}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 275, i32 22}
!213 = !{ptr @apbc_gate_clks, !214, !"apbc_gate_clks", i1 false, i1 false}
!214 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 251, i32 34}
!215 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 237, i32 8}
!217 = !{ptr @reset_lock, !216, !"reset_lock", i1 false, i1 false}
!218 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 279, i32 22}
!220 = !{ptr @.str.90, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 280, i32 22}
!222 = !{ptr @.str.91, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 281, i32 22}
!224 = !{ptr @mmp3_apbc_gate_clks, !225, !"mmp3_apbc_gate_clks", i1 false, i1 false}
!225 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 278, i32 34}
!226 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 402, i32 35}
!228 = !{ptr @.str.93, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 408, i32 35}
!230 = !{ptr @.str.94, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 415, i32 35}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 440, i32 32}
!234 = !{ptr @.str.96, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 447, i32 32}
!236 = !{ptr @sdh_mix_config, !237, !"sdh_mix_config", i1 false, i1 false}
!237 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 302, i32 34}
!238 = !{ptr @sdh_parent_names, !239, !"sdh_parent_names", i1 false, i1 false}
!239 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 301, i32 27}
!240 = !{ptr @.str.97, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 300, i32 8}
!242 = !{ptr @sdh_lock, !241, !"sdh_lock", i1 false, i1 false}
!243 = !{ptr @ccic0_mix_config, !244, !"ccic0_mix_config", i1 false, i1 false}
!244 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 328, i32 34}
!245 = !{ptr @ccic_parent_names, !246, !"ccic_parent_names", i1 false, i1 false}
!246 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 316, i32 27}
!247 = !{ptr @.str.98, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 314, i32 8}
!249 = !{ptr @ccic0_lock, !248, !"ccic0_lock", i1 false, i1 false}
!250 = !{ptr @ccic1_mix_config, !251, !"ccic1_mix_config", i1 false, i1 false}
!251 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 331, i32 34}
!252 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 315, i32 8}
!254 = !{ptr @ccic1_lock, !253, !"ccic1_lock", i1 false, i1 false}
!255 = !{ptr @.str.100, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 336, i32 23}
!257 = !{ptr @.str.101, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 337, i32 23}
!259 = !{ptr @apmu_mux_clks, !260, !"apmu_mux_clks", i1 false, i1 false}
!260 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 335, i32 33}
!261 = !{ptr @disp_parent_names, !262, !"disp_parent_names", i1 false, i1 false}
!262 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 312, i32 27}
!263 = !{ptr @.str.102, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 310, i32 8}
!265 = !{ptr @disp0_lock, !264, !"disp0_lock", i1 false, i1 false}
!266 = !{ptr @.str.103, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 311, i32 8}
!268 = !{ptr @disp1_lock, !267, !"disp1_lock", i1 false, i1 false}
!269 = !{ptr @.str.104, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 350, i32 6}
!271 = !{ptr @.str.105, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 351, i32 6}
!273 = !{ptr @.str.106, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 352, i32 6}
!275 = !{ptr @.str.107, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 353, i32 6}
!277 = !{ptr @.str.108, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 354, i32 6}
!279 = !{ptr @apmu_div_clks, !280, !"apmu_div_clks", i1 false, i1 false}
!280 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 349, i32 33}
!281 = !{ptr @.str.109, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 363, i32 17}
!283 = !{ptr @.str.110, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 364, i32 22}
!285 = !{ptr @.str.111, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 365, i32 22}
!287 = !{ptr @.str.112, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 367, i32 18}
!289 = !{ptr @.str.113, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 368, i32 18}
!291 = !{ptr @.str.114, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 369, i32 18}
!293 = !{ptr @.str.115, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 370, i32 18}
!295 = !{ptr @.str.116, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 371, i32 19}
!297 = !{ptr @.str.117, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 372, i32 24}
!299 = !{ptr @.str.118, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 373, i32 24}
!301 = !{ptr @.str.119, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 374, i32 19}
!303 = !{ptr @.str.120, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 375, i32 26}
!305 = !{ptr @.str.121, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 376, i32 19}
!307 = !{ptr @.str.122, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 377, i32 23}
!309 = !{ptr @.str.123, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 378, i32 24}
!311 = !{ptr @.str.124, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 379, i32 19}
!313 = !{ptr @.str.125, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 380, i32 23}
!315 = !{ptr @.str.126, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 381, i32 24}
!317 = !{ptr @.str.127, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 382, i32 21}
!319 = !{ptr @.str.128, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 383, i32 19}
!321 = !{ptr @.str.129, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 383, i32 32}
!323 = !{ptr @apmu_gate_clks, !324, !"apmu_gate_clks", i1 false, i1 false}
!324 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 362, i32 34}
!325 = !{ptr @.str.130, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 306, i32 8}
!327 = !{ptr @usb_lock, !326, !"usb_lock", i1 false, i1 false}
!328 = !{ptr @.str.131, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 307, i32 8}
!330 = !{ptr @usbhsic0_lock, !329, !"usbhsic0_lock", i1 false, i1 false}
!331 = !{ptr @.str.132, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 308, i32 8}
!333 = !{ptr @usbhsic1_lock, !332, !"usbhsic1_lock", i1 false, i1 false}
!334 = !{ptr @.str.133, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 345, i32 6}
!336 = !{ptr @mmp3_apmu_mux_clks, !337, !"mmp3_apmu_mux_clks", i1 false, i1 false}
!337 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 340, i32 33}
!338 = !{ptr @mmp3_gpu_bus_parent_names, !339, !"mmp3_gpu_bus_parent_names", i1 false, i1 false}
!339 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 323, i32 27}
!340 = !{ptr @mmp3_gpu_gc_parent_names, !341, !"mmp3_gpu_gc_parent_names", i1 false, i1 false}
!341 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 324, i32 27}
!342 = !{ptr @.str.134, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 358, i32 6}
!344 = !{ptr @.str.135, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 359, i32 6}
!346 = !{ptr @mmp3_apmu_div_clks, !347, !"mmp3_apmu_div_clks", i1 false, i1 false}
!347 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 357, i32 33}
!348 = !{ptr @.str.136, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 391, i32 18}
!350 = !{ptr @.str.137, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 392, i32 20}
!352 = !{ptr @.str.138, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 393, i32 20}
!354 = !{ptr @mmp3_apmu_gate_clks, !355, !"mmp3_apmu_gate_clks", i1 false, i1 false}
!355 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 390, i32 34}
!356 = !{ptr @mmp2_gpu_gc_parent_names, !357, !"mmp2_gpu_gc_parent_names", i1 false, i1 false}
!357 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 319, i32 27}
!358 = !{ptr @mmp2_gpu_gc_parent_table, !359, !"mmp2_gpu_gc_parent_table", i1 false, i1 false}
!359 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 320, i32 12}
!360 = !{ptr @mmp2_gpu_bus_parent_names, !361, !"mmp2_gpu_bus_parent_names", i1 false, i1 false}
!361 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 321, i32 27}
!362 = !{ptr @mmp2_gpu_bus_parent_table, !363, !"mmp2_gpu_bus_parent_table", i1 false, i1 false}
!363 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 322, i32 12}
!364 = !{ptr @mmp2_apmu_gate_clks, !365, !"mmp2_apmu_gate_clks", i1 false, i1 false}
!365 = !{!"../drivers/clk/mmp/clk-of-mmp2.c", i32 386, i32 34}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
