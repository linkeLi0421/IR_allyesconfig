; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-ast2600.c_pt.bc'
source_filename = "../drivers/clk/clk-ast2600.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.aspeed_gate_data = type { i8, i8, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_reset = type { ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.aspeed_clk_gate = type { %struct.clk_hw, ptr, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_ast2600__183_690_aspeed_g6_clk_driver_init6 = internal global ptr @aspeed_g6_clk_driver_init, section ".initcall6.init", align 4
@__of_table_aspeed_cc_g6 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_cc_g6_of_clk_init_driver }, section "__clk_of_table", align 4
@aspeed_g6_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_g6_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @aspeed_g6_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ast2600-clk\00", [20 x i8] zeroinitializer }, align 32
@aspeed_g6_clk_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@aspeed_g6_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no syscon regmap\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aspeed_g6_clk_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/clk-ast2600.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_g6_clk_probe._entry_ptr = internal global ptr @aspeed_g6_clk_probe._entry, section ".printk_index", align 4
@aspeed_g6_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @aspeed_g6_reset_assert, ptr @aspeed_g6_reset_deassert, ptr @aspeed_g6_reset_status }, [16 x i8] zeroinitializer }, align 32
@aspeed_g6_clk_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not register reset controller\0A\00", [59 x i8] zeroinitializer }, align 32
@aspeed_g6_clk_probe._entry_ptr.8 = internal global ptr @aspeed_g6_clk_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@aspeed_g6_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uartx\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emmc_extclk_hpll_in\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hpll\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emmc_extclk_mux\00", [16 x i8] zeroinitializer }, align 32
@emmc_extclk_parent_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.11, ptr @.str.32], [24 x i8] zeroinitializer }, align 32
@scu_g6_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aspeed_g6_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"emmc_extclk_gate\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emmc_extclk\00", [20 x i8] zeroinitializer }, align 32
@ast2600_emmc_extclk_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sd_extclk_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_extclk\00", [22 x i8] zeroinitializer }, align 32
@ast2600_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 8 }, %struct.clk_div_table { i32 2, i32 12 }, %struct.clk_div_table { i32 3, i32 16 }, %struct.clk_div_table { i32 4, i32 20 }, %struct.clk_div_table { i32 5, i32 24 }, %struct.clk_div_table { i32 6, i32 28 }, %struct.clk_div_table { i32 7, i32 32 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac12rclk\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac12\00", [26 x i8] zeroinitializer }, align 32
@ast2600_mac_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac1rclk\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac2rclk\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac34rclk\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac34\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac3rclk\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac4rclk\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lhclk\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"d1clk\00", [26 x i8] zeroinitializer }, align 32
@d1clk_parent_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bclk\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vclk\00", [27 x i8] zeroinitializer }, align 32
@vclk_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.34, ptr @.str.39, ptr @.str.23, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eclk\00", [27 x i8] zeroinitializer }, align 32
@ast2600_eclk_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@aspeed_g6_gates = internal constant { [46 x %struct.aspeed_gate_data], [160 x i8] } { [46 x %struct.aspeed_gate_data] [%struct.aspeed_gate_data { i8 1, i8 6, ptr @.str.41, ptr @.str.31, i32 0 }, %struct.aspeed_gate_data { i8 2, i8 7, ptr @.str.42, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 0, i8 -1, ptr @.str.43, ptr @.str.32, i32 2048 }, %struct.aspeed_gate_data { i8 3, i8 -1, ptr @.str.44, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 4, i8 8, ptr @.str.45, ptr @.str.29, i32 0 }, %struct.aspeed_gate_data { i8 5, i8 -1, ptr @.str.46, ptr null, i32 2048 }, %struct.aspeed_gate_data { i8 32, i8 32, ptr @.str.47, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 37, i8 -1, ptr @.str.48, ptr @.str.27, i32 0 }, %struct.aspeed_gate_data { i8 10, i8 13, ptr @.str.49, ptr @.str.28, i32 0 }, %struct.aspeed_gate_data { i8 13, i8 4, ptr @.str.50, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 6, i8 -1, ptr @.str.51, ptr @.str.52, i32 2048 }, %struct.aspeed_gate_data { i8 34, i8 -1, ptr @.str.53, ptr @.str.52, i32 2048 }, %struct.aspeed_gate_data { i8 33, i8 -1, ptr @.str.54, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 9, i8 15, ptr @.str.55, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 14, i8 14, ptr @.str.56, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 7, i8 3, ptr @.str.57, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 24, i8 4, ptr @.str.58, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 25, i8 9, ptr @.str.59, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 20, i8 11, ptr @.str.60, ptr @.str.19, i32 0 }, %struct.aspeed_gate_data { i8 21, i8 12, ptr @.str.61, ptr @.str.19, i32 0 }, %struct.aspeed_gate_data { i8 52, i8 52, ptr @.str.62, ptr @.str.24, i32 0 }, %struct.aspeed_gate_data { i8 53, i8 53, ptr @.str.63, ptr @.str.24, i32 0 }, %struct.aspeed_gate_data { i8 48, i8 -1, ptr @.str.64, ptr @.str.9, i32 0 }, %struct.aspeed_gate_data { i8 49, i8 -1, ptr @.str.65, ptr @.str.9, i32 0 }, %struct.aspeed_gate_data { i8 50, i8 -1, ptr @.str.66, ptr @.str.9, i32 0 }, %struct.aspeed_gate_data { i8 51, i8 -1, ptr @.str.67, ptr @.str.9, i32 0 }, %struct.aspeed_gate_data { i8 15, i8 -1, ptr @.str.68, ptr @.str.9, i32 0 }, %struct.aspeed_gate_data { i8 54, i8 -1, ptr @.str.69, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 55, i8 -1, ptr @.str.70, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 56, i8 -1, ptr @.str.71, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 57, i8 -1, ptr @.str.72, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 58, i8 -1, ptr @.str.73, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 59, i8 -1, ptr @.str.74, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 60, i8 -1, ptr @.str.75, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 61, i8 -1, ptr @.str.76, ptr @.str.10, i32 0 }, %struct.aspeed_gate_data { i8 36, i8 56, ptr @.str.77, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 27, i8 16, ptr @.str.78, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 40, i8 40, ptr @.str.79, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 41, i8 41, ptr @.str.80, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 42, i8 42, ptr @.str.81, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 43, i8 43, ptr @.str.82, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 44, i8 44, ptr @.str.83, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 45, i8 45, ptr @.str.84, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 46, i8 46, ptr @.str.85, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 47, i8 47, ptr @.str.86, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 62, i8 59, ptr @.str.87, ptr null, i32 0 }], [160 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_g6_clk_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpll\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"epll\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb-phy-40m\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpioc6_clkin\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dp_phy_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"d1pll\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lhclk-gate\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d1clk-gate\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"yclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ref0clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ref1clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"espiclk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-uhci-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb-port1-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb-port2-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rsaclk-gate\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rvasclk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac1clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac2clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac3clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac4clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart1clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart2clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart3clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart4clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart5clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart6clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart7clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart8clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart9clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart10clk-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart11clk-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart12clk-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart13clk-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdclk-gate\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emmcclk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c0clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c1clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c2clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c3clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c4clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c5clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c6clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c7clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsiclk-gate\00", [20 x i8] zeroinitializer }, align 32
@aspeed_g6_clk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @aspeed_g6_clk_enable, ptr @aspeed_g6_clk_disable, ptr @aspeed_g6_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@soc_rev = internal global { i8, [31 x i8] } zeroinitializer, align 32
@aspeed_g6_cc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013clk-ast2600: no syscon regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed_g6_cc_init\00", [46 x i8] zeroinitializer }, align 32
@aspeed_g6_cc_init._entry_ptr = internal global ptr @aspeed_g6_cc_init._entry, section ".printk_index", align 4
@aspeed_g6_cc_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013clk-ast2600: failed to add DT provider: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@aspeed_g6_cc_init._entry_ptr.92 = internal global ptr @aspeed_g6_cc_init._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@ast2600_a1_axi_ahb200_tbl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 4, i32 3, i32 4, i32 2, i32 2, i32 2, i32 2], [32 x i8] zeroinitializer }, align 32
@ast2600_a1_axi_ahb_div1_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 4, i32 6, i32 8], [16 x i8] zeroinitializer }, align 32
@ast2600_a1_axi_ahb_div0_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 3, i32 4], [16 x i8] zeroinitializer }, align 32
@ast2600_a0_axi_ahb_div_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 2, i32 3, i32 5], [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb1\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb2\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"aspeed_g6_clk_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 682, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 685, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"aspeed_g6_clk_dt_ids\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 677, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 454, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"aspeed_g6_reset_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 380, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 471, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 481, i32 7 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"aspeed_g6_clk_data\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 51, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 492, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 498, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 498, i32 64 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 503, i32 7 }
@___asan_gen_.151 = private unnamed_addr constant [25 x i8] c"emmc_extclk_parent_names\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 423, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"scu_g6_base\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 53, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"aspeed_g6_clk_lock\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 511, i32 7 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 517, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant [30 x i8] c"ast2600_emmc_extclk_div_table\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 137, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 528, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 533, i32 7 }
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"ast2600_div_table\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 161, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 542, i32 7 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 547, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"ast2600_mac_div_table\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 149, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 556, i32 7 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 564, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 572, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 577, i32 7 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 586, i32 7 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 594, i32 7 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 602, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 613, i32 7 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"d1clk_parent_names\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 435, i32 27 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 625, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 634, i32 7 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"vclk_parent_names\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 428, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 643, i32 7 }
@___asan_gen_.229 = private unnamed_addr constant [23 x i8] c"ast2600_eclk_div_table\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 125, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"aspeed_g6_gates\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 63, i32 38 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 425, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 48, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 436, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 437, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 438, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 439, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 440, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 430, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 432, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 66, i32 38 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 67, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 65, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 69, i32 38 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 70, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 72, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 92, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 97, i32 39 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 78, i32 39 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 80, i32 38 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 73, i32 40 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 73, i32 56 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 94, i32 40 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 93, i32 40 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 76, i32 43 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 81, i32 44 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 74, i32 44 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 87, i32 39 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 88, i32 40 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 84, i32 40 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 85, i32 40 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 112, i32 41 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 113, i32 41 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 108, i32 42 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 109, i32 42 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 110, i32 42 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 111, i32 42 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 82, i32 41 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 114, i32 42 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 115, i32 42 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 116, i32 42 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 117, i32 42 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 118, i32 43 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 119, i32 43 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 120, i32 43 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 121, i32 43 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 96, i32 39 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 90, i32 40 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 100, i32 41 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 101, i32 41 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 102, i32 41 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 103, i32 41 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 104, i32 41 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 105, i32 41 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 106, i32 41 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 107, i32 41 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 122, i32 40 }
@___asan_gen_.403 = private unnamed_addr constant [23 x i8] c"aspeed_g6_clk_gate_ops\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 337, i32 29 }
@___asan_gen_.406 = private unnamed_addr constant [8 x i8] c"soc_rev\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 55, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 809, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 817, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 732, i32 63 }
@___asan_gen_.427 = private unnamed_addr constant [26 x i8] c"ast2600_a1_axi_ahb200_tbl\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 704, i32 18 }
@___asan_gen_.430 = private unnamed_addr constant [28 x i8] c"ast2600_a1_axi_ahb_div1_tbl\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 700, i32 18 }
@___asan_gen_.433 = private unnamed_addr constant [28 x i8] c"ast2600_a1_axi_ahb_div0_tbl\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 696, i32 18 }
@___asan_gen_.436 = private unnamed_addr constant [29 x i8] c"ast2600_a0_axi_ahb_div_table\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 692, i32 18 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 757, i32 42 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 763, i32 42 }
@___asan_gen_.445 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.446 = private constant [29 x i8] c"../drivers/clk/clk-ast2600.c\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 769, i32 42 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__initcall__kmod_clk_ast2600__183_690_aspeed_g6_clk_driver_init6, ptr @__of_table_aspeed_cc_g6, ptr @aspeed_g6_cc_init._entry, ptr @aspeed_g6_cc_init._entry.90, ptr @aspeed_g6_cc_init._entry_ptr, ptr @aspeed_g6_cc_init._entry_ptr.92, ptr @aspeed_g6_clk_probe._entry, ptr @aspeed_g6_clk_probe._entry.6, ptr @aspeed_g6_clk_probe._entry_ptr, ptr @aspeed_g6_clk_probe._entry_ptr.8, ptr @aspeed_g6_clk_driver, ptr @.str, ptr @aspeed_g6_clk_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aspeed_g6_reset_ops, ptr @.str.7, ptr @.str.9, ptr @aspeed_g6_clk_data, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @emmc_extclk_parent_names, ptr @scu_g6_base, ptr @aspeed_g6_clk_lock, ptr @.str.14, ptr @.str.15, ptr @ast2600_emmc_extclk_div_table, ptr @.str.16, ptr @.str.17, ptr @ast2600_div_table, ptr @.str.18, ptr @.str.19, ptr @ast2600_mac_div_table, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @d1clk_parent_names, ptr @.str.29, ptr @.str.30, ptr @vclk_parent_names, ptr @.str.31, ptr @ast2600_eclk_div_table, ptr @aspeed_g6_gates, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @aspeed_g6_clk_gate_ops, ptr @soc_rev, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @ast2600_a1_axi_ahb200_tbl, ptr @ast2600_a1_axi_ahb_div1_tbl, ptr @ast2600_a1_axi_ahb_div0_tbl, ptr @ast2600_a0_axi_ahb_div_table, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_clk_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_clk_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_extclk_parent_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_g6_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_emmc_extclk_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_mac_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d1clk_parent_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vclk_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_eclk_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_gates to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_clk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_rev to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_cc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_g6_cc_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_a1_axi_ahb200_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_a1_axi_ahb_div1_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_a1_axi_ahb_div0_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_a0_axi_ahb_div_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_g6_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_cc_g6_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  tail call fastcc void @aspeed_g6_cc_init(ptr noundef %np) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !240
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef %2) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %3 = ptrtoint ptr %call to i32
  br label %cleanup194

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup194_crit_edge, label %if.end6

if.end.cleanup194_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup194

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %call.i, align 4
  %rcdev = getelementptr inbounds %struct.aspeed_reset, ptr %call.i, i32 0, i32 1
  %owner = getelementptr inbounds %struct.aspeed_reset, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %nr_resets = getelementptr inbounds %struct.aspeed_reset, ptr %call.i, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %nr_resets, align 4
  %7 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @aspeed_g6_reset_ops, ptr %rcdev, align 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %of_node12 = getelementptr inbounds %struct.aspeed_reset, ptr %call.i, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %of_node12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %of_node12, align 4
  %call14 = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup194

if.end20:                                         ; preds = %if.end6
  %call21 = call i32 @regmap_read(ptr noundef %call, i32 noundef 192, ptr noundef nonnull %val) #6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %. = select i1 %tobool22.not, i32 24000000, i32 1846153
  %call25 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %., i32 noundef 0, i32 noundef 0) #6
  %cmp.i313 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i313, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call25 to i32
  br label %cleanup194

if.end29:                                         ; preds = %if.end20
  %14 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 59
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %arrayidx, align 4
  %call30 = call i32 @regmap_read(ptr noundef %call, i32 noundef 128, ptr noundef nonnull %val) #6
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool32.not = icmp sgt i32 %17, -1
  %.312 = select i1 %tobool32.not, i32 24000000, i32 1846153
  %call36 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %.312, i32 noundef 0, i32 noundef 0) #6
  %cmp.i314 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call36 to i32
  br label %cleanup194

if.end40:                                         ; preds = %if.end29
  %19 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %19, i32 60
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call36, ptr %arrayidx42, align 4
  %call43 = call ptr @clk_hw_register_fixed_factor(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef 2) #6
  %cmp.i315 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call43 to i32
  br label %cleanup194

if.end47:                                         ; preds = %if.end40
  %22 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 768
  %call48 = call ptr @__clk_hw_register_mux(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 2, ptr noundef nonnull @emmc_extclk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i316 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call48 to i32
  br label %cleanup194

if.end52:                                         ; preds = %if.end47
  %24 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr53 = getelementptr i8, ptr %24, i32 768
  %call54 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr53, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i317 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call54 to i32
  br label %cleanup194

if.end58:                                         ; preds = %if.end52
  %26 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr59 = getelementptr i8, ptr %26, i32 768
  %call60 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr59, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_emmc_extclk_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i318 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i318, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call60 to i32
  br label %cleanup194

if.end64:                                         ; preds = %if.end58
  %28 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %28, i32 62
  %29 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call60, ptr %arrayidx66, align 4
  %30 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr67 = getelementptr i8, ptr %30, i32 784
  %call68 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr67, i8 noundef zeroext 31, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i319 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i319, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call68 to i32
  br label %cleanup194

if.end72:                                         ; preds = %if.end64
  %32 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr73 = getelementptr i8, ptr %32, i32 784
  %call74 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr73, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i320 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call74 to i32
  br label %cleanup194

if.end78:                                         ; preds = %if.end72
  %34 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx80 = getelementptr %struct.clk_hw_onecell_data, ptr %34, i32 61
  %35 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call74, ptr %arrayidx80, align 4
  %call81 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 50000000, i32 noundef 0, i32 noundef 0) #6
  %cmp.i321 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call81 to i32
  br label %cleanup194

if.end85:                                         ; preds = %if.end78
  %37 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr86 = getelementptr i8, ptr %37, i32 768
  %call87 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr86, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_mac_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i322 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call87 to i32
  br label %cleanup194

if.end91:                                         ; preds = %if.end85
  %39 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx93 = getelementptr %struct.clk_hw_onecell_data, ptr %39, i32 65
  %40 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call87, ptr %arrayidx93, align 4
  %41 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr94 = getelementptr i8, ptr %41, i32 832
  %call95 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr94, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i323 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %call95 to i32
  br label %cleanup194

if.end99:                                         ; preds = %if.end91
  %43 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx101 = getelementptr %struct.clk_hw_onecell_data, ptr %43, i32 68
  %44 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call95, ptr %arrayidx101, align 4
  %45 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr102 = getelementptr i8, ptr %45, i32 832
  %call103 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr102, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i324 = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call103 to i32
  br label %cleanup194

if.end107:                                        ; preds = %if.end99
  %47 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx109 = getelementptr %struct.clk_hw_onecell_data, ptr %47, i32 69
  %48 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call103, ptr %arrayidx109, align 4
  %call110 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 50000000, i32 noundef 0, i32 noundef 0) #6
  %cmp.i325 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i325, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %call110 to i32
  br label %cleanup194

if.end114:                                        ; preds = %if.end107
  %50 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr115 = getelementptr i8, ptr %50, i32 784
  %call116 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr115, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_mac_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i326 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i326, label %if.then118, label %if.end120

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call116 to i32
  br label %cleanup194

if.end120:                                        ; preds = %if.end114
  %52 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx122 = getelementptr %struct.clk_hw_onecell_data, ptr %52, i32 66
  %53 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call116, ptr %arrayidx122, align 4
  %54 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr123 = getelementptr i8, ptr %54, i32 848
  %call124 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr123, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i327 = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call124 to i32
  br label %cleanup194

if.end128:                                        ; preds = %if.end120
  %56 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx130 = getelementptr %struct.clk_hw_onecell_data, ptr %56, i32 70
  %57 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call124, ptr %arrayidx130, align 4
  %58 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr131 = getelementptr i8, ptr %58, i32 848
  %call132 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr131, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i328 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call132 to i32
  br label %cleanup194

if.end136:                                        ; preds = %if.end128
  %60 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx138 = getelementptr %struct.clk_hw_onecell_data, ptr %60, i32 71
  %61 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call132, ptr %arrayidx138, align 4
  %62 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr139 = getelementptr i8, ptr %62, i32 768
  %call140 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr139, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i329 = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %call140 to i32
  br label %cleanup194

if.end144:                                        ; preds = %if.end136
  %64 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx146 = getelementptr %struct.clk_hw_onecell_data, ptr %64, i32 58
  %65 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call140, ptr %arrayidx146, align 4
  %call.i330 = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 768, i32 noundef 1792, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %66 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr148 = getelementptr i8, ptr %66, i32 768
  %call149 = call ptr @__clk_hw_register_mux(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 5, ptr noundef nonnull @d1clk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr148, i8 noundef zeroext 8, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i331 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i331, label %if.then151, label %if.end153

if.then151:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %call149 to i32
  br label %cleanup194

if.end153:                                        ; preds = %if.end144
  %68 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx155 = getelementptr %struct.clk_hw_onecell_data, ptr %68, i32 56
  %69 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call149, ptr %arrayidx155, align 4
  %call156 = call i32 @regmap_write(ptr noundef %call, i32 noundef 776, i32 noundef 73728) #6
  %70 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr157 = getelementptr i8, ptr %70, i32 768
  %call158 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr157, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i332 = icmp ugt ptr %call158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %if.then160, label %if.end162

if.then160:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %call158 to i32
  br label %cleanup194

if.end162:                                        ; preds = %if.end153
  %72 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx164 = getelementptr %struct.clk_hw_onecell_data, ptr %72, i32 55
  %73 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call158, ptr %arrayidx164, align 4
  %74 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr165 = getelementptr i8, ptr %74, i32 772
  %call166 = call ptr @__clk_hw_register_mux(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.30, i8 noundef zeroext 4, ptr noundef nonnull @vclk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr165, i8 noundef zeroext 12, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i333 = icmp ugt ptr %call166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %call166 to i32
  br label %cleanup194

if.end170:                                        ; preds = %if.end162
  %76 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx172 = getelementptr %struct.clk_hw_onecell_data, ptr %76, i32 57
  %77 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call166, ptr %arrayidx172, align 4
  %78 = load ptr, ptr @scu_g6_base, align 4
  %add.ptr173 = getelementptr i8, ptr %78, i32 768
  %call174 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr173, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_eclk_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #6
  %cmp.i334 = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %if.then176, label %if.end178

if.then176:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %call174 to i32
  br label %cleanup194

if.end178:                                        ; preds = %if.end170
  %80 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx180 = getelementptr %struct.clk_hw_onecell_data, ptr %80, i32 63
  %81 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call174, ptr %arrayidx180, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end178
  %i.0337 = phi i32 [ 0, %if.end178 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx181 = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %i.0337
  %82 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx181, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %83)
  %cmp182 = icmp ne i8 %83, 14
  %name = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %i.0337, i32 2
  %84 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name, align 4
  %parent_name = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %i.0337, i32 3
  %86 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %i.0337, i32 4
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags, align 4
  %reset_idx = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %i.0337, i32 1
  %90 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %reset_idx, align 1
  %conv185 = zext i1 %cmp182 to i8
  %call186 = call fastcc ptr @aspeed_g6_clk_hw_register_gate(ptr noundef %dev1, ptr noundef %85, ptr noundef %87, i32 noundef %89, ptr noundef %call, i8 noundef zeroext %83, i8 noundef zeroext %91, i8 noundef zeroext %conv185)
  %cmp.i335 = icmp ugt ptr %call186, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i335, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %call186 to i32
  br label %cleanup194

for.inc:                                          ; preds = %for.body
  %93 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx192 = getelementptr %struct.clk_hw_onecell_data, ptr %93, i32 0, i32 1, i32 %i.0337
  %94 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call186, ptr %arrayidx192, align 4
  %inc = add nuw nsw i32 %i.0337, 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.inc.cleanup194_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup194_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup194

cleanup194:                                       ; preds = %for.inc.cleanup194_crit_edge, %cleanup.thread, %if.then176, %if.then168, %if.then160, %if.then151, %if.then142, %if.then134, %if.then126, %if.then118, %if.then112, %if.then105, %if.then97, %if.then89, %if.then83, %if.then76, %if.then70, %if.then62, %if.then56, %if.then50, %if.then45, %if.then38, %if.then27, %do.end19, %if.end.cleanup194_crit_edge, %do.end
  %retval.2 = phi i32 [ %3, %do.end ], [ %call14, %do.end19 ], [ %13, %if.then27 ], [ %18, %if.then38 ], [ %21, %if.then45 ], [ %23, %if.then50 ], [ %25, %if.then56 ], [ %27, %if.then62 ], [ %31, %if.then70 ], [ %33, %if.then76 ], [ %36, %if.then83 ], [ %38, %if.then89 ], [ %42, %if.then97 ], [ %46, %if.then105 ], [ %49, %if.then112 ], [ %51, %if.then118 ], [ %55, %if.then126 ], [ %59, %if.then134 ], [ %63, %if.then142 ], [ %67, %if.then151 ], [ %71, %if.then160 ], [ %75, %if.then168 ], [ %79, %if.then176 ], [ -12, %if.end.cleanup194_crit_edge ], [ %92, %cleanup.thread ], [ 0, %for.inc.cleanup194_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aspeed_g6_clk_hw_register_gate(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %map, i8 noundef zeroext %clock_idx, i8 noundef zeroext %reset_idx, i8 noundef zeroext %clk_gate_flags) unnamed_addr #2 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aspeed_g6_clk_gate_ops, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags3, align 4
  %7 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent_name.addr, align 4
  %tobool4.not = icmp eq ptr %8, null
  %parent_name.addr. = select i1 %tobool4.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool5.not = icmp ne ptr %8, null
  %conv = zext i1 %tobool5.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  %map7 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %map7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %map, ptr %map7, align 4
  %clock_idx8 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %clock_idx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %clock_idx, ptr %clock_idx8, align 8
  %reset_idx9 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %reset_idx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reset_idx, ptr %reset_idx9, align 1
  %flags10 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %clk_gate_flags, ptr %flags10, align 2
  %lock11 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %lock11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @aspeed_g6_clk_lock, ptr %lock11, align 4
  %init13 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %init13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init13, align 8
  %call15 = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %17 = inttoptr i32 %call15 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.then17 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_g6_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  %0 = and i32 %id, 31
  %shl.i = shl nuw i32 1, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %id)
  %cmp = icmp ugt i32 %id, 31
  %cond = select i1 %cmp, i32 80, i32 64
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %cond, i32 noundef %shl.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_g6_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  %0 = and i32 %id, 31
  %shl.i = shl nuw i32 1, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %id)
  %cmp = icmp ugt i32 %id, 31
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %add = select i1 %cmp, i32 84, i32 68
  %call2 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %add, i32 noundef %shl.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_g6_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %id)
  %cmp = icmp ugt i32 %id, 31
  %cond = select i1 %cmp, i32 80, i32 64
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %cond, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = and i32 %id, 31
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = lshr i32 %5, %3
  %7 = and i32 %6, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clock_idx, align 4
  %2 = and i8 %1, 31
  %rem.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %rem.i
  %reset_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reset_idx, align 1
  %5 = and i8 %4, 31
  %rem.i63 = zext i8 %5 to i32
  %shl.i64 = shl nuw i32 1, %rem.i63
  %lock = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 5
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %8 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %clock_idx, align 4
  %10 = and i8 %9, 31
  %rem.i.i = zext i8 %10 to i32
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %11 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reset_idx, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i, align 4, !annotation !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i = icmp sgt i8 %12, -1
  br i1 %cmp.i, label %if.then.i, label %entry.aspeed_g6_clk_is_enabled.exit_crit_edge

entry.aspeed_g6_clk_is_enabled.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aspeed_g6_clk_is_enabled.exit

if.then.i:                                        ; preds = %entry
  %14 = and i8 %12, 31
  %rem.i30.i = zext i8 %14 to i32
  %shl.i31.i = shl nuw i32 1, %rem.i30.i
  %map.i = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp.i.i = icmp ult i8 %12, 32
  %..i.i = select i1 %cmp.i.i, i32 64, i32 80
  %call5.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %..i.i, ptr noundef nonnull %reg.i) #6
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %18, %shl.i31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.aspeed_g6_clk_is_enabled.exit_crit_edge, label %aspeed_g6_clk_is_enabled.exit.thread

if.then.i.aspeed_g6_clk_is_enabled.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aspeed_g6_clk_is_enabled.exit

aspeed_g6_clk_is_enabled.exit.thread:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %if.end

aspeed_g6_clk_is_enabled.exit:                    ; preds = %if.then.i.aspeed_g6_clk_is_enabled.exit_crit_edge, %entry.aspeed_g6_clk_is_enabled.exit_crit_edge
  %map8.i = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %map8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map8.i, align 4
  %21 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %clock_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp.i32.i = icmp ult i8 %22, 32
  %..i33.i = select i1 %cmp.i32.i, i32 128, i32 144
  %call10.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %..i33.i, ptr noundef nonnull %reg.i) #6
  %flags.i = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 2
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool13.not.i = icmp eq i8 %25, 0
  %spec.select.i = select i1 %tobool13.not.i, i32 %shl.i.i, i32 0
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i, align 4
  %and14.i = and i32 %27, %shl.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and14.i, i32 %spec.select.i)
  %cmp15.i.not = icmp eq i32 %and14.i, %spec.select.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br i1 %cmp15.i.not, label %aspeed_g6_clk_is_enabled.exit.cleanup_crit_edge, label %aspeed_g6_clk_is_enabled.exit.if.end_crit_edge

aspeed_g6_clk_is_enabled.exit.if.end_crit_edge:   ; preds = %aspeed_g6_clk_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

aspeed_g6_clk_is_enabled.exit.cleanup_crit_edge:  ; preds = %aspeed_g6_clk_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %aspeed_g6_clk_is_enabled.exit.if.end_crit_edge, %aspeed_g6_clk_is_enabled.exit.thread
  %28 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reset_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp12 = icmp sgt i8 %29, -1
  br i1 %cmp12, label %if.then14, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %map = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %29)
  %cmp.i66 = icmp ult i8 %29, 32
  %..i = select i1 %cmp.i66, i32 64, i32 80
  %call16 = call i32 @regmap_write(ptr noundef %31, i32 noundef %..i, i32 noundef %shl.i64) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 21474800) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %flags18 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 4
  %33 = ptrtoint ptr %flags18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags18, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool20.not = icmp eq i8 %35, 0
  %map25 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %36 = ptrtoint ptr %map25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map25, align 4
  %38 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %clock_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %39)
  %cmp.i71 = icmp ult i8 %39, 32
  %..i72 = select i1 %cmp.i71, i32 128, i32 144
  %add = select i1 %cmp.i71, i32 132, i32 148
  %..i72.sink = select i1 %tobool20.not, i32 %..i72, i32 %add
  %call27 = call i32 @regmap_write(ptr noundef %37, i32 noundef %..i72.sink, i32 noundef %shl.i) #6
  %40 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reset_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp31 = icmp sgt i8 %41, -1
  br i1 %cmp31, label %while.body.preheader, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #6
  %map35 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %52 = ptrtoint ptr %map35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map35, align 4
  %54 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %reset_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %55)
  %cmp.i74 = icmp slt i8 %55, 32
  %add37 = select i1 %cmp.i74, i32 68, i32 84
  %call38 = call i32 @regmap_write(ptr noundef %53, i32 noundef %add37, i32 noundef %shl.i64) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %if.end17.cleanup_crit_edge, %aspeed_g6_clk_is_enabled.exit.cleanup_crit_edge
  %56 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %call5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_g6_clk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clock_idx, align 4
  %2 = and i8 %1, 31
  %rem.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %rem.i
  %lock = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %flags7 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %flags7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags7, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %map11 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %map11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map11, align 4
  %10 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %clock_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %11)
  %cmp.i24 = icmp ult i8 %11, 32
  %add = select i1 %cmp.i24, i32 132, i32 148
  %..i = select i1 %cmp.i24, i32 128, i32 144
  %add.sink = select i1 %tobool.not, i32 %add, i32 %..i
  %call13 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add.sink, i32 noundef %shl.i) #6
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clock_idx, align 4
  %2 = and i8 %1, 31
  %rem.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %rem.i
  %reset_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reset_idx, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg, align 4, !annotation !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp sgt i8 %4, -1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %6 = and i8 %4, 31
  %rem.i30 = zext i8 %6 to i32
  %shl.i31 = shl nuw i32 1, %rem.i30
  %map = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %cmp.i = icmp ult i8 %4, 32
  %..i = select i1 %cmp.i, i32 64, i32 80
  %call5 = call i32 @regmap_read(ptr noundef %8, i32 noundef %..i, ptr noundef nonnull %reg) #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and = and i32 %10, %shl.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %map8 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %map8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map8, align 4
  %13 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %clock_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp.i32 = icmp ult i8 %14, 32
  %..i33 = select i1 %cmp.i32, i32 128, i32 144
  %call10 = call i32 @regmap_read(ptr noundef %12, i32 noundef %..i33, ptr noundef nonnull %reg) #6
  %flags = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 2
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool13.not, i32 %shl.i, i32 0
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %and14 = and i32 %19, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %spec.select)
  %cmp15 = icmp eq i32 %and14, %spec.select
  %cond17 = zext i1 %cmp15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond17, %if.end7 ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_g6_cc_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  store ptr %call, ptr @scu_g6_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 20
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  %1 = lshr i32 %0, 8
  %conv = trunc i32 %1 to i8
  store i8 %conv, ptr @soc_rev, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 288) #11
  store ptr %call7.i.i, ptr @aspeed_g6_clk_data, align 4
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1, i32 %i.033
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 71
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %call10 = tail call ptr @syscon_node_to_regmap(ptr noundef %np) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #10
  br label %cleanup

if.end15:                                         ; preds = %for.end
  tail call fastcc void @aspeed_g6_cc(ptr noundef %call10) #9
  %4 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 71, ptr %4, align 4
  %call16 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %call16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end15.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_g6_cc(ptr noundef %map) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !240
  %call = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 25000000, i32 noundef 0, i32 noundef 0) #6
  %call1 = call i32 @regmap_read(ptr noundef %map, i32 noundef 512, ptr noundef nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.12, i32 noundef %2)
  %3 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 47
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %arrayidx, align 4
  %call3 = call i32 @regmap_read(ptr noundef %map, i32 noundef 544, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call4 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.32, i32 noundef %6)
  %7 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx6 = getelementptr %struct.clk_hw_onecell_data, ptr %7, i32 48
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %arrayidx6, align 4
  %call7 = call i32 @regmap_read(ptr noundef %map, i32 noundef 608, ptr noundef nonnull %val) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %call8 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.34, i32 noundef %10)
  %11 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx10 = getelementptr %struct.clk_hw_onecell_data, ptr %11, i32 49
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8, ptr %arrayidx10, align 4
  %call11 = call i32 @regmap_read(ptr noundef %map, i32 noundef 576, ptr noundef nonnull %val) #6
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %call12 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.35, i32 noundef %14)
  %15 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx14 = getelementptr %struct.clk_hw_onecell_data, ptr %15, i32 50
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12, ptr %arrayidx14, align 4
  %call15 = call i32 @regmap_read(ptr noundef %map, i32 noundef 528, ptr noundef nonnull %val) #6
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = load i8, ptr @soc_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i = icmp ugt i8 %19, 1
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %entry
  %and.i = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i.ast2600_calc_apll.exit_crit_edge

if.then.i.ast2600_calc_apll.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast2600_calc_apll.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and3.i = and i32 %18, 8191
  %shr.i = lshr i32 %18, 13
  %and4.i = and i32 %shr.i, 63
  %shr5.i = lshr i32 %18, 19
  %and6.i = and i32 %shr5.i, 15
  %add.i = add nuw nsw i32 %and3.i, 1
  %add7.i = add nuw nsw i32 %and4.i, 1
  %add8.i = add nuw nsw i32 %and6.i, 1
  %mul.i = mul nuw nsw i32 %add7.i, %add8.i
  br label %ast2600_calc_apll.exit

if.else9.i:                                       ; preds = %entry
  %and10.i = and i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %if.else9.i.ast2600_calc_apll.exit_crit_edge

if.else9.i.ast2600_calc_apll.exit_crit_edge:      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast2600_calc_apll.exit

if.else13.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr15.i = lshr i32 %18, 5
  %and16.i = and i32 %shr15.i, 63
  %20 = shl i32 %18, 27
  %21 = ashr i32 %20, 31
  %and20.i = and i32 %18, 15
  %sub.i = add nsw i32 %21, 2
  %add21.i = add nuw nsw i32 %and16.i, 2
  %mul22.i = mul nuw nsw i32 %sub.i, %add21.i
  %add23.i = add nuw nsw i32 %and20.i, 1
  br label %ast2600_calc_apll.exit

ast2600_calc_apll.exit:                           ; preds = %if.else13.i, %if.else9.i.ast2600_calc_apll.exit_crit_edge, %if.else.i, %if.then.i.ast2600_calc_apll.exit_crit_edge
  %div.0.i = phi i32 [ %mul.i, %if.else.i ], [ %add23.i, %if.else13.i ], [ 1, %if.then.i.ast2600_calc_apll.exit_crit_edge ], [ 1, %if.else9.i.ast2600_calc_apll.exit_crit_edge ]
  %mult.0.i = phi i32 [ %add.i, %if.else.i ], [ %mul22.i, %if.else13.i ], [ 1, %if.then.i.ast2600_calc_apll.exit_crit_edge ], [ 1, %if.else9.i.ast2600_calc_apll.exit_crit_edge ]
  %call.i = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %mult.0.i, i32 noundef %div.0.i) #6
  %22 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx18 = getelementptr %struct.clk_hw_onecell_data, ptr %22, i32 51
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %arrayidx18, align 4
  %call19 = call i32 @regmap_read(ptr noundef %map, i32 noundef 1280, ptr noundef nonnull %val) #6
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shr = lshr i32 %25, 11
  %and20 = and i32 %shr, 3
  %26 = load i8, ptr @soc_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not = icmp eq i8 %26, 0
  br i1 %cmp.not, label %if.else41, label %if.then22

if.then22:                                        ; preds = %ast2600_calc_apll.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool23.not = icmp eq i32 %and20, 0
  br i1 %tobool23.not, label %if.then24, label %if.else32

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %shr25 = lshr i32 %25, 8
  %and26 = and i32 %shr25, 3
  %arrayidx27 = getelementptr [8 x i32], ptr @ast2600_a1_axi_ahb200_tbl, i32 0, i32 %and26
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx27, align 4
  %not.tobool.not = xor i1 %tobool.not, true
  %mul = zext i1 %not.tobool.not to i32
  %spec.select = shl i32 %28, %mul
  br label %if.end45

if.else32:                                        ; preds = %if.then22
  br i1 %tobool.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx36 = getelementptr [4 x i32], ptr @ast2600_a1_axi_ahb_div1_tbl, i32 0, i32 %and20
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx36, align 4
  br label %if.end45

if.else37:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx38 = getelementptr [4 x i32], ptr @ast2600_a1_axi_ahb_div0_tbl, i32 0, i32 %and20
  %31 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx38, align 4
  br label %if.end45

if.else41:                                        ; preds = %ast2600_calc_apll.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44 = getelementptr [4 x i32], ptr @ast2600_a0_axi_ahb_div_table, i32 0, i32 %and20
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.else37, %if.then35, %if.then24
  %ahb_div.0 = phi i32 [ %30, %if.then35 ], [ %32, %if.else37 ], [ %34, %if.else41 ], [ %spec.select, %if.then24 ]
  %. = select i1 %tobool.not, i32 2, i32 1
  %mul46 = mul i32 %ahb_div.0, %.
  %call47 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef %mul46) #6
  %35 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx49 = getelementptr %struct.clk_hw_onecell_data, ptr %35, i32 52
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call47, ptr %arrayidx49, align 4
  %call50 = call i32 @regmap_read(ptr noundef %map, i32 noundef 768, ptr noundef nonnull %val) #6
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %shr51 = lshr i32 %38, 23
  %and52 = and i32 %shr51, 7
  store i32 %and52, ptr %val, align 4
  %add = shl nuw nsw i32 %and52, 2
  %mul53 = add nuw nsw i32 %add, 4
  %call54 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef %mul53) #6
  %39 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx56 = getelementptr %struct.clk_hw_onecell_data, ptr %39, i32 53
  %40 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call54, ptr %arrayidx56, align 4
  %call57 = call i32 @regmap_read(ptr noundef %map, i32 noundef 784, ptr noundef nonnull %val) #6
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %shr58 = lshr i32 %42, 9
  %and59 = and i32 %shr58, 7
  store i32 %and59, ptr %val, align 4
  %add60 = shl nuw nsw i32 %and59, 1
  %mul61 = add nuw nsw i32 %add60, 2
  %call62 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef 0, i32 noundef 1, i32 noundef %mul61) #6
  %43 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx64 = getelementptr %struct.clk_hw_onecell_data, ptr %43, i32 54
  %44 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call62, ptr %arrayidx64, align 4
  %call65 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 40000000, i32 noundef 0, i32 noundef 0) #6
  %45 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %arrayidx67 = getelementptr %struct.clk_hw_onecell_data, ptr %45, i32 67
  %46 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call65, ptr %arrayidx67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ast2600_calc_pll(ptr noundef %name, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %val, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %val, 13
  %shr3 = lshr i32 %val, 19
  %and4 = and i32 %shr3, 15
  %0 = trunc i32 %val to i16
  %1 = and i16 %0, 8191
  %div6.lhs.trunc = add nuw nsw i16 %1, 1
  %2 = trunc i32 %shr to i16
  %3 = and i16 %2, 63
  %div6.rhs.trunc = add nuw nsw i16 %3, 1
  %div611 = udiv i16 %div6.lhs.trunc, %div6.rhs.trunc
  %div6.zext = zext i16 %div611 to i32
  %add7 = add nuw nsw i32 %and4, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %div.0 = phi i32 [ %add7, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %mult.0 = phi i32 [ %div6.zext, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %call = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %mult.0, i32 noundef %div.0) #6
  ret ptr %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !207, !208, !209, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__initcall__kmod_clk_ast2600__183_690_aspeed_g6_clk_driver_init6, !1, !"__initcall__kmod_clk_ast2600__183_690_aspeed_g6_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-ast2600.c", i32 690, i32 1}
!2 = !{ptr @__of_table_aspeed_cc_g6, !3, !"__of_table_aspeed_cc_g6", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-ast2600.c", i32 819, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-ast2600.c", i32 685, i32 11}
!6 = !{ptr @aspeed_g6_clk_driver, !7, !"aspeed_g6_clk_driver", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-ast2600.c", i32 682, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-ast2600.c", i32 454, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @aspeed_g6_clk_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @aspeed_g6_clk_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-ast2600.c", i32 471, i32 3}
!18 = !{ptr @aspeed_g6_clk_probe._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @aspeed_g6_clk_probe._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-ast2600.c", i32 481, i32 7}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-ast2600.c", i32 492, i32 7}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-ast2600.c", i32 498, i32 41}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-ast2600.c", i32 498, i32 64}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-ast2600.c", i32 503, i32 7}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-ast2600.c", i32 511, i32 7}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-ast2600.c", i32 517, i32 7}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-ast2600.c", i32 528, i32 7}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-ast2600.c", i32 533, i32 7}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/clk-ast2600.c", i32 542, i32 7}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-ast2600.c", i32 547, i32 7}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-ast2600.c", i32 556, i32 7}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-ast2600.c", i32 564, i32 7}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-ast2600.c", i32 572, i32 7}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-ast2600.c", i32 577, i32 7}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-ast2600.c", i32 586, i32 7}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-ast2600.c", i32 594, i32 7}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-ast2600.c", i32 602, i32 7}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-ast2600.c", i32 613, i32 7}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-ast2600.c", i32 625, i32 7}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/clk-ast2600.c", i32 634, i32 7}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/clk-ast2600.c", i32 643, i32 7}
!65 = !{ptr @aspeed_g6_reset_ops, !66, !"aspeed_g6_reset_ops", i1 false, i1 false}
!66 = !{!"../drivers/clk/clk-ast2600.c", i32 380, i32 39}
!67 = !{ptr @aspeed_g6_clk_data, !68, !"aspeed_g6_clk_data", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-ast2600.c", i32 51, i32 36}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/clk-ast2600.c", i32 425, i32 2}
!71 = !{ptr @emmc_extclk_parent_names, !72, !"emmc_extclk_parent_names", i1 false, i1 false}
!72 = !{!"../drivers/clk/clk-ast2600.c", i32 423, i32 26}
!73 = !{ptr @scu_g6_base, !74, !"scu_g6_base", i1 false, i1 false}
!74 = !{!"../drivers/clk/clk-ast2600.c", i32 53, i32 22}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/clk-ast2600.c", i32 48, i32 8}
!77 = !{ptr @aspeed_g6_clk_lock, !76, !"aspeed_g6_clk_lock", i1 false, i1 false}
!78 = !{ptr @ast2600_emmc_extclk_div_table, !79, !"ast2600_emmc_extclk_div_table", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-ast2600.c", i32 137, i32 35}
!80 = !{ptr @ast2600_div_table, !81, !"ast2600_div_table", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-ast2600.c", i32 161, i32 35}
!82 = !{ptr @ast2600_mac_div_table, !83, !"ast2600_mac_div_table", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-ast2600.c", i32 149, i32 35}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-ast2600.c", i32 436, i32 2}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/clk-ast2600.c", i32 437, i32 2}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/clk-ast2600.c", i32 438, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/clk-ast2600.c", i32 439, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-ast2600.c", i32 440, i32 2}
!94 = !{ptr @d1clk_parent_names, !95, !"d1clk_parent_names", i1 false, i1 false}
!95 = !{!"../drivers/clk/clk-ast2600.c", i32 435, i32 27}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/clk-ast2600.c", i32 430, i32 2}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/clk-ast2600.c", i32 432, i32 2}
!100 = !{ptr @vclk_parent_names, !101, !"vclk_parent_names", i1 false, i1 false}
!101 = !{!"../drivers/clk/clk-ast2600.c", i32 428, i32 27}
!102 = !{ptr @ast2600_eclk_div_table, !103, !"ast2600_eclk_div_table", i1 false, i1 false}
!103 = !{!"../drivers/clk/clk-ast2600.c", i32 125, i32 35}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-ast2600.c", i32 66, i32 38}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/clk-ast2600.c", i32 67, i32 38}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/clk-ast2600.c", i32 65, i32 38}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/clk-ast2600.c", i32 69, i32 38}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/clk-ast2600.c", i32 70, i32 38}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/clk-ast2600.c", i32 72, i32 38}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/clk-ast2600.c", i32 92, i32 38}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/clk-ast2600.c", i32 97, i32 39}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/clk-ast2600.c", i32 78, i32 39}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/clk-ast2600.c", i32 80, i32 38}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/clk-ast2600.c", i32 73, i32 40}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/clk-ast2600.c", i32 73, i32 56}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/clk-ast2600.c", i32 94, i32 40}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/clk-ast2600.c", i32 93, i32 40}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/clk-ast2600.c", i32 76, i32 43}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/clk-ast2600.c", i32 81, i32 44}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/clk-ast2600.c", i32 74, i32 44}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/clk-ast2600.c", i32 87, i32 39}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/clk-ast2600.c", i32 88, i32 40}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/clk-ast2600.c", i32 84, i32 40}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/clk-ast2600.c", i32 85, i32 40}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/clk-ast2600.c", i32 112, i32 41}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/clk-ast2600.c", i32 113, i32 41}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/clk-ast2600.c", i32 108, i32 42}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/clk-ast2600.c", i32 109, i32 42}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/clk-ast2600.c", i32 110, i32 42}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/clk-ast2600.c", i32 111, i32 42}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/clk-ast2600.c", i32 82, i32 41}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/clk-ast2600.c", i32 114, i32 42}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/clk-ast2600.c", i32 115, i32 42}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/clk-ast2600.c", i32 116, i32 42}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/clk-ast2600.c", i32 117, i32 42}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/clk-ast2600.c", i32 118, i32 43}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/clk-ast2600.c", i32 119, i32 43}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/clk-ast2600.c", i32 120, i32 43}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/clk-ast2600.c", i32 121, i32 43}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/clk-ast2600.c", i32 96, i32 39}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/clk-ast2600.c", i32 90, i32 40}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/clk-ast2600.c", i32 100, i32 41}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/clk-ast2600.c", i32 101, i32 41}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/clk-ast2600.c", i32 102, i32 41}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/clk-ast2600.c", i32 103, i32 41}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/clk-ast2600.c", i32 104, i32 41}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/clk-ast2600.c", i32 105, i32 41}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/clk-ast2600.c", i32 106, i32 41}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/clk-ast2600.c", i32 107, i32 41}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/clk-ast2600.c", i32 122, i32 40}
!198 = !{ptr @aspeed_g6_gates, !199, !"aspeed_g6_gates", i1 false, i1 false}
!199 = !{!"../drivers/clk/clk-ast2600.c", i32 63, i32 38}
!200 = !{ptr @aspeed_g6_clk_gate_ops, !201, !"aspeed_g6_clk_gate_ops", i1 false, i1 false}
!201 = !{!"../drivers/clk/clk-ast2600.c", i32 337, i32 29}
!202 = !{ptr @aspeed_g6_clk_dt_ids, !203, !"aspeed_g6_clk_dt_ids", i1 false, i1 false}
!203 = !{!"../drivers/clk/clk-ast2600.c", i32 677, i32 34}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/clk-ast2600.c", i32 809, i32 3}
!206 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @aspeed_g6_cc_init._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @aspeed_g6_cc_init._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/clk-ast2600.c", i32 817, i32 3}
!211 = !{ptr @aspeed_g6_cc_init._entry.90, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @aspeed_g6_cc_init._entry_ptr.92, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @soc_rev, !214, !"soc_rev", i1 false, i1 false}
!214 = !{!"../drivers/clk/clk-ast2600.c", i32 55, i32 11}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/clk-ast2600.c", i32 732, i32 63}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/clk-ast2600.c", i32 757, i32 42}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/clk-ast2600.c", i32 763, i32 42}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/clk-ast2600.c", i32 769, i32 42}
!223 = !{ptr @ast2600_a1_axi_ahb200_tbl, !224, !"ast2600_a1_axi_ahb200_tbl", i1 false, i1 false}
!224 = !{!"../drivers/clk/clk-ast2600.c", i32 704, i32 18}
!225 = !{ptr @ast2600_a1_axi_ahb_div1_tbl, !226, !"ast2600_a1_axi_ahb_div1_tbl", i1 false, i1 false}
!226 = !{!"../drivers/clk/clk-ast2600.c", i32 700, i32 18}
!227 = !{ptr @ast2600_a1_axi_ahb_div0_tbl, !228, !"ast2600_a1_axi_ahb_div0_tbl", i1 false, i1 false}
!228 = !{!"../drivers/clk/clk-ast2600.c", i32 696, i32 18}
!229 = !{ptr @ast2600_a0_axi_ahb_div_table, !230, !"ast2600_a0_axi_ahb_div_table", i1 false, i1 false}
!230 = !{!"../drivers/clk/clk-ast2600.c", i32 692, i32 18}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{!"auto-init"}
!241 = !{i64 4014153}
!242 = !{i64 2153103176}
