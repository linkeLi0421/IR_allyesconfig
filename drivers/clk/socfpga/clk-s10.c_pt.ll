; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-s10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-s10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stratix10_pll_clock = type { i32, ptr, ptr, i8, i32, i32 }
%struct.stratix10_perip_c_clock = type { i32, ptr, ptr, ptr, i8, i32, i32 }
%struct.stratix10_perip_cnt_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i8, i32, i32 }
%struct.stratix10_gate_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i8, i32, i8, i8, i32, i8, i8 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_clk_s10__183_452_s10_clk_init1 = internal global ptr @s10_clk_init, section ".initcall1.init", align 4
@stratix10_clkmgr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s10_clkmgr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @stratix10_clkmgr_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stratix10-clkmgr\00", [47 x i8] zeroinitializer }, align 32
@stratix10_clkmgr_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,stratix10-clkmgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s10_clkmgr_init }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s10_clkmgr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to map clock registers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s10_clkmgr_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/socfpga/clk-s10.c\00", [34 x i8] zeroinitializer }, align 32
@s10_clkmgr_init._entry_ptr = internal global ptr @s10_clkmgr_init._entry, section ".printk_index", align 4
@s10_pll_clks = internal constant { [3 x %struct.stratix10_pll_clock], [56 x i8] } { [3 x %struct.stratix10_pll_clock] [%struct.stratix10_pll_clock { i32 10, ptr @.str.6, ptr @boot_mux, i8 2, i32 0, i32 0 }, %struct.stratix10_pll_clock { i32 8, ptr @.str.7, ptr @pll_mux, i8 3, i32 0, i32 116 }, %struct.stratix10_pll_clock { i32 9, ptr @.str.8, ptr @pll_mux, i8 3, i32 0, i32 228 }], [56 x i8] zeroinitializer }, align 32
@s10_main_perip_c_clks = internal constant { [4 x %struct.stratix10_perip_c_clock], [48 x i8] } { [4 x %struct.stratix10_perip_c_clock] [%struct.stratix10_perip_c_clock { i32 11, ptr @.str.13, ptr @.str.7, ptr null, i8 1, i32 0, i32 132 }, %struct.stratix10_perip_c_clock { i32 12, ptr @.str.14, ptr @.str.7, ptr null, i8 1, i32 0, i32 136 }, %struct.stratix10_perip_c_clock { i32 21, ptr @.str.15, ptr @.str.8, ptr null, i8 1, i32 0, i32 244 }, %struct.stratix10_perip_c_clock { i32 22, ptr @.str.16, ptr @.str.8, ptr null, i8 1, i32 0, i32 248 }], [48 x i8] zeroinitializer }, align 32
@s10_main_perip_cnt_clks = internal constant { [26 x %struct.stratix10_perip_cnt_clock], [272 x i8] } { [26 x %struct.stratix10_perip_cnt_clock] [%struct.stratix10_perip_cnt_clock { i32 31, ptr @.str.18, ptr null, ptr @mpu_free_mux, i8 5, i32 0, i32 72, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 32, ptr @.str.19, ptr null, ptr @noc_free_mux, i8 5, i32 0, i32 76, i8 0, i32 60, i32 1 }, %struct.stratix10_perip_cnt_clock { i32 13, ptr @.str.20, ptr @.str.14, ptr null, i8 1, i32 0, i32 80, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 14, ptr @.str.21, ptr @.str.14, ptr null, i8 1, i32 0, i32 84, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 15, ptr @.str.22, ptr @.str.14, ptr null, i8 1, i32 0, i32 88, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 16, ptr @.str.23, ptr @.str.14, ptr null, i8 1, i32 0, i32 92, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 17, ptr @.str.24, ptr @.str.14, ptr null, i8 1, i32 0, i32 96, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 18, ptr @.str.25, ptr null, ptr @cntr_mux, i8 5, i32 0, i32 100, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 19, ptr @.str.26, ptr @.str.14, ptr null, i8 1, i32 0, i32 104, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 20, ptr @.str.27, ptr @.str.14, ptr null, i8 1, i32 0, i32 108, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 23, ptr @.str.28, ptr null, ptr @cntr_mux, i8 5, i32 0, i32 188, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 24, ptr @.str.29, ptr null, ptr @cntr_mux, i8 5, i32 0, i32 192, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 25, ptr @.str.30, ptr null, ptr @cntr_mux, i8 5, i32 0, i32 196, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 26, ptr @.str.31, ptr null, ptr @cntr_mux, i8 5, i32 0, i32 200, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 27, ptr @.str.32, ptr null, ptr @cntr_mux, i8 5, i32 0, i32 204, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 28, ptr @.str.33, ptr @.str.16, ptr null, i8 1, i32 0, i32 208, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 29, ptr @.str.34, ptr null, ptr @cntr_mux, i8 5, i32 0, i32 212, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 30, ptr @.str.35, ptr @.str.16, ptr null, i8 1, i32 0, i32 216, i8 0, i32 0, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 4, ptr @.str.36, ptr null, ptr @noc_mux, i8 2, i32 0, i32 0, i8 4, i32 60, i32 1 }, %struct.stratix10_perip_cnt_clock { i32 35, ptr @.str.37, ptr null, ptr @emaca_free_mux, i8 2, i32 0, i32 0, i8 2, i32 176, i32 0 }, %struct.stratix10_perip_cnt_clock { i32 36, ptr @.str.38, ptr null, ptr @emacb_free_mux, i8 2, i32 0, i32 0, i8 2, i32 176, i32 1 }, %struct.stratix10_perip_cnt_clock { i32 37, ptr @.str.39, ptr null, ptr @emac_ptp_free_mux, i8 2, i32 0, i32 0, i8 2, i32 176, i32 2 }, %struct.stratix10_perip_cnt_clock { i32 38, ptr @.str.40, ptr null, ptr @gpio_db_free_mux, i8 2, i32 0, i32 0, i8 0, i32 176, i32 3 }, %struct.stratix10_perip_cnt_clock { i32 39, ptr @.str.41, ptr null, ptr @sdmmc_free_mux, i8 2, i32 0, i32 0, i8 0, i32 176, i32 4 }, %struct.stratix10_perip_cnt_clock { i32 40, ptr @.str.42, ptr null, ptr @s2f_usr1_free_mux, i8 2, i32 0, i32 0, i8 0, i32 176, i32 5 }, %struct.stratix10_perip_cnt_clock { i32 41, ptr @.str.43, ptr null, ptr @psi_ref_free_mux, i8 2, i32 0, i32 0, i8 0, i32 176, i32 6 }], [272 x i8] zeroinitializer }, align 32
@s10_gate_clks = internal constant { [24 x %struct.stratix10_gate_clock], [288 x i8] } { [24 x %struct.stratix10_gate_clock] [%struct.stratix10_gate_clock { i32 42, ptr @.str.45, ptr null, ptr @mpu_mux, i8 2, i32 0, i32 48, i8 0, i32 0, i8 0, i8 0, i32 60, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 5, ptr @.str.46, ptr @.str.45, ptr null, i8 1, i32 0, i32 48, i8 0, i32 0, i8 0, i8 0, i32 0, i8 0, i8 4 }, %struct.stratix10_gate_clock { i32 6, ptr @.str.47, ptr @.str.45, ptr null, i8 1, i32 0, i32 48, i8 0, i32 0, i8 0, i8 0, i32 0, i8 0, i8 2 }, %struct.stratix10_gate_clock { i32 43, ptr @.str.48, ptr null, ptr @noc_mux, i8 2, i32 0, i32 48, i8 1, i32 112, i8 0, i8 2, i32 60, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 44, ptr @.str.49, ptr null, ptr @noc_mux, i8 2, i32 0, i32 48, i8 2, i32 112, i8 8, i8 2, i32 60, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 45, ptr @.str.50, ptr null, ptr @noc_mux, i8 2, i32 2048, i32 48, i8 3, i32 112, i8 16, i8 2, i32 60, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 46, ptr @.str.51, ptr null, ptr @noc_mux, i8 2, i32 0, i32 48, i8 4, i32 112, i8 24, i8 2, i32 60, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 47, ptr @.str.52, ptr null, ptr @noc_mux, i8 2, i32 0, i32 48, i8 4, i32 112, i8 26, i8 2, i32 60, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 48, ptr @.str.53, ptr @.str.51, ptr null, i8 1, i32 0, i32 48, i8 4, i32 112, i8 28, i8 1, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 49, ptr @.str.54, ptr null, ptr @noc_mux, i8 2, i32 0, i32 48, i8 5, i32 0, i8 0, i8 0, i32 60, i8 1, i8 0 }, %struct.stratix10_gate_clock { i32 50, ptr @.str.55, ptr null, ptr @s2f_usr0_mux, i8 2, i32 0, i32 48, i8 6, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 52, ptr @.str.56, ptr null, ptr @emac_mux, i8 2, i32 0, i32 164, i8 0, i32 0, i8 0, i8 0, i32 220, i8 26, i8 0 }, %struct.stratix10_gate_clock { i32 53, ptr @.str.57, ptr null, ptr @emac_mux, i8 2, i32 0, i32 164, i8 1, i32 0, i8 0, i8 0, i32 220, i8 27, i8 0 }, %struct.stratix10_gate_clock { i32 54, ptr @.str.58, ptr null, ptr @emac_mux, i8 2, i32 0, i32 164, i8 2, i32 0, i8 0, i8 0, i32 220, i8 28, i8 0 }, %struct.stratix10_gate_clock { i32 55, ptr @.str.59, ptr null, ptr @emac_ptp_mux, i8 2, i32 0, i32 164, i8 3, i32 0, i8 0, i8 0, i32 176, i8 2, i8 0 }, %struct.stratix10_gate_clock { i32 56, ptr @.str.60, ptr null, ptr @gpio_db_mux, i8 2, i32 0, i32 164, i8 4, i32 224, i8 0, i8 16, i32 176, i8 3, i8 0 }, %struct.stratix10_gate_clock { i32 57, ptr @.str.61, ptr null, ptr @sdmmc_mux, i8 2, i32 0, i32 164, i8 5, i32 0, i8 0, i8 0, i32 176, i8 4, i8 4 }, %struct.stratix10_gate_clock { i32 51, ptr @.str.62, ptr null, ptr @s2f_user1_mux, i8 2, i32 0, i32 164, i8 6, i32 0, i8 0, i8 0, i32 176, i8 5, i8 0 }, %struct.stratix10_gate_clock { i32 58, ptr @.str.63, ptr null, ptr @psi_mux, i8 2, i32 0, i32 164, i8 7, i32 0, i8 0, i8 0, i32 176, i8 6, i8 0 }, %struct.stratix10_gate_clock { i32 59, ptr @.str.64, ptr @.str.49, ptr null, i8 1, i32 0, i32 164, i8 8, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 60, ptr @.str.65, ptr @.str.49, ptr null, i8 1, i32 0, i32 164, i8 9, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 62, ptr @.str.66, ptr @.str.49, ptr null, i8 1, i32 0, i32 164, i8 10, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0 }, %struct.stratix10_gate_clock { i32 61, ptr @.str.67, ptr @.str.66, ptr null, i8 1, i32 0, i32 164, i8 10, i32 0, i8 0, i8 0, i32 0, i8 0, i8 4 }, %struct.stratix10_gate_clock { i32 63, ptr @.str.68, ptr @.str.66, ptr null, i8 1, i32 0, i32 164, i8 10, i32 0, i8 0, i8 0, i32 0, i8 0, i8 4 }], [288 x i8] zeroinitializer }, align 32
@s10_clk_register_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to register clock %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s10_clk_register_pll\00", [43 x i8] zeroinitializer }, align 32
@s10_clk_register_pll._entry_ptr = internal global ptr @s10_clk_register_pll._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boot_clk\00", [23 x i8] zeroinitializer }, align 32
@boot_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr @.str.10, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_pll\00", [23 x i8] zeroinitializer }, align 32
@pll_mux = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr @.str.10, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"osc1\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cb-intosc-hs-div2-clk\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f2s-free-clk\00", [19 x i8] zeroinitializer }, align 32
@s10_clk_register_c_perip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s10_clk_register_c_perip\00", [39 x i8] zeroinitializer }, align 32
@s10_clk_register_c_perip._entry_ptr = internal global ptr @s10_clk_register_c_perip._entry, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"main_mpu_base_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"main_noc_base_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"peri_mpu_base_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"peri_noc_base_clk\00", [46 x i8] zeroinitializer }, align 32
@s10_clk_register_cnt_perip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.17, ptr @.str.3, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s10_clk_register_cnt_perip\00", [37 x i8] zeroinitializer }, align 32
@s10_clk_register_cnt_perip._entry_ptr = internal global ptr @s10_clk_register_cnt_perip._entry, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpu_free_clk\00", [19 x i8] zeroinitializer }, align 32
@mpu_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.13, ptr @.str.13, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.15, ptr @.str.15, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr @.str.10, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"noc_free_clk\00", [19 x i8] zeroinitializer }, align 32
@noc_free_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.14, ptr @.str.14, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.16, ptr @.str.16, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr @.str.10, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"main_emaca_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"main_emacb_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"main_emac_ptp_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"main_gpio_db_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"main_sdmmc_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"main_s2f_usr0_clk\00", [46 x i8] zeroinitializer }, align 32
@cntr_mux = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr @.str.10, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"main_s2f_usr1_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"main_psi_ref_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_emaca_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_emacb_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"peri_emac_ptp_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"peri_gpio_db_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_sdmmc_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"peri_s2f_usr0_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"peri_s2f_usr1_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"peri_psi_ref_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4_sys_free_clk\00", [16 x i8] zeroinitializer }, align 32
@noc_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.19, ptr @.str.19, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emaca_free_clk\00", [17 x i8] zeroinitializer }, align 32
@emaca_free_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.28, ptr @.str.28, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emacb_free_clk\00", [17 x i8] zeroinitializer }, align 32
@emacb_free_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.29, ptr @.str.29, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emac_ptp_free_clk\00", [46 x i8] zeroinitializer }, align 32
@emac_ptp_free_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.30, ptr @.str.30, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio_db_free_clk\00", [47 x i8] zeroinitializer }, align 32
@gpio_db_free_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.31, ptr @.str.31, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdmmc_free_clk\00", [17 x i8] zeroinitializer }, align 32
@sdmmc_free_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s2f_user1_free_clk\00", [45 x i8] zeroinitializer }, align 32
@s2f_usr1_free_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.34, ptr @.str.34, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psi_ref_free_clk\00", [47 x i8] zeroinitializer }, align 32
@psi_ref_free_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.35, ptr @.str.35, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@s10_clk_register_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.44, ptr @.str.3, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s10_clk_register_gate\00", [42 x i8] zeroinitializer }, align 32
@s10_clk_register_gate._entry_ptr = internal global ptr @s10_clk_register_gate._entry, section ".printk_index", align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpu_clk\00", [24 x i8] zeroinitializer }, align 32
@mpu_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.18, ptr @.str.18, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mpu_periph_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpu_l2ram_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4_main_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4_mp_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4_sp_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs_at_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_trace_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs_pdbg_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_timer_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s2f_user0_clk\00", [18 x i8] zeroinitializer }, align 32
@s2f_usr0_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac0_clk\00", [22 x i8] zeroinitializer }, align 32
@emac_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.37, ptr @.str.37, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.38, ptr @.str.38, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emac_ptp_clk\00", [19 x i8] zeroinitializer }, align 32
@emac_ptp_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.39, ptr @.str.39, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_db_clk\00", [20 x i8] zeroinitializer }, align 32
@gpio_db_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.40, ptr @.str.40, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdmmc_clk\00", [22 x i8] zeroinitializer }, align 32
@sdmmc_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.41, ptr @.str.41, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s2f_user1_clk\00", [18 x i8] zeroinitializer }, align 32
@s2f_user1_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.42, ptr @.str.42, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"psi_ref_clk\00", [20 x i8] zeroinitializer }, align 32
@psi_mux = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.43, ptr @.str.43, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr @.str.6, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_m_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nand_x_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nand_ecc_clk\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"stratix10_clkmgr_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 439, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 442, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [29 x i8] c"stratix10_clkmgr_match_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 433, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 396, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"s10_pll_clks\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 183, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"s10_main_perip_c_clks\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 192, i32 45 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"s10_main_perip_cnt_clks\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 201, i32 47 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"s10_gate_clks\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 256, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 376, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 184, i32 24 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"boot_mux\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 37, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 186, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"pll_mux\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 15, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 188, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 38, i32 15 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 40, i32 15 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 20, i32 15 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 317, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 193, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 194, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 195, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 197, i32 33 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 336, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 202, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"mpu_free_mux\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 134, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 204, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"noc_free_mux\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 44, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 206, i32 30 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 208, i32 30 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 210, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 212, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 214, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 216, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant [9 x i8] c"cntr_mux\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 24, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 218, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 220, i32 32 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 222, i32 30 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 224, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 226, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 228, i32 32 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 230, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 232, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 234, i32 33 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 236, i32 32 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 238, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant [8 x i8] c"noc_mux\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 127, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 240, i32 31 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"emaca_free_mux\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 57, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 242, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"emacb_free_mux\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 64, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 244, i32 33 }
@___asan_gen_.243 = private unnamed_addr constant [18 x i8] c"emac_ptp_free_mux\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 71, i32 37 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 246, i32 32 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"gpio_db_free_mux\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 78, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 248, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant [15 x i8] c"sdmmc_free_mux\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 85, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 250, i32 34 }
@___asan_gen_.261 = private unnamed_addr constant [18 x i8] c"s2f_usr1_free_mux\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 92, i32 37 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 252, i32 32 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"psi_ref_free_mux\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 99, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 356, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 257, i32 23 }
@___asan_gen_.279 = private unnamed_addr constant [8 x i8] c"mpu_mux\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 106, i32 37 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 259, i32 30 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 261, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 263, i32 27 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 265, i32 25 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 267, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 269, i32 25 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 271, i32 28 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 273, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 275, i32 28 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 277, i32 29 }
@___asan_gen_.312 = private unnamed_addr constant [13 x i8] c"s2f_usr0_mux\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 113, i32 37 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 279, i32 25 }
@___asan_gen_.318 = private unnamed_addr constant [9 x i8] c"emac_mux\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 120, i32 37 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 281, i32 25 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 283, i32 25 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 285, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant [13 x i8] c"emac_ptp_mux\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 175, i32 37 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 287, i32 27 }
@___asan_gen_.336 = private unnamed_addr constant [12 x i8] c"gpio_db_mux\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 168, i32 37 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 289, i32 25 }
@___asan_gen_.342 = private unnamed_addr constant [10 x i8] c"sdmmc_mux\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 147, i32 37 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 291, i32 29 }
@___asan_gen_.348 = private unnamed_addr constant [14 x i8] c"s2f_user1_mux\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 154, i32 37 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 293, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant [8 x i8] c"psi_mux\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 161, i32 37 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 295, i32 23 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 297, i32 25 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 299, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 301, i32 24 }
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.370 = private constant [33 x i8] c"../drivers/clk/socfpga/clk-s10.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 303, i32 28 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__initcall__kmod_clk_s10__183_452_s10_clk_init1, ptr @s10_clk_register_c_perip._entry, ptr @s10_clk_register_c_perip._entry_ptr, ptr @s10_clk_register_cnt_perip._entry, ptr @s10_clk_register_cnt_perip._entry_ptr, ptr @s10_clk_register_gate._entry, ptr @s10_clk_register_gate._entry_ptr, ptr @s10_clk_register_pll._entry, ptr @s10_clk_register_pll._entry_ptr, ptr @s10_clkmgr_init._entry, ptr @s10_clkmgr_init._entry_ptr, ptr @stratix10_clkmgr_driver, ptr @.str, ptr @stratix10_clkmgr_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @s10_pll_clks, ptr @s10_main_perip_c_clks, ptr @s10_main_perip_cnt_clks, ptr @s10_gate_clks, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @boot_mux, ptr @.str.7, ptr @pll_mux, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mpu_free_mux, ptr @.str.19, ptr @noc_free_mux, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @cntr_mux, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @noc_mux, ptr @.str.37, ptr @emaca_free_mux, ptr @.str.38, ptr @emacb_free_mux, ptr @.str.39, ptr @emac_ptp_free_mux, ptr @.str.40, ptr @gpio_db_free_mux, ptr @.str.41, ptr @sdmmc_free_mux, ptr @.str.42, ptr @s2f_usr1_free_mux, ptr @.str.43, ptr @psi_ref_free_mux, ptr @.str.44, ptr @.str.45, ptr @mpu_mux, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @s2f_usr0_mux, ptr @.str.56, ptr @emac_mux, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @emac_ptp_mux, ptr @.str.60, ptr @gpio_db_mux, ptr @.str.61, ptr @sdmmc_mux, ptr @.str.62, ptr @s2f_user1_mux, ptr @.str.63, ptr @psi_mux, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stratix10_clkmgr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stratix10_clkmgr_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_clkmgr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_pll_clks to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_main_perip_c_clks to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_main_perip_cnt_clks to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_gate_clks to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_clk_register_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_clk_register_c_perip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_clk_register_cnt_perip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noc_free_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cntr_mux to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noc_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emaca_free_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emacb_free_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_ptp_free_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_db_free_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_free_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2f_usr1_free_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_ref_free_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_clk_register_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2f_usr0_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_ptp_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_db_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2f_user1_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s10_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stratix10_clkmgr_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s10_clkmgr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s10_clkmgr_init(ptr noundef %pdev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s10_clkmgr_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 264, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.085 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %i.085
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %base12 = getelementptr inbounds %struct.stratix10_clock_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %base12, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %call.i, align 4
  %call.i41 = tail call ptr @s10_register_pll(ptr noundef nonnull @s10_pll_clks, ptr noundef %call) #4
  %cmp.i.i = icmp ugt ptr %call.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i41, ptr %arrayidx6.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i
  %call.1.i = tail call ptr @s10_register_pll(ptr noundef getelementptr inbounds ([3 x %struct.stratix10_pll_clock], ptr @s10_pll_clks, i32 0, i32 1), ptr noundef %call) #4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %do.end.1.i, label %if.end.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.1.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.1.i, ptr %arrayidx6.1.i, align 4
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %if.end.1.i
  %call.2.i = tail call ptr @s10_register_pll(ptr noundef getelementptr inbounds ([3 x %struct.stratix10_pll_clock], ptr @s10_pll_clks, i32 0, i32 2), ptr noundef %call) #4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %do.end.2.i, label %if.end.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.2.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.2.i, ptr %arrayidx6.2.i, align 4
  br label %s10_clk_register_pll.exit

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #7
  br label %s10_clk_register_pll.exit

s10_clk_register_pll.exit:                        ; preds = %do.end.2.i, %if.end.2.i
  %9 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base12, align 4
  %call.i43 = tail call ptr @s10_register_periph(ptr noundef nonnull @s10_main_perip_c_clks, ptr noundef %10) #4
  %cmp.i.i44 = icmp ugt ptr %call.i43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i44, label %do.end.i46, label %if.end.i48

do.end.i46:                                       ; preds = %s10_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #7
  br label %for.inc.i51

if.end.i48:                                       ; preds = %s10_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.i47 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 11
  %11 = ptrtoint ptr %arrayidx6.i47 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i43, ptr %arrayidx6.i47, align 4
  br label %for.inc.i51

for.inc.i51:                                      ; preds = %if.end.i48, %do.end.i46
  %call.1.i49 = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([4 x %struct.stratix10_perip_c_clock], ptr @s10_main_perip_c_clks, i32 0, i32 1), ptr noundef %10) #4
  %cmp.i.1.i50 = icmp ugt ptr %call.1.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i50, label %do.end.1.i55, label %if.end.1.i53

if.end.1.i53:                                     ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.1.i52 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %arrayidx6.1.i52 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.1.i49, ptr %arrayidx6.1.i52, align 4
  br label %for.inc.1.i58

do.end.1.i55:                                     ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #6
  %call4.1.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14) #7
  br label %for.inc.1.i58

for.inc.1.i58:                                    ; preds = %do.end.1.i55, %if.end.1.i53
  %call.2.i56 = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([4 x %struct.stratix10_perip_c_clock], ptr @s10_main_perip_c_clks, i32 0, i32 2), ptr noundef %10) #4
  %cmp.i.2.i57 = icmp ugt ptr %call.2.i56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i57, label %do.end.2.i62, label %if.end.2.i60

if.end.2.i60:                                     ; preds = %for.inc.1.i58
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.2.i59 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 21
  %13 = ptrtoint ptr %arrayidx6.2.i59 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.2.i56, ptr %arrayidx6.2.i59, align 4
  br label %for.inc.2.i

do.end.2.i62:                                     ; preds = %for.inc.1.i58
  call void @__sanitizer_cov_trace_pc() #6
  %call4.2.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i62, %if.end.2.i60
  %call.3.i = tail call ptr @s10_register_periph(ptr noundef getelementptr inbounds ([4 x %struct.stratix10_perip_c_clock], ptr @s10_main_perip_c_clks, i32 0, i32 3), ptr noundef %10) #4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %do.end.3.i, label %if.end.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.3.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 22
  %14 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.3.i, ptr %arrayidx6.3.i, align 4
  br label %s10_clk_register_c_perip.exit

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16) #7
  br label %s10_clk_register_c_perip.exit

s10_clk_register_c_perip.exit:                    ; preds = %do.end.3.i, %if.end.3.i
  %15 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base12, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i70.for.body.i_crit_edge, %s10_clk_register_c_perip.exit
  %i.01.i = phi i32 [ 0, %s10_clk_register_c_perip.exit ], [ %inc.i, %for.inc.i70.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stratix10_perip_cnt_clock, ptr @s10_main_perip_cnt_clks, i32 %i.01.i
  %call.i64 = tail call ptr @s10_register_cnt_periph(ptr noundef %arrayidx.i, ptr noundef %16) #4
  %cmp.i.i65 = icmp ugt ptr %call.i64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i65, label %do.end.i67, label %if.end.i69

do.end.i67:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr %struct.stratix10_perip_cnt_clock, ptr @s10_main_perip_cnt_clks, i32 %i.01.i, i32 1
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 4
  %call4.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, ptr noundef %18) #7
  br label %for.inc.i70

if.end.i69:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i68 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %20
  %21 = ptrtoint ptr %arrayidx6.i68 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i64, ptr %arrayidx6.i68, align 4
  br label %for.inc.i70

for.inc.i70:                                      ; preds = %if.end.i69, %do.end.i67
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %s10_clk_register_cnt_perip.exit, label %for.inc.i70.for.body.i_crit_edge

for.inc.i70.for.body.i_crit_edge:                 ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

s10_clk_register_cnt_perip.exit:                  ; preds = %for.inc.i70
  %22 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base12, align 4
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.inc.i84.for.body.i76_crit_edge, %s10_clk_register_cnt_perip.exit
  %i.01.i72 = phi i32 [ 0, %s10_clk_register_cnt_perip.exit ], [ %inc.i82, %for.inc.i84.for.body.i76_crit_edge ]
  %arrayidx.i73 = getelementptr %struct.stratix10_gate_clock, ptr @s10_gate_clks, i32 %i.01.i72
  %call.i74 = tail call ptr @s10_register_gate(ptr noundef %arrayidx.i73, ptr noundef %23) #4
  %cmp.i.i75 = icmp ugt ptr %call.i74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i75, label %do.end.i79, label %if.end.i81

do.end.i79:                                       ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #6
  %name.i77 = getelementptr %struct.stratix10_gate_clock, ptr @s10_gate_clks, i32 %i.01.i72, i32 1
  %24 = ptrtoint ptr %name.i77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i77, align 4
  %call4.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.44, ptr noundef %25) #7
  br label %for.inc.i84

if.end.i81:                                       ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i73, align 4
  %arrayidx6.i80 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 %27
  %28 = ptrtoint ptr %arrayidx6.i80 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i74, ptr %arrayidx6.i80, align 4
  br label %for.inc.i84

for.inc.i84:                                      ; preds = %if.end.i81, %do.end.i79
  %inc.i82 = add nuw nsw i32 %i.01.i72, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, 24
  br i1 %exitcond.not.i83, label %s10_clk_register_gate.exit, label %for.inc.i84.for.body.i76_crit_edge

for.inc.i84.for.body.i76_crit_edge:               ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i76

s10_clk_register_gate.exit:                       ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %s10_clk_register_gate.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ 0, %s10_clk_register_gate.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s10_register_pll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s10_register_periph(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s10_register_cnt_periph(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s10_register_gate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__initcall__kmod_clk_s10__183_452_s10_clk_init1, !1, !"__initcall__kmod_clk_s10__183_452_s10_clk_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 452, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 442, i32 11}
!4 = !{ptr @stratix10_clkmgr_driver, !5, !"stratix10_clkmgr_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 439, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 396, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @s10_clkmgr_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @s10_clkmgr_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 376, i32 4}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @s10_clk_register_pll._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @s10_clk_register_pll._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 184, i32 24}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 186, i32 28}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 188, i32 30}
!23 = !{ptr @s10_pll_clks, !24, !"s10_pll_clks", i1 false, i1 false}
!24 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 183, i32 41}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 38, i32 15}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 40, i32 15}
!29 = !{ptr @boot_mux, !30, !"boot_mux", i1 false, i1 false}
!30 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 37, i32 37}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 20, i32 15}
!33 = !{ptr @pll_mux, !34, !"pll_mux", i1 false, i1 false}
!34 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 15, i32 37}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 317, i32 4}
!37 = !{ptr @s10_clk_register_c_perip._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @s10_clk_register_c_perip._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 193, i32 33}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 194, i32 33}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 195, i32 33}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 197, i32 33}
!47 = !{ptr @s10_main_perip_c_clks, !48, !"s10_main_perip_c_clks", i1 false, i1 false}
!48 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 192, i32 45}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 336, i32 4}
!51 = !{ptr @s10_clk_register_cnt_perip._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @s10_clk_register_cnt_perip._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 202, i32 28}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 204, i32 28}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 206, i32 30}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 208, i32 30}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 210, i32 33}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 212, i32 32}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 214, i32 30}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 216, i32 33}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 218, i32 33}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 220, i32 32}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 222, i32 30}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 224, i32 30}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 226, i32 33}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 228, i32 32}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 230, i32 30}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 232, i32 33}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 234, i32 33}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 236, i32 32}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 238, i32 31}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 240, i32 31}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 242, i32 31}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 244, i32 33}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 246, i32 32}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 248, i32 30}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 250, i32 34}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 252, i32 32}
!105 = !{ptr @s10_main_perip_cnt_clks, !106, !"s10_main_perip_cnt_clks", i1 false, i1 false}
!106 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 201, i32 47}
!107 = !{ptr @mpu_free_mux, !108, !"mpu_free_mux", i1 false, i1 false}
!108 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 134, i32 37}
!109 = !{ptr @noc_free_mux, !110, !"noc_free_mux", i1 false, i1 false}
!110 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 44, i32 37}
!111 = !{ptr @cntr_mux, !112, !"cntr_mux", i1 false, i1 false}
!112 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 24, i32 37}
!113 = !{ptr @noc_mux, !114, !"noc_mux", i1 false, i1 false}
!114 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 127, i32 37}
!115 = !{ptr @emaca_free_mux, !116, !"emaca_free_mux", i1 false, i1 false}
!116 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 57, i32 37}
!117 = !{ptr @emacb_free_mux, !118, !"emacb_free_mux", i1 false, i1 false}
!118 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 64, i32 37}
!119 = !{ptr @emac_ptp_free_mux, !120, !"emac_ptp_free_mux", i1 false, i1 false}
!120 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 71, i32 37}
!121 = !{ptr @gpio_db_free_mux, !122, !"gpio_db_free_mux", i1 false, i1 false}
!122 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 78, i32 37}
!123 = !{ptr @sdmmc_free_mux, !124, !"sdmmc_free_mux", i1 false, i1 false}
!124 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 85, i32 37}
!125 = !{ptr @s2f_usr1_free_mux, !126, !"s2f_usr1_free_mux", i1 false, i1 false}
!126 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 92, i32 37}
!127 = !{ptr @psi_ref_free_mux, !128, !"psi_ref_free_mux", i1 false, i1 false}
!128 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 99, i32 37}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 356, i32 4}
!131 = !{ptr @s10_clk_register_gate._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @s10_clk_register_gate._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 257, i32 23}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 259, i32 30}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 261, i32 29}
!139 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 263, i32 27}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 265, i32 25}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 267, i32 25}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 269, i32 25}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 271, i32 28}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 273, i32 27}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 275, i32 28}
!153 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 277, i32 29}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 279, i32 25}
!157 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 281, i32 25}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 283, i32 25}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 285, i32 28}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 287, i32 27}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 289, i32 25}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 291, i32 29}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 293, i32 27}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 295, i32 23}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 297, i32 25}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 299, i32 26}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 301, i32 24}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 303, i32 28}
!181 = !{ptr @s10_gate_clks, !182, !"s10_gate_clks", i1 false, i1 false}
!182 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 256, i32 42}
!183 = !{ptr @mpu_mux, !184, !"mpu_mux", i1 false, i1 false}
!184 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 106, i32 37}
!185 = !{ptr @s2f_usr0_mux, !186, !"s2f_usr0_mux", i1 false, i1 false}
!186 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 113, i32 37}
!187 = !{ptr @emac_mux, !188, !"emac_mux", i1 false, i1 false}
!188 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 120, i32 37}
!189 = !{ptr @emac_ptp_mux, !190, !"emac_ptp_mux", i1 false, i1 false}
!190 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 175, i32 37}
!191 = !{ptr @gpio_db_mux, !192, !"gpio_db_mux", i1 false, i1 false}
!192 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 168, i32 37}
!193 = !{ptr @sdmmc_mux, !194, !"sdmmc_mux", i1 false, i1 false}
!194 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 147, i32 37}
!195 = !{ptr @s2f_user1_mux, !196, !"s2f_user1_mux", i1 false, i1 false}
!196 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 154, i32 37}
!197 = !{ptr @psi_mux, !198, !"psi_mux", i1 false, i1 false}
!198 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 161, i32 37}
!199 = !{ptr @stratix10_clkmgr_match_table, !200, !"stratix10_clkmgr_match_table", i1 false, i1 false}
!200 = !{!"../drivers/clk/socfpga/clk-s10.c", i32 433, i32 34}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
