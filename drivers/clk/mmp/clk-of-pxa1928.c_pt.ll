; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-of-pxa1928.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-of-pxa1928.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmp_param_fixed_rate_clk = type { i32, ptr, ptr, i32, i32 }
%struct.mmp_param_fixed_factor_clk = type { i32, ptr, ptr, i32, i32, i32 }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_clk_factor_tbl = type { i32, i32 }
%struct.mmp_param_mux_clk = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr }
%struct.mmp_param_div_clk = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mmp_param_gate_clk = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pxa1928_clk_unit = type { %struct.mmp_clk_unit, ptr, ptr, ptr, ptr }
%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mmp_clk_reset_cell = type { i32, ptr, i32, i32, ptr }

@__of_table_pxa1928_mpmu_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-mpmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_mpmu_clk_init }, section "__clk_of_table", align 4
@__of_table_pxa1928_apmu_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-apmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_apmu_clk_init }, section "__clk_of_table", align 4
@__of_table_pxa1928_apbc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-apbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_apbc_clk_init }, section "__clk_of_table", align 4
@pxa1928_mpmu_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to map mpmu registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pxa1928_mpmu_clk_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/mmp/clk-of-pxa1928.c\00", [63 x i8] zeroinitializer }, align 32
@pxa1928_mpmu_clk_init._entry_ptr = internal global ptr @pxa1928_mpmu_clk_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fixed_rate_clks = internal global { [6 x %struct.mmp_param_fixed_rate_clk], [40 x i8] } { [6 x %struct.mmp_param_fixed_rate_clk] [%struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.5, ptr null, i32 0, i32 32768 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.6, ptr null, i32 0, i32 26000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.7, ptr null, i32 0, i32 624000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.8, ptr null, i32 0, i32 832000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.9, ptr null, i32 0, i32 1248000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.10, ptr null, i32 0, i32 480000000 }], [40 x i8] zeroinitializer }, align 32
@fixed_factor_clks = internal global { [8 x %struct.mmp_param_fixed_factor_clk], [32 x i8] } { [8 x %struct.mmp_param_fixed_factor_clk] [%struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.11, ptr @.str.7, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.12, ptr @.str.7, i32 1, i32 9, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.13, ptr @.str.7, i32 1, i32 12, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.14, ptr @.str.7, i32 1, i32 16, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.15, ptr @.str.7, i32 1, i32 20, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.4, ptr @.str.7, i32 2, i32 3, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.16, ptr @.str.6, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.17, ptr @.str.6, i32 1, i32 4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_416\00", [23 x i8] zeroinitializer }, align 32
@uart_factor_masks = internal global { %struct.mmp_clk_factor_masks, [40 x i8] } { %struct.mmp_clk_factor_masks { i32 2, i32 8191, i32 8191, i32 16, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@uart_factor_tbl = internal global { [2 x %struct.mmp_clk_factor_tbl], [16 x i8] } { [2 x %struct.mmp_clk_factor_tbl] [%struct.mmp_clk_factor_tbl { i32 832, i32 234 }, %struct.mmp_clk_factor_tbl { i32 1, i32 1 }], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk32\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vctcxo\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_624\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll5p\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll5\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_d2\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_d9\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_d12\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_d16\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_d20\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vctcxo_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vctcxo_d4\00", [22 x i8] zeroinitializer }, align 32
@pxa1928_apmu_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to map apmu registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pxa1928_apmu_clk_init\00", [42 x i8] zeroinitializer }, align 32
@pxa1928_apmu_clk_init._entry_ptr = internal global ptr @pxa1928_apmu_clk_init._entry, section ".printk_index", align 4
@apmu_mux_clks = internal global { [1 x %struct.mmp_param_mux_clk], [32 x i8] } { [1 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.20, ptr @sdh_parent_names, i8 4, i32 4, i32 84, i8 8, i8 2, i8 0, ptr @sdh0_lock }], [32 x i8] zeroinitializer }, align 32
@apmu_div_clks = internal global { [1 x %struct.mmp_param_div_clk], [36 x i8] } { [1 x %struct.mmp_param_div_clk] [%struct.mmp_param_div_clk { i32 0, ptr @.str.22, ptr @.str.20, i32 0, i32 84, i8 10, i8 4, i8 1, ptr @sdh0_lock }], [36 x i8] zeroinitializer }, align 32
@apmu_gate_clks = internal global { [7 x %struct.mmp_param_gate_clk], [72 x i8] } { [7 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 23, ptr @.str.23, ptr @.str.10, i32 0, i32 92, i32 9, i32 9, i32 0, i32 0, ptr @usb_lock }, %struct.mmp_param_gate_clk { i32 62, ptr @.str.24, ptr @.str.10, i32 0, i32 248, i32 9, i32 9, i32 0, i32 0, ptr @usb_lock }, %struct.mmp_param_gate_clk { i32 21, ptr @.str.25, ptr @.str.22, i32 4, i32 84, i32 27, i32 27, i32 0, i32 0, ptr @sdh0_lock }, %struct.mmp_param_gate_clk { i32 22, ptr @.str.26, ptr @.str.22, i32 4, i32 88, i32 27, i32 27, i32 0, i32 0, ptr @sdh1_lock }, %struct.mmp_param_gate_clk { i32 58, ptr @.str.27, ptr @.str.22, i32 4, i32 232, i32 27, i32 27, i32 0, i32 0, ptr @sdh2_lock }, %struct.mmp_param_gate_clk { i32 59, ptr @.str.28, ptr @.str.22, i32 4, i32 236, i32 27, i32 27, i32 0, i32 0, ptr @sdh3_lock }, %struct.mmp_param_gate_clk { i32 87, ptr @.str.29, ptr @.str.22, i32 4, i32 348, i32 27, i32 27, i32 0, i32 0, ptr @sdh4_lock }], [72 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdh_mux\00", [24 x i8] zeroinitializer }, align 32
@sdh_parent_names = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.4], [16 x i8] zeroinitializer }, align 32
@sdh0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdh0_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdh_div\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_clk\00", [24 x i8] zeroinitializer }, align 32
@usb_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsic_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh1_clk\00", [23 x i8] zeroinitializer }, align 32
@sdh1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh2_clk\00", [23 x i8] zeroinitializer }, align 32
@sdh2_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh3_clk\00", [23 x i8] zeroinitializer }, align 32
@sdh3_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdh4_clk\00", [23 x i8] zeroinitializer }, align 32
@sdh4_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdh1_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdh2_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdh3_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdh4_lock\00", [22 x i8] zeroinitializer }, align 32
@pxa1928_apbc_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to map apbc registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pxa1928_apbc_clk_init\00", [42 x i8] zeroinitializer }, align 32
@pxa1928_apbc_clk_init._entry_ptr = internal global ptr @pxa1928_apbc_clk_init._entry, section ".printk_index", align 4
@apbc_mux_clks = internal global { [6 x %struct.mmp_param_mux_clk], [32 x i8] } { [6 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.37, ptr @uart_parent_names, i8 2, i32 4, i32 44, i8 4, i8 3, i8 0, ptr @uart0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.38, ptr @uart_parent_names, i8 2, i32 4, i32 48, i8 4, i8 3, i8 0, ptr @uart1_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.39, ptr @uart_parent_names, i8 2, i32 4, i32 52, i8 4, i8 3, i8 0, ptr @uart2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.40, ptr @uart_parent_names, i8 2, i32 4, i32 136, i8 4, i8 3, i8 0, ptr @uart3_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.41, ptr @ssp_parent_names, i8 4, i32 4, i32 76, i8 4, i8 3, i8 0, ptr @ssp0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.42, ptr @ssp_parent_names, i8 4, i32 4, i32 80, i8 4, i8 3, i8 0, ptr @ssp1_lock }], [32 x i8] zeroinitializer }, align 32
@apbc_gate_clks = internal global { [19 x %struct.mmp_param_gate_clk], [168 x i8] } { [19 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 1, ptr @.str.49, ptr @.str.6, i32 4, i32 4, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 2, ptr @.str.50, ptr @.str.6, i32 4, i32 8, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 3, ptr @.str.51, ptr @.str.6, i32 4, i32 12, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 4, ptr @.str.52, ptr @.str.6, i32 4, i32 16, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 31, ptr @.str.53, ptr @.str.6, i32 4, i32 124, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 32, ptr @.str.54, ptr @.str.6, i32 4, i32 128, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 14, ptr @.str.55, ptr @.str.6, i32 4, i32 56, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 6, ptr @.str.56, ptr @.str.5, i32 4, i32 24, i32 3, i32 3, i32 0, i32 1, ptr null }, %struct.mmp_param_gate_clk { i32 0, ptr @.str.57, ptr @.str.5, i32 4, i32 0, i32 131, i32 131, i32 0, i32 1, ptr null }, %struct.mmp_param_gate_clk { i32 15, ptr @.str.58, ptr @.str.6, i32 4, i32 60, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 16, ptr @.str.59, ptr @.str.6, i32 4, i32 64, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 17, ptr @.str.60, ptr @.str.6, i32 4, i32 68, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 18, ptr @.str.61, ptr @.str.6, i32 4, i32 72, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 11, ptr @.str.62, ptr @.str.37, i32 4, i32 44, i32 3, i32 3, i32 0, i32 0, ptr @uart0_lock }, %struct.mmp_param_gate_clk { i32 12, ptr @.str.63, ptr @.str.38, i32 4, i32 48, i32 3, i32 3, i32 0, i32 0, ptr @uart1_lock }, %struct.mmp_param_gate_clk { i32 13, ptr @.str.64, ptr @.str.39, i32 4, i32 52, i32 3, i32 3, i32 0, i32 0, ptr @uart2_lock }, %struct.mmp_param_gate_clk { i32 34, ptr @.str.65, ptr @.str.40, i32 4, i32 136, i32 3, i32 3, i32 0, i32 0, ptr @uart3_lock }, %struct.mmp_param_gate_clk { i32 19, ptr @.str.66, ptr @.str.41, i32 4, i32 76, i32 3, i32 3, i32 0, i32 0, ptr @ssp0_lock }, %struct.mmp_param_gate_clk { i32 20, ptr @.str.67, ptr @.str.42, i32 4, i32 80, i32 3, i32 3, i32 0, i32 0, ptr @ssp1_lock }], [168 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_mux\00", [22 x i8] zeroinitializer }, align 32
@uart_parent_names = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.6], [24 x i8] zeroinitializer }, align 32
@uart0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_mux\00", [22 x i8] zeroinitializer }, align 32
@uart1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_mux\00", [22 x i8] zeroinitializer }, align 32
@uart2_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_mux\00", [22 x i8] zeroinitializer }, align 32
@uart3_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp0_mux\00", [23 x i8] zeroinitializer }, align 32
@ssp_parent_names = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.16, ptr @.str.6, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@ssp0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp1_mux\00", [23 x i8] zeroinitializer }, align 32
@ssp1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart0_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart3_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp0_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp1_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi0_clk\00", [22 x i8] zeroinitializer }, align 32
@reset_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.68, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi4_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi5_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kpc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_lock\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 217, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"fixed_rate_clks\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 36, i32 40 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"fixed_factor_clks\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 45, i32 42 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 79, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 79, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"uart_factor_masks\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 56, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"uart_factor_tbl\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 64, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 37, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 38, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 39, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 40, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 41, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 42, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 46, i32 6 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 47, i32 6 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 48, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 49, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 50, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 52, i32 6 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 53, i32 6 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 236, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"apmu_mux_clks\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 150, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"apmu_div_clks\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 154, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"apmu_gate_clks\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 158, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 151, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"sdh_parent_names\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 146, i32 20 }
@___asan_gen_.162 = private unnamed_addr constant [10 x i8] c"sdh0_lock\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 141, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 155, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 159, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant [9 x i8] c"usb_lock\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 160, i32 21 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 162, i32 21 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 163, i32 21 }
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"sdh1_lock\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 164, i32 21 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"sdh2_lock\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 165, i32 21 }
@___asan_gen_.198 = private unnamed_addr constant [10 x i8] c"sdh3_lock\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 166, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant [10 x i8] c"sdh4_lock\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 148, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 142, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 143, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 144, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 145, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 257, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [14 x i8] c"apbc_mux_clks\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 98, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"apbc_gate_clks\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 107, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 99, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"uart_parent_names\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 90, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant [11 x i8] c"uart0_lock\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 100, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant [11 x i8] c"uart1_lock\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 101, i32 6 }
@___asan_gen_.255 = private unnamed_addr constant [11 x i8] c"uart2_lock\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 102, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant [11 x i8] c"uart3_lock\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 103, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"ssp_parent_names\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 94, i32 20 }
@___asan_gen_.270 = private unnamed_addr constant [10 x i8] c"ssp0_lock\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 104, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant [10 x i8] c"ssp1_lock\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 86, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 87, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 88, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 89, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 92, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 93, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 108, i32 22 }
@___asan_gen_.300 = private unnamed_addr constant [11 x i8] c"reset_lock\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 109, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 110, i32 22 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 111, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 112, i32 22 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 113, i32 22 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 114, i32 21 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 115, i32 20 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 116, i32 20 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 117, i32 21 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 118, i32 21 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 119, i32 21 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 120, i32 21 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 122, i32 22 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 123, i32 22 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 124, i32 22 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 125, i32 22 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 126, i32 21 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 127, i32 21 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [36 x i8] c"../drivers/clk/mmp/clk-of-pxa1928.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 96, i32 8 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__of_table_pxa1928_apbc_clk, ptr @__of_table_pxa1928_apmu_clk, ptr @__of_table_pxa1928_mpmu_clk, ptr @pxa1928_apbc_clk_init._entry, ptr @pxa1928_apbc_clk_init._entry_ptr, ptr @pxa1928_apmu_clk_init._entry, ptr @pxa1928_apmu_clk_init._entry_ptr, ptr @pxa1928_mpmu_clk_init._entry, ptr @pxa1928_mpmu_clk_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fixed_rate_clks, ptr @fixed_factor_clks, ptr @.str.3, ptr @.str.4, ptr @uart_factor_masks, ptr @uart_factor_tbl, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @apmu_mux_clks, ptr @apmu_div_clks, ptr @apmu_gate_clks, ptr @.str.20, ptr @sdh_parent_names, ptr @sdh0_lock, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @usb_lock, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sdh1_lock, ptr @.str.27, ptr @sdh2_lock, ptr @.str.28, ptr @sdh3_lock, ptr @.str.29, ptr @sdh4_lock, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @apbc_mux_clks, ptr @apbc_gate_clks, ptr @.str.37, ptr @uart_parent_names, ptr @uart0_lock, ptr @.str.38, ptr @uart1_lock, ptr @.str.39, ptr @uart2_lock, ptr @.str.40, ptr @uart3_lock, ptr @.str.41, ptr @ssp_parent_names, ptr @ssp0_lock, ptr @.str.42, ptr @ssp1_lock, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @reset_lock, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa1928_mpmu_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_rate_clks to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_factor_clks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_factor_masks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_factor_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa1928_apmu_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_mux_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_div_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmu_gate_clks to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh3_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh4_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa1928_apbc_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apbc_mux_clks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apbc_gate_clks to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parent_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa1928_mpmu_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #4
  %mpmu_base = getelementptr inbounds %struct.pxa1928_clk_unit, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %mpmu_base, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_register_fixed_rate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fixed_rate_clks, i32 noundef 6) #4
  tail call void @mmp_register_fixed_factor_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fixed_factor_clks, i32 noundef 8) #4
  %2 = ptrtoint ptr %mpmu_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpmu_base, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %call.i = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 4, ptr noundef %add.ptr.i, ptr noundef nonnull @uart_factor_masks, ptr noundef nonnull @uart_factor_tbl, i32 noundef 2, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa1928_apmu_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #4
  %apmu_base = getelementptr inbounds %struct.pxa1928_clk_unit, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %apmu_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %apmu_base, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_clk_init(ptr noundef %np, ptr noundef nonnull %call7.i.i, i32 noundef 96) #4
  %2 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apmu_base, align 4
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apmu_mux_clks, ptr noundef %3, i32 noundef 1) #4
  %4 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apmu_base, align 4
  tail call void @mmp_register_div_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apmu_div_clks, ptr noundef %5, i32 noundef 1) #4
  %6 = ptrtoint ptr %apmu_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apmu_base, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apmu_gate_clks, ptr noundef %7, i32 noundef 7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa1928_apbc_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #4
  %apbc_base = getelementptr inbounds %struct.pxa1928_clk_unit, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %apbc_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %apbc_base, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @mmp_clk_init(ptr noundef %np, ptr noundef nonnull %call7.i.i, i32 noundef 48) #4
  %2 = ptrtoint ptr %apbc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apbc_base, align 8
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apbc_mux_clks, ptr noundef %3, i32 noundef 6) #4
  %4 = ptrtoint ptr %apbc_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apbc_base, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apbc_gate_clks, ptr noundef %5, i32 noundef 19) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 380) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %for.cond.preheader.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end6
  %7 = ptrtoint ptr %apbc_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apbc_base, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.037.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [19 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %i.037.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.037.i
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx1.i, align 4
  %offset.i = getelementptr [19 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %i.037.i, i32 4
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %13
  %reg.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.037.i, i32 1
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %flags.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.037.i, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags.i, align 4
  %lock.i = getelementptr [19 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %i.037.i, i32 9
  %16 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock.i, align 4
  %lock10.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.037.i, i32 4
  %18 = ptrtoint ptr %lock10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %lock10.i, align 4
  %bits.i = getelementptr %struct.mmp_clk_reset_cell, ptr %call7.i.i.i.i, i32 %i.037.i, i32 2
  %19 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %bits.i, align 4
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_clk_reset_register(ptr noundef %np, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 19) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_rate_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_factor_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_factor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_mux_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_div_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_gate_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_reset_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !136, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__of_table_pxa1928_mpmu_clk, !1, !"__of_table_pxa1928_mpmu_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 224, i32 1}
!2 = !{ptr @__of_table_pxa1928_apmu_clk, !3, !"__of_table_pxa1928_apmu_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 245, i32 1}
!4 = !{ptr @__of_table_pxa1928_apbc_clk, !5, !"__of_table_pxa1928_apbc_clk", i1 false, i1 false}
!5 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 267, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 217, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pxa1928_mpmu_clk_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @pxa1928_mpmu_clk_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 79, i32 26}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 79, i32 38}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 37, i32 6}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 38, i32 6}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 39, i32 6}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 40, i32 6}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 41, i32 6}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 42, i32 6}
!28 = !{ptr @fixed_rate_clks, !29, !"fixed_rate_clks", i1 false, i1 false}
!29 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 36, i32 40}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 46, i32 6}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 47, i32 6}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 48, i32 6}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 49, i32 6}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 50, i32 6}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 52, i32 6}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 53, i32 6}
!44 = !{ptr @fixed_factor_clks, !45, !"fixed_factor_clks", i1 false, i1 false}
!45 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 45, i32 42}
!46 = !{ptr @uart_factor_masks, !47, !"uart_factor_masks", i1 false, i1 false}
!47 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 56, i32 36}
!48 = !{ptr @uart_factor_tbl, !49, !"uart_factor_tbl", i1 false, i1 false}
!49 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 64, i32 34}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 236, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pxa1928_apmu_clk_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @pxa1928_apmu_clk_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 151, i32 6}
!57 = !{ptr @apmu_mux_clks, !58, !"apmu_mux_clks", i1 false, i1 false}
!58 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 150, i32 33}
!59 = !{ptr @sdh_parent_names, !60, !"sdh_parent_names", i1 false, i1 false}
!60 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 146, i32 20}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 141, i32 8}
!63 = !{ptr @sdh0_lock, !62, !"sdh0_lock", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 155, i32 6}
!66 = !{ptr @apmu_div_clks, !67, !"apmu_div_clks", i1 false, i1 false}
!67 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 154, i32 33}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 159, i32 20}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 160, i32 21}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 162, i32 21}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 163, i32 21}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 164, i32 21}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 165, i32 21}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 166, i32 21}
!82 = !{ptr @apmu_gate_clks, !83, !"apmu_gate_clks", i1 false, i1 false}
!83 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 158, i32 34}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 148, i32 8}
!86 = !{ptr @usb_lock, !85, !"usb_lock", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 142, i32 8}
!89 = !{ptr @sdh1_lock, !88, !"sdh1_lock", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 143, i32 8}
!92 = !{ptr @sdh2_lock, !91, !"sdh2_lock", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 144, i32 8}
!95 = !{ptr @sdh3_lock, !94, !"sdh3_lock", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 145, i32 8}
!98 = !{ptr @sdh4_lock, !97, !"sdh4_lock", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 257, i32 3}
!101 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pxa1928_apbc_clk_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @pxa1928_apbc_clk_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 99, i32 6}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 100, i32 6}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 101, i32 6}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 102, i32 6}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 103, i32 6}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 104, i32 6}
!116 = !{ptr @apbc_mux_clks, !117, !"apbc_mux_clks", i1 false, i1 false}
!117 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 98, i32 33}
!118 = !{ptr @uart_parent_names, !119, !"uart_parent_names", i1 false, i1 false}
!119 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 90, i32 20}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 86, i32 8}
!122 = !{ptr @uart0_lock, !121, !"uart0_lock", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 87, i32 8}
!125 = !{ptr @uart1_lock, !124, !"uart1_lock", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 88, i32 8}
!128 = !{ptr @uart2_lock, !127, !"uart2_lock", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 89, i32 8}
!131 = !{ptr @uart3_lock, !130, !"uart3_lock", i1 false, i1 false}
!132 = !{ptr @ssp_parent_names, !133, !"ssp_parent_names", i1 false, i1 false}
!133 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 94, i32 20}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 92, i32 8}
!136 = !{ptr @ssp0_lock, !135, !"ssp0_lock", i1 false, i1 false}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 93, i32 8}
!139 = !{ptr @ssp1_lock, !138, !"ssp1_lock", i1 false, i1 false}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 108, i32 22}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 109, i32 22}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 110, i32 22}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 111, i32 22}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 112, i32 22}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 113, i32 22}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 114, i32 21}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 115, i32 20}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 116, i32 20}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 117, i32 21}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 118, i32 21}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 119, i32 21}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 120, i32 21}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 122, i32 22}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 123, i32 22}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 124, i32 22}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 125, i32 22}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 126, i32 21}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 127, i32 21}
!178 = !{ptr @apbc_gate_clks, !179, !"apbc_gate_clks", i1 false, i1 false}
!179 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 107, i32 34}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/mmp/clk-of-pxa1928.c", i32 96, i32 8}
!182 = !{ptr @reset_lock, !181, !"reset_lock", i1 false, i1 false}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
