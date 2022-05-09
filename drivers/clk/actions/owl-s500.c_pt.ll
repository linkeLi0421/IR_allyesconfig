; ModuleID = '/llk/IR_all_yes/drivers/clk/actions/owl-s500.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-s500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.owl_clk_desc = type { ptr, i32, ptr, ptr, i32, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.owl_reset_map = type { i32, i32 }
%struct.owl_pll = type { %struct.owl_pll_hw, %struct.owl_clk_common }
%struct.owl_pll_hw = type { i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.owl_clk_common = type { ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.owl_mux = type { %struct.owl_mux_hw, %struct.owl_clk_common }
%struct.owl_mux_hw = type { i32, i8, i8 }
%struct.owl_gate = type { %struct.owl_gate_hw, %struct.owl_clk_common }
%struct.owl_gate_hw = type { i32, i8, i8 }
%struct.owl_composite = type { %struct.owl_mux_hw, %struct.owl_gate_hw, %union.owl_rate, ptr, %struct.owl_clk_common }
%union.owl_rate = type { %struct.clk_fixed_factor }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.owl_divider = type { %struct.owl_divider_hw, %struct.owl_clk_common }
%struct.owl_divider_hw = type { i32, i8, i8, i8, ptr }
%struct.owl_factor = type { %struct.owl_factor_hw, %struct.owl_clk_common }
%struct.owl_factor_hw = type { i32, i8, i8, i8, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll_table = type { i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_factor_table = type { i32, i32, i32 }
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
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.owl_reset = type { %struct.reset_controller_dev, ptr, ptr }

@__initcall__kmod_owl_s500__170_642_s500_clk_init1 = internal global ptr @s500_clk_init, section ".initcall1.init", align 4
@s500_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s500_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s500_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s500-cmu\00", [23 x i8] zeroinitializer }, align 32
@s500_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-cmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s500_clk_desc = internal global { %struct.owl_clk_desc, [40 x i8] } { %struct.owl_clk_desc { ptr @s500_clks, i32 57, ptr @s500_hw_clks, ptr @s500_resets, i32 54, ptr null }, [40 x i8] zeroinitializer }, align 32
@owl_reset_ops = external dso_local constant %struct.reset_control_ops, align 4
@s500_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register reset controller\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s500_clk_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/actions/owl-s500.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s500_clk_probe._entry_ptr = internal global ptr @s500_clk_probe._entry, section ".printk_index", align 4
@s500_clks = internal global { [57 x ptr], [60 x i8] } { [57 x ptr] [ptr getelementptr (i8, ptr @ethernet_pll_clk, i64 20), ptr getelementptr (i8, ptr @core_pll_clk, i64 20), ptr getelementptr (i8, ptr @ddr_pll_clk, i64 20), ptr getelementptr (i8, ptr @dev_pll_clk, i64 20), ptr getelementptr (i8, ptr @nand_pll_clk, i64 20), ptr getelementptr (i8, ptr @audio_pll_clk, i64 20), ptr getelementptr (i8, ptr @display_pll_clk, i64 20), ptr getelementptr (i8, ptr @dev_clk, i64 8), ptr getelementptr (i8, ptr @timer_clk, i64 8), ptr getelementptr (i8, ptr @i2c0_clk, i64 40), ptr getelementptr (i8, ptr @i2c1_clk, i64 40), ptr getelementptr (i8, ptr @i2c2_clk, i64 40), ptr getelementptr (i8, ptr @i2c3_clk, i64 40), ptr getelementptr (i8, ptr @uart0_clk, i64 40), ptr getelementptr (i8, ptr @uart1_clk, i64 40), ptr getelementptr (i8, ptr @uart2_clk, i64 40), ptr getelementptr (i8, ptr @uart3_clk, i64 40), ptr getelementptr (i8, ptr @uart4_clk, i64 40), ptr getelementptr (i8, ptr @uart5_clk, i64 40), ptr getelementptr (i8, ptr @uart6_clk, i64 40), ptr getelementptr (i8, ptr @pwm0_clk, i64 40), ptr getelementptr (i8, ptr @pwm1_clk, i64 40), ptr getelementptr (i8, ptr @pwm2_clk, i64 40), ptr getelementptr (i8, ptr @pwm3_clk, i64 40), ptr getelementptr (i8, ptr @pwm4_clk, i64 40), ptr getelementptr (i8, ptr @pwm5_clk, i64 40), ptr getelementptr (i8, ptr @sensor0_clk, i64 40), ptr getelementptr (i8, ptr @sensor1_clk, i64 40), ptr getelementptr (i8, ptr @sd0_clk, i64 40), ptr getelementptr (i8, ptr @sd1_clk, i64 40), ptr getelementptr (i8, ptr @sd2_clk, i64 40), ptr getelementptr (i8, ptr @bisp_clk, i64 40), ptr getelementptr (i8, ptr @ahb_clk, i64 40), ptr getelementptr (i8, ptr @ahbprediv_clk, i64 40), ptr getelementptr (i8, ptr @h_clk, i64 12), ptr getelementptr (i8, ptr @spi0_clk, i64 8), ptr getelementptr (i8, ptr @spi1_clk, i64 8), ptr getelementptr (i8, ptr @spi2_clk, i64 8), ptr getelementptr (i8, ptr @spi3_clk, i64 8), ptr getelementptr (i8, ptr @rmii_ref_clk, i64 12), ptr getelementptr (i8, ptr @de_clk, i64 40), ptr getelementptr (i8, ptr @de1_clk, i64 12), ptr getelementptr (i8, ptr @de2_clk, i64 12), ptr getelementptr (i8, ptr @i2srx_clk, i64 40), ptr getelementptr (i8, ptr @i2stx_clk, i64 40), ptr getelementptr (i8, ptr @hdmia_clk, i64 40), ptr getelementptr (i8, ptr @hdmi_clk, i64 8), ptr getelementptr (i8, ptr @vce_clk, i64 40), ptr getelementptr (i8, ptr @vde_clk, i64 40), ptr getelementptr (i8, ptr @spdif_clk, i64 40), ptr getelementptr (i8, ptr @nand_clk, i64 40), ptr getelementptr (i8, ptr @ecc_clk, i64 40), ptr getelementptr (i8, ptr @apb_clk, i64 12), ptr getelementptr (i8, ptr @dmac_clk, i64 8), ptr getelementptr (i8, ptr @gpio_clk, i64 8), ptr getelementptr (i8, ptr @nic_clk, i64 40), ptr getelementptr (i8, ptr @ethernet_clk, i64 40)], [60 x i8] zeroinitializer }, align 32
@s500_resets = internal constant { [54 x %struct.owl_reset_map], [112 x i8] } { [54 x %struct.owl_reset_map] [%struct.owl_reset_map { i32 168, i32 1 }, %struct.owl_reset_map { i32 168, i32 2 }, %struct.owl_reset_map { i32 168, i32 4 }, %struct.owl_reset_map { i32 168, i32 8 }, %struct.owl_reset_map { i32 168, i32 16 }, %struct.owl_reset_map { i32 168, i32 32 }, %struct.owl_reset_map { i32 168, i32 64 }, %struct.owl_reset_map { i32 168, i32 128 }, %struct.owl_reset_map { i32 168, i32 256 }, %struct.owl_reset_map { i32 168, i32 512 }, %struct.owl_reset_map { i32 168, i32 1024 }, %struct.owl_reset_map { i32 168, i32 2048 }, %struct.owl_reset_map { i32 168, i32 4096 }, %struct.owl_reset_map { i32 168, i32 16384 }, %struct.owl_reset_map { i32 168, i32 32768 }, %struct.owl_reset_map { i32 168, i32 131072 }, %struct.owl_reset_map { i32 168, i32 262144 }, %struct.owl_reset_map { i32 168, i32 524288 }, %struct.owl_reset_map { i32 168, i32 1048576 }, %struct.owl_reset_map { i32 168, i32 4194304 }, %struct.owl_reset_map { i32 168, i32 8388608 }, %struct.owl_reset_map { i32 168, i32 67108864 }, %struct.owl_reset_map { i32 168, i32 134217728 }, %struct.owl_reset_map { i32 172, i32 1 }, %struct.owl_reset_map { i32 172, i32 2 }, %struct.owl_reset_map { i32 172, i32 4 }, %struct.owl_reset_map { i32 172, i32 8 }, %struct.owl_reset_map { i32 172, i32 16 }, %struct.owl_reset_map { i32 172, i32 32 }, %struct.owl_reset_map { i32 172, i32 64 }, %struct.owl_reset_map { i32 172, i32 128 }, %struct.owl_reset_map { i32 172, i32 256 }, %struct.owl_reset_map { i32 172, i32 512 }, %struct.owl_reset_map { i32 172, i32 1024 }, %struct.owl_reset_map { i32 172, i32 2048 }, %struct.owl_reset_map { i32 172, i32 4096 }, %struct.owl_reset_map { i32 172, i32 8192 }, %struct.owl_reset_map { i32 172, i32 16384 }, %struct.owl_reset_map { i32 172, i32 32768 }, %struct.owl_reset_map { i32 172, i32 65536 }, %struct.owl_reset_map { i32 172, i32 131072 }, %struct.owl_reset_map { i32 172, i32 262144 }, %struct.owl_reset_map { i32 172, i32 524288 }, %struct.owl_reset_map { i32 172, i32 1048576 }, %struct.owl_reset_map { i32 172, i32 2097152 }, %struct.owl_reset_map { i32 172, i32 4194304 }, %struct.owl_reset_map { i32 172, i32 16777216 }, %struct.owl_reset_map { i32 172, i32 33554432 }, %struct.owl_reset_map { i32 172, i32 67108864 }, %struct.owl_reset_map { i32 172, i32 134217728 }, %struct.owl_reset_map { i32 172, i32 268435456 }, %struct.owl_reset_map { i32 172, i32 536870912 }, %struct.owl_reset_map { i32 172, i32 1073741824 }, %struct.owl_reset_map { i32 172, i32 -2147483648 }], [112 x i8] zeroinitializer }, align 32
@ethernet_pll_clk = internal global { %struct.owl_pll, [60 x i8] } { %struct.owl_pll { %struct.owl_pll_hw { i32 132, i32 500000000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 25, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } } }, [60 x i8] zeroinitializer }, align 32
@core_pll_clk = internal global { %struct.owl_pll, [60 x i8] } { %struct.owl_pll { %struct.owl_pll_hw { i32 0, i32 12000000, i8 9, i8 0, i8 8, i8 4, i8 -122, i8 -106, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 } } }, [60 x i8] zeroinitializer }, align 32
@ddr_pll_clk = internal global { %struct.owl_pll, [60 x i8] } { %struct.owl_pll { %struct.owl_pll_hw { i32 8, i32 12000000, i8 8, i8 0, i8 8, i8 1, i8 67, i8 63, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 } } }, [60 x i8] zeroinitializer }, align 32
@dev_pll_clk = internal global { %struct.owl_pll, [60 x i8] } { %struct.owl_pll { %struct.owl_pll_hw { i32 4, i32 6000000, i8 8, i8 0, i8 7, i8 8, i8 126, i8 28, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, [60 x i8] zeroinitializer }, align 32
@nand_pll_clk = internal global { %struct.owl_pll, [60 x i8] } { %struct.owl_pll { %struct.owl_pll_hw { i32 12, i32 6000000, i8 8, i8 0, i8 7, i8 2, i8 86, i8 44, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 } } }, [60 x i8] zeroinitializer }, align 32
@audio_pll_clk = internal global { %struct.owl_pll, [60 x i8] } { %struct.owl_pll { %struct.owl_pll_hw { i32 20, i32 0, i8 4, i8 0, i8 1, i8 0, i8 0, i8 100, ptr @clk_audio_pll_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 } } }, [60 x i8] zeroinitializer }, align 32
@display_pll_clk = internal global { %struct.owl_pll, [60 x i8] } { %struct.owl_pll { %struct.owl_pll_hw { i32 16, i32 6000000, i8 8, i8 0, i8 8, i8 2, i8 126, i8 57, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 } } }, [60 x i8] zeroinitializer }, align 32
@dev_clk = internal global { %struct.owl_mux, [40 x i8] } { %struct.owl_mux { %struct.owl_mux_hw { i32 4, i8 12, i8 1 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 } } }, [40 x i8] zeroinitializer }, align 32
@timer_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 27, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 } } }, [40 x i8] zeroinitializer }, align 32
@i2c0_clk = internal global { %struct.owl_composite, [40 x i8] } { %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 14, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, [40 x i8] zeroinitializer }, align 32
@i2c1_clk = internal global { %struct.owl_composite, [40 x i8] } { %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 15, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 } } }, [40 x i8] zeroinitializer }, align 32
@i2c2_clk = internal global { %struct.owl_composite, [40 x i8] } { %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 30, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 } } }, [40 x i8] zeroinitializer }, align 32
@i2c3_clk = internal global { %struct.owl_composite, [40 x i8] } { %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 31, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 } } }, [40 x i8] zeroinitializer }, align 32
@ahb_clk = internal global { %struct.owl_composite, [40 x i8] } { %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw zeroinitializer, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 1 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 } } }, [40 x i8] zeroinitializer }, align 32
@h_clk = internal global { %struct.owl_divider, [36 x i8] } { %struct.owl_divider { %struct.owl_divider_hw { i32 56, i8 2, i8 2, i8 0, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 } } }, [36 x i8] zeroinitializer }, align 32
@spi0_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 10, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 } } }, [40 x i8] zeroinitializer }, align 32
@spi1_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 11, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 } } }, [40 x i8] zeroinitializer }, align 32
@spi2_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 12, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.112 } } }, [40 x i8] zeroinitializer }, align 32
@spi3_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 13, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.115 } } }, [40 x i8] zeroinitializer }, align 32
@rmii_ref_clk = internal global { %struct.owl_divider, [36 x i8] } { %struct.owl_divider { %struct.owl_divider_hw { i32 132, i8 1, i8 1, i8 0, ptr @rmii_ref_div_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 } } }, [36 x i8] zeroinitializer }, align 32
@de_clk = internal global { %struct.owl_composite, [40 x i8] } { %struct.owl_composite { %struct.owl_mux_hw { i32 48, i8 12, i8 1 }, %struct.owl_gate_hw { i32 160, i8 8, i8 0 }, %union.owl_rate zeroinitializer, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 } } }, [40 x i8] zeroinitializer }, align 32
@de1_clk = internal global { %struct.owl_factor, [36 x i8] } { %struct.owl_factor { %struct.owl_factor_hw { i32 48, i8 0, i8 4, i8 0, ptr @de_factor_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.123 } } }, [36 x i8] zeroinitializer }, align 32
@de2_clk = internal global { %struct.owl_factor, [36 x i8] } { %struct.owl_factor { %struct.owl_factor_hw { i32 48, i8 4, i8 4, i8 0, ptr @de_factor_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.126 } } }, [36 x i8] zeroinitializer }, align 32
@hdmi_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 3, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.138 } } }, [40 x i8] zeroinitializer }, align 32
@apb_clk = internal global { %struct.owl_divider, [36 x i8] } { %struct.owl_divider { %struct.owl_divider_hw { i32 56, i8 14, i8 2, i8 0, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.157 } } }, [36 x i8] zeroinitializer }, align 32
@dmac_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 160, i8 1, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.160 } } }, [40 x i8] zeroinitializer }, align 32
@gpio_clk = internal global { %struct.owl_gate, [40 x i8] } { %struct.owl_gate { %struct.owl_gate_hw { i32 160, i8 18, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.163 } } }, [40 x i8] zeroinitializer }, align 32
@ethernet_clk = internal global { %struct.owl_composite, [40 x i8] } { %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 22, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 20 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.168 } } }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ethernet_pll_clk\00", [47 x i8] zeroinitializer }, align 32
@owl_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"core_pll_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddr_pll_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dev_pll_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nand_pll_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@clk_audio_pll_table = internal constant { [3 x %struct.clk_pll_table], [40 x i8] } { [3 x %struct.clk_pll_table] [%struct.clk_pll_table { i32 0, i32 45158400 }, %struct.clk_pll_table { i32 1, i32 49152000 }, %struct.clk_pll_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_pll_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"display_pll_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dev_clk\00", [24 x i8] zeroinitializer }, align 32
@owl_mux_ops = external dso_local constant %struct.clk_ops, align 4
@dev_clk_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @owl_mux_ops, ptr @dev_clk_mux_p, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hosc\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timer_clk\00", [22 x i8] zeroinitializer }, align 32
@owl_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.23 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @owl_gate_ops, ptr @.compoundliteral.23, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c0_clk\00", [23 x i8] zeroinitializer }, align 32
@owl_comp_fix_fact_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.26 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.25, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.26, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c1_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.28, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.29, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c2_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.32, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c3_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.35, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_clk\00", [22 x i8] zeroinitializer }, align 32
@owl_comp_div_ops = external dso_local constant %struct.clk_ops, align 4
@uart_clk_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, [36 x i8] zeroinitializer }, align 32
@uart0_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 92, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 6, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 92, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 } } }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.40, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, [36 x i8] zeroinitializer }, align 32
@uart1_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 96, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 7, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 96, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 } } }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.43, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, [36 x i8] zeroinitializer }, align 32
@uart2_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 100, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 8, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 100, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 } } }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.46, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, [36 x i8] zeroinitializer }, align 32
@uart3_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 176, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 19, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 176, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 } } }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.49, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, [36 x i8] zeroinitializer }, align 32
@uart4_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 180, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 20, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 180, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 } } }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart5_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.52, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, [36 x i8] zeroinitializer }, align 32
@uart5_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 184, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 21, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 184, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 } } }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart6_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, [36 x i8] zeroinitializer }, align 32
@uart6_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 188, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 18, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 188, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 } } }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_clk\00", [23 x i8] zeroinitializer }, align 32
@pwm_clk_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.61, ptr @.str.21], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pwm0_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 112, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 23, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 112, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 } } }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"losc\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pwm1_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 116, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 24, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 116, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 } } }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pwm2_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 120, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 25, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 120, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 } } }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pwm3_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 124, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 26, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 124, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 } } }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm4_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.71, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pwm4_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 104, i8 12, i8 1 }, %struct.owl_gate_hw { i32 160, i8 11, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 104, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 } } }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm5_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.74, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pwm5_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 108, i8 12, i8 1 }, %struct.owl_gate_hw { i32 160, i8 0, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 108, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 } } }, [40 x i8] zeroinitializer }, align 32
@std12rate_div_table = internal global { [13 x %struct.clk_div_table], [56 x i8] } { [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 10, i32 11 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sensor0_clk\00", [20 x i8] zeroinitializer }, align 32
@sensor_clk_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.80], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.77, ptr @owl_comp_div_ops, ptr @sensor_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sensor0_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 32, i8 4, i8 1 }, %struct.owl_gate_hw { i32 160, i8 14, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 32, i8 0, i8 4, i8 0, ptr @std12rate_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 } } }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bisp_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sensor1_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.81, ptr @owl_comp_div_ops, ptr @sensor_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sensor1_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 32, i8 4, i8 1 }, %struct.owl_gate_hw { i32 160, i8 14, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 32, i8 8, i8 4, i8 0, ptr @std12rate_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 } } }, [40 x i8] zeroinitializer }, align 32
@sd_factor_table = internal global { [51 x %struct.clk_factor_table], [156 x i8] } { [51 x %struct.clk_factor_table] [%struct.clk_factor_table { i32 0, i32 1, i32 1 }, %struct.clk_factor_table { i32 1, i32 1, i32 2 }, %struct.clk_factor_table { i32 2, i32 1, i32 3 }, %struct.clk_factor_table { i32 3, i32 1, i32 4 }, %struct.clk_factor_table { i32 4, i32 1, i32 5 }, %struct.clk_factor_table { i32 5, i32 1, i32 6 }, %struct.clk_factor_table { i32 6, i32 1, i32 7 }, %struct.clk_factor_table { i32 7, i32 1, i32 8 }, %struct.clk_factor_table { i32 8, i32 1, i32 9 }, %struct.clk_factor_table { i32 9, i32 1, i32 10 }, %struct.clk_factor_table { i32 10, i32 1, i32 11 }, %struct.clk_factor_table { i32 11, i32 1, i32 12 }, %struct.clk_factor_table { i32 12, i32 1, i32 13 }, %struct.clk_factor_table { i32 13, i32 1, i32 14 }, %struct.clk_factor_table { i32 14, i32 1, i32 15 }, %struct.clk_factor_table { i32 15, i32 1, i32 16 }, %struct.clk_factor_table { i32 16, i32 1, i32 17 }, %struct.clk_factor_table { i32 17, i32 1, i32 18 }, %struct.clk_factor_table { i32 18, i32 1, i32 19 }, %struct.clk_factor_table { i32 19, i32 1, i32 20 }, %struct.clk_factor_table { i32 20, i32 1, i32 21 }, %struct.clk_factor_table { i32 21, i32 1, i32 22 }, %struct.clk_factor_table { i32 22, i32 1, i32 23 }, %struct.clk_factor_table { i32 23, i32 1, i32 24 }, %struct.clk_factor_table { i32 24, i32 1, i32 25 }, %struct.clk_factor_table { i32 256, i32 1, i32 128 }, %struct.clk_factor_table { i32 257, i32 1, i32 256 }, %struct.clk_factor_table { i32 258, i32 1, i32 384 }, %struct.clk_factor_table { i32 259, i32 1, i32 512 }, %struct.clk_factor_table { i32 260, i32 1, i32 640 }, %struct.clk_factor_table { i32 261, i32 1, i32 768 }, %struct.clk_factor_table { i32 262, i32 1, i32 896 }, %struct.clk_factor_table { i32 263, i32 1, i32 1024 }, %struct.clk_factor_table { i32 264, i32 1, i32 1152 }, %struct.clk_factor_table { i32 265, i32 1, i32 1280 }, %struct.clk_factor_table { i32 266, i32 1, i32 1408 }, %struct.clk_factor_table { i32 267, i32 1, i32 1536 }, %struct.clk_factor_table { i32 268, i32 1, i32 1664 }, %struct.clk_factor_table { i32 269, i32 1, i32 1792 }, %struct.clk_factor_table { i32 270, i32 1, i32 1920 }, %struct.clk_factor_table { i32 271, i32 1, i32 2048 }, %struct.clk_factor_table { i32 272, i32 1, i32 2176 }, %struct.clk_factor_table { i32 273, i32 1, i32 2304 }, %struct.clk_factor_table { i32 274, i32 1, i32 2432 }, %struct.clk_factor_table { i32 275, i32 1, i32 2560 }, %struct.clk_factor_table { i32 276, i32 1, i32 2688 }, %struct.clk_factor_table { i32 277, i32 1, i32 2816 }, %struct.clk_factor_table { i32 278, i32 1, i32 2944 }, %struct.clk_factor_table { i32 279, i32 1, i32 3072 }, %struct.clk_factor_table { i32 280, i32 1, i32 3200 }, %struct.clk_factor_table zeroinitializer], [156 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd0_clk\00", [24 x i8] zeroinitializer }, align 32
@owl_comp_fact_ops = external dso_local constant %struct.clk_ops, align 4
@sd_clk_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.84, ptr @owl_comp_fact_ops, ptr @sd_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sd0_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 80, i8 9, i8 1 }, %struct.owl_gate_hw { i32 160, i8 5, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 80, i8 0, i8 9, i8 0, ptr @sd_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 } } }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd1_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.87, ptr @owl_comp_fact_ops, ptr @sd_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sd1_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 84, i8 9, i8 1 }, %struct.owl_gate_hw { i32 160, i8 6, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 84, i8 0, i8 9, i8 0, ptr @sd_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 } } }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd2_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.90, ptr @owl_comp_fact_ops, ptr @sd_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sd2_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 88, i8 9, i8 1 }, %struct.owl_gate_hw { i32 160, i8 7, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 88, i8 0, i8 9, i8 0, ptr @sd_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 } } }, [40 x i8] zeroinitializer }, align 32
@bisp_clk_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @owl_comp_div_ops, ptr @bisp_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@bisp_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 52, i8 4, i8 1 }, %struct.owl_gate_hw { i32 160, i8 14, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 52, i8 0, i8 4, i8 0, ptr @std12rate_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 } } }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ahb_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"h_clk\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.96], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.95, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.97, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ahbprediv_clk\00", [18 x i8] zeroinitializer }, align 32
@ahbprediv_clk_mux_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.17, ptr @.str.13, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.99, ptr @owl_comp_div_ops, ptr @ahbprediv_clk_mux_p, ptr null, ptr null, i8 4, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ahbprediv_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 56, i8 8, i8 3 }, %struct.owl_gate_hw zeroinitializer, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 56, i8 12, i8 2, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 } } }, [40 x i8] zeroinitializer }, align 32
@owl_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.102 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.99], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.96, ptr @owl_divider_ops, ptr @.compoundliteral.102, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.104, ptr @owl_gate_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.107, ptr @owl_gate_ops, ptr @.compoundliteral.108, ptr null, ptr null, i8 1, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi2_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.110, ptr @owl_gate_ops, ptr @.compoundliteral.111, ptr null, ptr null, i8 1, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi3_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.113, ptr @owl_gate_ops, ptr @.compoundliteral.114, ptr null, ptr null, i8 1, i32 8 }, [36 x i8] zeroinitializer }, align 32
@rmii_ref_div_table = internal global { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmii_ref_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.116, ptr @owl_divider_ops, ptr @.compoundliteral.117, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"de_clk\00", [25 x i8] zeroinitializer }, align 32
@owl_comp_pass_ops = external dso_local constant %struct.clk_ops, align 4
@de_clk_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.119, ptr @owl_comp_pass_ops, ptr @de_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@de_factor_table = internal global { [10 x %struct.clk_factor_table], [40 x i8] } { [10 x %struct.clk_factor_table] [%struct.clk_factor_table { i32 0, i32 1, i32 1 }, %struct.clk_factor_table { i32 1, i32 2, i32 3 }, %struct.clk_factor_table { i32 2, i32 1, i32 2 }, %struct.clk_factor_table { i32 3, i32 2, i32 5 }, %struct.clk_factor_table { i32 4, i32 1, i32 3 }, %struct.clk_factor_table { i32 5, i32 1, i32 4 }, %struct.clk_factor_table { i32 6, i32 1, i32 6 }, %struct.clk_factor_table { i32 7, i32 1, i32 8 }, %struct.clk_factor_table { i32 8, i32 1, i32 12 }, %struct.clk_factor_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"de_clk1\00", [24 x i8] zeroinitializer }, align 32
@owl_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.122 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.119], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.121, ptr @owl_factor_ops, ptr @.compoundliteral.122, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"de_clk2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.119], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.124, ptr @owl_factor_ops, ptr @.compoundliteral.125, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@i2s_div_table = internal global { [10 x %struct.clk_div_table], [48 x i8] } { [10 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 6 }, %struct.clk_div_table { i32 5, i32 8 }, %struct.clk_div_table { i32 6, i32 12 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2srx_clk\00", [22 x i8] zeroinitializer }, align 32
@i2s_clk_mux_p = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.127, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@i2srx_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 21, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 20, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 } } }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2stx_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.130, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@i2stx_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 20, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 16, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 } } }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdmia_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.133, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@hdmia_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 22, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 24, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 } } }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.136, ptr @owl_gate_ops, ptr @.compoundliteral.137, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@hde_factor_table = internal global { [9 x %struct.clk_factor_table], [52 x i8] } { [9 x %struct.clk_factor_table] [%struct.clk_factor_table { i32 0, i32 1, i32 1 }, %struct.clk_factor_table { i32 1, i32 2, i32 3 }, %struct.clk_factor_table { i32 2, i32 1, i32 2 }, %struct.clk_factor_table { i32 3, i32 2, i32 5 }, %struct.clk_factor_table { i32 4, i32 1, i32 3 }, %struct.clk_factor_table { i32 5, i32 1, i32 4 }, %struct.clk_factor_table { i32 6, i32 1, i32 6 }, %struct.clk_factor_table { i32 7, i32 1, i32 8 }, %struct.clk_factor_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vce_clk\00", [24 x i8] zeroinitializer }, align 32
@hde_clk_mux_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.17, ptr @.str.13, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.139, ptr @owl_comp_fact_ops, ptr @hde_clk_mux_p, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@vce_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 68, i8 4, i8 2 }, %struct.owl_gate_hw { i32 160, i8 26, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 68, i8 0, i8 3, i8 0, ptr @hde_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 } } }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vde_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.142, ptr @owl_comp_fact_ops, ptr @hde_clk_mux_p, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@vde_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 64, i8 4, i8 2 }, %struct.owl_gate_hw { i32 160, i8 25, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 64, i8 0, i8 3, i8 0, ptr @hde_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 } } }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.145, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@spdif_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 23, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 28, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 } } }, [40 x i8] zeroinitializer }, align 32
@nand_div_table = internal global { [13 x %struct.clk_div_table], [56 x i8] } { [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 10 }, %struct.clk_div_table { i32 6, i32 12 }, %struct.clk_div_table { i32 7, i32 14 }, %struct.clk_div_table { i32 8, i32 16 }, %struct.clk_div_table { i32 9, i32 18 }, %struct.clk_div_table { i32 10, i32 20 }, %struct.clk_div_table { i32 11, i32 22 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_clk\00", [23 x i8] zeroinitializer }, align 32
@nand_clk_mux_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.13, ptr @.str.17, ptr @.str.19, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.148, ptr @owl_comp_div_ops, ptr @nand_clk_mux_p, ptr null, ptr null, i8 4, i32 4 }, [36 x i8] zeroinitializer }, align 32
@nand_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 76, i8 8, i8 2 }, %struct.owl_gate_hw { i32 160, i8 4, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 76, i8 0, i8 3, i8 0, ptr @nand_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 } } }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ecc_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.151, ptr @owl_comp_div_ops, ptr @nand_clk_mux_p, ptr null, ptr null, i8 4, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ecc_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 76, i8 8, i8 2 }, %struct.owl_gate_hw { i32 160, i8 4, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 76, i8 4, i8 3, i8 0, ptr @nand_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 } } }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apb_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nic_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.155], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.154, ptr @owl_divider_ops, ptr @.compoundliteral.156, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmac_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.96], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.158, ptr @owl_gate_ops, ptr @.compoundliteral.159, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.154], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.161, ptr @owl_gate_ops, ptr @.compoundliteral.162, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nic_clk_mux_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.17, ptr @.str.13, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.155, ptr @owl_comp_div_ops, ptr @nic_clk_mux_p, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nic_clk = internal global { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common }, [40 x i8] } { { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 56, i8 4, i8 3 }, %struct.owl_gate_hw zeroinitializer, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 56, i8 16, i8 2, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 } } }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ethernet_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.166, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.167, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@s500_hw_clks = internal global { { i32, [60 x ptr] }, [44 x i8] } { { i32, [60 x ptr] } { i32 60, [60 x ptr] [ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @core_pll_clk, i64 24), ptr getelementptr (i8, ptr @dev_pll_clk, i64 24), ptr getelementptr (i8, ptr @ddr_pll_clk, i64 24), ptr getelementptr (i8, ptr @nand_pll_clk, i64 24), ptr getelementptr (i8, ptr @display_pll_clk, i64 24), ptr getelementptr (i8, ptr @ethernet_pll_clk, i64 24), ptr getelementptr (i8, ptr @audio_pll_clk, i64 24), ptr getelementptr (i8, ptr @dev_clk, i64 12), ptr getelementptr (i8, ptr @h_clk, i64 16), ptr getelementptr (i8, ptr @ahbprediv_clk, i64 44), ptr getelementptr (i8, ptr @ahb_clk, i64 44), ptr getelementptr (i8, ptr @de_clk, i64 44), ptr getelementptr (i8, ptr @bisp_clk, i64 44), ptr getelementptr (i8, ptr @vce_clk, i64 44), ptr getelementptr (i8, ptr @vde_clk, i64 44), ptr getelementptr (i8, ptr @timer_clk, i64 12), ptr getelementptr (i8, ptr @i2c0_clk, i64 44), ptr getelementptr (i8, ptr @i2c1_clk, i64 44), ptr getelementptr (i8, ptr @i2c2_clk, i64 44), ptr getelementptr (i8, ptr @i2c3_clk, i64 44), ptr getelementptr (i8, ptr @pwm0_clk, i64 44), ptr getelementptr (i8, ptr @pwm1_clk, i64 44), ptr getelementptr (i8, ptr @pwm2_clk, i64 44), ptr getelementptr (i8, ptr @pwm3_clk, i64 44), ptr getelementptr (i8, ptr @pwm4_clk, i64 44), ptr getelementptr (i8, ptr @pwm5_clk, i64 44), ptr getelementptr (i8, ptr @sd0_clk, i64 44), ptr getelementptr (i8, ptr @sd1_clk, i64 44), ptr getelementptr (i8, ptr @sd2_clk, i64 44), ptr getelementptr (i8, ptr @sensor0_clk, i64 44), ptr getelementptr (i8, ptr @sensor1_clk, i64 44), ptr getelementptr (i8, ptr @spi0_clk, i64 12), ptr getelementptr (i8, ptr @spi1_clk, i64 12), ptr getelementptr (i8, ptr @spi2_clk, i64 12), ptr getelementptr (i8, ptr @spi3_clk, i64 12), ptr getelementptr (i8, ptr @uart0_clk, i64 44), ptr getelementptr (i8, ptr @uart1_clk, i64 44), ptr getelementptr (i8, ptr @uart2_clk, i64 44), ptr getelementptr (i8, ptr @uart3_clk, i64 44), ptr getelementptr (i8, ptr @uart4_clk, i64 44), ptr getelementptr (i8, ptr @uart5_clk, i64 44), ptr getelementptr (i8, ptr @uart6_clk, i64 44), ptr getelementptr (i8, ptr @de1_clk, i64 16), ptr getelementptr (i8, ptr @de2_clk, i64 16), ptr getelementptr (i8, ptr @i2srx_clk, i64 44), ptr getelementptr (i8, ptr @i2stx_clk, i64 44), ptr getelementptr (i8, ptr @hdmia_clk, i64 44), ptr getelementptr (i8, ptr @hdmi_clk, i64 12), ptr getelementptr (i8, ptr @spdif_clk, i64 44), ptr getelementptr (i8, ptr @nand_clk, i64 44), ptr getelementptr (i8, ptr @ecc_clk, i64 44), ptr getelementptr (i8, ptr @rmii_ref_clk, i64 16), ptr getelementptr (i8, ptr @gpio_clk, i64 12), ptr getelementptr (i8, ptr @apb_clk, i64 16), ptr getelementptr (i8, ptr @dmac_clk, i64 12), ptr getelementptr (i8, ptr @nic_clk, i64 44), ptr getelementptr (i8, ptr @ethernet_clk, i64 44)] }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"s500_clk_driver\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 630, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 633, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [18 x i8] c"s500_clk_of_match\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 625, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"s500_clk_desc\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 589, i32 28 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 620, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [10 x i8] c"s500_clks\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 409, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"s500_resets\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 532, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"ethernet_pll_clk\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [13 x i8] c"core_pll_clk\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"ddr_pll_clk\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"dev_pll_clk\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [13 x i8] c"nand_pll_clk\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [14 x i8] c"audio_pll_clk\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"display_pll_clk\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [8 x i8] c"dev_clk\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [10 x i8] c"timer_clk\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [9 x i8] c"i2c0_clk\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [9 x i8] c"i2c1_clk\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [9 x i8] c"i2c2_clk\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [9 x i8] c"i2c3_clk\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [8 x i8] c"ahb_clk\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"h_clk\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 197, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant [9 x i8] c"spi0_clk\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [9 x i8] c"spi1_clk\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [9 x i8] c"spi2_clk\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [9 x i8] c"spi3_clk\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"rmii_ref_clk\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"de_clk\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [8 x i8] c"de1_clk\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [8 x i8] c"de2_clk\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [9 x i8] c"hdmi_clk\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [8 x i8] c"apb_clk\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [9 x i8] c"dmac_clk\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [9 x i8] c"gpio_clk\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [13 x i8] c"ethernet_clk\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 102, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 103, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 104, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 107, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 105, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c"clk_audio_pll_table\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 96, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 108, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 106, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 184, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant [14 x i8] c"dev_clk_mux_p\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 110, i32 27 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 110, i32 47 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 193, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 311, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 315, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 319, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 323, i32 8 }
@___asan_gen_.354 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [15 x i8] c"uart_clk_mux_p\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 117, i32 27 }
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 331, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 337, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [10 x i8] c"uart2_clk\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 343, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [10 x i8] c"uart3_clk\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 349, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [10 x i8] c"uart4_clk\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 355, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [10 x i8] c"uart5_clk\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 361, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [10 x i8] c"uart6_clk\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 367, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant [14 x i8] c"pwm_clk_mux_p\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 114, i32 27 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [9 x i8] c"pwm0_clk\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 270, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 114, i32 47 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [9 x i8] c"pwm1_clk\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 276, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [9 x i8] c"pwm2_clk\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 282, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [9 x i8] c"pwm3_clk\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 288, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [9 x i8] c"pwm4_clk\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 294, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [9 x i8] c"pwm5_clk\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 300, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c"std12rate_div_table\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 162, i32 29 }
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"sensor_clk_mux_p\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 112, i32 27 }
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [12 x i8] c"sensor0_clk\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 240, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 112, i32 58 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [12 x i8] c"sensor1_clk\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 246, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant [16 x i8] c"sd_factor_table\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 123, i32 32 }
@___asan_gen_.485 = private unnamed_addr constant [13 x i8] c"sd_clk_mux_p\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 113, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [8 x i8] c"sd0_clk\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 252, i32 8 }
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [8 x i8] c"sd1_clk\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 258, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [8 x i8] c"sd2_clk\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 264, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant [15 x i8] c"bisp_clk_mux_p\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 111, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [9 x i8] c"bisp_clk\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 234, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 218, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [20 x i8] c"ahbprediv_clk_mux_p\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 115, i32 27 }
@___asan_gen_.527 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [14 x i8] c"ahbprediv_clk\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 212, i32 8 }
@___asan_gen_.531 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 189, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 190, i32 8 }
@___asan_gen_.541 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 191, i32 8 }
@___asan_gen_.546 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 192, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [19 x i8] c"rmii_ref_div_table\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 157, i32 29 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 199, i32 8 }
@___asan_gen_.559 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 306, i32 8 }
@___asan_gen_.564 = private unnamed_addr constant [13 x i8] c"de_clk_mux_p\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 118, i32 27 }
@___asan_gen_.567 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.568 = private unnamed_addr constant [16 x i8] c"de_factor_table\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 144, i32 32 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 202, i32 8 }
@___asan_gen_.574 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 203, i32 8 }
@___asan_gen_.579 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [14 x i8] c"i2s_div_table\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 169, i32 29 }
@___asan_gen_.587 = private unnamed_addr constant [14 x i8] c"i2s_clk_mux_p\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 119, i32 27 }
@___asan_gen_.590 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [10 x i8] c"i2srx_clk\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 373, i32 8 }
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [10 x i8] c"i2stx_clk\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 379, i32 8 }
@___asan_gen_.604 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [10 x i8] c"hdmia_clk\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 385, i32 8 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 194, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.613 = private unnamed_addr constant [17 x i8] c"hde_factor_table\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 151, i32 32 }
@___asan_gen_.619 = private unnamed_addr constant [14 x i8] c"hde_clk_mux_p\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 120, i32 27 }
@___asan_gen_.622 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [8 x i8] c"vce_clk\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 222, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [8 x i8] c"vde_clk\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 228, i32 8 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.637 = private unnamed_addr constant [10 x i8] c"spdif_clk\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 391, i32 8 }
@___asan_gen_.640 = private unnamed_addr constant [15 x i8] c"nand_div_table\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 176, i32 29 }
@___asan_gen_.646 = private unnamed_addr constant [15 x i8] c"nand_clk_mux_p\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 121, i32 27 }
@___asan_gen_.649 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [9 x i8] c"nand_clk\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 397, i32 8 }
@___asan_gen_.656 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [8 x i8] c"ecc_clk\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 403, i32 8 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 198, i32 8 }
@___asan_gen_.666 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.667 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 188, i32 8 }
@___asan_gen_.671 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 187, i32 8 }
@___asan_gen_.676 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [14 x i8] c"nic_clk_mux_p\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 116, i32 27 }
@___asan_gen_.681 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [8 x i8] c"nic_clk\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 206, i32 8 }
@___asan_gen_.685 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 327, i32 8 }
@___asan_gen_.688 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.689 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [13 x i8] c"s500_hw_clks\00", align 1
@___asan_gen_.691 = private constant [34 x i8] c"../drivers/clk/actions/owl-s500.c\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 469, i32 35 }
@llvm.compiler.used = appending global [227 x ptr] [ptr @__initcall__kmod_owl_s500__170_642_s500_clk_init1, ptr @s500_clk_probe._entry, ptr @s500_clk_probe._entry_ptr, ptr @s500_clk_driver, ptr @.str, ptr @s500_clk_of_match, ptr @s500_clk_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @s500_clks, ptr @s500_resets, ptr @ethernet_pll_clk, ptr @core_pll_clk, ptr @ddr_pll_clk, ptr @dev_pll_clk, ptr @nand_pll_clk, ptr @audio_pll_clk, ptr @display_pll_clk, ptr @dev_clk, ptr @timer_clk, ptr @i2c0_clk, ptr @i2c1_clk, ptr @i2c2_clk, ptr @i2c3_clk, ptr @ahb_clk, ptr @h_clk, ptr @spi0_clk, ptr @spi1_clk, ptr @spi2_clk, ptr @spi3_clk, ptr @rmii_ref_clk, ptr @de_clk, ptr @de1_clk, ptr @de2_clk, ptr @hdmi_clk, ptr @apb_clk, ptr @dmac_clk, ptr @gpio_clk, ptr @ethernet_clk, ptr @.str.6, ptr @.compoundliteral, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @clk_audio_pll_table, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @dev_clk_mux_p, ptr @.compoundliteral.20, ptr @.str.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @uart_clk_mux_p, ptr @.compoundliteral.38, ptr @uart0_clk, ptr @.str.40, ptr @.compoundliteral.41, ptr @uart1_clk, ptr @.str.43, ptr @.compoundliteral.44, ptr @uart2_clk, ptr @.str.46, ptr @.compoundliteral.47, ptr @uart3_clk, ptr @.str.49, ptr @.compoundliteral.50, ptr @uart4_clk, ptr @.str.52, ptr @.compoundliteral.53, ptr @uart5_clk, ptr @.str.55, ptr @.compoundliteral.56, ptr @uart6_clk, ptr @.str.58, ptr @pwm_clk_mux_p, ptr @.compoundliteral.59, ptr @pwm0_clk, ptr @.str.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @pwm1_clk, ptr @.str.65, ptr @.compoundliteral.66, ptr @pwm2_clk, ptr @.str.68, ptr @.compoundliteral.69, ptr @pwm3_clk, ptr @.str.71, ptr @.compoundliteral.72, ptr @pwm4_clk, ptr @.str.74, ptr @.compoundliteral.75, ptr @pwm5_clk, ptr @std12rate_div_table, ptr @.str.77, ptr @sensor_clk_mux_p, ptr @.compoundliteral.78, ptr @sensor0_clk, ptr @.str.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @sensor1_clk, ptr @sd_factor_table, ptr @.str.84, ptr @sd_clk_mux_p, ptr @.compoundliteral.85, ptr @sd0_clk, ptr @.str.87, ptr @.compoundliteral.88, ptr @sd1_clk, ptr @.str.90, ptr @.compoundliteral.91, ptr @sd2_clk, ptr @bisp_clk_mux_p, ptr @.compoundliteral.93, ptr @bisp_clk, ptr @.str.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @ahbprediv_clk_mux_p, ptr @.compoundliteral.100, ptr @ahbprediv_clk, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @rmii_ref_div_table, ptr @.str.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @de_clk_mux_p, ptr @.compoundliteral.120, ptr @de_factor_table, ptr @.str.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.compoundliteral.126, ptr @i2s_div_table, ptr @.str.127, ptr @i2s_clk_mux_p, ptr @.compoundliteral.128, ptr @i2srx_clk, ptr @.str.130, ptr @.compoundliteral.131, ptr @i2stx_clk, ptr @.str.133, ptr @.compoundliteral.134, ptr @hdmia_clk, ptr @.str.136, ptr @.compoundliteral.137, ptr @.compoundliteral.138, ptr @hde_factor_table, ptr @.str.139, ptr @hde_clk_mux_p, ptr @.compoundliteral.140, ptr @vce_clk, ptr @.str.142, ptr @.compoundliteral.143, ptr @vde_clk, ptr @.str.145, ptr @.compoundliteral.146, ptr @spdif_clk, ptr @nand_div_table, ptr @.str.148, ptr @nand_clk_mux_p, ptr @.compoundliteral.149, ptr @nand_clk, ptr @.str.151, ptr @.compoundliteral.152, ptr @ecc_clk, ptr @.str.154, ptr @.str.155, ptr @.compoundliteral.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @nic_clk_mux_p, ptr @.compoundliteral.164, ptr @nic_clk, ptr @.str.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @s500_hw_clks], section "llvm.metadata"
@0 = internal global [225 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s500_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s500_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s500_clk_desc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s500_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s500_clks to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s500_resets to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethernet_pll_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pll_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_pll_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_pll_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_pll_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_pll_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahb_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_clk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi1_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi2_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmii_ref_clk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de1_clk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de2_clk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_clk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_clk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethernet_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_audio_pll_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_clk_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_clk_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart4_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart5_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart6_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_clk_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm4_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm5_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std12rate_div_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_clk_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor0_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor1_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_factor_table to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_clk_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd0_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd2_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bisp_clk_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bisp_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahbprediv_clk_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahbprediv_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmii_ref_div_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_clk_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_factor_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_div_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_clk_mux_p to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2srx_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2stx_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmia_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hde_factor_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hde_clk_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vde_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_div_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_clk_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nic_clk_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nic_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s500_hw_clks to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s500_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s500_clk_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s500_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @owl_clk_regmap_init(ptr noundef %pdev, ptr noundef nonnull @s500_clk_desc) #4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %of_node3, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @owl_reset_ops, ptr %call.i, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 4), align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %nr_resets, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 3), align 4
  %reset_map = getelementptr inbounds %struct.owl_reset, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %reset_map to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %reset_map, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 5), align 4
  %regmap6 = getelementptr inbounds %struct.owl_reset, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %regmap6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap6, align 4
  %call9 = tail call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %do.end

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %10 = load ptr, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 2), align 4
  %call15 = tail call i32 @owl_clk_probe(ptr noundef %dev, ptr noundef %10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_clk_regmap_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_clk_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !41, !43, !44, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !115, !117, !119, !120, !122, !123, !125, !127, !129, !130, !132, !133, !135, !137, !139, !140, !141, !143, !144, !146, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !167, !168, !170, !172, !173, !175, !177, !178, !180, !181, !183, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !201, !203, !204, !206, !207, !209, !210, !212, !214, !216, !217, !219, !220, !221, !223, !224, !226, !227, !229, !231, !233, !234, !236, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__initcall__kmod_owl_s500__170_642_s500_clk_init1, !1, !"__initcall__kmod_owl_s500__170_642_s500_clk_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/actions/owl-s500.c", i32 642, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/actions/owl-s500.c", i32 633, i32 11}
!4 = !{ptr @s500_clk_driver, !5, !"s500_clk_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/actions/owl-s500.c", i32 630, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/actions/owl-s500.c", i32 620, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @s500_clk_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @s500_clk_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @s500_clk_desc, !15, !"s500_clk_desc", i1 false, i1 false}
!15 = !{!"../drivers/clk/actions/owl-s500.c", i32 589, i32 28}
!16 = !{ptr @s500_clks, !17, !"s500_clks", i1 false, i1 false}
!17 = !{!"../drivers/clk/actions/owl-s500.c", i32 409, i32 31}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/actions/owl-s500.c", i32 102, i32 8}
!20 = !{ptr @ethernet_pll_clk, !19, !"ethernet_pll_clk", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/actions/owl-s500.c", i32 103, i32 8}
!23 = !{ptr @core_pll_clk, !22, !"core_pll_clk", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/actions/owl-s500.c", i32 104, i32 8}
!26 = !{ptr @ddr_pll_clk, !25, !"ddr_pll_clk", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/actions/owl-s500.c", i32 107, i32 8}
!29 = !{ptr @dev_pll_clk, !28, !"dev_pll_clk", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/actions/owl-s500.c", i32 105, i32 8}
!32 = !{ptr @nand_pll_clk, !31, !"nand_pll_clk", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/actions/owl-s500.c", i32 108, i32 8}
!35 = !{ptr @audio_pll_clk, !34, !"audio_pll_clk", i1 false, i1 false}
!36 = !{ptr @clk_audio_pll_table, !37, !"clk_audio_pll_table", i1 false, i1 false}
!37 = !{!"../drivers/clk/actions/owl-s500.c", i32 96, i32 35}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/actions/owl-s500.c", i32 106, i32 8}
!40 = !{ptr @display_pll_clk, !39, !"display_pll_clk", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/actions/owl-s500.c", i32 184, i32 8}
!43 = !{ptr @dev_clk, !42, !"dev_clk", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/actions/owl-s500.c", i32 110, i32 47}
!46 = !{ptr @dev_clk_mux_p, !47, !"dev_clk_mux_p", i1 false, i1 false}
!47 = !{!"../drivers/clk/actions/owl-s500.c", i32 110, i32 27}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/actions/owl-s500.c", i32 193, i32 8}
!50 = !{ptr @timer_clk, !49, !"timer_clk", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/actions/owl-s500.c", i32 311, i32 8}
!53 = !{ptr @i2c0_clk, !52, !"i2c0_clk", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/actions/owl-s500.c", i32 315, i32 8}
!56 = !{ptr @i2c1_clk, !55, !"i2c1_clk", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/actions/owl-s500.c", i32 319, i32 8}
!59 = !{ptr @i2c2_clk, !58, !"i2c2_clk", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/actions/owl-s500.c", i32 323, i32 8}
!62 = !{ptr @i2c3_clk, !61, !"i2c3_clk", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/actions/owl-s500.c", i32 331, i32 8}
!65 = !{ptr @uart0_clk, !64, !"uart0_clk", i1 false, i1 false}
!66 = !{ptr @uart_clk_mux_p, !67, !"uart_clk_mux_p", i1 false, i1 false}
!67 = !{!"../drivers/clk/actions/owl-s500.c", i32 117, i32 27}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/actions/owl-s500.c", i32 337, i32 8}
!70 = !{ptr @uart1_clk, !69, !"uart1_clk", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/actions/owl-s500.c", i32 343, i32 8}
!73 = !{ptr @uart2_clk, !72, !"uart2_clk", i1 false, i1 false}
!74 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/actions/owl-s500.c", i32 349, i32 8}
!76 = !{ptr @uart3_clk, !75, !"uart3_clk", i1 false, i1 false}
!77 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/actions/owl-s500.c", i32 355, i32 8}
!79 = !{ptr @uart4_clk, !78, !"uart4_clk", i1 false, i1 false}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/actions/owl-s500.c", i32 361, i32 8}
!82 = !{ptr @uart5_clk, !81, !"uart5_clk", i1 false, i1 false}
!83 = !{ptr @.str.55, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/actions/owl-s500.c", i32 367, i32 8}
!85 = !{ptr @uart6_clk, !84, !"uart6_clk", i1 false, i1 false}
!86 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/actions/owl-s500.c", i32 270, i32 8}
!88 = !{ptr @pwm0_clk, !87, !"pwm0_clk", i1 false, i1 false}
!89 = !{ptr @.str.61, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/actions/owl-s500.c", i32 114, i32 47}
!91 = !{ptr @pwm_clk_mux_p, !92, !"pwm_clk_mux_p", i1 false, i1 false}
!92 = !{!"../drivers/clk/actions/owl-s500.c", i32 114, i32 27}
!93 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/actions/owl-s500.c", i32 276, i32 8}
!95 = !{ptr @pwm1_clk, !94, !"pwm1_clk", i1 false, i1 false}
!96 = !{ptr @.str.65, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/actions/owl-s500.c", i32 282, i32 8}
!98 = !{ptr @pwm2_clk, !97, !"pwm2_clk", i1 false, i1 false}
!99 = !{ptr @.str.68, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/actions/owl-s500.c", i32 288, i32 8}
!101 = !{ptr @pwm3_clk, !100, !"pwm3_clk", i1 false, i1 false}
!102 = !{ptr @.str.71, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/actions/owl-s500.c", i32 294, i32 8}
!104 = !{ptr @pwm4_clk, !103, !"pwm4_clk", i1 false, i1 false}
!105 = !{ptr @.str.74, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/actions/owl-s500.c", i32 300, i32 8}
!107 = !{ptr @pwm5_clk, !106, !"pwm5_clk", i1 false, i1 false}
!108 = !{ptr @.str.77, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/actions/owl-s500.c", i32 240, i32 8}
!110 = !{ptr @sensor0_clk, !109, !"sensor0_clk", i1 false, i1 false}
!111 = !{ptr @std12rate_div_table, !112, !"std12rate_div_table", i1 false, i1 false}
!112 = !{!"../drivers/clk/actions/owl-s500.c", i32 162, i32 29}
!113 = !{ptr @.str.80, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/actions/owl-s500.c", i32 112, i32 58}
!115 = !{ptr @sensor_clk_mux_p, !116, !"sensor_clk_mux_p", i1 false, i1 false}
!116 = !{!"../drivers/clk/actions/owl-s500.c", i32 112, i32 27}
!117 = !{ptr @.str.81, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/actions/owl-s500.c", i32 246, i32 8}
!119 = !{ptr @sensor1_clk, !118, !"sensor1_clk", i1 false, i1 false}
!120 = !{ptr @.str.84, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/actions/owl-s500.c", i32 252, i32 8}
!122 = !{ptr @sd0_clk, !121, !"sd0_clk", i1 false, i1 false}
!123 = !{ptr @sd_factor_table, !124, !"sd_factor_table", i1 false, i1 false}
!124 = !{!"../drivers/clk/actions/owl-s500.c", i32 123, i32 32}
!125 = !{ptr @sd_clk_mux_p, !126, !"sd_clk_mux_p", i1 false, i1 false}
!126 = !{!"../drivers/clk/actions/owl-s500.c", i32 113, i32 27}
!127 = !{ptr @.str.87, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/actions/owl-s500.c", i32 258, i32 8}
!129 = !{ptr @sd1_clk, !128, !"sd1_clk", i1 false, i1 false}
!130 = !{ptr @.str.90, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/actions/owl-s500.c", i32 264, i32 8}
!132 = !{ptr @sd2_clk, !131, !"sd2_clk", i1 false, i1 false}
!133 = !{ptr @bisp_clk, !134, !"bisp_clk", i1 false, i1 false}
!134 = !{!"../drivers/clk/actions/owl-s500.c", i32 234, i32 8}
!135 = !{ptr @bisp_clk_mux_p, !136, !"bisp_clk_mux_p", i1 false, i1 false}
!136 = !{!"../drivers/clk/actions/owl-s500.c", i32 111, i32 27}
!137 = !{ptr @.str.95, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/actions/owl-s500.c", i32 218, i32 8}
!139 = !{ptr @.str.96, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ahb_clk, !138, !"ahb_clk", i1 false, i1 false}
!141 = !{ptr @.str.99, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/actions/owl-s500.c", i32 212, i32 8}
!143 = !{ptr @ahbprediv_clk, !142, !"ahbprediv_clk", i1 false, i1 false}
!144 = !{ptr @ahbprediv_clk_mux_p, !145, !"ahbprediv_clk_mux_p", i1 false, i1 false}
!145 = !{!"../drivers/clk/actions/owl-s500.c", i32 115, i32 27}
!146 = !{ptr @h_clk, !147, !"h_clk", i1 false, i1 false}
!147 = !{!"../drivers/clk/actions/owl-s500.c", i32 197, i32 8}
!148 = !{ptr @.str.104, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/actions/owl-s500.c", i32 189, i32 8}
!150 = !{ptr @spi0_clk, !149, !"spi0_clk", i1 false, i1 false}
!151 = !{ptr @.str.107, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/actions/owl-s500.c", i32 190, i32 8}
!153 = !{ptr @spi1_clk, !152, !"spi1_clk", i1 false, i1 false}
!154 = !{ptr @.str.110, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/actions/owl-s500.c", i32 191, i32 8}
!156 = !{ptr @spi2_clk, !155, !"spi2_clk", i1 false, i1 false}
!157 = !{ptr @.str.113, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/actions/owl-s500.c", i32 192, i32 8}
!159 = !{ptr @spi3_clk, !158, !"spi3_clk", i1 false, i1 false}
!160 = !{ptr @.str.116, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/actions/owl-s500.c", i32 199, i32 8}
!162 = !{ptr @rmii_ref_clk, !161, !"rmii_ref_clk", i1 false, i1 false}
!163 = !{ptr @rmii_ref_div_table, !164, !"rmii_ref_div_table", i1 false, i1 false}
!164 = !{!"../drivers/clk/actions/owl-s500.c", i32 157, i32 29}
!165 = !{ptr @.str.119, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/actions/owl-s500.c", i32 306, i32 8}
!167 = !{ptr @de_clk, !166, !"de_clk", i1 false, i1 false}
!168 = !{ptr @de_clk_mux_p, !169, !"de_clk_mux_p", i1 false, i1 false}
!169 = !{!"../drivers/clk/actions/owl-s500.c", i32 118, i32 27}
!170 = !{ptr @.str.121, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/actions/owl-s500.c", i32 202, i32 8}
!172 = !{ptr @de1_clk, !171, !"de1_clk", i1 false, i1 false}
!173 = !{ptr @de_factor_table, !174, !"de_factor_table", i1 false, i1 false}
!174 = !{!"../drivers/clk/actions/owl-s500.c", i32 144, i32 32}
!175 = !{ptr @.str.124, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/actions/owl-s500.c", i32 203, i32 8}
!177 = !{ptr @de2_clk, !176, !"de2_clk", i1 false, i1 false}
!178 = !{ptr @.str.127, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/actions/owl-s500.c", i32 373, i32 8}
!180 = !{ptr @i2srx_clk, !179, !"i2srx_clk", i1 false, i1 false}
!181 = !{ptr @i2s_div_table, !182, !"i2s_div_table", i1 false, i1 false}
!182 = !{!"../drivers/clk/actions/owl-s500.c", i32 169, i32 29}
!183 = !{ptr @i2s_clk_mux_p, !184, !"i2s_clk_mux_p", i1 false, i1 false}
!184 = !{!"../drivers/clk/actions/owl-s500.c", i32 119, i32 27}
!185 = !{ptr @.str.130, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/actions/owl-s500.c", i32 379, i32 8}
!187 = !{ptr @i2stx_clk, !186, !"i2stx_clk", i1 false, i1 false}
!188 = !{ptr @.str.133, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/actions/owl-s500.c", i32 385, i32 8}
!190 = !{ptr @hdmia_clk, !189, !"hdmia_clk", i1 false, i1 false}
!191 = !{ptr @.str.136, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/actions/owl-s500.c", i32 194, i32 8}
!193 = !{ptr @hdmi_clk, !192, !"hdmi_clk", i1 false, i1 false}
!194 = !{ptr @.str.139, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/actions/owl-s500.c", i32 222, i32 8}
!196 = !{ptr @vce_clk, !195, !"vce_clk", i1 false, i1 false}
!197 = !{ptr @hde_factor_table, !198, !"hde_factor_table", i1 false, i1 false}
!198 = !{!"../drivers/clk/actions/owl-s500.c", i32 151, i32 32}
!199 = !{ptr @hde_clk_mux_p, !200, !"hde_clk_mux_p", i1 false, i1 false}
!200 = !{!"../drivers/clk/actions/owl-s500.c", i32 120, i32 27}
!201 = !{ptr @.str.142, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/actions/owl-s500.c", i32 228, i32 8}
!203 = !{ptr @vde_clk, !202, !"vde_clk", i1 false, i1 false}
!204 = !{ptr @.str.145, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/actions/owl-s500.c", i32 391, i32 8}
!206 = !{ptr @spdif_clk, !205, !"spdif_clk", i1 false, i1 false}
!207 = !{ptr @.str.148, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/actions/owl-s500.c", i32 397, i32 8}
!209 = !{ptr @nand_clk, !208, !"nand_clk", i1 false, i1 false}
!210 = !{ptr @nand_div_table, !211, !"nand_div_table", i1 false, i1 false}
!211 = !{!"../drivers/clk/actions/owl-s500.c", i32 176, i32 29}
!212 = !{ptr @nand_clk_mux_p, !213, !"nand_clk_mux_p", i1 false, i1 false}
!213 = !{!"../drivers/clk/actions/owl-s500.c", i32 121, i32 27}
!214 = !{ptr @.str.151, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/actions/owl-s500.c", i32 403, i32 8}
!216 = !{ptr @ecc_clk, !215, !"ecc_clk", i1 false, i1 false}
!217 = !{ptr @.str.154, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/actions/owl-s500.c", i32 198, i32 8}
!219 = !{ptr @.str.155, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @apb_clk, !218, !"apb_clk", i1 false, i1 false}
!221 = !{ptr @.str.158, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/actions/owl-s500.c", i32 188, i32 8}
!223 = !{ptr @dmac_clk, !222, !"dmac_clk", i1 false, i1 false}
!224 = !{ptr @.str.161, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/actions/owl-s500.c", i32 187, i32 8}
!226 = !{ptr @gpio_clk, !225, !"gpio_clk", i1 false, i1 false}
!227 = !{ptr @nic_clk, !228, !"nic_clk", i1 false, i1 false}
!228 = !{!"../drivers/clk/actions/owl-s500.c", i32 206, i32 8}
!229 = !{ptr @nic_clk_mux_p, !230, !"nic_clk_mux_p", i1 false, i1 false}
!230 = !{!"../drivers/clk/actions/owl-s500.c", i32 116, i32 27}
!231 = !{ptr @.str.166, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/actions/owl-s500.c", i32 327, i32 8}
!233 = !{ptr @ethernet_clk, !232, !"ethernet_clk", i1 false, i1 false}
!234 = !{ptr @s500_hw_clks, !235, !"s500_hw_clks", i1 false, i1 false}
!235 = !{!"../drivers/clk/actions/owl-s500.c", i32 469, i32 35}
!236 = !{ptr @s500_resets, !237, !"s500_resets", i1 false, i1 false}
!237 = !{!"../drivers/clk/actions/owl-s500.c", i32 532, i32 35}
!238 = !{ptr @s500_clk_of_match, !239, !"s500_clk_of_match", i1 false, i1 false}
!239 = !{!"../drivers/clk/actions/owl-s500.c", i32 625, i32 34}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
