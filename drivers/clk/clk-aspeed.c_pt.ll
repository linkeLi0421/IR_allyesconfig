; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-aspeed.c_pt.bc'
source_filename = "../drivers/clk/clk-aspeed.c"
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
%struct.aspeed_gate_data = type { i8, i8, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aspeed_clk_soc_data = type { ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__initcall__kmod_clk_aspeed__183_581_aspeed_clk_driver_init6 = internal global ptr @aspeed_clk_driver_init, section ".initcall6.init", align 4
@__of_table_aspeed_cc_g5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_cc_g5_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_aspeed_cc_g4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_cc_g4_of_clk_init_driver }, section "__clk_of_table", align 4
@aspeed_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @aspeed_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aspeed-clk\00", [21 x i8] zeroinitializer }, align 32
@aspeed_clk_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@aspeed_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no syscon regmap\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aspeed_clk_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/clk-aspeed.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_clk_probe._entry_ptr = internal global ptr @aspeed_clk_probe._entry, section ".printk_index", align 4
@aspeed_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @aspeed_reset_assert, ptr @aspeed_reset_deassert, ptr @aspeed_reset_status }, [16 x i8] zeroinitializer }, align 32
@aspeed_clk_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not register reset controller\0A\00", [59 x i8] zeroinitializer }, align 32
@aspeed_clk_probe._entry_ptr.8 = internal global ptr @aspeed_clk_probe._entry.6, section ".printk_index", align 4
@aspeed_clk_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no match data for platform\0A\00", [36 x i8] zeroinitializer }, align 32
@aspeed_clk_probe._entry_ptr.11 = internal global ptr @aspeed_clk_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@aspeed_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sd_extclk_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hpll\00", [27 x i8] zeroinitializer }, align 32
@scu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aspeed_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_extclk\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2500-scu\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac12rclk\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac1rclk\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac2rclk\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lhclk\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bclk\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fixed-24m\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eclk-mux\00", [23 x i8] zeroinitializer }, align 32
@eclk_parent_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.13, ptr @.str.15, ptr @.str.29], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eclk\00", [27 x i8] zeroinitializer }, align 32
@aspeed_gates = internal constant { [24 x %struct.aspeed_gate_data], [96 x i8] } { [24 x %struct.aspeed_gate_data] [%struct.aspeed_gate_data { i8 0, i8 6, ptr @.str.30, ptr @.str.27, i32 0 }, %struct.aspeed_gate_data { i8 1, i8 7, ptr @.str.31, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 2, i8 -1, ptr @.str.32, ptr @.str.13, i32 2048 }, %struct.aspeed_gate_data { i8 3, i8 -1, ptr @.str.33, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 4, i8 8, ptr @.str.34, ptr @.str.23, i32 2048 }, %struct.aspeed_gate_data { i8 5, i8 -1, ptr @.str.35, ptr null, i32 2048 }, %struct.aspeed_gate_data { i8 6, i8 -1, ptr @.str.36, ptr @.str.25, i32 2048 }, %struct.aspeed_gate_data { i8 7, i8 3, ptr @.str.37, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 8, i8 5, ptr @.str.38, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 9, i8 15, ptr @.str.39, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 10, i8 13, ptr @.str.40, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 13, i8 4, ptr @.str.41, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 14, i8 14, ptr @.str.42, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 15, i8 -1, ptr @.str.43, ptr @.str.12, i32 0 }, %struct.aspeed_gate_data { i8 16, i8 -1, ptr @.str.44, ptr @.str.12, i32 0 }, %struct.aspeed_gate_data { i8 17, i8 -1, ptr @.str.45, ptr @.str.12, i32 0 }, %struct.aspeed_gate_data { i8 19, i8 -1, ptr @.str.46, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 20, i8 11, ptr @.str.47, ptr @.str.17, i32 0 }, %struct.aspeed_gate_data { i8 21, i8 12, ptr @.str.48, ptr @.str.17, i32 0 }, %struct.aspeed_gate_data { i8 24, i8 -1, ptr @.str.49, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 25, i8 -1, ptr @.str.50, ptr @.str.12, i32 0 }, %struct.aspeed_gate_data { i8 26, i8 -1, ptr @.str.51, ptr @.str.12, i32 0 }, %struct.aspeed_gate_data { i8 27, i8 16, ptr @.str.52, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 28, i8 -1, ptr @.str.53, ptr @.str.22, i32 0 }], [96 x i8] zeroinitializer }, align 32
@aspeed_resets = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\19\18\17\16\12\09\0A\02\01%", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aspeed_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpll\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"refclk-gate\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb-port2-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-uhci-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d1clk-gate\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"yclk-gate\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb-port1-gate\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart1clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart2clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart5clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"espiclk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac1clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac2clk-gate\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rsaclk-gate\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart3clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart4clk-gate\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdclk-gate\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lhclk-gate\00", [21 x i8] zeroinitializer }, align 32
@aspeed_clk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @aspeed_clk_enable, ptr @aspeed_clk_disable, ptr @aspeed_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ast2400_data = internal constant { %struct.aspeed_clk_soc_data, [16 x i8] } { %struct.aspeed_clk_soc_data { ptr @ast2400_div_table, ptr @ast2400_div_table, ptr @ast2400_div_table, ptr @aspeed_ast2400_calc_pll }, [16 x i8] zeroinitializer }, align 32
@ast2500_data = internal constant { %struct.aspeed_clk_soc_data, [16 x i8] } { %struct.aspeed_clk_soc_data { ptr @ast2500_div_table, ptr @ast2500_eclk_div_table, ptr @ast2500_mac_div_table, ptr @aspeed_ast2500_calc_pll }, [16 x i8] zeroinitializer }, align 32
@ast2400_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ast2500_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 8 }, %struct.clk_div_table { i32 2, i32 12 }, %struct.clk_div_table { i32 3, i32 16 }, %struct.clk_div_table { i32 4, i32 20 }, %struct.clk_div_table { i32 5, i32 24 }, %struct.clk_div_table { i32 6, i32 28 }, %struct.clk_div_table { i32 7, i32 32 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ast2500_eclk_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ast2500_mac_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@aspeed_cc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013clk-aspeed: no syscon regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aspeed_cc_init\00", [17 x i8] zeroinitializer }, align 32
@aspeed_cc_init._entry_ptr = internal global ptr @aspeed_cc_init._entry, section ".printk_index", align 4
@aspeed_cc_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013clk-aspeed: failed to read strapping register\0A\00", [47 x i8] zeroinitializer }, align 32
@aspeed_cc_init._entry_ptr.58 = internal global ptr @aspeed_cc_init._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2400-scu\00", [45 x i8] zeroinitializer }, align 32
@aspeed_cc_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.55, ptr @.str.3, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013clk-aspeed: unknown platform, failed to add clocks\0A\00", [42 x i8] zeroinitializer }, align 32
@aspeed_cc_init._entry_ptr.62 = internal global ptr @aspeed_cc_init._entry.60, section ".printk_index", align 4
@aspeed_cc_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.55, ptr @.str.3, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013clk-aspeed: failed to add DT provider: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@aspeed_cc_init._entry_ptr.65 = internal global ptr @aspeed_cc_init._entry.63, section ".printk_index", align 4
@__const.aspeed_ast2400_cc.hpll_rates = private unnamed_addr constant [2 x [4 x i16]] [[4 x i16] [i16 384, i16 360, i16 336, i16 408], [4 x i16] [i16 400, i16 375, i16 350, i16 425]], align 2
@aspeed_ast2400_cc.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_aspeed\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed_ast2400_cc\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clkin @%u MHz\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk-aspeed: clkin @%u MHz\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@aspeed_ast2500_cc.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.72, ptr @.str.3, ptr @.str.68, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed_ast2500_cc\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"strapping is zero: cannot determine ahb clock\00", [50 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"aspeed_clk_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 573, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 576, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"aspeed_clk_dt_ids\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 567, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 394, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"aspeed_reset_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 339, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 410, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 417, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 428, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"aspeed_clk_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 42, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 438, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 444, i32 7 }
@___asan_gen_.131 = private unnamed_addr constant [9 x i8] c"scu_base\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 44, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"aspeed_clk_lock\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 449, i32 7 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 458, i32 7 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 466, i32 49 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 468, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 474, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 482, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 491, i32 7 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 500, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 509, i32 7 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 515, i32 7 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"eclk_parent_names\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 75, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 523, i32 7 }
@___asan_gen_.176 = private unnamed_addr constant [13 x i8] c"aspeed_gates\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 47, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"aspeed_resets\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 270, i32 17 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 39, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 78, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 49, i32 37 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 50, i32 37 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 51, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 52, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 53, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 54, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 55, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 56, i32 44 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 57, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 58, i32 43 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 59, i32 38 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 60, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 61, i32 44 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 62, i32 41 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 63, i32 41 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 64, i32 41 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 65, i32 40 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 66, i32 40 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 67, i32 40 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 68, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 69, i32 41 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 70, i32 41 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 71, i32 38 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 72, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant [20 x i8] c"aspeed_clk_gate_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 264, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"ast2400_data\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 177, i32 41 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"ast2500_data\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 170, i32 41 }
@___asan_gen_.269 = private unnamed_addr constant [18 x i8] c"ast2400_div_table\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 105, i32 35 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"ast2500_div_table\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 117, i32 35 }
@___asan_gen_.275 = private unnamed_addr constant [23 x i8] c"ast2500_eclk_div_table\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 81, i32 35 }
@___asan_gen_.278 = private unnamed_addr constant [22 x i8] c"ast2500_mac_div_table\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 93, i32 35 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 714, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 725, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 729, i32 34 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 734, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 739, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 610, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 640, i32 42 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 644, i32 7 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 663, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [28 x i8] c"../drivers/clk/clk-aspeed.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 675, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__initcall__kmod_clk_aspeed__183_581_aspeed_clk_driver_init6, ptr @__of_table_aspeed_cc_g4, ptr @__of_table_aspeed_cc_g5, ptr @aspeed_cc_init._entry, ptr @aspeed_cc_init._entry.56, ptr @aspeed_cc_init._entry.60, ptr @aspeed_cc_init._entry.63, ptr @aspeed_cc_init._entry_ptr, ptr @aspeed_cc_init._entry_ptr.58, ptr @aspeed_cc_init._entry_ptr.62, ptr @aspeed_cc_init._entry_ptr.65, ptr @aspeed_clk_probe._entry, ptr @aspeed_clk_probe._entry.6, ptr @aspeed_clk_probe._entry.9, ptr @aspeed_clk_probe._entry_ptr, ptr @aspeed_clk_probe._entry_ptr.11, ptr @aspeed_clk_probe._entry_ptr.8, ptr @aspeed_clk_driver, ptr @.str, ptr @aspeed_clk_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aspeed_reset_ops, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @aspeed_clk_data, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @scu_base, ptr @aspeed_clk_lock, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @eclk_parent_names, ptr @.str.27, ptr @aspeed_gates, ptr @aspeed_resets, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @aspeed_clk_gate_ops, ptr @ast2400_data, ptr @ast2500_data, ptr @ast2400_div_table, ptr @ast2500_div_table, ptr @ast2500_eclk_div_table, ptr @ast2500_mac_div_table, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eclk_parent_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gates to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_resets to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_clk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_eclk_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_mac_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_cc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_cc_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_cc_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_cc_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_cc_g5_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  tail call fastcc void @aspeed_cc_init(ptr noundef %np) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_cc_g4_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  tail call fastcc void @aspeed_cc_init(ptr noundef %np) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !180
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
  br label %cleanup147

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup147_crit_edge, label %if.end6

if.end.cleanup147_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

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
  store i32 10, ptr %nr_resets, align 4
  %7 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @aspeed_reset_ops, ptr %rcdev, align 4
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
  br label %cleanup147

if.end20:                                         ; preds = %if.end6
  %call21 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup147

if.end27:                                         ; preds = %if.end20
  %call28 = call i32 @regmap_read(ptr noundef %call, i32 noundef 44, ptr noundef nonnull %val) #6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %. = select i1 %tobool29.not, i32 24000000, i32 1846153
  %call32 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %., i32 noundef 0, i32 noundef 0) #6
  %cmp.i242 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call32 to i32
  br label %cleanup147

if.end36:                                         ; preds = %if.end27
  %14 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 28
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call32, ptr %arrayidx, align 4
  %call37 = call i32 @regmap_read(ptr noundef %call, i32 noundef 32, ptr noundef nonnull %val) #6
  %calc_pll = getelementptr inbounds %struct.aspeed_clk_soc_data, ptr %call21, i32 0, i32 3
  %16 = ptrtoint ptr %calc_pll to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %calc_pll, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %call38 = call ptr %17(ptr noundef nonnull @.str.13, i32 noundef %19) #6
  %cmp.i243 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call38 to i32
  br label %cleanup147

if.end42:                                         ; preds = %if.end36
  %21 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx44 = getelementptr %struct.clk_hw_onecell_data, ptr %21, i32 35
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call38, ptr %arrayidx44, align 4
  %23 = load ptr, ptr @scu_base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 8
  %call45 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i244 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call45 to i32
  br label %cleanup147

if.end49:                                         ; preds = %if.end42
  %25 = load ptr, ptr @scu_base, align 4
  %add.ptr50 = getelementptr i8, ptr %25, i32 8
  %26 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call21, align 4
  %call51 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr50, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %27, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i245 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call51 to i32
  br label %cleanup147

if.end55:                                         ; preds = %if.end49
  %29 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %29, i32 29
  %30 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call51, ptr %arrayidx57, align 4
  %31 = load ptr, ptr @scu_base, align 4
  %add.ptr58 = getelementptr i8, ptr %31, i32 8
  %mac_div_table = getelementptr inbounds %struct.aspeed_clk_soc_data, ptr %call21, i32 0, i32 2
  %32 = ptrtoint ptr %mac_div_table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac_div_table, align 4
  %call59 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr58, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %33, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i246 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call59 to i32
  br label %cleanup147

if.end63:                                         ; preds = %if.end55
  %35 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx65 = getelementptr %struct.clk_hw_onecell_data, ptr %35, i32 33
  %36 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call59, ptr %arrayidx65, align 4
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call68 = call i32 @of_device_is_compatible(ptr noundef %38, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end63.if.end92_crit_edge, label %if.then70

if.end63.if.end92_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then70:                                        ; preds = %if.end63
  %call71 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 50000000, i32 noundef 0, i32 noundef 0) #6
  %cmp.i247 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call71 to i32
  br label %cleanup147

if.end75:                                         ; preds = %if.then70
  %40 = load ptr, ptr @scu_base, align 4
  %add.ptr76 = getelementptr i8, ptr %40, i32 72
  %call77 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr76, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i248 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call77 to i32
  br label %cleanup147

if.end81:                                         ; preds = %if.end75
  %42 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx83 = getelementptr %struct.clk_hw_onecell_data, ptr %42, i32 37
  %43 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call77, ptr %arrayidx83, align 4
  %44 = load ptr, ptr @scu_base, align 4
  %add.ptr84 = getelementptr i8, ptr %44, i32 72
  %call85 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr84, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i249 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call85 to i32
  br label %cleanup147

if.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %46 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx91 = getelementptr %struct.clk_hw_onecell_data, ptr %46, i32 38
  %47 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call85, ptr %arrayidx91, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.end89, %if.end63.if.end92_crit_edge
  %48 = load ptr, ptr @scu_base, align 4
  %add.ptr93 = getelementptr i8, ptr %48, i32 8
  %49 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call21, align 4
  %call95 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr93, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %50, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i250 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i250, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call95 to i32
  br label %cleanup147

if.end99:                                         ; preds = %if.end92
  %52 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx101 = getelementptr %struct.clk_hw_onecell_data, ptr %52, i32 32
  %53 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call95, ptr %arrayidx101, align 4
  %54 = load ptr, ptr @scu_base, align 4
  %add.ptr102 = getelementptr i8, ptr %54, i32 216
  %55 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call21, align 4
  %call104 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr102, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %56, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i251 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call104 to i32
  br label %cleanup147

if.end108:                                        ; preds = %if.end99
  %58 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx110 = getelementptr %struct.clk_hw_onecell_data, ptr %58, i32 34
  %59 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call104, ptr %arrayidx110, align 4
  %call111 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24000000, i32 noundef 0, i32 noundef 0) #6
  %cmp.i252 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %call111 to i32
  br label %cleanup147

if.end115:                                        ; preds = %if.end108
  %61 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx117 = getelementptr %struct.clk_hw_onecell_data, ptr %61, i32 36
  %62 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call111, ptr %arrayidx117, align 4
  %63 = load ptr, ptr @scu_base, align 4
  %add.ptr118 = getelementptr i8, ptr %63, i32 8
  %call119 = call ptr @__clk_hw_register_mux(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 3, ptr noundef nonnull @eclk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr118, i8 noundef zeroext 2, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i253 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call119 to i32
  br label %cleanup147

if.end123:                                        ; preds = %if.end115
  %65 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx125 = getelementptr %struct.clk_hw_onecell_data, ptr %65, i32 31
  %66 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call119, ptr %arrayidx125, align 4
  %67 = load ptr, ptr @scu_base, align 4
  %add.ptr126 = getelementptr i8, ptr %67, i32 8
  %eclk_div_table = getelementptr inbounds %struct.aspeed_clk_soc_data, ptr %call21, i32 0, i32 1
  %68 = ptrtoint ptr %eclk_div_table to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %eclk_div_table, align 4
  %call127 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr126, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %69, ptr noundef nonnull @aspeed_clk_lock) #6
  %cmp.i254 = icmp ugt ptr %call127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %call127 to i32
  br label %cleanup147

if.end131:                                        ; preds = %if.end123
  %71 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx133 = getelementptr %struct.clk_hw_onecell_data, ptr %71, i32 30
  %72 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call127, ptr %arrayidx133, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end131
  %i.0257 = phi i32 [ 0, %if.end131 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx134 = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %i.0257
  %73 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %74)
  %cmp135 = icmp ne i8 %74, 14
  %name = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %i.0257, i32 2
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 4
  %parent_name = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %i.0257, i32 3
  %77 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %i.0257, i32 4
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 4
  %reset_idx = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %i.0257, i32 1
  %81 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %reset_idx, align 1
  %conv138 = zext i1 %cmp135 to i8
  %call139 = call fastcc ptr @aspeed_clk_hw_register_gate(ptr noundef %dev1, ptr noundef %76, ptr noundef %78, i32 noundef %80, ptr noundef %call, i8 noundef zeroext %74, i8 noundef zeroext %82, i8 noundef zeroext %conv138)
  %cmp.i255 = icmp ugt ptr %call139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %call139 to i32
  br label %cleanup147

for.inc:                                          ; preds = %for.body
  %84 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx145 = getelementptr %struct.clk_hw_onecell_data, ptr %84, i32 0, i32 1, i32 %i.0257
  %85 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call139, ptr %arrayidx145, align 4
  %inc = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.cleanup147_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup147_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

cleanup147:                                       ; preds = %for.inc.cleanup147_crit_edge, %cleanup.thread, %if.then129, %if.then121, %if.then113, %if.then106, %if.then97, %if.then87, %if.then79, %if.then73, %if.then61, %if.then53, %if.then47, %if.then40, %if.then34, %do.end26, %do.end19, %if.end.cleanup147_crit_edge, %do.end
  %retval.2 = phi i32 [ %3, %do.end ], [ %call14, %do.end19 ], [ %13, %if.then34 ], [ %20, %if.then40 ], [ %24, %if.then47 ], [ %28, %if.then53 ], [ %34, %if.then61 ], [ %39, %if.then73 ], [ %41, %if.then79 ], [ %45, %if.then87 ], [ %51, %if.then97 ], [ %57, %if.then106 ], [ %60, %if.then113 ], [ %64, %if.then121 ], [ %70, %if.then129 ], [ -22, %do.end26 ], [ -12, %if.end.cleanup147_crit_edge ], [ %83, %cleanup.thread ], [ 0, %for.inc.cleanup147_crit_edge ]
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
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aspeed_clk_hw_register_gate(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %map, i8 noundef zeroext %clock_idx, i8 noundef zeroext %reset_idx, i8 noundef zeroext %clk_gate_flags) unnamed_addr #2 align 64 {
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
  store ptr @aspeed_clk_gate_ops, ptr %ops, align 4
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
  store ptr @aspeed_clk_lock, ptr %lock11, align 4
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
define internal i32 @aspeed_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [10 x i8], ptr @aspeed_resets, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %id)
  %cmp = icmp eq i32 %id, 9
  %sub = add nsw i32 %conv, -32
  %spec.select = select i1 %cmp, i32 212, i32 4
  %spec.select6 = select i1 %cmp, i32 %sub, i32 %conv
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %shl = shl nuw i32 1, %spec.select6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %spec.select, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [10 x i8], ptr @aspeed_resets, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %id)
  %cmp = icmp eq i32 %id, 9
  %sub = add nsw i32 %conv, -32
  %spec.select = select i1 %cmp, i32 212, i32 4
  %spec.select4 = select i1 %cmp, i32 %sub, i32 %conv
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %shl = shl nuw i32 1, %spec.select4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %spec.select, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  %arrayidx = getelementptr [10 x i8], ptr @aspeed_resets, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %id)
  %cmp = icmp eq i32 %id, 9
  %spec.select = select i1 %cmp, i32 212, i32 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %spec.select, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -32
  %spec.select13 = select i1 %cmp, i32 %sub, i32 %conv
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = lshr i32 %6, %spec.select13
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
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
define internal i32 @aspeed_clk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clock_idx, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %reset_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_idx, align 1
  %conv152 = zext i8 %3 to i32
  %shl2 = shl nuw i32 1, %conv152
  %lock = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %6 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clock_idx, align 4
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %8 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reset_idx, align 1
  %flags.i = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags.i, align 2
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %shl.i, i32 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i, align 4, !annotation !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp.i = icmp sgt i8 %9, -1
  br i1 %cmp.i, label %if.then.i, label %entry.aspeed_clk_is_enabled.exit_crit_edge

entry.aspeed_clk_is_enabled.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aspeed_clk_is_enabled.exit

if.then.i:                                        ; preds = %entry
  %conv127.i = zext i8 %9 to i32
  %shl2.i = shl nuw i32 1, %conv127.i
  %map.i = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 4, ptr noundef nonnull %reg.i) #6
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  %and7.i = and i32 %17, %shl2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then.i.aspeed_clk_is_enabled.exit_crit_edge, label %aspeed_clk_is_enabled.exit.thread

if.then.i.aspeed_clk_is_enabled.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aspeed_clk_is_enabled.exit

aspeed_clk_is_enabled.exit.thread:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %if.end

aspeed_clk_is_enabled.exit:                       ; preds = %if.then.i.aspeed_clk_is_enabled.exit_crit_edge, %entry.aspeed_clk_is_enabled.exit_crit_edge
  %map11.i = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %map11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map11.i, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 12, ptr noundef nonnull %reg.i) #6
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg.i, align 4
  %and13.i = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %spec.select.i)
  %cmp14.i.not = icmp eq i32 %and13.i, %spec.select.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br i1 %cmp14.i.not, label %aspeed_clk_is_enabled.exit.cleanup_crit_edge, label %aspeed_clk_is_enabled.exit.if.end_crit_edge

aspeed_clk_is_enabled.exit.if.end_crit_edge:      ; preds = %aspeed_clk_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

aspeed_clk_is_enabled.exit.cleanup_crit_edge:     ; preds = %aspeed_clk_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %aspeed_clk_is_enabled.exit.if.end_crit_edge, %aspeed_clk_is_enabled.exit.thread
  %22 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reset_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp13 = icmp sgt i8 %23, -1
  br i1 %cmp13, label %if.then15, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %map = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %call.i53 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 4, i32 noundef %shl2, i32 noundef %shl2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 21474800) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags.i, align 2
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not = icmp eq i8 %29, 0
  %spec.select = select i1 %tobool20.not, i32 %shl, i32 0
  %map21 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %30 = ptrtoint ptr %map21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map21, align 4
  %call.i54 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 12, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reset_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp25 = icmp sgt i8 %33, -1
  br i1 %cmp25, label %while.body.preheader, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #6
  %44 = ptrtoint ptr %map21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map21, align 4
  %call.i55 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 4, i32 noundef %shl2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %if.end17.cleanup_crit_edge, %aspeed_clk_is_enabled.exit.cleanup_crit_edge
  %46 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %call6) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_clk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clock_idx, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %lock = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %flags7 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %flags7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags7, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %map = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 12, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_clk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %clock_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clock_idx, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %reset_idx = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %reset_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_idx, align 1
  %flags = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool.not, i32 %shl, i32 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg, align 4, !annotation !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %conv127 = zext i8 %3 to i32
  %shl2 = shl nuw i32 1, %conv127
  %map = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %reg) #6
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %and7 = and i32 %11, %shl2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then.if.end10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %map11 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %map11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map11, align 4
  %call12 = call i32 @regmap_read(ptr noundef %13, i32 noundef 12, ptr noundef nonnull %reg) #6
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %and13 = and i32 %15, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %spec.select)
  %cmp14 = icmp eq i32 %and13, %spec.select
  %cond16 = zext i1 %cmp14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond16, %if.end10 ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @aspeed_ast2400_calc_pll(ptr noundef %name, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %val, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %val, 5
  %and1 = and i32 %shr, 63
  %0 = shl i32 %val, 27
  %1 = ashr i32 %0, 31
  %and4 = and i32 %val, 15
  %sub = add nsw i32 %1, 2
  %add = add nuw nsw i32 %and1, 2
  %mul = mul nuw nsw i32 %sub, %add
  %add5 = add nuw nsw i32 %and4, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %div.0 = phi i32 [ %add5, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %mult.0 = phi i32 [ %mul, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %call = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %mult.0, i32 noundef %div.0) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @aspeed_ast2500_calc_pll(ptr noundef %name, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %val, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %val, 13
  %and1 = and i32 %shr, 63
  %0 = trunc i32 %val to i16
  %1 = lshr i16 %0, 5
  %2 = and i16 %1, 255
  %div6.lhs.trunc = add nuw nsw i16 %2, 1
  %3 = and i16 %0, 31
  %div6.rhs.trunc = add nuw nsw i16 %3, 1
  %div611 = udiv i16 %div6.lhs.trunc, %div6.rhs.trunc
  %div6.zext = zext i16 %div611 to i32
  %add7 = add nuw nsw i32 %and1, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %div.0 = phi i32 [ %add7, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %mult.0 = phi i32 [ %div6.zext, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %call = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %mult.0, i32 noundef %div.0) #6
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_cc_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !180
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  store ptr %call, ptr @scu_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 156) #11
  store ptr %call7.i.i, ptr @aspeed_clk_data, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1, i32 %i.058
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 38
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %call7 = tail call ptr @syscon_node_to_regmap(ptr noundef %np) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %call12 = call i32 @regmap_read(ptr noundef %call7, i32 noundef 112, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call21 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @aspeed_ast2400_cc(ptr noundef %call7) #9
  br label %if.end34

if.else:                                          ; preds = %if.end20
  %call24 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end30, label %if.then26

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @aspeed_ast2500_cc(ptr noundef %call7) #9
  br label %if.end34

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end30, %if.then26, %if.then23
  %3 = load ptr, ptr @aspeed_clk_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 38, ptr %3, align 4
  %call35 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %do.end40

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call35) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end34.cleanup_crit_edge, %do.end17, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_ast2400_cc(ptr noundef %map) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !180
  %call = call i32 @regmap_read(ptr noundef %map, i32 noundef 112, ptr noundef nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %shr = lshr i32 %2, 8
  %and = and i32 %shr, 3
  %and1 = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr [2 x [4 x i16]], ptr @__const.aspeed_ast2400_cc.hpll_rates, i32 0, i32 1, i32 %and
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %arrayidx11 = getelementptr [4 x i16], ptr @__const.aspeed_ast2400_cc.hpll_rates, i32 0, i32 %and
  %. = select i1 %tobool4.not, i32 24000000, i32 48000000
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then
  %clkin.0 = phi i32 [ 25000000, %if.then ], [ %., %if.else ]
  %hpll.0.in.in = phi ptr [ %arrayidx2, %if.then ], [ %arrayidx11, %if.else ]
  %3 = ptrtoint ptr %hpll.0.in.in to i32
  call void @__asan_load2_noabort(i32 %3)
  %hpll.0.in = load i16, ptr %hpll.0.in.in, align 2
  %hpll.0 = zext i16 %hpll.0.in to i32
  %call14 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %clkin.0, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_ast2400_cc.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_ast2400_cc, %if.then19)) #6
          to label %do.end [label %if.then19], !srcloc !181

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %div20 = udiv i32 %clkin.0, 1000000
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_ast2400_cc.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.69, i32 noundef %div20) #6
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end13
  %call22 = call i32 @regmap_read(ptr noundef %map, i32 noundef 36, ptr noundef nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %and23 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call ptr @aspeed_ast2400_calc_pll(ptr noundef nonnull @.str.15, i32 noundef %5)
  br label %if.end29

if.else27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %hpll.0, 1000000
  %call28 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %mul, i32 noundef 0, i32 noundef 0) #6
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then25
  %hw.0 = phi ptr [ %call26, %if.then25 ], [ %call28, %if.else27 ]
  %6 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx30 = getelementptr %struct.clk_hw_onecell_data, ptr %6, i32 25
  %7 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hw.0, ptr %arrayidx30, align 4
  %call31 = call i32 @regmap_read(ptr noundef %map, i32 noundef 112, ptr noundef nonnull %val) #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %shr32 = lshr i32 %9, 10
  %and33 = and i32 %shr32, 3
  store i32 %and33, ptr %val, align 4
  %add = add nuw nsw i32 %and33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp = icmp eq i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp37 = icmp eq i32 %add, 4
  %spec.store.select = select i1 %cmp37, i32 3, i32 %add
  %div.0 = select i1 %cmp, i32 4, i32 %spec.store.select
  %call42 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 1, i32 noundef %div.0) #6
  %10 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx44 = getelementptr %struct.clk_hw_onecell_data, ptr %10, i32 26
  %11 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call42, ptr %arrayidx44, align 4
  %12 = load ptr, ptr @scu_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 8
  %call45 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2400_div_table, ptr noundef nonnull @aspeed_clk_lock) #6
  %13 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx47 = getelementptr %struct.clk_hw_onecell_data, ptr %13, i32 27
  %14 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call45, ptr %arrayidx47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_ast2500_cc(ptr noundef %map) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !180
  %call = call i32 @regmap_read(ptr noundef %map, i32 noundef 112, ptr noundef nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 24000000, i32 25000000
  %call1 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %., i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_ast2500_cc.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_ast2500_cc, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !181

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div7 = udiv i32 %., 1000000
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_ast2500_cc.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.69, i32 noundef %div7) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %entry
  %call9 = call i32 @regmap_read(ptr noundef %map, i32 noundef 36, ptr noundef nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %call10 = call ptr @aspeed_ast2500_calc_pll(ptr noundef nonnull @.str.15, i32 noundef %4)
  %5 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %5, i32 25
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %arrayidx, align 4
  %call11 = call i32 @regmap_read(ptr noundef %map, i32 noundef 112, ptr noundef nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shr = lshr i32 %8, 9
  %and12 = and i32 %shr, 7
  store i32 %and12, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp = icmp eq i32 %and12, 0
  br i1 %cmp, label %do.end28, label %do.end.if.end34_crit_edge, !prof !182

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 675, i32 noundef 9, ptr noundef nonnull @.str.73) #6
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %do.end.if.end34_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %add = shl i32 %10, 1
  %mul = add i32 %add, 2
  %call42 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 1, i32 noundef %mul) #6
  %11 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx44 = getelementptr %struct.clk_hw_onecell_data, ptr %11, i32 26
  %12 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call42, ptr %arrayidx44, align 4
  %call45 = call i32 @regmap_read(ptr noundef %map, i32 noundef 8, ptr noundef nonnull %val) #6
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %shr46 = lshr i32 %14, 23
  %and47 = and i32 %shr46, 7
  store i32 %and47, ptr %val, align 4
  %add48 = shl nuw nsw i32 %and47, 2
  %mul49 = add nuw nsw i32 %add48, 4
  %call50 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 1, i32 noundef %mul49) #6
  %15 = load ptr, ptr @aspeed_clk_data, align 4
  %arrayidx52 = getelementptr %struct.clk_hw_onecell_data, ptr %15, i32 27
  %16 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call50, ptr %arrayidx52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !162, !164, !166, !168, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_clk_aspeed__183_581_aspeed_clk_driver_init6, !1, !"__initcall__kmod_clk_aspeed__183_581_aspeed_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-aspeed.c", i32 581, i32 1}
!2 = !{ptr @__of_table_aspeed_cc_g5, !3, !"__of_table_aspeed_cc_g5", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-aspeed.c", i32 741, i32 1}
!4 = !{ptr @__of_table_aspeed_cc_g4, !5, !"__of_table_aspeed_cc_g4", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-aspeed.c", i32 742, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-aspeed.c", i32 576, i32 11}
!8 = !{ptr @aspeed_clk_driver, !9, !"aspeed_clk_driver", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-aspeed.c", i32 573, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-aspeed.c", i32 394, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @aspeed_clk_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @aspeed_clk_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-aspeed.c", i32 410, i32 3}
!20 = !{ptr @aspeed_clk_probe._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @aspeed_clk_probe._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-aspeed.c", i32 417, i32 3}
!24 = !{ptr @aspeed_clk_probe._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @aspeed_clk_probe._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-aspeed.c", i32 428, i32 7}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-aspeed.c", i32 438, i32 26}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-aspeed.c", i32 444, i32 7}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-aspeed.c", i32 449, i32 7}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-aspeed.c", i32 458, i32 7}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/clk-aspeed.c", i32 466, i32 49}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-aspeed.c", i32 468, i32 8}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-aspeed.c", i32 474, i32 8}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/clk-aspeed.c", i32 482, i32 8}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-aspeed.c", i32 491, i32 7}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-aspeed.c", i32 500, i32 7}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-aspeed.c", i32 509, i32 7}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/clk-aspeed.c", i32 515, i32 7}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-aspeed.c", i32 523, i32 7}
!56 = !{ptr @aspeed_reset_ops, !57, !"aspeed_reset_ops", i1 false, i1 false}
!57 = !{!"../drivers/clk/clk-aspeed.c", i32 339, i32 39}
!58 = !{ptr @aspeed_resets, !59, !"aspeed_resets", i1 false, i1 false}
!59 = !{!"../drivers/clk/clk-aspeed.c", i32 270, i32 17}
!60 = !{ptr @aspeed_clk_data, !61, !"aspeed_clk_data", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-aspeed.c", i32 42, i32 36}
!62 = !{ptr @scu_base, !63, !"scu_base", i1 false, i1 false}
!63 = !{!"../drivers/clk/clk-aspeed.c", i32 44, i32 22}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-aspeed.c", i32 39, i32 8}
!66 = !{ptr @aspeed_clk_lock, !65, !"aspeed_clk_lock", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-aspeed.c", i32 78, i32 2}
!69 = !{ptr @eclk_parent_names, !70, !"eclk_parent_names", i1 false, i1 false}
!70 = !{!"../drivers/clk/clk-aspeed.c", i32 75, i32 27}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/clk-aspeed.c", i32 49, i32 37}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/clk-aspeed.c", i32 50, i32 37}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/clk-aspeed.c", i32 51, i32 37}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/clk-aspeed.c", i32 52, i32 37}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/clk-aspeed.c", i32 53, i32 37}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/clk-aspeed.c", i32 54, i32 37}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/clk-aspeed.c", i32 55, i32 39}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/clk-aspeed.c", i32 56, i32 44}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/clk-aspeed.c", i32 57, i32 37}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/clk-aspeed.c", i32 58, i32 43}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/clk-aspeed.c", i32 59, i32 38}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/clk-aspeed.c", i32 60, i32 37}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/clk-aspeed.c", i32 61, i32 44}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/clk-aspeed.c", i32 62, i32 41}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/clk-aspeed.c", i32 63, i32 41}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-aspeed.c", i32 64, i32 41}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/clk-aspeed.c", i32 65, i32 40}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/clk-aspeed.c", i32 66, i32 40}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/clk-aspeed.c", i32 67, i32 40}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/clk-aspeed.c", i32 68, i32 39}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/clk-aspeed.c", i32 69, i32 41}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-aspeed.c", i32 70, i32 41}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/clk-aspeed.c", i32 71, i32 38}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/clk-aspeed.c", i32 72, i32 39}
!119 = !{ptr @aspeed_gates, !120, !"aspeed_gates", i1 false, i1 false}
!120 = !{!"../drivers/clk/clk-aspeed.c", i32 47, i32 38}
!121 = !{ptr @aspeed_clk_gate_ops, !122, !"aspeed_clk_gate_ops", i1 false, i1 false}
!122 = !{!"../drivers/clk/clk-aspeed.c", i32 264, i32 29}
!123 = !{ptr @aspeed_clk_dt_ids, !124, !"aspeed_clk_dt_ids", i1 false, i1 false}
!124 = !{!"../drivers/clk/clk-aspeed.c", i32 567, i32 34}
!125 = !{ptr @ast2400_data, !126, !"ast2400_data", i1 false, i1 false}
!126 = !{!"../drivers/clk/clk-aspeed.c", i32 177, i32 41}
!127 = !{ptr @ast2400_div_table, !128, !"ast2400_div_table", i1 false, i1 false}
!128 = !{!"../drivers/clk/clk-aspeed.c", i32 105, i32 35}
!129 = !{ptr @ast2500_data, !130, !"ast2500_data", i1 false, i1 false}
!130 = !{!"../drivers/clk/clk-aspeed.c", i32 170, i32 41}
!131 = !{ptr @ast2500_div_table, !132, !"ast2500_div_table", i1 false, i1 false}
!132 = !{!"../drivers/clk/clk-aspeed.c", i32 117, i32 35}
!133 = !{ptr @ast2500_eclk_div_table, !134, !"ast2500_eclk_div_table", i1 false, i1 false}
!134 = !{!"../drivers/clk/clk-aspeed.c", i32 81, i32 35}
!135 = !{ptr @ast2500_mac_div_table, !136, !"ast2500_mac_div_table", i1 false, i1 false}
!136 = !{!"../drivers/clk/clk-aspeed.c", i32 93, i32 35}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/clk-aspeed.c", i32 714, i32 3}
!139 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @aspeed_cc_init._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @aspeed_cc_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/clk-aspeed.c", i32 725, i32 3}
!144 = !{ptr @aspeed_cc_init._entry.56, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @aspeed_cc_init._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/clk-aspeed.c", i32 729, i32 34}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/clk-aspeed.c", i32 734, i32 3}
!150 = !{ptr @aspeed_cc_init._entry.60, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @aspeed_cc_init._entry_ptr.62, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/clk-aspeed.c", i32 739, i32 3}
!154 = !{ptr @aspeed_cc_init._entry.63, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @aspeed_cc_init._entry_ptr.65, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/clk-aspeed.c", i32 610, i32 2}
!158 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @aspeed_ast2400_cc.__UNIQUE_ID_ddebug184, !157, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!161 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/clk-aspeed.c", i32 640, i32 42}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/clk-aspeed.c", i32 644, i32 7}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/clk-aspeed.c", i32 663, i32 2}
!168 = !{ptr @aspeed_ast2500_cc.__UNIQUE_ID_ddebug185, !167, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/clk-aspeed.c", i32 675, i32 2}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"auto-init"}
!181 = !{i64 2148910303, i64 2148910308, i64 2148910321, i64 2148910365, i64 2148910399, i64 2148910420}
!182 = !{!"branch_weights", i32 1, i32 2000}
