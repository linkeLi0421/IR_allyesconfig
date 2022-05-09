; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-mmp2.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-mmp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_clk_factor_tbl = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@mmp2_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013error to ioremap MPMU base\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmp2_clk_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/mmp/clk-mmp2.c\00", [37 x i8] zeroinitializer }, align 32
@mmp2_clk_init._entry_ptr = internal global ptr @mmp2_clk_init._entry, section ".printk_index", align 4
@mmp2_clk_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013error to ioremap APMU base\0A\00", [34 x i8] zeroinitializer }, align 32
@mmp2_clk_init._entry_ptr.5 = internal global ptr @mmp2_clk_init._entry.3, section ".printk_index", align 4
@mmp2_clk_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013error to ioremap APBC base\0A\00", [34 x i8] zeroinitializer }, align 32
@mmp2_clk_init._entry_ptr.8 = internal global ptr @mmp2_clk_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk32\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vctcxo\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_2\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_4\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_8\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_16\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_20\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_3\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_6\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_12\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_2\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_4\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_8\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll2_16\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_3\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_6\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll2_12\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vctcxo_2\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vctcxo_4\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_pll\00", [23 x i8] zeroinitializer }, align 32
@uart_factor_masks = internal global { %struct.mmp_clk_factor_masks, [40 x i8] } { %struct.mmp_clk_factor_masks { i32 2, i32 8191, i32 8191, i32 16, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@uart_factor_tbl = internal global { [2 x %struct.mmp_clk_factor_tbl], [16 x i8] } { [2 x %struct.mmp_clk_factor_tbl] [%struct.mmp_clk_factor_tbl { i32 8125, i32 1536 }, %struct.mmp_clk_factor_tbl { i32 3521, i32 689 }], [16 x i8] zeroinitializer }, align 32
@clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.140, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"twsi0\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa2xx-i2c.0\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"twsi1\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa2xx-i2c.1\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"twsi2\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa2xx-i2c.2\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"twsi3\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa2xx-i2c.3\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"twsi4\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa2xx-i2c.4\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"twsi5\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa2xx-i2c.5\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp2-gpio\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kpc\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa27x-keypad\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmp-rtc\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm0\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-pwm.0\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-pwm.1\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-pwm.2\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp2-pwm.3\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_mux\00", [22 x i8] zeroinitializer }, align 32
@uart_parent = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.31, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart_mux.0\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa2xx-uart.0\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart_mux.1\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa2xx-uart.1\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart_mux.2\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa2xx-uart.2\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart_mux.3\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa2xx-uart.3\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp0_mux\00", [23 x i8] zeroinitializer }, align 32
@ssp_parent = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.29, ptr @.str.10, ptr @.str.17], [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp0\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp-ssp.0\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp1_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp_mux.1\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp1\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp-ssp.1\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp2_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp_mux.2\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp2\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp-ssp.2\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp3_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp_mux.3\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp3\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp-ssp.3\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdh_mux\00", [24 x i8] zeroinitializer }, align 32
@sdh_parent = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.13, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdh_div\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdh0\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-pxav3.0\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdh1\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-pxav3.1\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdh2\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-pxav3.2\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdh3\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-pxav3.3\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp0_mux\00", [22 x i8] zeroinitializer }, align 32
@disp_parent = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.17, ptr @.str.13, ptr @.str.10], [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp_mux.0\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp0_div\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp_div.0\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"disp0\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp-disp.0\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp0_sphy_div\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disp_sphy_div.0\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp0_sphy\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disp_sphy.0\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp1_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp_mux.1\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp1_div\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp_div.1\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"disp1\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp-disp.1\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccic_arbiter\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic0_mux\00", [22 x i8] zeroinitializer }, align 32
@ccic_parent = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.14, ptr @.str.17, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic_mux.0\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic0_div\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic_div.0\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccic0\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fnclk\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp-ccic.0\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic0_phy\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phyclk\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccic0_sphy_div\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sphyclk_div\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic0_sphy\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sphyclk\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic1_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic_mux.1\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic1_div\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic_div.1\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccic1\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp-ccic.1\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccic1_phy\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccic1_sphy_div\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccic1_sphy\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_lock\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 87, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 93, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 99, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 103, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 106, i32 41 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 109, i32 38 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 112, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 115, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 118, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 122, i32 40 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 126, i32 40 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 130, i32 40 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 134, i32 40 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 138, i32 40 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 142, i32 40 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 146, i32 40 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 150, i32 40 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 154, i32 40 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 158, i32 40 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 162, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 166, i32 40 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 170, i32 40 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 174, i32 40 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 178, i32 40 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 182, i32 40 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 186, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant [18 x i8] c"uart_factor_masks\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 57, i32 36 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"uart_factor_tbl\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 65, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant [9 x i8] c"clk_lock\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 193, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 195, i32 33 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 197, i32 30 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 199, i32 33 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 201, i32 30 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 203, i32 33 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 205, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 207, i32 33 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 209, i32 30 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 211, i32 33 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 213, i32 30 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 215, i32 33 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 217, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 219, i32 33 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 221, i32 30 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 223, i32 33 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 225, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 227, i32 33 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 229, i32 30 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 231, i32 33 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 233, i32 30 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 235, i32 33 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 237, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 239, i32 33 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 241, i32 30 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 243, i32 33 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 245, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant [12 x i8] c"uart_parent\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 70, i32 20 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 250, i32 27 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 252, i32 30 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 254, i32 33 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 256, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 261, i32 27 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 263, i32 30 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 265, i32 33 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 267, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 272, i32 27 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 274, i32 30 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 276, i32 33 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 278, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 283, i32 27 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 285, i32 30 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 287, i32 33 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 289, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant [11 x i8] c"ssp_parent\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 71, i32 20 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 295, i32 30 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 297, i32 33 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 299, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 303, i32 27 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 305, i32 30 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 307, i32 33 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 309, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 313, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 315, i32 30 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 317, i32 33 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 319, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 323, i32 27 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 325, i32 30 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 327, i32 33 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 329, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant [11 x i8] c"sdh_parent\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 72, i32 20 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 335, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 340, i32 30 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 342, i32 33 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 344, i32 30 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 346, i32 33 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 348, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 350, i32 33 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 352, i32 30 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 354, i32 33 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 356, i32 30 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 358, i32 27 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 360, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant [12 x i8] c"disp_parent\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 73, i32 20 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 364, i32 27 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 366, i32 8 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 369, i32 27 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 371, i32 30 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 373, i32 33 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 375, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 377, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 379, i32 30 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 381, i32 27 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 383, i32 8 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 387, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 389, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 392, i32 27 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 394, i32 30 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 396, i32 33 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 398, i32 30 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 402, i32 8 }
@___asan_gen_.516 = private unnamed_addr constant [12 x i8] c"ccic_parent\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 74, i32 20 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 406, i32 27 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 408, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 411, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 413, i32 30 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 415, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 415, i32 36 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 417, i32 30 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 419, i32 27 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 421, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 424, i32 27 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 426, i32 30 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 428, i32 27 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 430, i32 8 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 434, i32 27 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 436, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 439, i32 27 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 441, i32 30 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 443, i32 36 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 445, i32 30 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 449, i32 8 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 454, i32 30 }
@___asan_gen_.582 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.583 = private constant [30 x i8] c"../drivers/clk/mmp/clk-mmp2.c\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 55, i32 8 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @mmp2_clk_init._entry, ptr @mmp2_clk_init._entry.3, ptr @mmp2_clk_init._entry.6, ptr @mmp2_clk_init._entry_ptr, ptr @mmp2_clk_init._entry_ptr.5, ptr @mmp2_clk_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @uart_factor_masks, ptr @uart_factor_tbl, ptr @clk_lock, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @uart_parent, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @ssp_parent, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @sdh_parent, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @disp_parent, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @ccic_parent, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_clk_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_clk_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_factor_masks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_factor_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parent to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_parent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh_parent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_parent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccic_parent to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp2_clk_init(i32 noundef %mpmu_phys, i32 noundef %apmu_phys, i32 noundef %apbc_phys) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef %mpmu_phys, i32 noundef 4096) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @ioremap(i32 noundef %apmu_phys, i32 noundef 4096) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @ioremap(i32 noundef %apbc_phys, i32 noundef 4096) #3
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %call20 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 3200) #3
  %call21 = tail call i32 @clk_register_clkdev(ptr noundef %call20, ptr noundef nonnull @.str.9, ptr noundef null) #3
  %call22 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 26000000) #3
  %call23 = tail call i32 @clk_register_clkdev(ptr noundef %call22, ptr noundef nonnull @.str.10, ptr noundef null) #3
  %call24 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 800000000) #3
  %call25 = tail call i32 @clk_register_clkdev(ptr noundef %call24, ptr noundef nonnull @.str.11, ptr noundef null) #3
  %call26 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 480000000) #3
  %call27 = tail call i32 @clk_register_clkdev(ptr noundef %call26, ptr noundef nonnull @.str.12, ptr noundef null) #3
  %call28 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 960000000) #3
  %call29 = tail call i32 @clk_register_clkdev(ptr noundef %call28, ptr noundef nonnull @.str.13, ptr noundef null) #3
  %call30 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call31 = tail call i32 @clk_register_clkdev(ptr noundef %call30, ptr noundef nonnull @.str.14, ptr noundef null) #3
  %call32 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call33 = tail call i32 @clk_register_clkdev(ptr noundef %call32, ptr noundef nonnull @.str.15, ptr noundef null) #3
  %call34 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call35 = tail call i32 @clk_register_clkdev(ptr noundef %call34, ptr noundef nonnull @.str.16, ptr noundef null) #3
  %call36 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call37 = tail call i32 @clk_register_clkdev(ptr noundef %call36, ptr noundef nonnull @.str.17, ptr noundef null) #3
  %call38 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef 1, i32 noundef 5) #3
  %call39 = tail call i32 @clk_register_clkdev(ptr noundef %call38, ptr noundef nonnull @.str.18, ptr noundef null) #3
  %call40 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 1, i32 noundef 3) #3
  %call41 = tail call i32 @clk_register_clkdev(ptr noundef %call40, ptr noundef nonnull @.str.19, ptr noundef null) #3
  %call42 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call43 = tail call i32 @clk_register_clkdev(ptr noundef %call42, ptr noundef nonnull @.str.20, ptr noundef null) #3
  %call44 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call45 = tail call i32 @clk_register_clkdev(ptr noundef %call44, ptr noundef nonnull @.str.21, ptr noundef null) #3
  %call46 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call47 = tail call i32 @clk_register_clkdev(ptr noundef %call46, ptr noundef nonnull @.str.22, ptr noundef null) #3
  %call48 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call49 = tail call i32 @clk_register_clkdev(ptr noundef %call48, ptr noundef nonnull @.str.23, ptr noundef null) #3
  %call50 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call51 = tail call i32 @clk_register_clkdev(ptr noundef %call50, ptr noundef nonnull @.str.24, ptr noundef null) #3
  %call52 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call53 = tail call i32 @clk_register_clkdev(ptr noundef %call52, ptr noundef nonnull @.str.25, ptr noundef null) #3
  %call54 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.13, i32 noundef 4, i32 noundef 1, i32 noundef 3) #3
  %call55 = tail call i32 @clk_register_clkdev(ptr noundef %call54, ptr noundef nonnull @.str.26, ptr noundef null) #3
  %call56 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call57 = tail call i32 @clk_register_clkdev(ptr noundef %call56, ptr noundef nonnull @.str.27, ptr noundef null) #3
  %call58 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call59 = tail call i32 @clk_register_clkdev(ptr noundef %call58, ptr noundef nonnull @.str.28, ptr noundef null) #3
  %call60 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.10, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call61 = tail call i32 @clk_register_clkdev(ptr noundef %call60, ptr noundef nonnull @.str.29, ptr noundef null) #3
  %call62 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %call63 = tail call i32 @clk_register_clkdev(ptr noundef %call62, ptr noundef nonnull @.str.30, ptr noundef null) #3
  %add.ptr = getelementptr i8, ptr %call, i32 20
  %call64 = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef %add.ptr, ptr noundef nonnull @uart_factor_masks, ptr noundef nonnull @uart_factor_tbl, i32 noundef 2, ptr noundef nonnull @clk_lock) #3
  %call65 = tail call i32 @clk_set_rate(ptr noundef %call64, i32 noundef 14745600) #3
  %call66 = tail call i32 @clk_register_clkdev(ptr noundef %call64, ptr noundef nonnull @.str.31, ptr noundef null) #3
  %add.ptr67 = getelementptr i8, ptr %call11, i32 4
  %call68 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10, ptr noundef %add.ptr67, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call69 = tail call i32 @clk_register_clkdev(ptr noundef %call68, ptr noundef null, ptr noundef nonnull @.str.33) #3
  %add.ptr70 = getelementptr i8, ptr %call11, i32 8
  %call71 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.10, ptr noundef %add.ptr70, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call72 = tail call i32 @clk_register_clkdev(ptr noundef %call71, ptr noundef null, ptr noundef nonnull @.str.35) #3
  %add.ptr73 = getelementptr i8, ptr %call11, i32 12
  %call74 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.10, ptr noundef %add.ptr73, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call75 = tail call i32 @clk_register_clkdev(ptr noundef %call74, ptr noundef null, ptr noundef nonnull @.str.37) #3
  %add.ptr76 = getelementptr i8, ptr %call11, i32 16
  %call77 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.10, ptr noundef %add.ptr76, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call78 = tail call i32 @clk_register_clkdev(ptr noundef %call77, ptr noundef null, ptr noundef nonnull @.str.39) #3
  %add.ptr79 = getelementptr i8, ptr %call11, i32 124
  %call80 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.10, ptr noundef %add.ptr79, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call81 = tail call i32 @clk_register_clkdev(ptr noundef %call80, ptr noundef null, ptr noundef nonnull @.str.41) #3
  %add.ptr82 = getelementptr i8, ptr %call11, i32 128
  %call83 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.10, ptr noundef %add.ptr82, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call84 = tail call i32 @clk_register_clkdev(ptr noundef %call83, ptr noundef null, ptr noundef nonnull @.str.43) #3
  %add.ptr85 = getelementptr i8, ptr %call11, i32 56
  %call86 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.10, ptr noundef %add.ptr85, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call87 = tail call i32 @clk_register_clkdev(ptr noundef %call86, ptr noundef null, ptr noundef nonnull @.str.45) #3
  %add.ptr88 = getelementptr i8, ptr %call11, i32 24
  %call89 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.9, ptr noundef %add.ptr88, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call90 = tail call i32 @clk_register_clkdev(ptr noundef %call89, ptr noundef null, ptr noundef nonnull @.str.47) #3
  %call92 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.9, ptr noundef nonnull %call11, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call93 = tail call i32 @clk_register_clkdev(ptr noundef %call92, ptr noundef null, ptr noundef nonnull @.str.49) #3
  %add.ptr94 = getelementptr i8, ptr %call11, i32 60
  %call95 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.10, ptr noundef %add.ptr94, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call96 = tail call i32 @clk_register_clkdev(ptr noundef %call95, ptr noundef null, ptr noundef nonnull @.str.51) #3
  %add.ptr97 = getelementptr i8, ptr %call11, i32 64
  %call98 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10, ptr noundef %add.ptr97, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call99 = tail call i32 @clk_register_clkdev(ptr noundef %call98, ptr noundef null, ptr noundef nonnull @.str.53) #3
  %add.ptr100 = getelementptr i8, ptr %call11, i32 68
  %call101 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.10, ptr noundef %add.ptr100, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call102 = tail call i32 @clk_register_clkdev(ptr noundef %call101, ptr noundef null, ptr noundef nonnull @.str.55) #3
  %add.ptr103 = getelementptr i8, ptr %call11, i32 72
  %call104 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.10, ptr noundef %add.ptr103, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call105 = tail call i32 @clk_register_clkdev(ptr noundef %call104, ptr noundef null, ptr noundef nonnull @.str.57) #3
  %add.ptr106 = getelementptr i8, ptr %call11, i32 44
  %call107 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @uart_parent, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr106, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call108 = tail call i32 @clk_set_parent(ptr noundef %call107, ptr noundef %call22) #3
  %call109 = tail call i32 @clk_register_clkdev(ptr noundef %call107, ptr noundef nonnull @.str.59, ptr noundef null) #3
  %call111 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, ptr noundef %add.ptr106, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call112 = tail call i32 @clk_register_clkdev(ptr noundef %call111, ptr noundef null, ptr noundef nonnull @.str.61) #3
  %add.ptr113 = getelementptr i8, ptr %call11, i32 48
  %call114 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @uart_parent, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr113, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call115 = tail call i32 @clk_set_parent(ptr noundef %call114, ptr noundef %call22) #3
  %call116 = tail call i32 @clk_register_clkdev(ptr noundef %call114, ptr noundef nonnull @.str.63, ptr noundef null) #3
  %call118 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, ptr noundef %add.ptr113, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call119 = tail call i32 @clk_register_clkdev(ptr noundef %call118, ptr noundef null, ptr noundef nonnull @.str.65) #3
  %add.ptr120 = getelementptr i8, ptr %call11, i32 52
  %call121 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @uart_parent, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr120, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call122 = tail call i32 @clk_set_parent(ptr noundef %call121, ptr noundef %call22) #3
  %call123 = tail call i32 @clk_register_clkdev(ptr noundef %call121, ptr noundef nonnull @.str.67, ptr noundef null) #3
  %call125 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, ptr noundef %add.ptr120, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call126 = tail call i32 @clk_register_clkdev(ptr noundef %call125, ptr noundef null, ptr noundef nonnull @.str.69) #3
  %add.ptr127 = getelementptr i8, ptr %call11, i32 136
  %call128 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @uart_parent, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr127, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call129 = tail call i32 @clk_set_parent(ptr noundef %call128, ptr noundef %call22) #3
  %call130 = tail call i32 @clk_register_clkdev(ptr noundef %call128, ptr noundef nonnull @.str.71, ptr noundef null) #3
  %call132 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70, ptr noundef %add.ptr127, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call133 = tail call i32 @clk_register_clkdev(ptr noundef %call132, ptr noundef null, ptr noundef nonnull @.str.73) #3
  %add.ptr134 = getelementptr i8, ptr %call11, i32 80
  %call135 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @ssp_parent, i8 noundef zeroext 4, i32 noundef 132, ptr noundef %add.ptr134, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call136 = tail call i32 @clk_register_clkdev(ptr noundef %call135, ptr noundef nonnull @.str.59, ptr noundef null) #3
  %call138 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, ptr noundef %add.ptr134, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call139 = tail call i32 @clk_register_clkdev(ptr noundef %call138, ptr noundef null, ptr noundef nonnull @.str.76) #3
  %add.ptr140 = getelementptr i8, ptr %call11, i32 84
  %call141 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @ssp_parent, i8 noundef zeroext 4, i32 noundef 132, ptr noundef %add.ptr140, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call142 = tail call i32 @clk_register_clkdev(ptr noundef %call141, ptr noundef nonnull @.str.78, ptr noundef null) #3
  %call144 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, ptr noundef %add.ptr140, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call145 = tail call i32 @clk_register_clkdev(ptr noundef %call144, ptr noundef null, ptr noundef nonnull @.str.80) #3
  %add.ptr146 = getelementptr i8, ptr %call11, i32 88
  %call147 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @ssp_parent, i8 noundef zeroext 4, i32 noundef 132, ptr noundef %add.ptr146, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call148 = tail call i32 @clk_register_clkdev(ptr noundef %call147, ptr noundef nonnull @.str.82, ptr noundef null) #3
  %call150 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, ptr noundef %add.ptr146, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call151 = tail call i32 @clk_register_clkdev(ptr noundef %call150, ptr noundef null, ptr noundef nonnull @.str.84) #3
  %add.ptr152 = getelementptr i8, ptr %call11, i32 92
  %call153 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @ssp_parent, i8 noundef zeroext 4, i32 noundef 132, ptr noundef %add.ptr152, i8 noundef zeroext 4, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call154 = tail call i32 @clk_register_clkdev(ptr noundef %call153, ptr noundef nonnull @.str.86, ptr noundef null) #3
  %call156 = tail call ptr @mmp_clk_register_apbc(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef %add.ptr152, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @clk_lock) #3
  %call157 = tail call i32 @clk_register_clkdev(ptr noundef %call156, ptr noundef null, ptr noundef nonnull @.str.88) #3
  %add.ptr158 = getelementptr i8, ptr %call2, i32 84
  %call159 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @sdh_parent, i8 noundef zeroext 4, i32 noundef 132, ptr noundef %add.ptr158, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call160 = tail call i32 @clk_register_clkdev(ptr noundef %call159, ptr noundef nonnull @.str.89, ptr noundef null) #3
  %call162 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef 4, ptr noundef %add.ptr158, i8 noundef zeroext 10, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call163 = tail call i32 @clk_register_clkdev(ptr noundef %call162, ptr noundef nonnull @.str.90, ptr noundef null) #3
  %call165 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, ptr noundef %add.ptr158, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call166 = tail call i32 @clk_register_clkdev(ptr noundef %call165, ptr noundef null, ptr noundef nonnull @.str.92) #3
  %add.ptr167 = getelementptr i8, ptr %call2, i32 88
  %call168 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.90, ptr noundef %add.ptr167, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call169 = tail call i32 @clk_register_clkdev(ptr noundef %call168, ptr noundef null, ptr noundef nonnull @.str.94) #3
  %add.ptr170 = getelementptr i8, ptr %call2, i32 232
  %call171 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.90, ptr noundef %add.ptr170, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call172 = tail call i32 @clk_register_clkdev(ptr noundef %call171, ptr noundef null, ptr noundef nonnull @.str.96) #3
  %add.ptr173 = getelementptr i8, ptr %call2, i32 236
  %call174 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.90, ptr noundef %add.ptr173, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call175 = tail call i32 @clk_register_clkdev(ptr noundef %call174, ptr noundef null, ptr noundef nonnull @.str.98) #3
  %add.ptr176 = getelementptr i8, ptr %call2, i32 92
  %call177 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.12, ptr noundef %add.ptr176, i32 noundef 9, ptr noundef nonnull @clk_lock) #3
  %call178 = tail call i32 @clk_register_clkdev(ptr noundef %call177, ptr noundef nonnull @.str.100, ptr noundef null) #3
  %add.ptr179 = getelementptr i8, ptr %call2, i32 76
  %call180 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @disp_parent, i8 noundef zeroext 4, i32 noundef 132, ptr noundef %add.ptr179, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call181 = tail call i32 @clk_register_clkdev(ptr noundef %call180, ptr noundef nonnull @.str.102, ptr noundef null) #3
  %call183 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call184 = tail call i32 @clk_register_clkdev(ptr noundef %call183, ptr noundef nonnull @.str.104, ptr noundef null) #3
  %call186 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, ptr noundef %add.ptr179, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call187 = tail call i32 @clk_register_clkdev(ptr noundef %call186, ptr noundef null, ptr noundef nonnull @.str.106) #3
  %call189 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.101, i32 noundef 0, ptr noundef %add.ptr179, i8 noundef zeroext 15, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call190 = tail call i32 @clk_register_clkdev(ptr noundef %call189, ptr noundef nonnull @.str.108, ptr noundef null) #3
  %call192 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.107, ptr noundef %add.ptr179, i32 noundef 4132, ptr noundef nonnull @clk_lock) #3
  %call193 = tail call i32 @clk_register_clkdev(ptr noundef %call192, ptr noundef nonnull @.str.110, ptr noundef null) #3
  %add.ptr194 = getelementptr i8, ptr %call2, i32 272
  %call195 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @disp_parent, i8 noundef zeroext 4, i32 noundef 132, ptr noundef %add.ptr194, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call196 = tail call i32 @clk_register_clkdev(ptr noundef %call195, ptr noundef nonnull @.str.112, ptr noundef null) #3
  %call198 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i32 noundef 4, ptr noundef %add.ptr194, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call199 = tail call i32 @clk_register_clkdev(ptr noundef %call198, ptr noundef nonnull @.str.114, ptr noundef null) #3
  %call201 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, ptr noundef %add.ptr194, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call202 = tail call i32 @clk_register_clkdev(ptr noundef %call201, ptr noundef null, ptr noundef nonnull @.str.116) #3
  %add.ptr203 = getelementptr i8, ptr %call2, i32 80
  %call204 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.10, ptr noundef %add.ptr203, i32 noundef 6144, ptr noundef nonnull @clk_lock) #3
  %call205 = tail call i32 @clk_register_clkdev(ptr noundef %call204, ptr noundef nonnull @.str.117, ptr noundef null) #3
  %call207 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @ccic_parent, i8 noundef zeroext 3, i32 noundef 132, ptr noundef %add.ptr203, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call208 = tail call i32 @clk_register_clkdev(ptr noundef %call207, ptr noundef nonnull @.str.119, ptr noundef null) #3
  %call210 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr203, i8 noundef zeroext 17, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call211 = tail call i32 @clk_register_clkdev(ptr noundef %call210, ptr noundef nonnull @.str.121, ptr noundef null) #3
  %call213 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120, ptr noundef %add.ptr203, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call214 = tail call i32 @clk_register_clkdev(ptr noundef %call213, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124) #3
  %call216 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.120, ptr noundef %add.ptr203, i32 noundef 36, ptr noundef nonnull @clk_lock) #3
  %call217 = tail call i32 @clk_register_clkdev(ptr noundef %call216, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.124) #3
  %call219 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr203, i8 noundef zeroext 10, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call220 = tail call i32 @clk_register_clkdev(ptr noundef %call219, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.124) #3
  %call222 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.127, ptr noundef %add.ptr203, i32 noundef 768, ptr noundef nonnull @clk_lock) #3
  %call223 = tail call i32 @clk_register_clkdev(ptr noundef %call222, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.124) #3
  %add.ptr224 = getelementptr i8, ptr %call2, i32 244
  %call225 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @ccic_parent, i8 noundef zeroext 3, i32 noundef 132, ptr noundef %add.ptr224, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call226 = tail call i32 @clk_register_clkdev(ptr noundef %call225, ptr noundef nonnull @.str.132, ptr noundef null) #3
  %call228 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.131, i32 noundef 4, ptr noundef %add.ptr224, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call229 = tail call i32 @clk_register_clkdev(ptr noundef %call228, ptr noundef nonnull @.str.134, ptr noundef null) #3
  %call231 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.133, ptr noundef %add.ptr224, i32 noundef 27, ptr noundef nonnull @clk_lock) #3
  %call232 = tail call i32 @clk_register_clkdev(ptr noundef %call231, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.136) #3
  %call234 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.133, ptr noundef %add.ptr224, i32 noundef 36, ptr noundef nonnull @clk_lock) #3
  %call235 = tail call i32 @clk_register_clkdev(ptr noundef %call234, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.136) #3
  %call237 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr224, i8 noundef zeroext 10, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #3
  %call238 = tail call i32 @clk_register_clkdev(ptr noundef %call237, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.136) #3
  %call240 = tail call ptr @mmp_clk_register_apmu(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.138, ptr noundef %add.ptr224, i32 noundef 768, ptr noundef nonnull @clk_lock) #3
  %call241 = tail call i32 @clk_register_clkdev(ptr noundef %call240, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.136) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_factor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_apbc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_apmu(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283, !285, !287, !289, !291}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mmp2_clk_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mmp2_clk_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 93, i32 3}
!8 = !{ptr @mmp2_clk_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mmp2_clk_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 99, i32 3}
!12 = !{ptr @mmp2_clk_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mmp2_clk_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 103, i32 38}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 106, i32 41}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 109, i32 38}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 112, i32 38}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 115, i32 38}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 118, i32 40}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 122, i32 40}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 126, i32 40}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 130, i32 40}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 134, i32 40}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 138, i32 40}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 142, i32 40}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 146, i32 40}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 150, i32 40}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 154, i32 40}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 158, i32 40}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 162, i32 40}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 166, i32 40}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 170, i32 40}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 174, i32 40}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 178, i32 40}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 182, i32 40}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 186, i32 32}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 193, i32 30}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 195, i32 33}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 197, i32 30}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 199, i32 33}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 201, i32 30}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 203, i32 33}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 205, i32 30}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 207, i32 33}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 209, i32 30}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 211, i32 33}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 213, i32 30}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 215, i32 33}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 217, i32 30}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 219, i32 33}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 221, i32 30}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 223, i32 33}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 225, i32 30}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 227, i32 33}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 229, i32 30}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 231, i32 33}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 233, i32 30}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 235, i32 33}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 237, i32 30}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 239, i32 33}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 241, i32 30}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 243, i32 33}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 245, i32 8}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 250, i32 27}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 252, i32 30}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 254, i32 33}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 256, i32 8}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 261, i32 27}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 263, i32 30}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 265, i32 33}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 267, i32 8}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 272, i32 27}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 274, i32 30}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 276, i32 33}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 278, i32 8}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 283, i32 27}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 285, i32 30}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 287, i32 33}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 289, i32 8}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 295, i32 30}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 297, i32 33}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 299, i32 8}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 303, i32 27}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 305, i32 30}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 307, i32 33}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 309, i32 8}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 313, i32 27}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 315, i32 30}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 317, i32 33}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 319, i32 8}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 323, i32 27}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 325, i32 30}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 327, i32 33}
!174 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 329, i32 8}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 335, i32 8}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 340, i32 30}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 342, i32 33}
!182 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 344, i32 30}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 346, i32 33}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 348, i32 30}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 350, i32 33}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 352, i32 30}
!192 = !{ptr @.str.98, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 354, i32 33}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 356, i32 30}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 358, i32 27}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 360, i32 8}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 364, i32 27}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 366, i32 8}
!204 = !{ptr @.str.104, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 369, i32 27}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 371, i32 30}
!208 = !{ptr @.str.106, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 373, i32 33}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 375, i32 8}
!212 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 377, i32 27}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 379, i32 30}
!216 = !{ptr @.str.110, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 381, i32 27}
!218 = !{ptr @.str.111, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 383, i32 8}
!220 = !{ptr @.str.112, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 387, i32 27}
!222 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 389, i32 8}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 392, i32 27}
!226 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 394, i32 30}
!228 = !{ptr @.str.116, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 396, i32 33}
!230 = !{ptr @.str.117, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 398, i32 30}
!232 = !{ptr @.str.118, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 402, i32 8}
!234 = !{ptr @.str.119, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 406, i32 27}
!236 = !{ptr @.str.120, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 408, i32 8}
!238 = !{ptr @.str.121, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 411, i32 27}
!240 = !{ptr @.str.122, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 413, i32 30}
!242 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 415, i32 27}
!244 = !{ptr @.str.124, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 415, i32 36}
!246 = !{ptr @.str.125, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 417, i32 30}
!248 = !{ptr @.str.126, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 419, i32 27}
!250 = !{ptr @.str.127, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 421, i32 8}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 424, i32 27}
!254 = !{ptr @.str.129, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 426, i32 30}
!256 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 428, i32 27}
!258 = !{ptr @.str.131, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 430, i32 8}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 434, i32 27}
!262 = !{ptr @.str.133, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 436, i32 8}
!264 = !{ptr @.str.134, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 439, i32 27}
!266 = !{ptr @.str.135, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 441, i32 30}
!268 = !{ptr @.str.136, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 443, i32 36}
!270 = !{ptr @.str.137, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 445, i32 30}
!272 = !{ptr @.str.138, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 449, i32 8}
!274 = !{ptr @.str.139, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 454, i32 30}
!276 = !{ptr @uart_factor_masks, !277, !"uart_factor_masks", i1 false, i1 false}
!277 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 57, i32 36}
!278 = !{ptr @uart_factor_tbl, !279, !"uart_factor_tbl", i1 false, i1 false}
!279 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 65, i32 34}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 55, i32 8}
!282 = !{ptr @clk_lock, !281, !"clk_lock", i1 false, i1 false}
!283 = !{ptr @uart_parent, !284, !"uart_parent", i1 false, i1 false}
!284 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 70, i32 20}
!285 = !{ptr @ssp_parent, !286, !"ssp_parent", i1 false, i1 false}
!286 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 71, i32 20}
!287 = !{ptr @sdh_parent, !288, !"sdh_parent", i1 false, i1 false}
!288 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 72, i32 20}
!289 = !{ptr @disp_parent, !290, !"disp_parent", i1 false, i1 false}
!290 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 73, i32 20}
!291 = !{ptr @ccic_parent, !292, !"ccic_parent", i1 false, i1 false}
!292 = !{!"../drivers/clk/mmp/clk-mmp2.c", i32 74, i32 20}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
