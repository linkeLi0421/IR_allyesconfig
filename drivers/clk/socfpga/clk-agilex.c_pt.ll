; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-agilex.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-agilex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stratix10_pll_clock = type { i32, ptr, ptr, i8, i32, i32 }
%struct.stratix10_perip_c_clock = type { i32, ptr, ptr, ptr, i8, i32, i32 }
%struct.stratix10_perip_cnt_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i8, i32, i32 }
%struct.stratix10_gate_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i8, i32, i8, i8, i32, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.n5x_perip_c_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i32 }
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
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.stratix10_clock_data = type { %struct.clk_hw_onecell_data, ptr }

@__initcall__kmod_clk_agilex__183_569_agilex_clk_init1 = internal global ptr @agilex_clk_init, section ".initcall1.init", align 4
@agilex_clkmgr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @agilex_clkmgr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @agilex_clkmgr_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"agilex-clkmgr\00", [18 x i8] zeroinitializer }, align 32
@agilex_clkmgr_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,agilex-clkmgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @agilex_clkmgr_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,easic-n5x-clkmgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @n5x_clkmgr_init }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@agilex_pll_clks = internal constant { [3 x %struct.stratix10_pll_clock], [56 x i8] } { [3 x %struct.stratix10_pll_clock] [%struct.stratix10_pll_clock { i32 17, ptr @.str.4, ptr @boot_mux, i8 2, i32 0, i32 0 }, %struct.stratix10_pll_clock { i32 5, ptr @.str.5, ptr @pll_mux, i8 3, i32 0, i32 72 }, %struct.stratix10_pll_clock { i32 10, ptr @.str.6, ptr @pll_mux, i8 3, i32 0, i32 156 }], [56 x i8] zeroinitializer }, align 32
@agilex_main_perip_c_clks = internal constant { [8 x %struct.stratix10_perip_c_clock], [32 x i8] } { [8 x %struct.stratix10_perip_c_clock] [%struct.stratix10_perip_c_clock { i32 6, ptr @.str.11, ptr @.str.5, ptr null, i8 1, i32 0, i32 88 }, %struct.stratix10_perip_c_clock { i32 7, ptr @.str.12, ptr @.str.5, ptr null, i8 1, i32 0, i32 92 }, %struct.stratix10_perip_c_clock { i32 8, ptr @.str.13, ptr @.str.5, ptr null, i8 1, i32 0, i32 100 }, %struct.stratix10_perip_c_clock { i32 9, ptr @.str.14, ptr @.str.5, ptr null, i8 1, i32 0, i32 104 }, %struct.stratix10_perip_c_clock { i32 11, ptr @.str.15, ptr @.str.6, ptr null, i8 1, i32 0, i32 172 }, %struct.stratix10_perip_c_clock { i32 12, ptr @.str.16, ptr @.str.6, ptr null, i8 1, i32 0, i32 176 }, %struct.stratix10_perip_c_clock { i32 13, ptr @.str.17, ptr @.str.6, ptr null, i8 1, i32 0, i32 184 }, %struct.stratix10_perip_c_clock { i32 14, ptr @.str.18, ptr @.str.6, ptr null, i8 1, i32 0, i32 188 }], [32 x i8] zeroinitializer }, align 32
@agilex_main_perip_cnt_clks = internal constant { [11 x %struct.stratix10_perip_cnt_clock], [104 x i8] } { [11 x %struct.stratix10_perip_cnt_clock] [%struct.stratix10_perip_cnt_clock { i32 15, ptr @.str.20, ptr null, ptr @mpu_free_mux, i8 5, i32 0, i32 60, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 19, ptr @.str.21, ptr null, ptr @noc_free_mux, i8 5, i32 0, i32 64, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 3, ptr @.str.22, ptr null, ptr @noc_mux, i8 2, i32 0, i32 0, i8 4, i32 48, i32 1 }, %struct.stratix10_perip_cnt_clock { i32 22, ptr @.str.23, ptr null, ptr @emaca_free_mux, i8 5, i32 0, i32 212, i8 0, i32 136, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 23, ptr @.str.24, ptr null, ptr @emacb_free_mux, i8 5, i32 0, i32 216, i8 0, i32 136, i32 1 }, %struct.stratix10_perip_cnt_clock { i32 24, ptr @.str.25, ptr null, ptr @emac_ptp_free_mux, i8 5, i32 0, i32 220, i8 0, i32 136, i32 2 }, %struct.stratix10_perip_cnt_clock { i32 25, ptr @.str.26, ptr null, ptr @gpio_db_free_mux, i8 5, i32 0, i32 224, i8 0, i32 136, i32 3 }, %struct.stratix10_perip_cnt_clock { i32 26, ptr @.str.27, ptr null, ptr @sdmmc_free_mux, i8 5, i32 0, i32 228, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 27, ptr @.str.28, ptr null, ptr @s2f_usr0_free_mux, i8 5, i32 0, i32 232, i8 0, i32 48, i32 2 }, %struct.stratix10_perip_cnt_clock { i32 28, ptr @.str.29, ptr null, ptr @s2f_usr1_free_mux, i8 5, i32 0, i32 236, i8 0, i32 136, i32 5 }, %struct.stratix10_perip_cnt_clock { i32 29, ptr @.str.30, ptr null, ptr @psi_ref_free_mux, i8 5, i32 0, i32 240, i8 0, i32 136, i32 6 }], [104 x i8] zeroinitializer }, align 32
@agilex_gate_clks = internal constant { [24 x %struct.stratix10_gate_clock], [288 x i8] } { [24 x %struct.stratix10_gate_clock] [%struct.stratix10_gate_clock { i32 30, ptr @.str.32, ptr null, ptr @mpu_mux, i8 2, i32 0, i32 36, i8 0, i32 0, i8 0, i8 0, i32 48, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 32, ptr @.str.33, ptr @.str.32, ptr null, i8 1, i32 0, i32 36, i8 0, i32 0, i8 0, i8 0, i32 0, i8 0, i8 4 }, %struct.stratix10_gate_clock { i32 16, ptr @.str.34, ptr @.str.32, ptr null, i8 1, i32 0, i32 36, i8 0, i32 0, i8 0, i8 0, i32 0, i8 0, i8 2 }, %struct.stratix10_gate_clock { i32 33, ptr @.str.35, ptr null, ptr @noc_mux, i8 2, i32 0, i32 36, i8 1, i32 68, i8 0, i8 2, i32 48, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 34, ptr @.str.36, ptr null, ptr @noc_mux, i8 2, i32 0, i32 36, i8 2, i32 68, i8 8, i8 2, i32 48, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 35, ptr @.str.37, ptr null, ptr @noc_mux, i8 2, i32 2048, i32 36, i8 3, i32 68, i8 16, i8 2, i32 48, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 36, ptr @.str.38, ptr null, ptr @noc_mux, i8 2, i32 0, i32 36, i8 4, i32 68, i8 24, i8 2, i32 48, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 37, ptr @.str.39, ptr null, ptr @noc_mux, i8 2, i32 0, i32 36, i8 4, i32 68, i8 26, i8 2, i32 48, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 38, ptr @.str.40, ptr @.str.38, ptr null, i8 1, i32 0, i32 36, i8 4, i32 68, i8 28, i8 1, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 39, ptr @.str.41, ptr null, ptr @noc_mux, i8 2, i32 0, i32 36, i8 5, i32 0, i8 0, i8 0, i32 48, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 41, ptr @.str.42, ptr null, ptr @emac_mux, i8 3, i32 0, i32 124, i8 0, i32 0, i8 0, i8 0, i32 148, i8 26, i8 0 }, %struct.stratix10_gate_clock { i32 43, ptr @.str.43, ptr null, ptr @emac_mux, i8 3, i32 0, i32 124, i8 1, i32 0, i8 0, i8 0, i32 148, i8 27, i8 0 }, %struct.stratix10_gate_clock { i32 44, ptr @.str.44, ptr null, ptr @emac_mux, i8 3, i32 0, i32 124, i8 2, i32 0, i8 0, i8 0, i32 148, i8 28, i8 0 }, %struct.stratix10_gate_clock { i32 45, ptr @.str.45, ptr null, ptr @emac_ptp_mux, i8 2, i32 0, i32 124, i8 3, i32 0, i8 0, i8 0, i32 136, i8 2, i8 0 }, %struct.stratix10_gate_clock { i32 46, ptr @.str.46, ptr null, ptr @gpio_db_mux, i8 2, i32 0, i32 124, i8 4, i32 152, i8 0, i8 16, i32 136, i8 3, i8 0 }, %struct.stratix10_gate_clock { i32 50, ptr @.str.47, ptr null, ptr @sdmmc_mux, i8 2, i32 0, i32 124, i8 5, i32 0, i8 0, i8 0, i32 136, i8 4, i8 4 }, %struct.stratix10_gate_clock { i32 40, ptr @.str.48, ptr null, ptr @s2f_user0_mux, i8 2, i32 0, i32 36, i8 6, i32 0, i8 0, i8 0, i32 48, i8 2, i8 0 }, %struct.stratix10_gate_clock { i32 49, ptr @.str.49, ptr null, ptr @s2f_user1_mux, i8 2, i32 0, i32 124, i8 6, i32 0, i8 0, i8 0, i32 136, i8 5, i8 0 }, %struct.stratix10_gate_clock { i32 48, ptr @.str.50, ptr null, ptr @psi_mux, i8 2, i32 0, i32 124, i8 7, i32 0, i8 0, i8 0, i32 136, i8 6, i8 0 }, %struct.stratix10_gate_clock { i32 52, ptr @.str.51, ptr @.str.36, ptr null, i8 1, i32 0, i32 124, i8 8, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 51, ptr @.str.52, ptr @.str.36, ptr null, i8 1, i32 0, i32 124, i8 9, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 53, ptr @.str.53, ptr @.str.36, ptr null, i8 1, i32 0, i32 124, i8 10, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 47, ptr @.str.54, ptr @.str.53, ptr null, i8 1, i32 0, i32 124, i8 10, i32 0, i8 0, i8 0, i32 0, i8 0, i8 4 }, %struct.stratix10_gate_clock { i32 54, ptr @.str.55, ptr @.str.53, ptr null, i8 1, i32 0, i32 124, i8 10, i32 0, i8 0, i8 0, i32 0, i8 0, i8 4 }], [288 x i8] zeroinitializer }, align 32
@agilex_clk_register_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to register clock %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"agilex_clk_register_pll\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/socfpga/clk-agilex.c\00", [63 x i8] zeroinitializer }, align 32
@agilex_clk_register_pll._entry_ptr = internal global ptr @agilex_clk_register_pll._entry, section ".printk_index", align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boot_clk\00", [23 x i8] zeroinitializer }, align 32
@boot_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_pll\00", [23 x i8] zeroinitializer }, align 32
@pll_mux = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"osc1\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cb-intosc-hs-div2-clk\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f2s-free-clk\00", [19 x i8] zeroinitializer }, align 32
@agilex_clk_register_c_perip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.10, ptr @.str.3, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"agilex_clk_register_c_perip\00", [36 x i8] zeroinitializer }, align 32
@agilex_clk_register_c_perip._entry_ptr = internal global ptr @agilex_clk_register_c_perip._entry, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_pll_c0\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_pll_c1\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_pll_c2\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_pll_c3\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_pll_c0\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_pll_c1\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_pll_c2\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_pll_c3\00", [20 x i8] zeroinitializer }, align 32
@agilex_clk_register_cnt_perip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.19, ptr @.str.3, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"agilex_clk_register_cnt_perip\00", [34 x i8] zeroinitializer }, align 32
@agilex_clk_register_cnt_perip._entry_ptr = internal global ptr @agilex_clk_register_cnt_perip._entry, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpu_free_clk\00", [19 x i8] zeroinitializer }, align 32
@mpu_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.15, ptr @.str.15, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"noc_free_clk\00", [19 x i8] zeroinitializer }, align 32
@noc_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.12, ptr @.str.12, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.16, ptr @.str.16, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4_sys_free_clk\00", [16 x i8] zeroinitializer }, align 32
@noc_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.21, ptr @.str.21, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emaca_free_clk\00", [17 x i8] zeroinitializer }, align 32
@emaca_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.13, ptr @.str.13, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.17, ptr @.str.17, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emacb_free_clk\00", [17 x i8] zeroinitializer }, align 32
@emacb_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.14, ptr @.str.14, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.18, ptr @.str.18, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emac_ptp_free_clk\00", [46 x i8] zeroinitializer }, align 32
@emac_ptp_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.14, ptr @.str.14, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.18, ptr @.str.18, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio_db_free_clk\00", [47 x i8] zeroinitializer }, align 32
@gpio_db_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.14, ptr @.str.14, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.18, ptr @.str.18, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdmmc_free_clk\00", [17 x i8] zeroinitializer }, align 32
@sdmmc_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.14, ptr @.str.14, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.18, ptr @.str.18, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s2f_user0_free_clk\00", [45 x i8] zeroinitializer }, align 32
@s2f_usr0_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.13, ptr @.str.13, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.17, ptr @.str.17, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s2f_user1_free_clk\00", [45 x i8] zeroinitializer }, align 32
@s2f_usr1_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.13, ptr @.str.13, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.17, ptr @.str.17, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psi_ref_free_clk\00", [47 x i8] zeroinitializer }, align 32
@psi_ref_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.13, ptr @.str.13, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.17, ptr @.str.17, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [48 x i8] zeroinitializer }, align 32
@agilex_clk_register_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.31, ptr @.str.3, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"agilex_clk_register_gate\00", [39 x i8] zeroinitializer }, align 32
@agilex_clk_register_gate._entry_ptr = internal global ptr @agilex_clk_register_gate._entry, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpu_clk\00", [24 x i8] zeroinitializer }, align 32
@mpu_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.20, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mpu_periph_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpu_ccu_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4_main_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4_mp_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4_sp_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs_at_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_trace_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs_pdbg_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_timer_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac0_clk\00", [22 x i8] zeroinitializer }, align 32
@emac_mux = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr @.str.23, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emac_ptp_clk\00", [19 x i8] zeroinitializer }, align 32
@emac_ptp_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.25, ptr @.str.25, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_db_clk\00", [20 x i8] zeroinitializer }, align 32
@gpio_db_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.26, ptr @.str.26, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdmmc_clk\00", [22 x i8] zeroinitializer }, align 32
@sdmmc_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.27, ptr @.str.27, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s2f_user0_clk\00", [18 x i8] zeroinitializer }, align 32
@s2f_user0_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.28, ptr @.str.28, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s2f_user1_clk\00", [18 x i8] zeroinitializer }, align 32
@s2f_user1_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.29, ptr @.str.29, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"psi_ref_clk\00", [20 x i8] zeroinitializer }, align 32
@psi_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.30, ptr @.str.30, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr @.str.4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_m_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nand_x_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nand_ecc_clk\00", [19 x i8] zeroinitializer }, align 32
@n5x_main_perip_c_clks = internal constant { [8 x %struct.n5x_perip_c_clock], [64 x i8] } { [8 x %struct.n5x_perip_c_clock] [%struct.n5x_perip_c_clock { i32 6, ptr @.str.11, ptr @.str.5, ptr null, i8 1, i32 0, i32 84, i32 0 }, %struct.n5x_perip_c_clock { i32 7, ptr @.str.12, ptr @.str.5, ptr null, i8 1, i32 0, i32 84, i32 8 }, %struct.n5x_perip_c_clock { i32 8, ptr @.str.13, ptr @.str.5, ptr null, i8 1, i32 0, i32 84, i32 16 }, %struct.n5x_perip_c_clock { i32 9, ptr @.str.14, ptr @.str.5, ptr null, i8 1, i32 0, i32 84, i32 24 }, %struct.n5x_perip_c_clock { i32 11, ptr @.str.15, ptr @.str.6, ptr null, i8 1, i32 0, i32 168, i32 0 }, %struct.n5x_perip_c_clock { i32 12, ptr @.str.16, ptr @.str.6, ptr null, i8 1, i32 0, i32 168, i32 8 }, %struct.n5x_perip_c_clock { i32 13, ptr @.str.17, ptr @.str.6, ptr null, i8 1, i32 0, i32 168, i32 16 }, %struct.n5x_perip_c_clock { i32 14, ptr @.str.18, ptr @.str.6, ptr null, i8 1, i32 0, i32 168, i32 24 }], [64 x i8] zeroinitializer }, align 32
@n5x_clk_register_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.56, ptr @.str.3, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"n5x_clk_register_pll\00", [43 x i8] zeroinitializer }, align 32
@n5x_clk_register_pll._entry_ptr = internal global ptr @n5x_clk_register_pll._entry, section ".printk_index", align 4
@n5x_clk_register_c_perip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.57, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"n5x_clk_register_c_perip\00", [39 x i8] zeroinitializer }, align 32
@n5x_clk_register_c_perip._entry_ptr = internal global ptr @n5x_clk_register_c_perip._entry, section ".printk_index", align 4
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"agilex_clkmgr_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 556, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 559, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"agilex_clkmgr_match_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 548, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"agilex_pll_clks\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 227, i32 41 }
@___asan_gen_.70 = private unnamed_addr constant [25 x i8] c"agilex_main_perip_c_clks\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 247, i32 45 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"agilex_main_perip_cnt_clks\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 258, i32 47 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"agilex_gate_clks\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 283, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 426, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 228, i32 21 }
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"boot_mux\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 24, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 230, i32 25 }
@___asan_gen_.100 = private unnamed_addr constant [8 x i8] c"pll_mux\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 15, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 232, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 25, i32 15 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 27, i32 15 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 20, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 367, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 248, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 249, i32 28 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 250, i32 28 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 251, i32 28 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 252, i32 30 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 253, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 254, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 255, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 386, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 259, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"mpu_free_mux\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 31, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 261, i32 25 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"noc_free_mux\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 44, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 263, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant [8 x i8] c"noc_mux\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 177, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 265, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"emaca_free_mux\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 57, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 267, i32 28 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"emacb_free_mux\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 70, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 269, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"emac_ptp_free_mux\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 83, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 271, i32 29 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"gpio_db_free_mux\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 96, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 273, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"sdmmc_free_mux\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 122, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 275, i32 31 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"s2f_usr0_free_mux\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 135, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 277, i32 31 }
@___asan_gen_.208 = private unnamed_addr constant [18 x i8] c"s2f_usr1_free_mux\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 148, i32 37 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 279, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"psi_ref_free_mux\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 109, i32 37 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 406, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 284, i32 20 }
@___asan_gen_.226 = private unnamed_addr constant [8 x i8] c"mpu_mux\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 161, i32 37 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 286, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 288, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 290, i32 24 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 292, i32 22 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 298, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 300, i32 22 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 302, i32 25 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 304, i32 24 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 306, i32 25 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 308, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant [9 x i8] c"emac_mux\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 168, i32 37 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 310, i32 22 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 312, i32 22 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 314, i32 25 }
@___asan_gen_.271 = private unnamed_addr constant [13 x i8] c"emac_ptp_mux\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 219, i32 37 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 316, i32 24 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"gpio_db_mux\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 212, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 318, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant [10 x i8] c"sdmmc_mux\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 184, i32 37 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 320, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant [14 x i8] c"s2f_user0_mux\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 191, i32 37 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 322, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant [14 x i8] c"s2f_user1_mux\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 198, i32 37 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 324, i32 24 }
@___asan_gen_.301 = private unnamed_addr constant [8 x i8] c"psi_mux\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 205, i32 37 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 326, i32 20 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 328, i32 22 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 330, i32 23 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 332, i32 21 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 334, i32 25 }
@___asan_gen_.319 = private unnamed_addr constant [22 x i8] c"n5x_main_perip_c_clks\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 236, i32 39 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 446, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private constant [36 x i8] c"../drivers/clk/socfpga/clk-agilex.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 348, i32 4 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__initcall__kmod_clk_agilex__183_569_agilex_clk_init1, ptr @agilex_clk_register_c_perip._entry, ptr @agilex_clk_register_c_perip._entry_ptr, ptr @agilex_clk_register_cnt_perip._entry, ptr @agilex_clk_register_cnt_perip._entry_ptr, ptr @agilex_clk_register_gate._entry, ptr @agilex_clk_register_gate._entry_ptr, ptr @agilex_clk_register_pll._entry, ptr @agilex_clk_register_pll._entry_ptr, ptr @n5x_clk_register_c_perip._entry, ptr @n5x_clk_register_c_perip._entry_ptr, ptr @n5x_clk_register_pll._entry, ptr @n5x_clk_register_pll._entry_ptr, ptr @agilex_clkmgr_driver, ptr @.str, ptr @agilex_clkmgr_match_table, ptr @agilex_pll_clks, ptr @agilex_main_perip_c_clks, ptr @agilex_main_perip_cnt_clks, ptr @agilex_gate_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @boot_mux, ptr @.str.5, ptr @pll_mux, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @mpu_free_mux, ptr @.str.21, ptr @noc_free_mux, ptr @.str.22, ptr @noc_mux, ptr @.str.23, ptr @emaca_free_mux, ptr @.str.24, ptr @emacb_free_mux, ptr @.str.25, ptr @emac_ptp_free_mux, ptr @.str.26, ptr @gpio_db_free_mux, ptr @.str.27, ptr @sdmmc_free_mux, ptr @.str.28, ptr @s2f_usr0_free_mux, ptr @.str.29, ptr @s2f_usr1_free_mux, ptr @.str.30, ptr @psi_ref_free_mux, ptr @.str.31, ptr @.str.32, ptr @mpu_mux, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @emac_mux, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @emac_ptp_mux, ptr @.str.46, ptr @gpio_db_mux, ptr @.str.47, ptr @sdmmc_mux, ptr @.str.48, ptr @s2f_user0_mux, ptr @.str.49, ptr @s2f_user1_mux, ptr @.str.50, ptr @psi_mux, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @n5x_main_perip_c_clks, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_clkmgr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_clkmgr_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_pll_clks to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_main_perip_c_clks to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_main_perip_cnt_clks to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_gate_clks to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_clk_register_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_clk_register_c_perip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_clk_register_cnt_perip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noc_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noc_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emaca_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emacb_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_ptp_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_db_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2f_usr0_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2f_usr1_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_ref_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_clk_register_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_ptp_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_db_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2f_user0_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2f_user1_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5x_main_perip_c_clks to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5x_clk_register_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5x_clk_register_c_perip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @agilex_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @agilex_clkmgr_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @agilex_clkmgr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 %call(ptr noundef %pdev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @agilex_clkmgr_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %i.087
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 55
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %base12 = getelementptr inbounds %struct.stratix10_clock_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %base12, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 55, ptr %call.i, align 4
  %call.i43 = tail call ptr @agilex_register_pll(ptr noundef nonnull @agilex_pll_clks, ptr noundef %call3) #4
  %cmp.i.i = icmp ugt ptr %call.i43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 17
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i43, ptr %arrayidx6.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i
  %call.1.i = tail call ptr @agilex_register_pll(ptr noundef getelementptr inbounds ([3 x %struct.stratix10_pll_clock], ptr @agilex_pll_clks, i32 0, i32 1), ptr noundef %call3) #4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %do.end.1.i, label %if.end.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.1.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.1.i, ptr %arrayidx6.1.i, align 4
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %if.end.1.i
  %call.2.i = tail call ptr @agilex_register_pll(ptr noundef getelementptr inbounds ([3 x %struct.stratix10_pll_clock], ptr @agilex_pll_clks, i32 0, i32 2), ptr noundef %call3) #4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %do.end.2.i, label %if.end.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.2.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.2.i, ptr %arrayidx6.2.i, align 4
  br label %agilex_clk_register_pll.exit

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #7
  br label %agilex_clk_register_pll.exit

agilex_clk_register_pll.exit:                     ; preds = %do.end.2.i, %if.end.2.i
  %9 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base12, align 4
  %call.i45 = tail call ptr @s10_register_periph(ptr noundef nonnull @agilex_main_perip_c_clks, ptr noundef %10) #4
  %cmp.i.i46 = icmp ugt ptr %call.i45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i46, label %do.end.i48, label %if.end.i50

do.end.i48:                                       ; preds = %agilex_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #7
  br label %for.inc.i53

if.end.i50:                                       ; preds = %agilex_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.i49 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %arrayidx6.i49 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i45, ptr %arrayidx6.i49, align 4
  br label %for.inc.i53

for.inc.i53:                                      ; preds = %if.end.i50, %do.end.i48
  %call.1.i51 = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.stratix10_perip_c_clock], ptr @agilex_main_perip_c_clks, i32 0, i32 1), ptr noundef %10) #4
  %cmp.i.1.i52 = icmp ugt ptr %call.1.i51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i52, label %do.end.1.i57, label %if.end.1.i55

if.end.1.i55:                                     ; preds = %for.inc.i53
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.1.i54 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %arrayidx6.1.i54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.1.i51, ptr %arrayidx6.1.i54, align 4
  br label %for.inc.1.i60

do.end.1.i57:                                     ; preds = %for.inc.i53
  call void @__sanitizer_cov_trace_pc() #6
  %call4.1.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #7
  br label %for.inc.1.i60

for.inc.1.i60:                                    ; preds = %do.end.1.i57, %if.end.1.i55
  %call.2.i58 = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.stratix10_perip_c_clock], ptr @agilex_main_perip_c_clks, i32 0, i32 2), ptr noundef %10) #4
  %cmp.i.2.i59 = icmp ugt ptr %call.2.i58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i59, label %do.end.2.i64, label %if.end.2.i62

if.end.2.i62:                                     ; preds = %for.inc.1.i60
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.2.i61 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %arrayidx6.2.i61 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.2.i58, ptr %arrayidx6.2.i61, align 4
  br label %for.inc.2.i

do.end.2.i64:                                     ; preds = %for.inc.1.i60
  call void @__sanitizer_cov_trace_pc() #6
  %call4.2.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i64, %if.end.2.i62
  %call.3.i = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.stratix10_perip_c_clock], ptr @agilex_main_perip_c_clks, i32 0, i32 3), ptr noundef %10) #4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %do.end.3.i, label %if.end.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.3.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.3.i, ptr %arrayidx6.3.i, align 4
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %if.end.3.i
  %call.4.i = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.stratix10_perip_c_clock], ptr @agilex_main_perip_c_clks, i32 0, i32 4), ptr noundef %10) #4
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %do.end.4.i, label %if.end.4.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.4.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.4.i, ptr %arrayidx6.4.i, align 4
  br label %for.inc.4.i

do.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15) #7
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end.4.i, %if.end.4.i
  %call.5.i = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.stratix10_perip_c_clock], ptr @agilex_main_perip_c_clks, i32 0, i32 5), ptr noundef %10) #4
  %cmp.i.5.i = icmp ugt ptr %call.5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5.i, label %do.end.5.i, label %if.end.5.i

if.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.5.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 12
  %16 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.5.i, ptr %arrayidx6.5.i, align 4
  br label %for.inc.5.i

do.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16) #7
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end.5.i, %if.end.5.i
  %call.6.i = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.stratix10_perip_c_clock], ptr @agilex_main_perip_c_clks, i32 0, i32 6), ptr noundef %10) #4
  %cmp.i.6.i = icmp ugt ptr %call.6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6.i, label %do.end.6.i, label %if.end.6.i

if.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.6.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 13
  %17 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.6.i, ptr %arrayidx6.6.i, align 4
  br label %for.inc.6.i

do.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17) #7
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end.6.i, %if.end.6.i
  %call.7.i = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.stratix10_perip_c_clock], ptr @agilex_main_perip_c_clks, i32 0, i32 7), ptr noundef %10) #4
  %cmp.i.7.i = icmp ugt ptr %call.7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7.i, label %do.end.7.i, label %if.end.7.i

if.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.7.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 14
  %18 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.7.i, ptr %arrayidx6.7.i, align 4
  br label %agilex_clk_register_c_perip.exit

do.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18) #7
  br label %agilex_clk_register_c_perip.exit

agilex_clk_register_c_perip.exit:                 ; preds = %do.end.7.i, %if.end.7.i
  %19 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base12, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i72.for.body.i_crit_edge, %agilex_clk_register_c_perip.exit
  %i.01.i = phi i32 [ 0, %agilex_clk_register_c_perip.exit ], [ %inc.i, %for.inc.i72.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stratix10_perip_cnt_clock, ptr @agilex_main_perip_cnt_clks, i32 %i.01.i
  %call.i66 = tail call ptr @s10_register_cnt_periph(ptr noundef %arrayidx.i, ptr noundef %20) #4
  %cmp.i.i67 = icmp ugt ptr %call.i66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i67, label %do.end.i69, label %if.end.i71

do.end.i69:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr %struct.stratix10_perip_cnt_clock, ptr @agilex_main_perip_cnt_clks, i32 %i.01.i, i32 1
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %call4.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, ptr noundef %22) #7
  br label %for.inc.i72

if.end.i71:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i70 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %24
  %25 = ptrtoint ptr %arrayidx6.i70 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i66, ptr %arrayidx6.i70, align 4
  br label %for.inc.i72

for.inc.i72:                                      ; preds = %if.end.i71, %do.end.i69
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %agilex_clk_register_cnt_perip.exit, label %for.inc.i72.for.body.i_crit_edge

for.inc.i72.for.body.i_crit_edge:                 ; preds = %for.inc.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

agilex_clk_register_cnt_perip.exit:               ; preds = %for.inc.i72
  %26 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base12, align 4
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.inc.i86.for.body.i78_crit_edge, %agilex_clk_register_cnt_perip.exit
  %i.01.i74 = phi i32 [ 0, %agilex_clk_register_cnt_perip.exit ], [ %inc.i84, %for.inc.i86.for.body.i78_crit_edge ]
  %arrayidx.i75 = getelementptr %struct.stratix10_gate_clock, ptr @agilex_gate_clks, i32 %i.01.i74
  %call.i76 = tail call ptr @agilex_register_gate(ptr noundef %arrayidx.i75, ptr noundef %27) #4
  %cmp.i.i77 = icmp ugt ptr %call.i76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i77, label %do.end.i81, label %if.end.i83

do.end.i81:                                       ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #6
  %name.i79 = getelementptr %struct.stratix10_gate_clock, ptr @agilex_gate_clks, i32 %i.01.i74, i32 1
  %28 = ptrtoint ptr %name.i79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i79, align 4
  %call4.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, ptr noundef %29) #7
  br label %for.inc.i86

if.end.i83:                                       ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i75, align 4
  %arrayidx6.i82 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %31
  %32 = ptrtoint ptr %arrayidx6.i82 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i76, ptr %arrayidx6.i82, align 4
  br label %for.inc.i86

for.inc.i86:                                      ; preds = %if.end.i83, %do.end.i81
  %inc.i84 = add nuw nsw i32 %i.01.i74, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i84, 24
  br i1 %exitcond.not.i85, label %agilex_clk_register_gate.exit, label %for.inc.i86.for.body.i78_crit_edge

for.inc.i86.for.body.i78_crit_edge:               ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i78

agilex_clk_register_gate.exit:                    ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %agilex_clk_register_gate.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %agilex_clk_register_gate.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n5x_clkmgr_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.084 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %i.084
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 55
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %base11 = getelementptr inbounds %struct.stratix10_clock_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %base11, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 55, ptr %call.i, align 4
  %call.i40 = tail call ptr @n5x_register_pll(ptr noundef nonnull @agilex_pll_clks, ptr noundef %call) #4
  %cmp.i.i = icmp ugt ptr %call.i40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4) #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 17
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i40, ptr %arrayidx6.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i
  %call.1.i = tail call ptr @n5x_register_pll(ptr noundef getelementptr inbounds ([3 x %struct.stratix10_pll_clock], ptr @agilex_pll_clks, i32 0, i32 1), ptr noundef %call) #4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %do.end.1.i, label %if.end.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.1.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.1.i, ptr %arrayidx6.1.i, align 4
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.5) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %if.end.1.i
  %call.2.i = tail call ptr @n5x_register_pll(ptr noundef getelementptr inbounds ([3 x %struct.stratix10_pll_clock], ptr @agilex_pll_clks, i32 0, i32 2), ptr noundef %call) #4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %do.end.2.i, label %if.end.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.2.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.2.i, ptr %arrayidx6.2.i, align 4
  br label %n5x_clk_register_pll.exit

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.6) #7
  br label %n5x_clk_register_pll.exit

n5x_clk_register_pll.exit:                        ; preds = %do.end.2.i, %if.end.2.i
  %9 = ptrtoint ptr %base11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base11, align 4
  %call.i42 = tail call ptr @n5x_register_periph(ptr noundef nonnull @n5x_main_perip_c_clks, ptr noundef %10) #4
  %cmp.i.i43 = icmp ugt ptr %call.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i43, label %do.end.i45, label %if.end.i47

do.end.i45:                                       ; preds = %n5x_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.11) #7
  br label %for.inc.i50

if.end.i47:                                       ; preds = %n5x_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.i46 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %arrayidx6.i46 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i42, ptr %arrayidx6.i46, align 4
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %if.end.i47, %do.end.i45
  %call.1.i48 = tail call ptr @n5x_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.n5x_perip_c_clock], ptr @n5x_main_perip_c_clks, i32 0, i32 1), ptr noundef %10) #4
  %cmp.i.1.i49 = icmp ugt ptr %call.1.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i49, label %do.end.1.i54, label %if.end.1.i52

if.end.1.i52:                                     ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.1.i51 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %arrayidx6.1.i51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.1.i48, ptr %arrayidx6.1.i51, align 4
  br label %for.inc.1.i57

do.end.1.i54:                                     ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #6
  %call4.1.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.12) #7
  br label %for.inc.1.i57

for.inc.1.i57:                                    ; preds = %do.end.1.i54, %if.end.1.i52
  %call.2.i55 = tail call ptr @n5x_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.n5x_perip_c_clock], ptr @n5x_main_perip_c_clks, i32 0, i32 2), ptr noundef %10) #4
  %cmp.i.2.i56 = icmp ugt ptr %call.2.i55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i56, label %do.end.2.i61, label %if.end.2.i59

if.end.2.i59:                                     ; preds = %for.inc.1.i57
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.2.i58 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %arrayidx6.2.i58 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.2.i55, ptr %arrayidx6.2.i58, align 4
  br label %for.inc.2.i

do.end.2.i61:                                     ; preds = %for.inc.1.i57
  call void @__sanitizer_cov_trace_pc() #6
  %call4.2.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.13) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i61, %if.end.2.i59
  %call.3.i = tail call ptr @n5x_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.n5x_perip_c_clock], ptr @n5x_main_perip_c_clks, i32 0, i32 3), ptr noundef %10) #4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %do.end.3.i, label %if.end.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.3.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.3.i, ptr %arrayidx6.3.i, align 4
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.14) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %if.end.3.i
  %call.4.i = tail call ptr @n5x_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.n5x_perip_c_clock], ptr @n5x_main_perip_c_clks, i32 0, i32 4), ptr noundef %10) #4
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %do.end.4.i, label %if.end.4.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.4.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.4.i, ptr %arrayidx6.4.i, align 4
  br label %for.inc.4.i

do.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.15) #7
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end.4.i, %if.end.4.i
  %call.5.i = tail call ptr @n5x_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.n5x_perip_c_clock], ptr @n5x_main_perip_c_clks, i32 0, i32 5), ptr noundef %10) #4
  %cmp.i.5.i = icmp ugt ptr %call.5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5.i, label %do.end.5.i, label %if.end.5.i

if.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.5.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 12
  %16 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.5.i, ptr %arrayidx6.5.i, align 4
  br label %for.inc.5.i

do.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.16) #7
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end.5.i, %if.end.5.i
  %call.6.i = tail call ptr @n5x_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.n5x_perip_c_clock], ptr @n5x_main_perip_c_clks, i32 0, i32 6), ptr noundef %10) #4
  %cmp.i.6.i = icmp ugt ptr %call.6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6.i, label %do.end.6.i, label %if.end.6.i

if.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.6.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 13
  %17 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.6.i, ptr %arrayidx6.6.i, align 4
  br label %for.inc.6.i

do.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.17) #7
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end.6.i, %if.end.6.i
  %call.7.i = tail call ptr @n5x_register_periph(ptr noundef getelementptr inbounds ([8 x %struct.n5x_perip_c_clock], ptr @n5x_main_perip_c_clks, i32 0, i32 7), ptr noundef %10) #4
  %cmp.i.7.i = icmp ugt ptr %call.7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7.i, label %do.end.7.i, label %if.end.7.i

if.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.7.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 14
  %18 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.7.i, ptr %arrayidx6.7.i, align 4
  br label %n5x_clk_register_c_perip.exit

do.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.18) #7
  br label %n5x_clk_register_c_perip.exit

n5x_clk_register_c_perip.exit:                    ; preds = %do.end.7.i, %if.end.7.i
  %19 = ptrtoint ptr %base11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base11, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i69.for.body.i_crit_edge, %n5x_clk_register_c_perip.exit
  %i.01.i = phi i32 [ 0, %n5x_clk_register_c_perip.exit ], [ %inc.i, %for.inc.i69.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stratix10_perip_cnt_clock, ptr @agilex_main_perip_cnt_clks, i32 %i.01.i
  %call.i63 = tail call ptr @s10_register_cnt_periph(ptr noundef %arrayidx.i, ptr noundef %20) #4
  %cmp.i.i64 = icmp ugt ptr %call.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i64, label %do.end.i66, label %if.end.i68

do.end.i66:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr %struct.stratix10_perip_cnt_clock, ptr @agilex_main_perip_cnt_clks, i32 %i.01.i, i32 1
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %call4.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, ptr noundef %22) #7
  br label %for.inc.i69

if.end.i68:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i67 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %24
  %25 = ptrtoint ptr %arrayidx6.i67 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i63, ptr %arrayidx6.i67, align 4
  br label %for.inc.i69

for.inc.i69:                                      ; preds = %if.end.i68, %do.end.i66
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %agilex_clk_register_cnt_perip.exit, label %for.inc.i69.for.body.i_crit_edge

for.inc.i69.for.body.i_crit_edge:                 ; preds = %for.inc.i69
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

agilex_clk_register_cnt_perip.exit:               ; preds = %for.inc.i69
  %26 = ptrtoint ptr %base11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base11, align 4
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.inc.i83.for.body.i75_crit_edge, %agilex_clk_register_cnt_perip.exit
  %i.01.i71 = phi i32 [ 0, %agilex_clk_register_cnt_perip.exit ], [ %inc.i81, %for.inc.i83.for.body.i75_crit_edge ]
  %arrayidx.i72 = getelementptr %struct.stratix10_gate_clock, ptr @agilex_gate_clks, i32 %i.01.i71
  %call.i73 = tail call ptr @agilex_register_gate(ptr noundef %arrayidx.i72, ptr noundef %27) #4
  %cmp.i.i74 = icmp ugt ptr %call.i73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i74, label %do.end.i78, label %if.end.i80

do.end.i78:                                       ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #6
  %name.i76 = getelementptr %struct.stratix10_gate_clock, ptr @agilex_gate_clks, i32 %i.01.i71, i32 1
  %28 = ptrtoint ptr %name.i76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i76, align 4
  %call4.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, ptr noundef %29) #7
  br label %for.inc.i83

if.end.i80:                                       ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i72, align 4
  %arrayidx6.i79 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %31
  %32 = ptrtoint ptr %arrayidx6.i79 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i73, ptr %arrayidx6.i79, align 4
  br label %for.inc.i83

for.inc.i83:                                      ; preds = %if.end.i80, %do.end.i78
  %inc.i81 = add nuw nsw i32 %i.01.i71, 1
  %exitcond.not.i82 = icmp eq i32 %inc.i81, 24
  br i1 %exitcond.not.i82, label %agilex_clk_register_gate.exit, label %for.inc.i83.for.body.i75_crit_edge

for.inc.i83.for.body.i75_crit_edge:               ; preds = %for.inc.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i75

agilex_clk_register_gate.exit:                    ; preds = %for.inc.i83
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %agilex_clk_register_gate.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %agilex_clk_register_gate.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @agilex_register_pll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s10_register_periph(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s10_register_cnt_periph(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @agilex_register_gate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @n5x_register_pll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @n5x_register_periph(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !177, !178, !180, !181, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_clk_agilex__183_569_agilex_clk_init1, !1, !"__initcall__kmod_clk_agilex__183_569_agilex_clk_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 569, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 559, i32 11}
!4 = !{ptr @agilex_clkmgr_driver, !5, !"agilex_clkmgr_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 556, i32 31}
!6 = !{ptr @agilex_clkmgr_match_table, !7, !"agilex_clkmgr_match_table", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 548, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 426, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @agilex_clk_register_pll._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @agilex_clk_register_pll._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 228, i32 21}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 230, i32 25}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 232, i32 27}
!20 = !{ptr @agilex_pll_clks, !21, !"agilex_pll_clks", i1 false, i1 false}
!21 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 227, i32 41}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 25, i32 15}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 27, i32 15}
!26 = !{ptr @boot_mux, !27, !"boot_mux", i1 false, i1 false}
!27 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 24, i32 37}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 20, i32 15}
!30 = !{ptr @pll_mux, !31, !"pll_mux", i1 false, i1 false}
!31 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 15, i32 37}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 367, i32 4}
!34 = !{ptr @agilex_clk_register_c_perip._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @agilex_clk_register_c_perip._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 248, i32 28}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 249, i32 28}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 250, i32 28}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 251, i32 28}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 252, i32 30}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 253, i32 30}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 254, i32 30}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 255, i32 30}
!52 = !{ptr @agilex_main_perip_c_clks, !53, !"agilex_main_perip_c_clks", i1 false, i1 false}
!53 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 247, i32 45}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 386, i32 4}
!56 = !{ptr @agilex_clk_register_cnt_perip._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @agilex_clk_register_cnt_perip._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 259, i32 25}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 261, i32 25}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 263, i32 28}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 265, i32 28}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 267, i32 28}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 269, i32 30}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 271, i32 29}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 273, i32 27}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 275, i32 31}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 277, i32 31}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 279, i32 29}
!80 = !{ptr @agilex_main_perip_cnt_clks, !81, !"agilex_main_perip_cnt_clks", i1 false, i1 false}
!81 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 258, i32 47}
!82 = !{ptr @mpu_free_mux, !83, !"mpu_free_mux", i1 false, i1 false}
!83 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 31, i32 37}
!84 = !{ptr @noc_free_mux, !85, !"noc_free_mux", i1 false, i1 false}
!85 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 44, i32 37}
!86 = !{ptr @noc_mux, !87, !"noc_mux", i1 false, i1 false}
!87 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 177, i32 37}
!88 = !{ptr @emaca_free_mux, !89, !"emaca_free_mux", i1 false, i1 false}
!89 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 57, i32 37}
!90 = !{ptr @emacb_free_mux, !91, !"emacb_free_mux", i1 false, i1 false}
!91 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 70, i32 37}
!92 = !{ptr @emac_ptp_free_mux, !93, !"emac_ptp_free_mux", i1 false, i1 false}
!93 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 83, i32 37}
!94 = !{ptr @gpio_db_free_mux, !95, !"gpio_db_free_mux", i1 false, i1 false}
!95 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 96, i32 37}
!96 = !{ptr @sdmmc_free_mux, !97, !"sdmmc_free_mux", i1 false, i1 false}
!97 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 122, i32 37}
!98 = !{ptr @s2f_usr0_free_mux, !99, !"s2f_usr0_free_mux", i1 false, i1 false}
!99 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 135, i32 37}
!100 = !{ptr @s2f_usr1_free_mux, !101, !"s2f_usr1_free_mux", i1 false, i1 false}
!101 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 148, i32 37}
!102 = !{ptr @psi_ref_free_mux, !103, !"psi_ref_free_mux", i1 false, i1 false}
!103 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 109, i32 37}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 406, i32 4}
!106 = !{ptr @agilex_clk_register_gate._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @agilex_clk_register_gate._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 284, i32 20}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 286, i32 27}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 288, i32 24}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 290, i32 24}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 292, i32 22}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 298, i32 22}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 300, i32 22}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 302, i32 25}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 304, i32 24}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 306, i32 25}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 308, i32 22}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 310, i32 22}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 312, i32 22}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 314, i32 25}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 316, i32 24}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 318, i32 22}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 320, i32 26}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 322, i32 26}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 324, i32 24}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 326, i32 20}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 328, i32 22}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 330, i32 23}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 332, i32 21}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 334, i32 25}
!156 = !{ptr @agilex_gate_clks, !157, !"agilex_gate_clks", i1 false, i1 false}
!157 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 283, i32 42}
!158 = !{ptr @mpu_mux, !159, !"mpu_mux", i1 false, i1 false}
!159 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 161, i32 37}
!160 = !{ptr @emac_mux, !161, !"emac_mux", i1 false, i1 false}
!161 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 168, i32 37}
!162 = !{ptr @emac_ptp_mux, !163, !"emac_ptp_mux", i1 false, i1 false}
!163 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 219, i32 37}
!164 = !{ptr @gpio_db_mux, !165, !"gpio_db_mux", i1 false, i1 false}
!165 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 212, i32 37}
!166 = !{ptr @sdmmc_mux, !167, !"sdmmc_mux", i1 false, i1 false}
!167 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 184, i32 37}
!168 = !{ptr @s2f_user0_mux, !169, !"s2f_user0_mux", i1 false, i1 false}
!169 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 191, i32 37}
!170 = !{ptr @s2f_user1_mux, !171, !"s2f_user1_mux", i1 false, i1 false}
!171 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 198, i32 37}
!172 = !{ptr @psi_mux, !173, !"psi_mux", i1 false, i1 false}
!173 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 205, i32 37}
!174 = !{ptr @.str.56, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 446, i32 4}
!176 = !{ptr @n5x_clk_register_pll._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @n5x_clk_register_pll._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 348, i32 4}
!180 = !{ptr @n5x_clk_register_c_perip._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @n5x_clk_register_c_perip._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @n5x_main_perip_c_clks, !183, !"n5x_main_perip_c_clks", i1 false, i1 false}
!183 = !{!"../drivers/clk/socfpga/clk-agilex.c", i32 236, i32 39}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
