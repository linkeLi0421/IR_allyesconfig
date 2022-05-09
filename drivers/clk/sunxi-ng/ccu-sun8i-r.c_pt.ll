; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu-sun8i-r.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-r.c"
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
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_mux_fixed_prediv = type { i8, i16 }
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

@__initcall__kmod_sun8i_r_ccu__170_298_sun8i_r_ccu_driver_init6 = internal global ptr @sun8i_r_ccu_driver_init, section ".initcall6.init", align 4
@sun8i_r_ccu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_r_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun8i_r_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun8i_r_ccu_driver_exit = internal global ptr @sun8i_r_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns171 = internal constant [32 x i8] c"sun8i_r_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [50 x i8] c"sun8i_r_ccu.file=drivers/clk/sunxi-ng/sun8i-r-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [24 x i8] c"sun8i_r_ccu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sun8i-r-ccu\00", [20 x i8] zeroinitializer }, align 32
@sun8i_r_ccu_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_r_ccu_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_r_ccu_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_r_ccu_desc }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sun8i_a83t_r_ccu_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun8i_a83t_r_ccu_clks, i32 10, ptr @sun8i_a83t_r_hw_clks, ptr @sun8i_a83t_r_ccu_resets, i32 6 }, [44 x i8] zeroinitializer }, align 32
@sun8i_h3_r_ccu_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun8i_h3_r_ccu_clks, i32 9, ptr @sun8i_h3_r_hw_clks, ptr @sun8i_h3_r_ccu_resets, i32 6 }, [44 x i8] zeroinitializer }, align 32
@sun50i_a64_r_ccu_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun50i_a64_r_ccu_clks, i32 10, ptr @sun50i_a64_r_hw_clks, ptr @sun50i_a64_r_ccu_resets, i32 6 }, [44 x i8] zeroinitializer }, align 32
@sun8i_a83t_r_ccu_clks = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 4), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 4), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 4), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 4), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 4), ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 4), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 4), ptr getelementptr (i8, ptr @a83t_ir_clk, i64 72)], [56 x i8] zeroinitializer }, align 32
@sun8i_a83t_r_ccu_resets = internal global { [6 x %struct.ccu_reset_map], [48 x i8] } { [6 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 176, i32 2 }, %struct.ccu_reset_map { i16 176, i32 4 }, %struct.ccu_reset_map { i16 176, i32 8 }, %struct.ccu_reset_map { i16 176, i32 16 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 64 }], [48 x i8] zeroinitializer }, align 32
@ar100_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr @ar100_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@apb0_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@apb0_pio_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 } } }, [60 x i8] zeroinitializer }, align 32
@apb0_ir_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 } } }, [60 x i8] zeroinitializer }, align 32
@apb0_timer_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, [60 x i8] zeroinitializer }, align 32
@apb0_rsb_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 } } }, [60 x i8] zeroinitializer }, align 32
@apb0_uart_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, [60 x i8] zeroinitializer }, align 32
@apb0_i2c_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, [60 x i8] zeroinitializer }, align 32
@apb0_twd_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, [60 x i8] zeroinitializer }, align 32
@a83t_ir_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr @a83t_ir_predivs, i8 1, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 } } }, [56 x i8] zeroinitializer }, align 32
@ar100_predivs = internal constant { [1 x %struct.ccu_mux_var_prediv], [29 x i8] } { [1 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 2, i8 8, i8 5 }], [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ar100\00", [26 x i8] zeroinitializer }, align 32
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@ar100_parents = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.3, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @ccu_div_ops, ptr null, ptr @ar100_parents, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"losc\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hosc\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll-periph\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iosc\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb0\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahb0\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @ccu_div_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb0-pio\00", [23 x i8] zeroinitializer }, align 32
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@apb0_gate_parent = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @apb0_clk, i64 68)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apb0-ir\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apb0-timer\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb0-rsb\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apb0-uart\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb0-i2c\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb0-twd\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@a83t_ir_predivs = internal constant { [1 x %struct.ccu_mux_fixed_prediv], [28 x i8] } { [1 x %struct.ccu_mux_fixed_prediv] [%struct.ccu_mux_fixed_prediv { i8 0, i16 16 }], [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ir\00", [29 x i8] zeroinitializer }, align 32
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@a83t_r_mod0_parents = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.3, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_mp_ops, ptr null, ptr @a83t_r_mod0_parents, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ahb0_clk = internal global { %struct.clk_fixed_factor, [44 x i8] } { %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sun8i_a83t_r_hw_clks = internal global { { i32, [12 x ptr] }, [44 x i8] } { { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68), ptr @ahb0_clk, ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 24), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 24), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 24), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 24), ptr getelementptr (i8, ptr @a83t_ir_clk, i64 92)] }, [44 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.27 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.27, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun8i_h3_r_ccu_clks = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 4), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 4), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 4), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 4), ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 4), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 4), ptr getelementptr (i8, ptr @ir_clk, i64 72)], [60 x i8] zeroinitializer }, align 32
@sun8i_h3_r_ccu_resets = internal global { [6 x %struct.ccu_reset_map], [48 x i8] } { [6 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 176, i32 2 }, %struct.ccu_reset_map { i16 176, i32 4 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 16 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 64 }], [48 x i8] zeroinitializer }, align 32
@ir_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, [56 x i8] zeroinitializer }, align 32
@r_mod0_default_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_mp_ops, ptr @r_mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc24M\00", [25 x i8] zeroinitializer }, align 32
@sun8i_h3_r_hw_clks = internal global { { i32, [12 x ptr] }, [44 x i8] } { { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68), ptr @ahb0_clk, ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_uart_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 24), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 24), ptr getelementptr (i8, ptr @ir_clk, i64 92)] }, [44 x i8] zeroinitializer }, align 32
@sun50i_a64_r_ccu_clks = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 4), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 4), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 4), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 4), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 4), ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 4), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 4), ptr getelementptr (i8, ptr @ir_clk, i64 72)], [56 x i8] zeroinitializer }, align 32
@sun50i_a64_r_ccu_resets = internal global { [6 x %struct.ccu_reset_map], [48 x i8] } { [6 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 176, i32 2 }, %struct.ccu_reset_map { i16 176, i32 4 }, %struct.ccu_reset_map { i16 176, i32 8 }, %struct.ccu_reset_map { i16 176, i32 16 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 64 }], [48 x i8] zeroinitializer }, align 32
@sun50i_a64_r_hw_clks = internal global { { i32, [12 x ptr] }, [44 x i8] } { { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68), ptr @ahb0_clk, ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 24), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 24), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 24), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 24), ptr getelementptr (i8, ptr @ir_clk, i64 92)] }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"sun8i_r_ccu_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 290, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 293, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"sun8i_r_ccu_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 274, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"sun8i_a83t_r_ccu_desc\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 228, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"sun8i_h3_r_ccu_desc\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 238, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"sun50i_a64_r_ccu_desc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 248, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"sun8i_a83t_r_ccu_clks\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 117, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"sun8i_a83t_r_ccu_resets\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 205, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"ar100_clk\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 32, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"apb0_clk\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"apb0_pio_clk\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"apb0_ir_clk\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"apb0_timer_clk\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"apb0_rsb_clk\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"apb0_uart_clk\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"apb0_i2c_clk\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"apb0_twd_clk\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"a83t_ir_clk\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 94, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"ar100_predivs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 28, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 46, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"ar100_parents\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 21, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 22, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 23, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 24, i32 15 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 25, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 55, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 63, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"apb0_gate_parent\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 62, i32 29 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 65, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 67, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 69, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 71, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 73, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 75, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"a83t_ir_predivs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 91, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 110, i32 14 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"a83t_r_mod0_parents\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 87, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [9 x i8] c"ahb0_clk\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 53, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"sun8i_a83t_r_hw_clks\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 155, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"sun8i_h3_r_ccu_clks\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 130, i32 27 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"sun8i_h3_r_ccu_resets\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 213, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"ir_clk\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 79, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"r_mod0_default_parents\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 56 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 66 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"sun8i_h3_r_hw_clks\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 172, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"sun50i_a64_r_ccu_clks\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 142, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"sun50i_a64_r_ccu_resets\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 220, i32 29 }
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"sun50i_a64_r_hw_clks\00", align 1
@___asan_gen_.196 = private constant [38 x i8] c"../drivers/clk/sunxi-ng/ccu-sun8i-r.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 188, i32 35 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_import_ns171, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sun8i_r_ccu_driver_exit, ptr @__initcall__kmod_sun8i_r_ccu__170_298_sun8i_r_ccu_driver_init6, ptr @sun8i_r_ccu_driver_exit, ptr @sun8i_r_ccu_driver, ptr @.str, ptr @sun8i_r_ccu_ids, ptr @sun8i_a83t_r_ccu_desc, ptr @sun8i_h3_r_ccu_desc, ptr @sun50i_a64_r_ccu_desc, ptr @sun8i_a83t_r_ccu_clks, ptr @sun8i_a83t_r_ccu_resets, ptr @ar100_clk, ptr @apb0_clk, ptr @apb0_pio_clk, ptr @apb0_ir_clk, ptr @apb0_timer_clk, ptr @apb0_rsb_clk, ptr @apb0_uart_clk, ptr @apb0_i2c_clk, ptr @apb0_twd_clk, ptr @a83t_ir_clk, ptr @ar100_predivs, ptr @.str.1, ptr @ar100_parents, ptr @.compoundliteral, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @apb0_gate_parent, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @a83t_ir_predivs, ptr @.str.24, ptr @a83t_r_mod0_parents, ptr @.compoundliteral.25, ptr @ahb0_clk, ptr @sun8i_a83t_r_hw_clks, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @sun8i_h3_r_ccu_clks, ptr @sun8i_h3_r_ccu_resets, ptr @ir_clk, ptr @r_mod0_default_parents, ptr @.compoundliteral.29, ptr @.str.30, ptr @.str.31, ptr @sun8i_h3_r_hw_clks, ptr @sun50i_a64_r_ccu_clks, ptr @sun50i_a64_r_ccu_resets, ptr @sun50i_a64_r_hw_clks], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r_ccu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r_ccu_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_r_ccu_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_r_ccu_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_r_ccu_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_r_ccu_clks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_r_ccu_resets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar100_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_pio_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_ir_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_timer_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_rsb_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_uart_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_i2c_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_twd_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a83t_ir_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar100_predivs to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar100_parents to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb0_gate_parent to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a83t_ir_predivs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a83t_r_mod0_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahb0_clk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_r_hw_clks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_r_ccu_clks to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_r_ccu_resets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_mod0_default_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_r_hw_clks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_r_ccu_clks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_r_ccu_resets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_r_hw_clks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_r_ccu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_r_ccu_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_r_ccu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_r_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_r_ccu_probe(ptr noundef %pdev) #2 align 64 {
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_sun8i_r_ccu__170_298_sun8i_r_ccu_driver_init6, !1, !"__initcall__kmod_sun8i_r_ccu__170_298_sun8i_r_ccu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_sun8i_r_ccu_driver_exit, !1, !"__exitcall_sun8i_r_ccu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns171, !4, !"__UNIQUE_ID_import_ns171", i1 false, i1 false}
!4 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 300, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 301, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 293, i32 13}
!10 = !{ptr @sun8i_r_ccu_driver, !11, !"sun8i_r_ccu_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 290, i32 31}
!12 = !{ptr @sun8i_r_ccu_ids, !13, !"sun8i_r_ccu_ids", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 274, i32 34}
!14 = !{ptr @sun8i_a83t_r_ccu_desc, !15, !"sun8i_a83t_r_ccu_desc", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 228, i32 36}
!16 = !{ptr @sun8i_a83t_r_ccu_clks, !17, !"sun8i_a83t_r_ccu_clks", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 117, i32 27}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 46, i32 14}
!20 = !{ptr @ar100_clk, !21, !"ar100_clk", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 32, i32 23}
!22 = !{ptr @ar100_predivs, !23, !"ar100_predivs", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 28, i32 40}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 22, i32 15}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 23, i32 15}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 24, i32 15}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 25, i32 15}
!32 = !{ptr @ar100_parents, !33, !"ar100_parents", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 21, i32 37}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 55, i32 8}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @apb0_clk, !35, !"apb0_clk", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 63, i32 8}
!40 = !{ptr @apb0_pio_clk, !39, !"apb0_pio_clk", i1 false, i1 false}
!41 = !{ptr @apb0_gate_parent, !42, !"apb0_gate_parent", i1 false, i1 false}
!42 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 62, i32 29}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 65, i32 8}
!45 = !{ptr @apb0_ir_clk, !44, !"apb0_ir_clk", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 67, i32 8}
!48 = !{ptr @apb0_timer_clk, !47, !"apb0_timer_clk", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 69, i32 8}
!51 = !{ptr @apb0_rsb_clk, !50, !"apb0_rsb_clk", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 71, i32 8}
!54 = !{ptr @apb0_uart_clk, !53, !"apb0_uart_clk", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 73, i32 8}
!57 = !{ptr @apb0_i2c_clk, !56, !"apb0_i2c_clk", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 75, i32 8}
!60 = !{ptr @apb0_twd_clk, !59, !"apb0_twd_clk", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 110, i32 14}
!63 = !{ptr @a83t_ir_clk, !64, !"a83t_ir_clk", i1 false, i1 false}
!64 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 94, i32 22}
!65 = !{ptr @a83t_ir_predivs, !66, !"a83t_ir_predivs", i1 false, i1 false}
!66 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 91, i32 42}
!67 = !{ptr @a83t_r_mod0_parents, !68, !"a83t_r_mod0_parents", i1 false, i1 false}
!68 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 87, i32 37}
!69 = !{ptr @sun8i_a83t_r_hw_clks, !70, !"sun8i_a83t_r_hw_clks", i1 false, i1 false}
!70 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 155, i32 35}
!71 = !{ptr @ahb0_clk, !72, !"ahb0_clk", i1 false, i1 false}
!72 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 53, i32 8}
!73 = !{ptr @sun8i_a83t_r_ccu_resets, !74, !"sun8i_a83t_r_ccu_resets", i1 false, i1 false}
!74 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 205, i32 29}
!75 = !{ptr @sun8i_h3_r_ccu_desc, !76, !"sun8i_h3_r_ccu_desc", i1 false, i1 false}
!76 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 238, i32 36}
!77 = !{ptr @sun8i_h3_r_ccu_clks, !78, !"sun8i_h3_r_ccu_clks", i1 false, i1 false}
!78 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 130, i32 27}
!79 = !{ptr @ir_clk, !80, !"ir_clk", i1 false, i1 false}
!80 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 79, i32 8}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 78, i32 56}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 78, i32 66}
!85 = !{ptr @r_mod0_default_parents, !86, !"r_mod0_default_parents", i1 false, i1 false}
!86 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 78, i32 27}
!87 = !{ptr @sun8i_h3_r_hw_clks, !88, !"sun8i_h3_r_hw_clks", i1 false, i1 false}
!88 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 172, i32 35}
!89 = !{ptr @sun8i_h3_r_ccu_resets, !90, !"sun8i_h3_r_ccu_resets", i1 false, i1 false}
!90 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 213, i32 29}
!91 = !{ptr @sun50i_a64_r_ccu_desc, !92, !"sun50i_a64_r_ccu_desc", i1 false, i1 false}
!92 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 248, i32 36}
!93 = !{ptr @sun50i_a64_r_ccu_clks, !94, !"sun50i_a64_r_ccu_clks", i1 false, i1 false}
!94 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 142, i32 27}
!95 = !{ptr @sun50i_a64_r_hw_clks, !96, !"sun50i_a64_r_hw_clks", i1 false, i1 false}
!96 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 188, i32 35}
!97 = !{ptr @sun50i_a64_r_ccu_resets, !98, !"sun50i_a64_r_ccu_resets", i1 false, i1 false}
!98 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-r.c", i32 220, i32 29}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
