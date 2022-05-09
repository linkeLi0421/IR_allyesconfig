; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt7986-topckgen.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt7986-topckgen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_mux = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_clk_mt7986_topckgen__170_342_clk_mt7986_topckgen_drv_init6 = internal global ptr @clk_mt7986_topckgen_drv_init, section ".initcall6.init", align 4
@clk_mt7986_topckgen_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt7986_topckgen_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt7986_topckgen, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-mt7986-topckgen\00", [44 x i8] zeroinitializer }, align 32
@of_match_clk_mt7986_topckgen = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7986-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@clk_mt7986_topckgen_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_mt7986_topckgen_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/clk/mediatek/clk-mt7986-topckgen.c\00", [53 x i8] zeroinitializer }, align 32
@clk_mt7986_topckgen_probe._entry_ptr = internal global ptr @clk_mt7986_topckgen_probe._entry, section ".printk_index", align 4
@top_fixed_clks = internal constant { [2 x %struct.mtk_fixed_clk], [32 x i8] } { [2 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 0, ptr @.str.7, ptr @.str.8, i32 40000000 }, %struct.mtk_fixed_clk { i32 63, ptr @.str.9, ptr @.str.8, i32 50000000 }], [32 x i8] zeroinitializer }, align 32
@top_divs = internal constant { [25 x %struct.mtk_fixed_factor], [108 x i8] } { [25 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 1, ptr @.str.10, ptr @.str.7, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.11, ptr @.str.7, i32 1, i32 1250 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.12, ptr @.str.7, i32 1, i32 1220 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.13, ptr @.str.14, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.15, ptr @.str.14, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.16, ptr @.str.14, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.17, ptr @.str.14, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.18, ptr @.str.14, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.19, ptr @.str.20, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.21, ptr @.str.20, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.22, ptr @.str.20, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.23, ptr @.str.20, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.24, ptr @.str.20, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.25, ptr @.str.20, i32 1, i32 30 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.26, ptr @.str.27, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.28, ptr @.str.29, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.30, ptr @.str.29, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.31, ptr @.str.29, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.32, ptr @.str.29, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.33, ptr @.str.29, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.34, ptr @.str.29, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.35, ptr @.str.36, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.37, ptr @.str.36, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.38, ptr @.str.36, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.39, ptr @.str.40, i32 1, i32 10 }], [108 x i8] zeroinitializer }, align 32
@top_muxes = internal constant { [37 x %struct.mtk_mux], [388 x i8] } { [37 x %struct.mtk_mux] [%struct.mtk_mux { i32 26, ptr @.str.41, ptr @nfi1x_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 0, i8 3, i8 7, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 27, ptr @.str.42, ptr @spinfi_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 8, i8 3, i8 15, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 28, ptr @.str.43, ptr @spi_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 16, i8 3, i8 23, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 29, ptr @.str.44, ptr @spi_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 24, i8 3, i8 31, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 30, ptr @.str.45, ptr @uart_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 0, i8 2, i8 7, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 31, ptr @.str.46, ptr @pwm_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 8, i8 2, i8 15, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 32, ptr @.str.47, ptr @i2c_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 16, i8 2, i8 23, i8 6, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 33, ptr @.str.48, ptr @pextp_tl_ck_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 24, i8 2, i8 31, i8 7, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 34, ptr @.str.49, ptr @emmc_250m_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 0, i8 1, i8 7, i8 8, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 35, ptr @.str.50, ptr @emmc_416m_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 8, i8 1, i8 15, i8 9, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 36, ptr @.str.51, ptr @f_26m_adc_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 16, i8 1, i8 23, i8 10, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 37, ptr @.str.52, ptr @f_26m_adc_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 24, i8 1, i8 31, i8 11, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 38, ptr @.str.53, ptr @dramc_md32_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 0, i8 1, i8 7, i8 12, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 39, ptr @.str.54, ptr @sysaxi_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 8, i8 2, i8 15, i8 13, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 40, ptr @.str.55, ptr @sysapb_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 16, i8 2, i8 23, i8 14, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 41, ptr @.str.56, ptr @arm_db_main_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 24, i8 1, i8 31, i8 15, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 42, ptr @.str.57, ptr @arm_db_jtsel_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 0, i8 1, i8 7, i8 16, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 43, ptr @.str.58, ptr @netsys_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 8, i8 1, i8 15, i8 17, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 44, ptr @.str.59, ptr @netsys_500m_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 16, i8 1, i8 23, i8 18, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 45, ptr @.str.60, ptr @netsys_mcu_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 24, i8 3, i8 31, i8 19, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 46, ptr @.str.61, ptr @netsys_2x_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 0, i8 2, i8 7, i8 20, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 47, ptr @.str.62, ptr @sgm_325m_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 8, i8 1, i8 15, i8 21, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 48, ptr @.str.63, ptr @sgm_reg_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 16, i8 1, i8 23, i8 22, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 49, ptr @.str.64, ptr @a1sys_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 24, i8 1, i8 31, i8 23, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 50, ptr @.str.65, ptr @conn_mcusys_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 0, i8 1, i8 7, i8 24, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 51, ptr @.str.66, ptr @eip_b_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 8, i8 1, i8 15, i8 25, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 52, ptr @.str.67, ptr @f_26m_adc_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 16, i8 1, i8 23, i8 26, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 53, ptr @.str.68, ptr @f_26m_adc_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 24, i8 1, i8 31, i8 27, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 54, ptr @.str.69, ptr @f_26m_adc_parents, i32 4, i32 112, i32 116, i32 120, i32 448, i8 0, i8 1, i8 7, i8 28, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 55, ptr @.str.70, ptr @aud_l_parents, i32 4, i32 112, i32 116, i32 120, i32 448, i8 8, i8 2, i8 15, i8 29, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 56, ptr @.str.71, ptr @a_tuner_parents, i32 4, i32 112, i32 116, i32 120, i32 448, i8 16, i8 2, i8 23, i8 30, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 57, ptr @.str.72, ptr @f_26m_adc_parents, i32 4, i32 112, i32 116, i32 120, i32 452, i8 24, i8 1, i8 31, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 58, ptr @.str.73, ptr @u2u3_sys_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 0, i8 1, i8 7, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 59, ptr @.str.74, ptr @u2u3_sys_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 8, i8 1, i8 15, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 60, ptr @.str.75, ptr @da_u2_refsel_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 16, i8 1, i8 23, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 61, ptr @.str.76, ptr @da_u2_refsel_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 24, i8 1, i8 31, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 62, ptr @.str.77, ptr @sgm_reg_parents, i32 4, i32 144, i32 148, i32 152, i32 452, i8 0, i8 1, i8 7, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }], [388 x i8] zeroinitializer }, align 32
@mt7986_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clk_mt7986_topckgen_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@clk_mt7986_topckgen_probe._entry_ptr.6 = internal global ptr @clk_mt7986_topckgen_probe._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"top_xtal\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkxtal\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"top_jtag\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"top_xtal_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"top_rtc_32k\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_rtc_32p7k\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"top_mpll_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"top_mpll_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"top_mpll_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_mpll_d8_d2\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_mpll_d3_d2\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_mmpll_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_mmpll_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_mmpll_d8\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_mmpll_d8_d2\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_mmpll_d3_d8\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_mmpll_u2phy\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll2_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_net1pll_d4\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net1pll\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_net1pll_d5\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_net1pll_d5_d2\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_net1pll_d5_d4\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_net1pll_d8_d2\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_net1pll_d8_d4\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_net2pll_d4\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net2pll\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_net2pll_d4_d2\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_net2pll_d3_d2\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"top_wedmcupll_d5_d2\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wedmcupll\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfi1x_sel\00", [22 x i8] zeroinitializer }, align 32
@nfi1x_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.22, ptr @.str.33, ptr @.str.38, ptr @.str.15, ptr @.str.23, ptr @.str.39, ptr @.str.16], section ".init.rodata", align 4
@mtk_mux_gate_clr_set_upd_ops = external dso_local constant %struct.clk_ops, align 4
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spinfi_sel\00", [21 x i8] zeroinitializer }, align 32
@spinfi_parents = internal constant [8 x ptr] [ptr @.str.10, ptr @.str.7, ptr @.str.32, ptr @.str.15, ptr @.str.23, ptr @.str.39, ptr @.str.24, ptr @.str.16], section ".init.rodata", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.13, ptr @.str.22, ptr @.str.33, ptr @.str.38, ptr @.str.32, ptr @.str.15, ptr @.str.39], section ".init.rodata", align 4
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spim_mst_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.16, ptr @.str.17], section ".init.rodata", align 4
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.33, ptr @.str.32, ptr @.str.15], section ".init.rodata", align 4
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sel\00", [24 x i8] zeroinitializer }, align 32
@i2c_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.32, ptr @.str.15, ptr @.str.34], section ".init.rodata", align 4
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pextp_tl_ck_sel\00", [16 x i8] zeroinitializer }, align 32
@pextp_tl_ck_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.32, ptr @.str.37, ptr @.str.11], section ".init.rodata", align 4
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emmc_250m_sel\00", [18 x i8] zeroinitializer }, align 32
@emmc_250m_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.31], section ".init.rodata", align 4
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emmc_416m_sel\00", [18 x i8] zeroinitializer }, align 32
@emmc_416m_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.14], section ".init.rodata", align 4
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_26m_adc_sel\00", [18 x i8] zeroinitializer }, align 32
@f_26m_adc_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.17], section ".init.rodata", align 4
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dramc_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dramc_md32_sel\00", [17 x i8] zeroinitializer }, align 32
@dramc_md32_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.13], section ".init.rodata", align 4
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysaxi_sel\00", [21 x i8] zeroinitializer }, align 32
@sysaxi_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.33, ptr @.str.35], section ".init.rodata", align 4
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysapb_sel\00", [21 x i8] zeroinitializer }, align 32
@sysapb_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.18, ptr @.str.37], section ".init.rodata", align 4
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_db_main_sel\00", [16 x i8] zeroinitializer }, align 32
@arm_db_main_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.38], section ".init.rodata", align 4
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm_db_jtsel\00", [19 x i8] zeroinitializer }, align 32
@arm_db_jtsel_parents = internal constant [2 x ptr] [ptr @.str.9, ptr @.str.7], section ".init.rodata", align 4
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netsys_sel\00", [21 x i8] zeroinitializer }, align 32
@netsys_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.21], section ".init.rodata", align 4
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netsys_500m_sel\00", [16 x i8] zeroinitializer }, align 32
@netsys_500m_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.30], section ".init.rodata", align 4
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netsys_mcu_sel\00", [17 x i8] zeroinitializer }, align 32
@netsys_mcu_parents = internal constant [5 x ptr] [ptr @.str.7, ptr @.str.40, ptr @.str.19, ptr @.str.28, ptr @.str.30], section ".init.rodata", align 4
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"netsys_2x_sel\00", [18 x i8] zeroinitializer }, align 32
@netsys_2x_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.36, ptr @.str.40, ptr @.str.19], section ".init.rodata", align 4
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sgm_325m_sel\00", [19 x i8] zeroinitializer }, align 32
@sgm_325m_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.78], section ".init.rodata", align 4
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sgm_reg_sel\00", [20 x i8] zeroinitializer }, align 32
@sgm_reg_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.34], section ".init.rodata", align 4
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a1sys_sel\00", [22 x i8] zeroinitializer }, align 32
@a1sys_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.26], section ".init.rodata", align 4
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"conn_mcusys_sel\00", [16 x i8] zeroinitializer }, align 32
@conn_mcusys_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.19], section ".init.rodata", align 4
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eip_b_sel\00", [22 x i8] zeroinitializer }, align 32
@eip_b_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.36], section ".init.rodata", align 4
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_phy_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb3_phy_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csw_f26m_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_l_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_l_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.27, ptr @.str.17], section ".init.rodata", align 4
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a_tuner_sel\00", [20 x i8] zeroinitializer }, align 32
@a_tuner_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.26, ptr @.str.17], section ".init.rodata", align 4
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u2u3_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"u2u3_sys_sel\00", [19 x i8] zeroinitializer }, align 32
@u2u3_sys_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.32], section ".init.rodata", align 4
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u2u3_xhci_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da_u2_refsel\00", [19 x i8] zeroinitializer }, align 32
@da_u2_refsel_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.25], section ".init.rodata", align 4
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da_u2_ck_1p_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ap2cnn_host_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sgmpll\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7986_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"clk_mt7986_topckgen_drv\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 335, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 338, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [29 x i8] c"of_match_clk_mt7986_topckgen\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 330, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 295, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"top_fixed_clks\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 22, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [9 x i8] c"top_divs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 27, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 175, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"mt7986_clk_lock\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 319, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 23, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 24, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 29, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 30, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 31, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 33, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 34, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 35, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 36, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 37, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 39, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 40, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 41, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 42, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 43, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 44, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 46, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 48, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 49, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 50, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 51, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 52, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 53, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 55, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 56, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 57, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 59, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 177, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 179, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 181, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 183, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 186, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 188, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 190, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 192, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 196, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 199, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 202, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 205, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 208, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 211, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 213, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 215, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 219, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 222, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 224, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 227, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 231, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 234, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 237, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 240, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 243, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 246, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 248, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 251, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 255, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 258, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 260, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 263, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 266, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 269, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 272, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 275, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 279, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 145, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [46 x i8] c"../drivers/clk/mediatek/clk-mt7986-topckgen.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 20, i32 8 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__initcall__kmod_clk_mt7986_topckgen__170_342_clk_mt7986_topckgen_drv_init6, ptr @clk_mt7986_topckgen_probe._entry, ptr @clk_mt7986_topckgen_probe._entry.4, ptr @clk_mt7986_topckgen_probe._entry_ptr, ptr @clk_mt7986_topckgen_probe._entry_ptr.6, ptr @clk_mt7986_topckgen_drv, ptr @.str, ptr @of_match_clk_mt7986_topckgen, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @top_fixed_clks, ptr @top_divs, ptr @top_muxes, ptr @mt7986_clk_lock, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt7986_topckgen_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt7986_topckgen to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt7986_topckgen_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_divs to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 1628, i32 2016, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7986_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt7986_topckgen_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt7986_topckgen_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt7986_topckgen_drv, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt7986_topckgen_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 64) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 2, ptr noundef nonnull %call2) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 25, ptr noundef nonnull %call2) #4
  %call6 = tail call i32 @mtk_clk_register_muxes(ptr noundef nonnull @top_muxes, i32 noundef 37, ptr noundef %1, ptr noundef nonnull @mt7986_clk_lock, ptr noundef nonnull %call2) #4
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call2, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 39
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.clk_prepare_enable.exit_crit_edge

if.end5.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end5
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end5.clk_prepare_enable.exit_crit_edge
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call2, align 4
  %arrayidx9 = getelementptr ptr, ptr %7, i32 40
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %call.i52 = tail call i32 @clk_prepare(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %clk_prepare_enable.exit.clk_prepare_enable.exit58_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit58_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit58

if.end.i56:                                       ; preds = %clk_prepare_enable.exit
  %call1.i54 = tail call i32 @clk_enable(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool2.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool2.not.i55, label %if.end.i56.clk_prepare_enable.exit58_crit_edge, label %if.then3.i57

if.end.i56.clk_prepare_enable.exit58_crit_edge:   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit58

if.then3.i57:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %clk_prepare_enable.exit58

clk_prepare_enable.exit58:                        ; preds = %if.then3.i57, %if.end.i56.clk_prepare_enable.exit58_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit58_crit_edge
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call2, align 4
  %arrayidx12 = getelementptr ptr, ptr %11, i32 37
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12, align 4
  %call.i59 = tail call i32 @clk_prepare(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i60, label %if.end.i63, label %clk_prepare_enable.exit58.clk_prepare_enable.exit65_crit_edge

clk_prepare_enable.exit58.clk_prepare_enable.exit65_crit_edge: ; preds = %clk_prepare_enable.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit65

if.end.i63:                                       ; preds = %clk_prepare_enable.exit58
  %call1.i61 = tail call i32 @clk_enable(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool2.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool2.not.i62, label %if.end.i63.clk_prepare_enable.exit65_crit_edge, label %if.then3.i64

if.end.i63.clk_prepare_enable.exit65_crit_edge:   ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit65

if.then3.i64:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %13) #4
  br label %clk_prepare_enable.exit65

clk_prepare_enable.exit65:                        ; preds = %if.then3.i64, %if.end.i63.clk_prepare_enable.exit65_crit_edge, %clk_prepare_enable.exit58.clk_prepare_enable.exit65_crit_edge
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call2, align 4
  %arrayidx15 = getelementptr ptr, ptr %15, i32 38
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15, align 4
  %call.i66 = tail call i32 @clk_prepare(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i70, label %clk_prepare_enable.exit65.clk_prepare_enable.exit72_crit_edge

clk_prepare_enable.exit65.clk_prepare_enable.exit72_crit_edge: ; preds = %clk_prepare_enable.exit65
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit72

if.end.i70:                                       ; preds = %clk_prepare_enable.exit65
  %call1.i68 = tail call i32 @clk_enable(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool2.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool2.not.i69, label %if.end.i70.clk_prepare_enable.exit72_crit_edge, label %if.then3.i71

if.end.i70.clk_prepare_enable.exit72_crit_edge:   ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit72

if.then3.i71:                                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %17) #4
  br label %clk_prepare_enable.exit72

clk_prepare_enable.exit72:                        ; preds = %if.then3.i71, %if.end.i70.clk_prepare_enable.exit72_crit_edge, %clk_prepare_enable.exit65.clk_prepare_enable.exit72_crit_edge
  %18 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call2, align 4
  %arrayidx18 = getelementptr ptr, ptr %19, i32 54
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 4
  %call.i73 = tail call i32 @clk_prepare(ptr noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.end.i77, label %clk_prepare_enable.exit72.clk_prepare_enable.exit79_crit_edge

clk_prepare_enable.exit72.clk_prepare_enable.exit79_crit_edge: ; preds = %clk_prepare_enable.exit72
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit79

if.end.i77:                                       ; preds = %clk_prepare_enable.exit72
  %call1.i75 = tail call i32 @clk_enable(ptr noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool2.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool2.not.i76, label %if.end.i77.clk_prepare_enable.exit79_crit_edge, label %if.then3.i78

if.end.i77.clk_prepare_enable.exit79_crit_edge:   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit79

if.then3.i78:                                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %21) #4
  br label %clk_prepare_enable.exit79

clk_prepare_enable.exit79:                        ; preds = %if.then3.i78, %if.end.i77.clk_prepare_enable.exit79_crit_edge, %clk_prepare_enable.exit72.clk_prepare_enable.exit79_crit_edge
  %22 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call2, align 4
  %arrayidx21 = getelementptr ptr, ptr %23, i32 48
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx21, align 4
  %call.i80 = tail call i32 @clk_prepare(ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end.i84, label %clk_prepare_enable.exit79.clk_prepare_enable.exit86_crit_edge

clk_prepare_enable.exit79.clk_prepare_enable.exit86_crit_edge: ; preds = %clk_prepare_enable.exit79
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit86

if.end.i84:                                       ; preds = %clk_prepare_enable.exit79
  %call1.i82 = tail call i32 @clk_enable(ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool2.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool2.not.i83, label %if.end.i84.clk_prepare_enable.exit86_crit_edge, label %if.then3.i85

if.end.i84.clk_prepare_enable.exit86_crit_edge:   ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit86

if.then3.i85:                                     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %clk_prepare_enable.exit86

clk_prepare_enable.exit86:                        ; preds = %if.then3.i85, %if.end.i84.clk_prepare_enable.exit86_crit_edge, %clk_prepare_enable.exit79.clk_prepare_enable.exit86_crit_edge
  %call23 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %clk_prepare_enable.exit86.cleanup_crit_edge, label %do.end28

clk_prepare_enable.exit86.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end28:                                         ; preds = %clk_prepare_enable.exit86
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call23) #7
  tail call void @mtk_free_clk_data(ptr noundef nonnull %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %clk_prepare_enable.exit86.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call23, %do.end28 ], [ -12, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %clk_prepare_enable.exit86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_muxes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_free_clk_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @__initcall__kmod_clk_mt7986_topckgen__170_342_clk_mt7986_topckgen_drv_init6, !1, !"__initcall__kmod_clk_mt7986_topckgen__170_342_clk_mt7986_topckgen_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 342, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 338, i32 11}
!4 = !{ptr @clk_mt7986_topckgen_drv, !5, !"clk_mt7986_topckgen_drv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 335, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 295, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @clk_mt7986_topckgen_probe._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @clk_mt7986_topckgen_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 319, i32 3}
!14 = !{ptr @clk_mt7986_topckgen_probe._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @clk_mt7986_topckgen_probe._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 23, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 24, i32 2}
!21 = !{ptr @top_fixed_clks, !22, !"top_fixed_clks", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 22, i32 35}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 29, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 30, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 31, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 33, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 34, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 35, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 36, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 37, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 39, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 40, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 41, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 42, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 43, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 44, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 46, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 48, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 49, i32 2}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 50, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 51, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 52, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 53, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 55, i32 2}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 56, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 57, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 59, i32 2}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @top_divs, !80, !"top_divs", i1 false, i1 false}
!80 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 27, i32 38}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 177, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 179, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 181, i32 2}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 183, i32 2}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 186, i32 2}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 188, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 190, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 192, i32 2}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 196, i32 2}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 199, i32 2}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 202, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 205, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 208, i32 2}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 211, i32 2}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 213, i32 2}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 215, i32 2}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 219, i32 2}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 222, i32 2}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 224, i32 2}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 227, i32 2}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 231, i32 2}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 234, i32 2}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 237, i32 2}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 240, i32 2}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 243, i32 2}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 246, i32 2}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 248, i32 2}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 251, i32 2}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 255, i32 2}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 258, i32 2}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 260, i32 2}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 263, i32 2}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 266, i32 2}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 269, i32 2}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 272, i32 2}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 275, i32 2}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 279, i32 2}
!155 = !{ptr @top_muxes, !156, !"top_muxes", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 175, i32 29}
!157 = !{ptr @nfi1x_parents, !158, !"nfi1x_parents", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 63, i32 26}
!159 = !{ptr @spinfi_parents, !160, !"spinfi_parents", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 72, i32 26}
!161 = !{ptr @spi_parents, !162, !"spi_parents", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 78, i32 26}
!163 = !{ptr @uart_parents, !164, !"uart_parents", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 84, i32 26}
!165 = !{ptr @pwm_parents, !166, !"pwm_parents", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 88, i32 26}
!167 = !{ptr @i2c_parents, !168, !"i2c_parents", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 92, i32 26}
!169 = !{ptr @pextp_tl_ck_parents, !170, !"pextp_tl_ck_parents", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 96, i32 26}
!171 = !{ptr @emmc_250m_parents, !172, !"emmc_250m_parents", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 100, i32 26}
!173 = !{ptr @emmc_416m_parents, !174, !"emmc_416m_parents", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 104, i32 26}
!175 = !{ptr @f_26m_adc_parents, !176, !"f_26m_adc_parents", i1 false, i1 false}
!176 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 107, i32 26}
!177 = !{ptr @dramc_md32_parents, !178, !"dramc_md32_parents", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 110, i32 26}
!179 = !{ptr @sysaxi_parents, !180, !"sysaxi_parents", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 113, i32 26}
!181 = !{ptr @sysapb_parents, !182, !"sysapb_parents", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 117, i32 26}
!183 = !{ptr @arm_db_main_parents, !184, !"arm_db_main_parents", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 121, i32 26}
!185 = !{ptr @arm_db_jtsel_parents, !186, !"arm_db_jtsel_parents", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 125, i32 26}
!187 = !{ptr @netsys_parents, !188, !"netsys_parents", i1 false, i1 false}
!188 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 128, i32 26}
!189 = !{ptr @netsys_500m_parents, !190, !"netsys_500m_parents", i1 false, i1 false}
!190 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 131, i32 26}
!191 = !{ptr @netsys_mcu_parents, !192, !"netsys_mcu_parents", i1 false, i1 false}
!192 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 135, i32 26}
!193 = !{ptr @netsys_2x_parents, !194, !"netsys_2x_parents", i1 false, i1 false}
!194 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 140, i32 26}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 145, i32 12}
!197 = !{ptr @sgm_325m_parents, !198, !"sgm_325m_parents", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 144, i32 26}
!199 = !{ptr @sgm_reg_parents, !200, !"sgm_reg_parents", i1 false, i1 false}
!200 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 147, i32 26}
!201 = !{ptr @a1sys_parents, !202, !"a1sys_parents", i1 false, i1 false}
!202 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 151, i32 26}
!203 = !{ptr @conn_mcusys_parents, !204, !"conn_mcusys_parents", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 154, i32 26}
!205 = !{ptr @eip_b_parents, !206, !"eip_b_parents", i1 false, i1 false}
!206 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 157, i32 26}
!207 = !{ptr @aud_l_parents, !208, !"aud_l_parents", i1 false, i1 false}
!208 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 160, i32 26}
!209 = !{ptr @a_tuner_parents, !210, !"a_tuner_parents", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 163, i32 26}
!211 = !{ptr @u2u3_sys_parents, !212, !"u2u3_sys_parents", i1 false, i1 false}
!212 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 167, i32 26}
!213 = !{ptr @da_u2_refsel_parents, !214, !"da_u2_refsel_parents", i1 false, i1 false}
!214 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 171, i32 26}
!215 = !{ptr @.str.79, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 20, i32 8}
!217 = !{ptr @mt7986_clk_lock, !216, !"mt7986_clk_lock", i1 false, i1 false}
!218 = !{ptr @of_match_clk_mt7986_topckgen, !219, !"of_match_clk_mt7986_topckgen", i1 false, i1 false}
!219 = !{!"../drivers/clk/mediatek/clk-mt7986-topckgen.c", i32 330, i32 34}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
