; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_sun50i_h6_r_ccu__170_261_sun50i_h6_r_ccu_driver_init6 = internal global ptr @sun50i_h6_r_ccu_driver_init, section ".initcall6.init", align 4
@sun50i_h6_r_ccu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun50i_h6_r_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun50i_h6_r_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun50i_h6_r_ccu_driver_exit = internal global ptr @sun50i_h6_r_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns171 = internal constant [36 x i8] c"sun50i_h6_r_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [58 x i8] c"sun50i_h6_r_ccu.file=drivers/clk/sunxi-ng/sun50i-h6-r-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"sun50i_h6_r_ccu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun50i-h6-r-ccu\00", [16 x i8] zeroinitializer }, align 32
@sun50i_h6_r_ccu_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_r_ccu_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h616-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h616_r_ccu_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun50i_h6_r_ccu_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun50i_h6_r_ccu_clks, i32 13, ptr @sun50i_h6_r_hw_clks, ptr @sun50i_h6_r_ccu_resets, i32 8 }, [44 x i8] zeroinitializer }, align 32
@sun50i_h616_r_ccu_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun50i_h616_r_ccu_clks, i32 7, ptr @sun50i_h616_r_hw_clks, ptr @sun50i_h616_r_ccu_resets, i32 8 }, [44 x i8] zeroinitializer }, align 32
@sun50i_h6_r_ccu_clks = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 48), ptr getelementptr (i8, ptr @r_apb1_clk, i64 48), ptr getelementptr (i8, ptr @r_apb2_clk, i64 48), ptr getelementptr (i8, ptr @r_apb1_timer_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_twd_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_pwm_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_uart_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_i2c_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_rsb_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_ir_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_w1_clk, i64 4), ptr getelementptr (i8, ptr @ir_clk, i64 72), ptr getelementptr (i8, ptr @w1_clk, i64 72)], [44 x i8] zeroinitializer }, align 32
@sun50i_h6_r_ccu_resets = internal global { [8 x %struct.ccu_reset_map], [32 x i8] } { [8 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 284, i32 65536 }, %struct.ccu_reset_map { i16 300, i32 65536 }, %struct.ccu_reset_map { i16 316, i32 65536 }, %struct.ccu_reset_map { i16 396, i32 65536 }, %struct.ccu_reset_map { i16 412, i32 65536 }, %struct.ccu_reset_map { i16 460, i32 65536 }, %struct.ccu_reset_map { i16 492, i32 65536 }, %struct.ccu_reset_map { i16 444, i32 65536 }], [32 x i8] zeroinitializer }, align 32
@ar100_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr @ar100_r_apb2_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@r_apb1_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@r_apb2_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr @ar100_r_apb2_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 16, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@r_apb1_timer_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 284, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_twd_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 300, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_pwm_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 316, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb2_uart_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 396, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb2_i2c_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb2_rsb_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 444, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_ir_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 460, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_w1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 492, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 } } }, [60 x i8] zeroinitializer }, align 32
@ir_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 448, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 } } }, [56 x i8] zeroinitializer }, align 32
@w1_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 480, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 } } }, [56 x i8] zeroinitializer }, align 32
@ar100_r_apb2_predivs = internal constant { [1 x %struct.ccu_mux_var_prediv], [29 x i8] } { [1 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 3, i8 0, i8 5 }], [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ar100\00", [26 x i8] zeroinitializer }, align 32
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@ar100_r_apb2_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @ccu_div_ops, ptr @ar100_r_apb2_parents, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc24M\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iosc\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll-periph0\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r-apb1\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r-ahb\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @ccu_div_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r-apb2\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @ccu_div_ops, ptr @ar100_r_apb2_parents, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r-apb1-timer\00", [19 x i8] zeroinitializer }, align 32
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.13 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @ccu_gate_ops, ptr @.compoundliteral.13, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r-apb1-twd\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @ccu_gate_ops, ptr @.compoundliteral.16, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r-apb1-pwm\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @ccu_gate_ops, ptr @.compoundliteral.19, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r-apb2-uart\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.21, ptr @ccu_gate_ops, ptr @.compoundliteral.22, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r-apb2-i2c\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_gate_ops, ptr @.compoundliteral.25, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r-apb2-rsb\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @ccu_gate_ops, ptr @.compoundliteral.28, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r-apb1-ir\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @ccu_gate_ops, ptr @.compoundliteral.31, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r-apb1-w1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.33, ptr @ccu_gate_ops, ptr @.compoundliteral.34, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ir\00", [29 x i8] zeroinitializer }, align 32
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@r_mod0_default_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @ccu_mp_ops, ptr @r_mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"w1\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @ccu_mp_ops, ptr @r_mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@r_ahb_clk = internal global { %struct.clk_fixed_factor, [44 x i8] } { %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 }, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sun50i_h6_r_hw_clks = internal global { { i32, [14 x ptr] }, [36 x i8] } { { i32, [14 x ptr] } { i32 14, [14 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68), ptr @r_ahb_clk, ptr getelementptr (i8, ptr @r_apb1_clk, i64 68), ptr getelementptr (i8, ptr @r_apb2_clk, i64 68), ptr getelementptr (i8, ptr @r_apb1_timer_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_twd_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_pwm_clk, i64 24), ptr getelementptr (i8, ptr @r_apb2_uart_clk, i64 24), ptr getelementptr (i8, ptr @r_apb2_i2c_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_ir_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_w1_clk, i64 24), ptr getelementptr (i8, ptr @ir_clk, i64 92), ptr getelementptr (i8, ptr @w1_clk, i64 92), ptr getelementptr (i8, ptr @r_apb2_rsb_clk, i64 24)] }, [36 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.41 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.41, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun50i_h616_r_ccu_clks = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr getelementptr (i8, ptr @r_apb1_clk, i64 48), ptr getelementptr (i8, ptr @r_apb2_clk, i64 48), ptr getelementptr (i8, ptr @r_apb1_twd_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_i2c_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_rsb_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_ir_clk, i64 4), ptr getelementptr (i8, ptr @ir_clk, i64 72)], [36 x i8] zeroinitializer }, align 32
@sun50i_h616_r_ccu_resets = internal global { [8 x %struct.ccu_reset_map], [32 x i8] } { [8 x %struct.ccu_reset_map] [%struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 300, i32 65536 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 412, i32 65536 }, %struct.ccu_reset_map { i16 460, i32 65536 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 444, i32 65536 }], [32 x i8] zeroinitializer }, align 32
@sun50i_h616_r_hw_clks = internal global { { i32, [14 x ptr] }, [36 x i8] } { { i32, [14 x ptr] } { i32 14, [14 x ptr] [ptr null, ptr @r_ahb_clk, ptr getelementptr (i8, ptr @r_apb1_clk, i64 68), ptr getelementptr (i8, ptr @r_apb2_clk, i64 68), ptr null, ptr getelementptr (i8, ptr @r_apb1_twd_clk, i64 24), ptr null, ptr null, ptr getelementptr (i8, ptr @r_apb2_i2c_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_ir_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @ir_clk, i64 92), ptr null, ptr getelementptr (i8, ptr @r_apb2_rsb_clk, i64 24)] }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"sun50i_h6_r_ccu_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 253, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 256, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"sun50i_h6_r_ccu_ids\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 241, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"sun50i_h6_r_ccu_desc\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 205, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"sun50i_h616_r_ccu_desc\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 215, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"sun50i_h6_r_ccu_clks\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 127, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"sun50i_h6_r_ccu_resets\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 187, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"ar100_clk\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 32, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"r_apb1_clk\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"r_apb2_clk\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 57, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"r_apb1_timer_clk\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"r_apb1_twd_clk\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"r_apb1_pwm_clk\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"r_apb2_uart_clk\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"r_apb2_i2c_clk\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"r_apb2_rsb_clk\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"r_apb1_ir_clk\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"r_apb1_w1_clk\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"ir_clk\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"w1_clk\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"ar100_r_apb2_predivs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 28, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 46, i32 14 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"ar100_r_apb2_parents\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 26, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 26, i32 54 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 26, i32 64 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 27, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 27, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 55, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 71, i32 14 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 85, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 87, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 89, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 91, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 93, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 95, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 97, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 99, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 104, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant [23 x i8] c"r_mod0_default_parents\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 103, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 119, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [10 x i8] c"r_ahb_clk\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 53, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"sun50i_h6_r_hw_clks\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 153, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"sun50i_h616_r_ccu_clks\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 143, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant [25 x i8] c"sun50i_h616_r_ccu_resets\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 198, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"sun50i_h616_r_hw_clks\00", align 1
@___asan_gen_.204 = private constant [42 x i8] c"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 173, i32 35 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_import_ns171, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sun50i_h6_r_ccu_driver_exit, ptr @__initcall__kmod_sun50i_h6_r_ccu__170_261_sun50i_h6_r_ccu_driver_init6, ptr @sun50i_h6_r_ccu_driver_exit, ptr @sun50i_h6_r_ccu_driver, ptr @.str, ptr @sun50i_h6_r_ccu_ids, ptr @sun50i_h6_r_ccu_desc, ptr @sun50i_h616_r_ccu_desc, ptr @sun50i_h6_r_ccu_clks, ptr @sun50i_h6_r_ccu_resets, ptr @ar100_clk, ptr @r_apb1_clk, ptr @r_apb2_clk, ptr @r_apb1_timer_clk, ptr @r_apb1_twd_clk, ptr @r_apb1_pwm_clk, ptr @r_apb2_uart_clk, ptr @r_apb2_i2c_clk, ptr @r_apb2_rsb_clk, ptr @r_apb1_ir_clk, ptr @r_apb1_w1_clk, ptr @ir_clk, ptr @w1_clk, ptr @ar100_r_apb2_predivs, ptr @.str.1, ptr @ar100_r_apb2_parents, ptr @.compoundliteral, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @r_mod0_default_parents, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @r_ahb_clk, ptr @sun50i_h6_r_hw_clks, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @sun50i_h616_r_ccu_clks, ptr @sun50i_h616_r_ccu_resets, ptr @sun50i_h616_r_hw_clks], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_ccu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_ccu_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_ccu_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h616_r_ccu_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_ccu_clks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_ccu_resets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar100_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_timer_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_twd_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_pwm_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_uart_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_i2c_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_rsb_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_ir_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_w1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar100_r_apb2_predivs to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar100_r_apb2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_mod0_default_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ahb_clk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_hw_clks to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h616_r_ccu_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h616_r_ccu_resets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h616_r_hw_clks to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_r_ccu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun50i_h6_r_ccu_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_h6_r_ccu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun50i_h6_r_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_r_ccu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %dev, ptr noundef %call1, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %call7, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_sun50i_h6_r_ccu__170_261_sun50i_h6_r_ccu_driver_init6, !1, !"__initcall__kmod_sun50i_h6_r_ccu__170_261_sun50i_h6_r_ccu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 261, i32 1}
!2 = !{ptr @__exitcall_sun50i_h6_r_ccu_driver_exit, !1, !"__exitcall_sun50i_h6_r_ccu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns171, !4, !"__UNIQUE_ID_import_ns171", i1 false, i1 false}
!4 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 263, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 264, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 256, i32 13}
!10 = !{ptr @sun50i_h6_r_ccu_driver, !11, !"sun50i_h6_r_ccu_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 253, i32 31}
!12 = !{ptr @sun50i_h6_r_ccu_ids, !13, !"sun50i_h6_r_ccu_ids", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 241, i32 34}
!14 = !{ptr @sun50i_h6_r_ccu_desc, !15, !"sun50i_h6_r_ccu_desc", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 205, i32 36}
!16 = !{ptr @sun50i_h6_r_ccu_clks, !17, !"sun50i_h6_r_ccu_clks", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 127, i32 27}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 46, i32 14}
!20 = !{ptr @ar100_clk, !21, !"ar100_clk", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 32, i32 23}
!22 = !{ptr @ar100_r_apb2_predivs, !23, !"ar100_r_apb2_predivs", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 28, i32 40}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 26, i32 54}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 26, i32 64}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 27, i32 12}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 27, i32 20}
!32 = !{ptr @ar100_r_apb2_parents, !33, !"ar100_r_apb2_parents", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 26, i32 27}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 55, i32 8}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @r_apb1_clk, !35, !"r_apb1_clk", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 71, i32 14}
!40 = !{ptr @r_apb2_clk, !41, !"r_apb2_clk", i1 false, i1 false}
!41 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 57, i32 23}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 85, i32 8}
!44 = !{ptr @r_apb1_timer_clk, !43, !"r_apb1_timer_clk", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 87, i32 8}
!47 = !{ptr @r_apb1_twd_clk, !46, !"r_apb1_twd_clk", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 89, i32 8}
!50 = !{ptr @r_apb1_pwm_clk, !49, !"r_apb1_pwm_clk", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 91, i32 8}
!53 = !{ptr @r_apb2_uart_clk, !52, !"r_apb2_uart_clk", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 93, i32 8}
!56 = !{ptr @r_apb2_i2c_clk, !55, !"r_apb2_i2c_clk", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 95, i32 8}
!59 = !{ptr @r_apb2_rsb_clk, !58, !"r_apb2_rsb_clk", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 97, i32 8}
!62 = !{ptr @r_apb1_ir_clk, !61, !"r_apb1_ir_clk", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 99, i32 8}
!65 = !{ptr @r_apb1_w1_clk, !64, !"r_apb1_w1_clk", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 104, i32 8}
!68 = !{ptr @ir_clk, !67, !"ir_clk", i1 false, i1 false}
!69 = !{ptr @r_mod0_default_parents, !70, !"r_mod0_default_parents", i1 false, i1 false}
!70 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 103, i32 27}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 119, i32 8}
!73 = !{ptr @w1_clk, !72, !"w1_clk", i1 false, i1 false}
!74 = !{ptr @sun50i_h6_r_hw_clks, !75, !"sun50i_h6_r_hw_clks", i1 false, i1 false}
!75 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 153, i32 35}
!76 = !{ptr @r_ahb_clk, !77, !"r_ahb_clk", i1 false, i1 false}
!77 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 53, i32 8}
!78 = !{ptr @sun50i_h6_r_ccu_resets, !79, !"sun50i_h6_r_ccu_resets", i1 false, i1 false}
!79 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 187, i32 29}
!80 = !{ptr @sun50i_h616_r_ccu_desc, !81, !"sun50i_h616_r_ccu_desc", i1 false, i1 false}
!81 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 215, i32 36}
!82 = !{ptr @sun50i_h616_r_ccu_clks, !83, !"sun50i_h616_r_ccu_clks", i1 false, i1 false}
!83 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 143, i32 27}
!84 = !{ptr @sun50i_h616_r_hw_clks, !85, !"sun50i_h616_r_hw_clks", i1 false, i1 false}
!85 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 173, i32 35}
!86 = !{ptr @sun50i_h616_r_ccu_resets, !87, !"sun50i_h616_r_ccu_resets", i1 false, i1 false}
!87 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c", i32 198, i32 29}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
