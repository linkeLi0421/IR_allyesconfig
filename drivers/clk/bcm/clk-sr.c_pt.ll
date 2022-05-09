; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-sr.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-sr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_aon_pwr_ctrl, %struct.iproc_asiu_gate, %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_sw_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_pll_vco_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op }
%struct.iproc_pll_aon_pwr_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i32, i32, i32 }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iproc_pll_sw_ctrl = type { i32, i32 }
%struct.iproc_pll_vco_ctrl = type { i32, i32 }
%struct.iproc_clk_reg_op = type { i32, i32, i32 }
%struct.iproc_clk_ctrl = type { i32, i32, %struct.iproc_clk_enable_ctrl, %struct.iproc_clk_reg_op }
%struct.iproc_clk_enable_ctrl = type { i32, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__of_table_sr_genpll3_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll3_clk_init }, section "__clk_of_table", align 4
@__initcall__kmod_clk_sr__183_421_sr_clk_driver_init6 = internal global ptr @sr_clk_driver_init, section ".initcall6.init", align 4
@sr_genpll3 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 19, i32 18 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_genpll3_clk = internal constant { [3 x %struct.iproc_clk_ctrl], [52 x i8] } { [3 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }], [52 x i8] zeroinitializer }, align 32
@sr_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sr_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sr_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sr-clk\00", [25 x i8] zeroinitializer }, align 32
@sr_clk_dt_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll0_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll2_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll4_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll5_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-lcpll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_lcpll0_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-lcpll1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_lcpll1_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-lcpll-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_lcpll_pcie_clk_init }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@sr_genpll0 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 5, i32 1, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_genpll0_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 28, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 11, i32 5, i32 17 }, %struct.iproc_clk_reg_op { i32 28, i32 20, i32 9 } }], [36 x i8] zeroinitializer }, align 32
@sr_genpll2 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 13, i32 12 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_genpll2_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 28, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 6, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 11, i32 5, i32 17 }, %struct.iproc_clk_reg_op { i32 28, i32 20, i32 9 } }], [36 x i8] zeroinitializer }, align 32
@sr_genpll4 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 25, i32 24 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_genpll4_clk = internal constant { [6 x %struct.iproc_clk_ctrl], [40 x i8] } { [6 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 28, i32 10, i32 9 } }], [40 x i8] zeroinitializer }, align 32
@sr_genpll5 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 1, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_genpll5_clk = internal constant { [4 x %struct.iproc_clk_ctrl], [48 x i8] } { [4 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }], [48 x i8] zeroinitializer }, align 32
@sr_lcpll0 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 17, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 19, i32 18 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 31, i32 30 }, %struct.iproc_pll_dig_filter_ctrl zeroinitializer, %struct.iproc_pll_sw_ctrl { i32 4, i32 31 }, %struct.iproc_clk_reg_op { i32 4, i32 16, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 26, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 56, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_lcpll0_clk = internal constant { [5 x %struct.iproc_clk_ctrl], [44 x i8] } { [5 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 20, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 20, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }], [44 x i8] zeroinitializer }, align 32
@sr_lcpll1 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 17, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 22, i32 21 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 31, i32 30 }, %struct.iproc_pll_dig_filter_ctrl zeroinitializer, %struct.iproc_pll_sw_ctrl { i32 4, i32 31 }, %struct.iproc_clk_reg_op { i32 4, i32 16, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 26, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 56, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_lcpll1_clk = internal constant { [4 x %struct.iproc_clk_ctrl], [48 x i8] } { [4 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 20, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 20, i32 20, i32 9 } }], [48 x i8] zeroinitializer }, align 32
@sr_lcpll_pcie = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 17, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 25, i32 24 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 31, i32 30 }, %struct.iproc_pll_dig_filter_ctrl zeroinitializer, %struct.iproc_pll_sw_ctrl { i32 4, i32 31 }, %struct.iproc_clk_reg_op { i32 4, i32 16, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 26, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 56, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@sr_lcpll_pcie_clk = internal constant { [2 x %struct.iproc_clk_ctrl], [56 x i8] } { [2 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 9 } }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"sr_genpll3\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 153, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"sr_genpll3_clk\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 166, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"sr_clk_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 414, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 416, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"sr_clk_dt_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 392, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"sr_genpll0\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 34, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"sr_genpll0_clk\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 47, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"sr_genpll2\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 94, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"sr_genpll2_clk\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 107, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"sr_genpll4\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 188, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"sr_genpll4_clk\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 201, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"sr_genpll5\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 242, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"sr_genpll5_clk\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 255, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"sr_lcpll0\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 281, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"sr_lcpll0_clk\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 291, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"sr_lcpll1\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 326, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"sr_lcpll1_clk\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 336, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"sr_lcpll_pcie\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 365, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"sr_lcpll_pcie_clk\00", align 1
@___asan_gen_.56 = private constant [28 x i8] c"../drivers/clk/bcm/clk-sr.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 375, i32 36 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_clk_sr__183_421_sr_clk_driver_init6, ptr @__of_table_sr_genpll3_clk, ptr @sr_genpll3, ptr @sr_genpll3_clk, ptr @sr_clk_driver, ptr @.str, ptr @sr_clk_dt_ids, ptr @sr_genpll0, ptr @sr_genpll0_clk, ptr @sr_genpll2, ptr @sr_genpll2_clk, ptr @sr_genpll4, ptr @sr_genpll4_clk, ptr @sr_genpll5, ptr @sr_genpll5_clk, ptr @sr_lcpll0, ptr @sr_lcpll0_clk, ptr @sr_lcpll1, ptr @sr_lcpll1_clk, ptr @sr_lcpll_pcie, ptr @sr_lcpll_pcie_clk], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll3 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll3_clk to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_clk_dt_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll0_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll2 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll2_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll4 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll4_clk to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll5 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_genpll5_clk to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_lcpll0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_lcpll0_clk to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_lcpll1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_lcpll1_clk to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_lcpll_pcie to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_lcpll_pcie_clk to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_genpll3_clk_init(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @sr_genpll3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll3_clk, i32 noundef 3) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_clk_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sr_clk_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_pll_clk_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_clk_probe(ptr noundef %pdev) #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 %call(ptr noundef %pdev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_genpll0_clk_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %1, ptr noundef nonnull @sr_genpll0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll0_clk, i32 noundef 7) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_genpll2_clk_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %1, ptr noundef nonnull @sr_genpll2, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll2_clk, i32 noundef 7) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_genpll4_clk_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %1, ptr noundef nonnull @sr_genpll4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll4_clk, i32 noundef 6) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_genpll5_clk_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %1, ptr noundef nonnull @sr_genpll5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll5_clk, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_lcpll0_clk_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %1, ptr noundef nonnull @sr_lcpll0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_lcpll0_clk, i32 noundef 5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_lcpll1_clk_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %1, ptr noundef nonnull @sr_lcpll1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_lcpll1_clk, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_lcpll_pcie_clk_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %1, ptr noundef nonnull @sr_lcpll_pcie, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_lcpll_pcie_clk, i32 noundef 2) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__of_table_sr_genpll3_clk, !1, !"__of_table_sr_genpll3_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-sr.c", i32 186, i32 1}
!2 = !{ptr @__initcall__kmod_clk_sr__183_421_sr_clk_driver_init6, !3, !"__initcall__kmod_clk_sr__183_421_sr_clk_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-sr.c", i32 421, i32 1}
!4 = !{ptr @sr_genpll3, !5, !"sr_genpll3", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-sr.c", i32 153, i32 36}
!6 = !{ptr @sr_genpll3_clk, !7, !"sr_genpll3_clk", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-sr.c", i32 166, i32 36}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/bcm/clk-sr.c", i32 416, i32 11}
!10 = !{ptr @sr_clk_driver, !11, !"sr_clk_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/bcm/clk-sr.c", i32 414, i32 31}
!12 = !{ptr @sr_clk_dt_ids, !13, !"sr_clk_dt_ids", i1 false, i1 false}
!13 = !{!"../drivers/clk/bcm/clk-sr.c", i32 392, i32 34}
!14 = !{ptr @sr_genpll0, !15, !"sr_genpll0", i1 false, i1 false}
!15 = !{!"../drivers/clk/bcm/clk-sr.c", i32 34, i32 36}
!16 = !{ptr @sr_genpll0_clk, !17, !"sr_genpll0_clk", i1 false, i1 false}
!17 = !{!"../drivers/clk/bcm/clk-sr.c", i32 47, i32 36}
!18 = !{ptr @sr_genpll2, !19, !"sr_genpll2", i1 false, i1 false}
!19 = !{!"../drivers/clk/bcm/clk-sr.c", i32 94, i32 36}
!20 = !{ptr @sr_genpll2_clk, !21, !"sr_genpll2_clk", i1 false, i1 false}
!21 = !{!"../drivers/clk/bcm/clk-sr.c", i32 107, i32 36}
!22 = !{ptr @sr_genpll4, !23, !"sr_genpll4", i1 false, i1 false}
!23 = !{!"../drivers/clk/bcm/clk-sr.c", i32 188, i32 36}
!24 = !{ptr @sr_genpll4_clk, !25, !"sr_genpll4_clk", i1 false, i1 false}
!25 = !{!"../drivers/clk/bcm/clk-sr.c", i32 201, i32 36}
!26 = !{ptr @sr_genpll5, !27, !"sr_genpll5", i1 false, i1 false}
!27 = !{!"../drivers/clk/bcm/clk-sr.c", i32 242, i32 36}
!28 = !{ptr @sr_genpll5_clk, !29, !"sr_genpll5_clk", i1 false, i1 false}
!29 = !{!"../drivers/clk/bcm/clk-sr.c", i32 255, i32 36}
!30 = !{ptr @sr_lcpll0, !31, !"sr_lcpll0", i1 false, i1 false}
!31 = !{!"../drivers/clk/bcm/clk-sr.c", i32 281, i32 36}
!32 = !{ptr @sr_lcpll0_clk, !33, !"sr_lcpll0_clk", i1 false, i1 false}
!33 = !{!"../drivers/clk/bcm/clk-sr.c", i32 291, i32 36}
!34 = !{ptr @sr_lcpll1, !35, !"sr_lcpll1", i1 false, i1 false}
!35 = !{!"../drivers/clk/bcm/clk-sr.c", i32 326, i32 36}
!36 = !{ptr @sr_lcpll1_clk, !37, !"sr_lcpll1_clk", i1 false, i1 false}
!37 = !{!"../drivers/clk/bcm/clk-sr.c", i32 336, i32 36}
!38 = !{ptr @sr_lcpll_pcie, !39, !"sr_lcpll_pcie", i1 false, i1 false}
!39 = !{!"../drivers/clk/bcm/clk-sr.c", i32 365, i32 36}
!40 = !{ptr @sr_lcpll_pcie_clk, !41, !"sr_lcpll_pcie_clk", i1 false, i1 false}
!41 = !{!"../drivers/clk/bcm/clk-sr.c", i32 375, i32 36}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
