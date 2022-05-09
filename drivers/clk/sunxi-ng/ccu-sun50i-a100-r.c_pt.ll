; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c"
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
%struct.ccu_mux = type { i32, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_sun50i_a100_r_ccu__170_214_sun50i_a100_r_ccu_driver_init6 = internal global ptr @sun50i_a100_r_ccu_driver_init, section ".initcall6.init", align 4
@sun50i_a100_r_ccu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun50i_a100_r_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun50i_a100_r_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun50i_a100_r_ccu_driver_exit = internal global ptr @sun50i_a100_r_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns171 = internal constant [38 x i8] c"sun50i_a100_r_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [62 x i8] c"sun50i_a100_r_ccu.file=drivers/clk/sunxi-ng/sun50i-a100-r-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [30 x i8] c"sun50i_a100_r_ccu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun50i-a100-r-ccu\00", [46 x i8] zeroinitializer }, align 32
@sun50i_a100_r_ccu_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun50i_a100_r_ccu_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun50i_a100_r_ccu_clks, i32 14, ptr @sun50i_a100_r_hw_clks, ptr @sun50i_a100_r_ccu_resets, i32 8 }, [44 x i8] zeroinitializer }, align 32
@sun50i_a100_r_ccu_clks = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr getelementptr (i8, ptr @r_cpus_clk, i64 48), ptr getelementptr (i8, ptr @r_apb1_clk, i64 48), ptr getelementptr (i8, ptr @r_apb2_clk, i64 48), ptr getelementptr (i8, ptr @r_apb1_timer_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_twd_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_pwm_clk, i64 28), ptr getelementptr (i8, ptr @r_apb1_bus_pwm_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_ppu_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_uart_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @r_apb2_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @r_apb1_ir_rx_clk, i64 72), ptr getelementptr (i8, ptr @r_apb1_bus_ir_rx_clk, i64 4), ptr getelementptr (i8, ptr @r_ahb_bus_rtc_clk, i64 4)], [40 x i8] zeroinitializer }, align 32
@sun50i_a100_r_ccu_resets = internal global { [8 x %struct.ccu_reset_map], [32 x i8] } { [8 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 284, i32 65536 }, %struct.ccu_reset_map { i16 316, i32 65536 }, %struct.ccu_reset_map { i16 380, i32 65536 }, %struct.ccu_reset_map { i16 396, i32 65536 }, %struct.ccu_reset_map { i16 412, i32 65536 }, %struct.ccu_reset_map { i16 412, i32 131072 }, %struct.ccu_reset_map { i16 460, i32 65536 }, %struct.ccu_reset_map { i16 524, i32 65536 }], [32 x i8] zeroinitializer }, align 32
@r_cpus_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr @cpus_r_apb2_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@r_apb1_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@r_apb2_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr @cpus_r_apb2_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 16, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@r_apb1_timer_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 284, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_twd_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 300, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_pwm_clk = internal global { %struct.ccu_mux, [36 x i8] } { %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 304, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 } } }, [36 x i8] zeroinitializer }, align 32
@r_apb1_bus_pwm_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 316, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_ppu_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 380, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb2_uart_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 396, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb2_i2c0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb2_i2c1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, [60 x i8] zeroinitializer }, align 32
@r_apb1_ir_rx_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 448, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, [56 x i8] zeroinitializer }, align 32
@r_apb1_bus_ir_rx_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 460, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 } } }, [60 x i8] zeroinitializer }, align 32
@r_ahb_bus_rtc_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 524, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 } } }, [60 x i8] zeroinitializer }, align 32
@cpus_r_apb2_predivs = internal constant { [1 x %struct.ccu_mux_var_prediv], [29 x i8] } { [1 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 3, i8 0, i8 5 }], [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpus\00", [27 x i8] zeroinitializer }, align 32
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@cpus_r_apb2_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @ccu_div_ops, ptr @cpus_r_apb2_parents, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dcxo24M\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iosc\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll-periph0\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r-apb1\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r-ahb\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @ccu_div_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r-apb2\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @ccu_div_ops, ptr @cpus_r_apb2_parents, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r-apb1-timer\00", [19 x i8] zeroinitializer }, align 32
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_parent_r_apb1 = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr getelementptr (i8, ptr @r_apb1_clk, i64 68), ptr null, ptr null, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb1, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r-apb1-twd\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb1, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r-apb1-pwm\00", [21 x i8] zeroinitializer }, align 32
@ccu_mux_ops = external dso_local constant %struct.clk_ops, align 4
@r_apb1_pwm_clk_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @ccu_mux_ops, ptr @r_apb1_pwm_clk_parents, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r-apb1-bus-pwm\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb1, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r-apb1-ppu\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb1, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r-apb2-uart\00", [20 x i8] zeroinitializer }, align 32
@clk_parent_r_apb2 = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr getelementptr (i8, ptr @r_apb2_clk, i64 68), ptr null, ptr null, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb2, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r-apb2-i2c0\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb2, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r-apb2-i2c1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb2, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r-apb1-ir-rx\00", [19 x i8] zeroinitializer }, align 32
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@r_apb1_ir_rx_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.28, ptr @ccu_mp_ops, ptr @r_apb1_ir_rx_parents, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r-apb1-bus-ir-rx\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_r_apb1, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r-ahb-rtc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @ccu_gate_ops, ptr @.compoundliteral.33, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@r_ahb_clk = internal global { %struct.clk_fixed_factor, [44 x i8] } { %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sun50i_a100_r_hw_clks = internal global { { i32, [15 x ptr] }, [32 x i8] } { { i32, [15 x ptr] } { i32 15, [15 x ptr] [ptr getelementptr (i8, ptr @r_cpus_clk, i64 68), ptr @r_ahb_clk, ptr getelementptr (i8, ptr @r_apb1_clk, i64 68), ptr getelementptr (i8, ptr @r_apb2_clk, i64 68), ptr getelementptr (i8, ptr @r_apb1_timer_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_twd_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_pwm_clk, i64 48), ptr getelementptr (i8, ptr @r_apb1_bus_pwm_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_ppu_clk, i64 24), ptr getelementptr (i8, ptr @r_apb2_uart_clk, i64 24), ptr getelementptr (i8, ptr @r_apb2_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @r_apb2_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @r_apb1_ir_rx_clk, i64 92), ptr getelementptr (i8, ptr @r_apb1_bus_ir_rx_clk, i64 24), ptr getelementptr (i8, ptr @r_ahb_bus_rtc_clk, i64 24)] }, [32 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.36 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @r_cpus_clk, i64 68)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.36, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"sun50i_a100_r_ccu_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 206, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 209, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"sun50i_a100_r_ccu_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 201, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"sun50i_a100_r_ccu_desc\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 180, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"sun50i_a100_r_ccu_clks\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 131, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"sun50i_a100_r_ccu_resets\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 169, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"r_cpus_clk\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 26, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"r_apb1_clk\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 49, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"r_apb2_clk\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 61, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"r_apb1_timer_clk\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"r_apb1_twd_clk\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"r_apb1_pwm_clk\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"r_apb1_bus_pwm_clk\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"r_apb1_ppu_clk\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"r_apb2_uart_clk\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"r_apb2_i2c0_clk\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"r_apb2_i2c1_clk\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"r_apb1_ir_rx_clk\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"r_apb1_bus_ir_rx_clk\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"r_ahb_bus_rtc_clk\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"cpus_r_apb2_predivs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 22, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 40, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"cpus_r_apb2_parents\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 20, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 20, i32 53 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 20, i32 64 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 21, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 21, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 54, i32 14 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 75, i32 14 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 90, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"clk_parent_r_apb1\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 82, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 93, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 98, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant [23 x i8] c"r_apb1_pwm_clk_parents\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 96, i32 27 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 101, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 104, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 107, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"clk_parent_r_apb2\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 86, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 110, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 113, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 117, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"r_apb1_ir_rx_parents\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 116, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 125, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 128, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [10 x i8] c"r_ahb_clk\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 47, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"sun50i_a100_r_hw_clks\00", align 1
@___asan_gen_.193 = private constant [44 x i8] c"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 148, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_import_ns171, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sun50i_a100_r_ccu_driver_exit, ptr @__initcall__kmod_sun50i_a100_r_ccu__170_214_sun50i_a100_r_ccu_driver_init6, ptr @sun50i_a100_r_ccu_driver_exit, ptr @sun50i_a100_r_ccu_driver, ptr @.str, ptr @sun50i_a100_r_ccu_ids, ptr @sun50i_a100_r_ccu_desc, ptr @sun50i_a100_r_ccu_clks, ptr @sun50i_a100_r_ccu_resets, ptr @r_cpus_clk, ptr @r_apb1_clk, ptr @r_apb2_clk, ptr @r_apb1_timer_clk, ptr @r_apb1_twd_clk, ptr @r_apb1_pwm_clk, ptr @r_apb1_bus_pwm_clk, ptr @r_apb1_ppu_clk, ptr @r_apb2_uart_clk, ptr @r_apb2_i2c0_clk, ptr @r_apb2_i2c1_clk, ptr @r_apb1_ir_rx_clk, ptr @r_apb1_bus_ir_rx_clk, ptr @r_ahb_bus_rtc_clk, ptr @cpus_r_apb2_predivs, ptr @.str.1, ptr @cpus_r_apb2_parents, ptr @.compoundliteral, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @clk_parent_r_apb1, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @r_apb1_pwm_clk_parents, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @clk_parent_r_apb2, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @r_apb1_ir_rx_parents, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @r_ahb_clk, ptr @sun50i_a100_r_hw_clks, ptr @.compoundliteral.36, ptr @.compoundliteral.37], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_r_ccu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_r_ccu_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_r_ccu_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_r_ccu_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_r_ccu_resets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_cpus_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_timer_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_twd_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_pwm_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_bus_pwm_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_ppu_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_uart_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_i2c0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb2_i2c1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_ir_rx_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_bus_ir_rx_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ahb_bus_rtc_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpus_r_apb2_predivs to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpus_r_apb2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_parent_r_apb1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_pwm_clk_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_parent_r_apb2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb1_ir_rx_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ahb_clk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_r_hw_clks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_a100_r_ccu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun50i_a100_r_ccu_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_a100_r_ccu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun50i_a100_r_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_a100_r_ccu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %dev, ptr noundef %call, ptr noundef nonnull @sun50i_a100_r_ccu_desc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !46, !48, !49, !51, !52, !54, !56, !57, !59, !60, !62, !63, !65, !67, !68, !70, !71, !73, !74, !76, !78, !79, !81, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_sun50i_a100_r_ccu__170_214_sun50i_a100_r_ccu_driver_init6, !1, !"__initcall__kmod_sun50i_a100_r_ccu__170_214_sun50i_a100_r_ccu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 214, i32 1}
!2 = !{ptr @__exitcall_sun50i_a100_r_ccu_driver_exit, !1, !"__exitcall_sun50i_a100_r_ccu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns171, !4, !"__UNIQUE_ID_import_ns171", i1 false, i1 false}
!4 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 216, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 217, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 209, i32 11}
!10 = !{ptr @sun50i_a100_r_ccu_driver, !11, !"sun50i_a100_r_ccu_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 206, i32 31}
!12 = !{ptr @sun50i_a100_r_ccu_desc, !13, !"sun50i_a100_r_ccu_desc", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 180, i32 36}
!14 = !{ptr @sun50i_a100_r_ccu_clks, !15, !"sun50i_a100_r_ccu_clks", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 131, i32 27}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 40, i32 14}
!18 = !{ptr @r_cpus_clk, !19, !"r_cpus_clk", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 26, i32 23}
!20 = !{ptr @cpus_r_apb2_predivs, !21, !"cpus_r_apb2_predivs", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 22, i32 40}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 20, i32 53}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 20, i32 64}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 21, i32 12}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 21, i32 20}
!30 = !{ptr @cpus_r_apb2_parents, !31, !"cpus_r_apb2_parents", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 20, i32 27}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 54, i32 14}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @r_apb1_clk, !36, !"r_apb1_clk", i1 false, i1 false}
!36 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 49, i32 23}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 75, i32 14}
!39 = !{ptr @r_apb2_clk, !40, !"r_apb2_clk", i1 false, i1 false}
!40 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 61, i32 23}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 90, i32 8}
!43 = !{ptr @r_apb1_timer_clk, !42, !"r_apb1_timer_clk", i1 false, i1 false}
!44 = !{ptr @clk_parent_r_apb1, !45, !"clk_parent_r_apb1", i1 false, i1 false}
!45 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 82, i32 37}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 93, i32 8}
!48 = !{ptr @r_apb1_twd_clk, !47, !"r_apb1_twd_clk", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 98, i32 8}
!51 = !{ptr @r_apb1_pwm_clk, !50, !"r_apb1_pwm_clk", i1 false, i1 false}
!52 = !{ptr @r_apb1_pwm_clk_parents, !53, !"r_apb1_pwm_clk_parents", i1 false, i1 false}
!53 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 96, i32 27}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 101, i32 8}
!56 = !{ptr @r_apb1_bus_pwm_clk, !55, !"r_apb1_bus_pwm_clk", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 104, i32 8}
!59 = !{ptr @r_apb1_ppu_clk, !58, !"r_apb1_ppu_clk", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 107, i32 8}
!62 = !{ptr @r_apb2_uart_clk, !61, !"r_apb2_uart_clk", i1 false, i1 false}
!63 = !{ptr @clk_parent_r_apb2, !64, !"clk_parent_r_apb2", i1 false, i1 false}
!64 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 86, i32 37}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 110, i32 8}
!67 = !{ptr @r_apb2_i2c0_clk, !66, !"r_apb2_i2c0_clk", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 113, i32 8}
!70 = !{ptr @r_apb2_i2c1_clk, !69, !"r_apb2_i2c1_clk", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 117, i32 8}
!73 = !{ptr @r_apb1_ir_rx_clk, !72, !"r_apb1_ir_rx_clk", i1 false, i1 false}
!74 = !{ptr @r_apb1_ir_rx_parents, !75, !"r_apb1_ir_rx_parents", i1 false, i1 false}
!75 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 116, i32 27}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 125, i32 8}
!78 = !{ptr @r_apb1_bus_ir_rx_clk, !77, !"r_apb1_bus_ir_rx_clk", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 128, i32 8}
!81 = !{ptr @r_ahb_bus_rtc_clk, !80, !"r_ahb_bus_rtc_clk", i1 false, i1 false}
!82 = !{ptr @sun50i_a100_r_hw_clks, !83, !"sun50i_a100_r_hw_clks", i1 false, i1 false}
!83 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 148, i32 35}
!84 = !{ptr @r_ahb_clk, !85, !"r_ahb_clk", i1 false, i1 false}
!85 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 47, i32 8}
!86 = !{ptr @sun50i_a100_r_ccu_resets, !87, !"sun50i_a100_r_ccu_resets", i1 false, i1 false}
!87 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 169, i32 29}
!88 = !{ptr @sun50i_a100_r_ccu_ids, !89, !"sun50i_a100_r_ccu_ids", i1 false, i1 false}
!89 = !{!"../drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c", i32 201, i32 34}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
