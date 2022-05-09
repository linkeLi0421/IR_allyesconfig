; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-ti-pipe3.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-ti-pipe3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pipe3_data = type { i32, ptr, %struct.pipe3_settings }
%struct.pipe3_settings = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pipe3_dpll_map = type { i32, %struct.pipe3_dpll_params }
%struct.pipe3_dpll_params = type { i16, i8, i8, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ti_pipe3 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i32, %struct.pipe3_settings }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_ti_pipe3__291_937_ti_pipe3_driver_init6 = internal global ptr @ti_pipe3_driver_init, section ".initcall6.init", align 4
@ti_pipe3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_pipe3_probe, ptr @ti_pipe3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_pipe3_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_pipe3_driver_exit = internal global ptr @ti_pipe3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias292 = internal constant [37 x i8] c"phy_ti_pipe3.alias=platform:ti_pipe3\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [43 x i8] c"phy_ti_pipe3.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [45 x i8] c"phy_ti_pipe3.description=TI PIPE3 phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [46 x i8] c"phy_ti_pipe3.file=drivers/phy/ti/phy-ti-pipe3\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [28 x i8] c"phy_ti_pipe3.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti-pipe3\00", [23 x i8] zeroinitializer }, align 32
@ti_pipe3_id_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,phy-usb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_usb }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-usb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_usb }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,phy-pipe3-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_sata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,phy-pipe3-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_pcie }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ti_pipe3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no driver data\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti_pipe3_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/phy/ti/phy-ti-pipe3.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_pipe3_probe._entry_ptr = internal global ptr @ti_pipe3_probe._entry, section ".printk_index", align 4
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @ti_pipe3_init, ptr @ti_pipe3_exit, ptr @ti_pipe3_power_on, ptr @ti_pipe3_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phy_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phy_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syscon-phy-power\00", [47 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_ti_pipe3\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_pipe3_get_sysctrl\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"can't get syscon-phy-power, using control device\0A\00", [46 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 686, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't get power reg. offset\0A\00", [32 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry_ptr = internal global ptr @ti_pipe3_get_sysctrl._entry, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctrl-module\00", [20 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get control device phandle\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry_ptr.17 = internal global ptr @ti_pipe3_get_sysctrl._entry.15, section ".printk_index", align 4
@ti_pipe3_get_sysctrl._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get control device\0A\00", [34 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry_ptr.20 = internal global ptr @ti_pipe3_get_sysctrl._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syscon-pcs\00", [21 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.22, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't get syscon-pcs, using omap control\0A\00", [54 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"couldn't get pcie pcs reg. offset\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry_ptr.25 = internal global ptr @ti_pipe3_get_sysctrl._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"syscon-pllreset\00", [16 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.3, i32 730, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"can't get syscon-pllreset, sata dpll won't idle\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry_ptr.30 = internal global ptr @ti_pipe3_get_sysctrl._entry.27, section ".printk_index", align 4
@ti_pipe3_get_sysctrl._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.11, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"couldn't get pllreset reg. offset\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_pipe3_get_sysctrl._entry_ptr.33 = internal global ptr @ti_pipe3_get_sysctrl._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to get refclk\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_pipe3_get_clk\00", [47 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry_ptr = internal global ptr @ti_pipe3_get_clk._entry, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wkupclk\00", [24 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to get wkupclk\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry_ptr.40 = internal global ptr @ti_pipe3_get_clk._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysclk\00", [25 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to get sysclk\0A\00", [42 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry_ptr.44 = internal global ptr @ti_pipe3_get_clk._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll_ref\00", [23 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.3, i32 638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to get dpll ref clk\0A\00", [36 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry_ptr.48 = internal global ptr @ti_pipe3_get_clk._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll_ref_m2\00", [20 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to get dpll ref m2 clk\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry_ptr.52 = internal global ptr @ti_pipe3_get_clk._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy-div\00", [24 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.36, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to get phy-div clk\0A\00", [37 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry_ptr.56 = internal global ptr @ti_pipe3_get_clk._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-clk\00", [24 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.36, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to get div-clk\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_pipe3_get_clk._entry_ptr.60 = internal global ptr @ti_pipe3_get_clk._entry.58, section ".printk_index", align 4
@ti_pipe3_enable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 863, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable refclk %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti_pipe3_enable_clocks\00", [41 x i8] zeroinitializer }, align 32
@ti_pipe3_enable_clocks._entry_ptr = internal global ptr @ti_pipe3_enable_clocks._entry, section ".printk_index", align 4
@ti_pipe3_enable_clocks._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable wkupclk %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ti_pipe3_enable_clocks._entry_ptr.65 = internal global ptr @ti_pipe3_enable_clocks._entry.63, section ".printk_index", align 4
@ti_pipe3_enable_clocks._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 879, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable div_clk %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ti_pipe3_enable_clocks._entry_ptr.68 = internal global ptr @ti_pipe3_enable_clocks._entry.66, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ti_pipe3_dpll_wait_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DPLL failed to lock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti_pipe3_dpll_wait_lock\00", [40 x i8] zeroinitializer }, align 32
@ti_pipe3_dpll_wait_lock._entry_ptr = internal global ptr @ti_pipe3_dpll_wait_lock._entry, section ".printk_index", align 4
@ti_pipe3_get_dpll_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No DPLL configuration for %lu Hz SYS CLK\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti_pipe3_get_dpll_params\00", [39 x i8] zeroinitializer }, align 32
@ti_pipe3_get_dpll_params._entry_ptr = internal global ptr @ti_pipe3_get_dpll_params._entry, section ".printk_index", align 4
@ti_pipe3_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to power down: PLL_STATUS 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_pipe3_exit\00", [18 x i8] zeroinitializer }, align 32
@ti_pipe3_exit._entry_ptr = internal global ptr @ti_pipe3_exit._entry, section ".printk_index", align 4
@ti_pipe3_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid clock rate\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_pipe3_power_on\00", [46 x i8] zeroinitializer }, align 32
@ti_pipe3_power_on._entry_ptr = internal global ptr @ti_pipe3_power_on._entry, section ".printk_index", align 4
@data_usb = internal global { %struct.pipe3_data, [36 x i8] } { %struct.pipe3_data { i32 3, ptr @dpll_map_usb, %struct.pipe3_settings { i8 16, i8 10, i8 1, i8 3, i8 0, i8 3, i8 1, i8 1, i8 0, i8 0, i8 1, i8 2, i8 3, i8 0, i8 0, i8 9, i8 0, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@data_sata = internal global { %struct.pipe3_data, [36 x i8] } { %struct.pipe3_data { i32 2, ptr @dpll_map_sata, %struct.pipe3_settings { i8 4, i8 5, i8 1, i8 3, i8 0, i8 3, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 31, i8 0, i8 1, i8 1 } }, [36 x i8] zeroinitializer }, align 32
@data_pcie = internal global { %struct.pipe3_data, [36 x i8] } { %struct.pipe3_data { i32 1, ptr null, %struct.pipe3_settings { i8 1, i8 10, i8 1, i8 3, i8 0, i8 3, i8 1, i8 1, i8 0, i8 0, i8 0, i8 2, i8 3, i8 0, i8 31, i8 1, i8 0, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dpll_map_usb = internal global { [7 x %struct.pipe3_dpll_map], [48 x i8] } { [7 x %struct.pipe3_dpll_map] [%struct.pipe3_dpll_map { i32 12000000, %struct.pipe3_dpll_params { i16 1250, i8 5, i8 -128, i8 20, i32 0 } }, %struct.pipe3_dpll_map { i32 16800000, %struct.pipe3_dpll_params { i16 3125, i8 20, i8 -128, i8 20, i32 0 } }, %struct.pipe3_dpll_map { i32 19200000, %struct.pipe3_dpll_params { i16 1172, i8 8, i8 -128, i8 20, i32 65537 } }, %struct.pipe3_dpll_map { i32 20000000, %struct.pipe3_dpll_params { i16 1000, i8 7, i8 -128, i8 10, i32 0 } }, %struct.pipe3_dpll_map { i32 26000000, %struct.pipe3_dpll_params { i16 1250, i8 12, i8 -128, i8 20, i32 0 } }, %struct.pipe3_dpll_map { i32 38400000, %struct.pipe3_dpll_params { i16 3125, i8 47, i8 -128, i8 20, i32 92843 } }, %struct.pipe3_dpll_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dpll_map_sata = internal global { [7 x %struct.pipe3_dpll_map], [48 x i8] } { [7 x %struct.pipe3_dpll_map] [%struct.pipe3_dpll_map { i32 12000000, %struct.pipe3_dpll_params { i16 625, i8 4, i8 -128, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 16800000, %struct.pipe3_dpll_params { i16 625, i8 6, i8 -128, i8 7, i32 0 } }, %struct.pipe3_dpll_map { i32 19200000, %struct.pipe3_dpll_params { i16 625, i8 7, i8 -128, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 20000000, %struct.pipe3_dpll_params { i16 750, i8 9, i8 -128, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 26000000, %struct.pipe3_dpll_params { i16 750, i8 12, i8 -128, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 38400000, %struct.pipe3_dpll_params { i16 625, i8 15, i8 -128, i8 6, i32 0 } }, %struct.pipe3_dpll_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"ti_pipe3_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 928, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 932, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"ti_pipe3_id_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 907, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 793, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 592, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 769, i32 47 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 751, i32 60 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 755, i32 60 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 677, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 679, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 686, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 692, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 694, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 700, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 709, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 711, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 718, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 727, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 729, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 736, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 607, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 609, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 618, i32 36 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 620, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 628, i32 36 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 630, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 636, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 638, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 643, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 645, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 650, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 652, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 657, i32 36 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 659, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 863, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 871, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 879, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 399, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 311, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 574, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 351, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [9 x i8] c"data_usb\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 211, i32 26 }
@___asan_gen_.305 = private unnamed_addr constant [10 x i8] c"data_sata\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 237, i32 26 }
@___asan_gen_.308 = private unnamed_addr constant [10 x i8] c"data_pcie\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 263, i32 26 }
@___asan_gen_.311 = private unnamed_addr constant [13 x i8] c"dpll_map_usb\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 185, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant [14 x i8] c"dpll_map_sata\00", align 1
@___asan_gen_.315 = private constant [33 x i8] c"../drivers/phy/ti/phy-ti-pipe3.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 195, i32 30 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ti_pipe3_driver_exit, ptr @__initcall__kmod_phy_ti_pipe3__291_937_ti_pipe3_driver_init6, ptr @ti_pipe3_dpll_wait_lock._entry, ptr @ti_pipe3_dpll_wait_lock._entry_ptr, ptr @ti_pipe3_driver_exit, ptr @ti_pipe3_enable_clocks._entry, ptr @ti_pipe3_enable_clocks._entry.63, ptr @ti_pipe3_enable_clocks._entry.66, ptr @ti_pipe3_enable_clocks._entry_ptr, ptr @ti_pipe3_enable_clocks._entry_ptr.65, ptr @ti_pipe3_enable_clocks._entry_ptr.68, ptr @ti_pipe3_exit._entry, ptr @ti_pipe3_exit._entry_ptr, ptr @ti_pipe3_get_clk._entry, ptr @ti_pipe3_get_clk._entry.38, ptr @ti_pipe3_get_clk._entry.42, ptr @ti_pipe3_get_clk._entry.46, ptr @ti_pipe3_get_clk._entry.50, ptr @ti_pipe3_get_clk._entry.54, ptr @ti_pipe3_get_clk._entry.58, ptr @ti_pipe3_get_clk._entry_ptr, ptr @ti_pipe3_get_clk._entry_ptr.40, ptr @ti_pipe3_get_clk._entry_ptr.44, ptr @ti_pipe3_get_clk._entry_ptr.48, ptr @ti_pipe3_get_clk._entry_ptr.52, ptr @ti_pipe3_get_clk._entry_ptr.56, ptr @ti_pipe3_get_clk._entry_ptr.60, ptr @ti_pipe3_get_dpll_params._entry, ptr @ti_pipe3_get_dpll_params._entry_ptr, ptr @ti_pipe3_get_sysctrl._entry, ptr @ti_pipe3_get_sysctrl._entry.15, ptr @ti_pipe3_get_sysctrl._entry.18, ptr @ti_pipe3_get_sysctrl._entry.23, ptr @ti_pipe3_get_sysctrl._entry.27, ptr @ti_pipe3_get_sysctrl._entry.31, ptr @ti_pipe3_get_sysctrl._entry_ptr, ptr @ti_pipe3_get_sysctrl._entry_ptr.17, ptr @ti_pipe3_get_sysctrl._entry_ptr.20, ptr @ti_pipe3_get_sysctrl._entry_ptr.25, ptr @ti_pipe3_get_sysctrl._entry_ptr.30, ptr @ti_pipe3_get_sysctrl._entry_ptr.33, ptr @ti_pipe3_power_on._entry, ptr @ti_pipe3_power_on._entry_ptr, ptr @ti_pipe3_probe._entry, ptr @ti_pipe3_probe._entry_ptr, ptr @ti_pipe3_driver, ptr @.str, ptr @ti_pipe3_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @data_usb, ptr @data_sata, ptr @data_pcie, ptr @dpll_map_usb, ptr @dpll_map_sata], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_id_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_sysctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_sysctrl._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_sysctrl._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_sysctrl._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_sysctrl._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_sysctrl._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_clk._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_clk._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_clk._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_clk._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_clk._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_clk._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_enable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_enable_clocks._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_enable_clocks._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_dpll_wait_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_get_dpll_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_pipe3_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_usb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_sata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_pcie to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_map_usb to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_map_sata to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_pipe3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_pipe3_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_pipe3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_pipe3_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_pipe3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @ti_pipe3_id_table, ptr noundef %dev1) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data6 = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data6, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %dev10 = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev10, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %mode11 = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 17
  %5 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mode11, align 4
  %dpll_map = getelementptr inbounds %struct.pipe3_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dpll_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpll_map, align 4
  %dpll_map12 = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %dpll_map12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dpll_map12, align 4
  %settings = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 18
  %settings13 = getelementptr inbounds %struct.pipe3_data, ptr %1, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %settings, ptr %settings13, i32 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.end9.if.end17_crit_edge, label %if.end.i

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end.i:                                         ; preds = %if.end9
  %call.i87 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #6
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i87, ptr %call.i, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call.i87, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %call.i87 to i32
  br i1 %cmp.i.i.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end17_crit_edge

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end.i.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  %add.ptr.i89 = getelementptr i8, ptr %13, i32 -16
  %call.i90 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i89, ptr noundef nonnull @.str.7) #6
  %phy_rx.i = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %phy_rx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i90, ptr %phy_rx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end17.ti_pipe3_get_tx_rx_base.exit_crit_edge, label %if.end.i93

if.end17.ti_pipe3_get_tx_rx_base.exit_crit_edge:  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_pipe3_get_tx_rx_base.exit

if.end.i93:                                       ; preds = %if.end17
  %call6.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i89, ptr noundef nonnull @.str.8) #6
  %phy_tx.i = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %phy_tx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call6.i, ptr %phy_tx.i, align 4
  %cmp.i.i.i91 = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i91, label %if.end.i93.ti_pipe3_get_tx_rx_base.exit_crit_edge, label %if.end.i93.if.end21_crit_edge

if.end.i93.if.end21_crit_edge:                    ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end.i93.ti_pipe3_get_tx_rx_base.exit_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_pipe3_get_tx_rx_base.exit

ti_pipe3_get_tx_rx_base.exit:                     ; preds = %if.end.i93.ti_pipe3_get_tx_rx_base.exit_crit_edge, %if.end17.ti_pipe3_get_tx_rx_base.exit_crit_edge
  %retval.0.i94.in = phi ptr [ %call6.i, %if.end.i93.ti_pipe3_get_tx_rx_base.exit_crit_edge ], [ %call.i90, %if.end17.ti_pipe3_get_tx_rx_base.exit_crit_edge ]
  %retval.0.i94 = ptrtoint ptr %retval.0.i94.in to i32
  %tobool19.not = icmp eq ptr %retval.0.i94.in, null
  br i1 %tobool19.not, label %ti_pipe3_get_tx_rx_base.exit.if.end21_crit_edge, label %ti_pipe3_get_tx_rx_base.exit.cleanup_crit_edge

ti_pipe3_get_tx_rx_base.exit.cleanup_crit_edge:   ; preds = %ti_pipe3_get_tx_rx_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ti_pipe3_get_tx_rx_base.exit.if.end21_crit_edge:  ; preds = %ti_pipe3_get_tx_rx_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %ti_pipe3_get_tx_rx_base.exit.if.end21_crit_edge, %if.end.i93.if.end21_crit_edge
  %call22 = tail call fastcc i32 @ti_pipe3_get_sysctrl(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call fastcc i32 @ti_pipe3_get_clk(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %17 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %if.then31, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then31:                                        ; preds = %if.end29
  %refclk = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %refclk, align 4
  %cmp.i95 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then31.if.end37_crit_edge, label %if.then33

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %20)
  %sata_refclk_enabled = getelementptr inbounds %struct.ti_pipe3, ptr %call.i, i32 0, i32 16
  %21 = ptrtoint ptr %sata_refclk_enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sata_refclk_enabled, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then31.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %call38 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @ops) #6
  %cmp.i96 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i97 = getelementptr inbounds %struct.device, ptr %call38, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i97 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i97, align 4
  %call43 = tail call i32 @ti_pipe3_power_off(ptr noundef %call38)
  %call44 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i.i98 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %call44 to i32
  %spec.select.i = select i1 %cmp.i.i98, i32 %24, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then40, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %ti_pipe3_get_tx_rx_base.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then40 ], [ %spec.select.i, %if.end42 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i94, %ti_pipe3_get_tx_rx_base.exit.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %11, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_pipe3_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %refclk = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %sata_refclk_enabled = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %sata_refclk_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sata_refclk_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_pipe3_get_sysctrl(ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  %phy_power_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 10
  %4 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %phy_power_syscon, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_pipe3_get_sysctrl, %if.then7)) #6
          to label %if.end16.thread [label %if.then7], !srcloc !170

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.12) #6
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %if.then7, %do.body
  %5 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %phy_power_syscon, align 4
  br label %if.then19

if.else:                                          ; preds = %entry
  %power_reg = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 14
  %call9 = tail call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef %power_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %6 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %phy_power_syscon, align 4
  %tobool18.not = icmp eq ptr %.pr, null
  br i1 %tobool18.not, label %if.end16.if.then19_crit_edge, label %if.end16.if.end35_crit_edge

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %if.end16.if.then19_crit_edge, %if.end16.thread
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end25

of_parse_phandle.exit:                            ; preds = %if.then19
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %of_parse_phandle.exit.do.end25_crit_edge, label %if.end26

of_parse_phandle.exit.do.end25_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end25:                                         ; preds = %of_parse_phandle.exit.do.end25_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end26:                                         ; preds = %of_parse_phandle.exit
  %call27 = call ptr @of_find_device_by_node(ptr noundef nonnull %9) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end32, label %if.end33

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %call27, i32 0, i32 3
  %control_dev = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 4
  %10 = ptrtoint ptr %control_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev34, ptr %control_dev, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.end16.if.end35_crit_edge
  %mode = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 17
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then36, label %if.end35.if.end67_crit_edge

if.end35.if.end67_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then36:                                        ; preds = %if.end35
  %call37 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.21) #6
  %pcs_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 11
  %13 = ptrtoint ptr %pcs_syscon to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call37, ptr %pcs_syscon, align 4
  %cmp.i128 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.body41, label %if.else58

do.body41:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_pipe3_get_sysctrl, %if.then53)) #6
          to label %do.end56 [label %if.then53], !srcloc !170

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.22) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41
  %14 = ptrtoint ptr %pcs_syscon to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pcs_syscon, align 4
  br label %if.end67thread-pre-split

if.else58:                                        ; preds = %if.then36
  %pcie_pcs_reg = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 15
  %call59 = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef %pcie_pcs_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.else58.if.end67thread-pre-split_crit_edge, label %do.end64

if.else58.if.end67thread-pre-split_crit_edge:     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67thread-pre-split

do.end64:                                         ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end67thread-pre-split:                         ; preds = %if.else58.if.end67thread-pre-split_crit_edge, %do.end56
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr135 = load i32, ptr %mode, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end67thread-pre-split, %if.end35.if.end67_crit_edge
  %16 = phi i32 [ %.pr135, %if.end67thread-pre-split ], [ %12, %if.end35.if.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp69 = icmp eq i32 %16, 2
  br i1 %cmp69, label %if.then70, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  %call71 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.26) #6
  %dpll_reset_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 12
  %17 = ptrtoint ptr %dpll_reset_syscon to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call71, ptr %dpll_reset_syscon, align 4
  %cmp.i129 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %do.end77, label %if.else79

do.end77:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.28) #9
  %18 = ptrtoint ptr %dpll_reset_syscon to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %dpll_reset_syscon, align 4
  br label %cleanup

if.else79:                                        ; preds = %if.then70
  %dpll_reset_reg = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 13
  %call80 = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef %dpll_reset_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.else79.cleanup_crit_edge, label %do.end85

if.else79.cleanup_crit_edge:                      ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end85:                                         ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.else79.cleanup_crit_edge, %do.end77, %if.end67.cleanup_crit_edge, %do.end64, %do.end32, %do.end25, %do.end14
  %retval.0 = phi i32 [ -22, %do.end85 ], [ -22, %do.end64 ], [ -22, %do.end32 ], [ -22, %do.end25 ], [ -22, %do.end14 ], [ 0, %do.end77 ], [ 0, %if.else79.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_pipe3_get_clk(ptr nocapture noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.34) #6
  %refclk = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %refclk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #9
  %mode = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 17
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %refclk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end7:                                          ; preds = %do.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %mode8 = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 17
  %8 = ptrtoint ptr %mode8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp9.not = icmp eq i32 %9, 2
  br i1 %cmp9.not, label %if.end23.thread, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.37) #6
  %wkupclk = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 5
  %10 = ptrtoint ptr %wkupclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %wkupclk, align 4
  %cmp.i120 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %do.end17, label %if.end23

do.end17:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39) #9
  %11 = ptrtoint ptr %wkupclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wkupclk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end23.thread:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %wkupclk22 = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 5
  %14 = ptrtoint ptr %wkupclk22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -19 to ptr), ptr %wkupclk22, align 4
  br label %if.then26

if.end23:                                         ; preds = %if.then10
  %15 = ptrtoint ptr %mode8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %mode8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp25.not = icmp eq i32 %.pr, 1
  br i1 %cmp25.not, label %lor.lhs.false, label %if.end23.if.then26_crit_edge

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end23
  %phy_power_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 10
  %16 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_power_syscon, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %lor.lhs.false.if.end35_crit_edge, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.end23.if.then26_crit_edge, %if.end23.thread
  %call27 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.41) #6
  %sys_clk = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 6
  %18 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call27, ptr %sys_clk, align 4
  %cmp.i121 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %do.end33, label %if.then26.if.end35_crit_edge

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end33:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %cleanup

if.end35:                                         ; preds = %if.then26.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge
  %19 = ptrtoint ptr %mode8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp37 = icmp eq i32 %20, 1
  br i1 %cmp37, label %if.then38, label %if.else76

if.then38:                                        ; preds = %if.end35
  %call39 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.45) #6
  %cmp.i122 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #9
  %21 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.then38
  %call47 = tail call i32 @clk_set_rate(ptr noundef %call39, i32 noundef 1500000000) #6
  %call48 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.49) #6
  %cmp.i123 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.51) #9
  %22 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  %call56 = tail call i32 @clk_set_rate(ptr noundef %call48, i32 noundef 100000000) #6
  %call57 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.53) #6
  %cmp.i124 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55) #9
  %23 = ptrtoint ptr %call57 to i32
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  %call65 = tail call i32 @clk_set_rate(ptr noundef %call57, i32 noundef 100000000) #6
  %call66 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.57) #6
  %div_clk = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 8
  %24 = ptrtoint ptr %div_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call66, ptr %div_clk, align 4
  %cmp.i125 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %do.end72, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59) #9
  %25 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %div_clk, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.else76:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %div_clk78 = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 8
  %28 = ptrtoint ptr %div_clk78 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -19 to ptr), ptr %div_clk78, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else76, %do.end72, %if.end64.cleanup_crit_edge, %do.end62, %do.end53, %do.end44, %do.end33, %do.end17, %if.then4
  %retval.0 = phi i32 [ %7, %if.then4 ], [ %13, %do.end17 ], [ -22, %do.end33 ], [ %21, %do.end44 ], [ %22, %do.end53 ], [ %23, %do.end62 ], [ %27, %do.end72 ], [ 0, %if.end64.cleanup_crit_edge ], [ 0, %if.else76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_pipe3_power_off(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_power_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_power_syscon, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %control_dev = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %control_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_dev, align 4
  tail call void @omap_control_phy_power(ptr noundef %5, i32 noundef 0) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_reg = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %power_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %3, i32 noundef %7, i32 noundef 4177920, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_pipe3_init(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %refclk.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.end4.i_crit_edge, label %if.then.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end4.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end4.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.then.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i.ph.i) #9
  br label %ti_pipe3_enable_clocks.exit

if.end4.i:                                        ; preds = %if.end.i.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %wkupclk.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %wkupclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wkupclk.i, align 4
  %cmp.i1.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.end4.i.if.end16.i_crit_edge, label %if.then6.i

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.end4.i
  %call.i2.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.end.i6.i, label %if.then6.i.do.end13.i_crit_edge

if.then6.i.do.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

if.end.i6.i:                                      ; preds = %if.then6.i
  %call1.i4.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool2.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool2.not.i5.i, label %if.end.i6.i.if.end16.i_crit_edge, label %if.then3.i7.i

if.end.i6.i.if.end16.i_crit_edge:                 ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then3.i7.i:                                    ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then3.i7.i, %if.then6.i.do.end13.i_crit_edge
  %retval.0.i8.ph.i = phi i32 [ %call1.i4.i, %if.then3.i7.i ], [ %call.i2.i, %if.then6.i.do.end13.i_crit_edge ]
  %dev14.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.64, i32 noundef %retval.0.i8.ph.i) #9
  br label %disable_refclk.i

if.end16.i:                                       ; preds = %if.end.i6.i.if.end16.i_crit_edge, %if.end4.i.if.end16.i_crit_edge
  %div_clk.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %div_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %div_clk.i, align 4
  %cmp.i10.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i10.i, label %if.end16.i.ti_pipe3_enable_clocks.exit_crit_edge, label %if.then18.i

if.end16.i.ti_pipe3_enable_clocks.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_pipe3_enable_clocks.exit

if.then18.i:                                      ; preds = %if.end16.i
  %call.i11.i = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool.not.i12.i, label %if.end.i15.i, label %if.then18.i.do.end25.i_crit_edge

if.then18.i.do.end25.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i

if.end.i15.i:                                     ; preds = %if.then18.i
  %call1.i13.i = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i)
  %tobool2.not.i14.i = icmp eq i32 %call1.i13.i, 0
  br i1 %tobool2.not.i14.i, label %if.end.i15.i.ti_pipe3_enable_clocks.exit_crit_edge, label %if.then3.i16.i

if.end.i15.i.ti_pipe3_enable_clocks.exit_crit_edge: ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_pipe3_enable_clocks.exit

if.then3.i16.i:                                   ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then3.i16.i, %if.then18.i.do.end25.i_crit_edge
  %retval.0.i17.ph.i = phi i32 [ %call1.i13.i, %if.then3.i16.i ], [ %call.i11.i, %if.then18.i.do.end25.i_crit_edge ]
  %dev26.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.67, i32 noundef %retval.0.i17.ph.i) #9
  %14 = ptrtoint ptr %wkupclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wkupclk.i, align 4
  %cmp.i19.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %do.end25.i.disable_refclk.i_crit_edge, label %if.then31.i

do.end25.i.disable_refclk.i_crit_edge:            ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_refclk.i

if.then31.i:                                      ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %disable_refclk.i

disable_refclk.i:                                 ; preds = %if.then31.i, %do.end25.i.disable_refclk.i_crit_edge, %do.end13.i
  %16 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %refclk.i, align 4
  %cmp.i20.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %disable_refclk.i.ti_pipe3_enable_clocks.exit_crit_edge, label %if.then36.i

disable_refclk.i.ti_pipe3_enable_clocks.exit_crit_edge: ; preds = %disable_refclk.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_pipe3_enable_clocks.exit

if.then36.i:                                      ; preds = %disable_refclk.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %ti_pipe3_enable_clocks.exit

ti_pipe3_enable_clocks.exit:                      ; preds = %if.then36.i, %disable_refclk.i.ti_pipe3_enable_clocks.exit_crit_edge, %if.end.i15.i.ti_pipe3_enable_clocks.exit_crit_edge, %if.end16.i.ti_pipe3_enable_clocks.exit_crit_edge, %do.end.i
  %mode = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %ti_pipe3_enable_clocks.exit
  %pcs_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %pcs_syscon to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcs_syscon, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %control_dev = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %control_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %control_dev, align 4
  tail call void @omap_control_pcie_pcs(ptr noundef %23, i8 noundef zeroext -106) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_pcs_reg = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %pcie_pcs_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcie_pcs_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %21, i32 noundef %25, i32 noundef 16711680, i32 noundef 9830400, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.end5:                                          ; preds = %ti_pipe3_enable_clocks.exit
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !171
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  %and9 = and i32 %28, -2
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i47 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %and9) #6, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %31, 10
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond9.i.do.body.i_crit_edge, %if.then8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !174
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !171
  %and.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.cond9.i, label %do.body.i.if.end12_crit_edge

do.body.i.if.end12_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.cond9.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %35
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.cond9.i.do.body.i_crit_edge, label %do.end13.i49

do.cond9.i.do.body.i_crit_edge:                   ; preds = %do.cond9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end13.i49:                                     ; preds = %do.cond9.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i48 = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %dev.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.69) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end13.i49, %do.body.i.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5.if.end12_crit_edge ], [ -16, %do.end13.i49 ], [ 0, %do.body.i.if.end12_crit_edge ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add.ptr.i50 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #6, !srcloc !171
  %and15 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end12.if.end20_crit_edge, label %land.lhs.true

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %41 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp18 = icmp eq i32 %42, 2
  br i1 %cmp18, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %dpll_map1.i.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %dpll_map1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dpll_map1.i.i, align 4
  %sys_clk.i.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %sys_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sys_clk.i.i, align 4
  %call.i.i51 = tail call i32 @clk_get_rate(ptr noundef %46) #6
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not12.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not12.i.i, label %if.end20.ti_pipe3_get_dpll_params.exit.thread.i_crit_edge, label %if.end20.for.body.i.i_crit_edge

if.end20.for.body.i.i_crit_edge:                  ; preds = %if.end20
  br label %for.body.i.i

if.end20.ti_pipe3_get_dpll_params.exit.thread.i_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_pipe3_get_dpll_params.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end20.for.body.i.i_crit_edge
  %49 = phi i32 [ %51, %for.inc.i.i.for.body.i.i_crit_edge ], [ %48, %if.end20.for.body.i.i_crit_edge ]
  %dpll_map.013.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %44, %if.end20.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i51, i32 %49)
  %cmp.i.i52 = icmp eq i32 %call.i.i51, %49
  br i1 %cmp.i.i52, label %ti_pipe3_get_dpll_params.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.pipe3_dpll_map, ptr %dpll_map.013.i.i, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i53 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i53, label %for.inc.i.i.ti_pipe3_get_dpll_params.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.ti_pipe3_get_dpll_params.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_pipe3_get_dpll_params.exit.thread.i

ti_pipe3_get_dpll_params.exit.thread.i:           ; preds = %for.inc.i.i.ti_pipe3_get_dpll_params.exit.thread.i_crit_edge, %if.end20.ti_pipe3_get_dpll_params.exit.thread.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.71, i32 noundef %call.i.i51) #9
  br label %if.then23

ti_pipe3_get_dpll_params.exit.i:                  ; preds = %for.body.i.i
  %params.i.i = getelementptr inbounds %struct.pipe3_dpll_map, ptr %dpll_map.013.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %55, i32 12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54) #6, !srcloc !171
  %and.i55 = and i32 %56, -511
  %n.i = getelementptr inbounds %struct.pipe3_dpll_map, ptr %dpll_map.013.i.i, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %n.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %n.i, align 2
  %conv.i = zext i8 %58 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %or.i = or i32 %shl.i, %and.i55
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %or.i) #6, !srcloc !172
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %62, i32 16
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #6, !srcloc !171
  %and5.i = and i32 %63, -15
  %freq.i = getelementptr inbounds %struct.pipe3_dpll_map, ptr %dpll_map.013.i.i, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %freq.i, align 1
  %65 = lshr i8 %bf.load.i, 4
  %66 = and i8 %65, 14
  %shl7.i = zext i8 %66 to i32
  %or8.i = or i32 %and5.i, %shl7.i
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %68, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %or8.i) #6, !srcloc !172
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %70, i32 12
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #6, !srcloc !171
  %and12.i = and i32 %71, -2096641
  %72 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %params.i.i, align 4
  %conv13.i = zext i16 %73 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 9
  %or15.i = or i32 %shl14.i, %and12.i
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %or15.i) #6, !srcloc !172
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %77, i32 32
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #6, !srcloc !171
  %and19.i = and i32 %78, -262144
  %mf.i = getelementptr inbounds %struct.pipe3_dpll_map, ptr %dpll_map.013.i.i, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %mf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mf.i, align 4
  %or21.i = or i32 %and19.i, %80
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %82, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %or21.i) #6, !srcloc !172
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %84, i32 20
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #6, !srcloc !171
  %and25.i = and i32 %85, -261121
  %sd.i = getelementptr inbounds %struct.pipe3_dpll_map, ptr %dpll_map.013.i.i, i32 0, i32 1, i32 3
  %86 = ptrtoint ptr %sd.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sd.i, align 4
  %conv26.i = zext i8 %87 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 10
  %or28.i = or i32 %shl27.i, %and25.i
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %89, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %or28.i) #6, !srcloc !172
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %91, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 1) #6, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %92, 10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond9.i.i.do.body.i.i_crit_edge, %ti_pipe3_get_dpll_params.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !174
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %94, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !171
  %and.i.i = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i74.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i74.i, label %do.cond9.i.i, label %if.end24

do.cond9.i.i:                                     ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %96
  %cmp.i75.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i75.i, label %do.cond9.i.i.do.body.i.i_crit_edge, label %do.end13.i.i

do.cond9.i.i.do.body.i.i_crit_edge:               ; preds = %do.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

do.end13.i.i:                                     ; preds = %do.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i76.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %97 = ptrtoint ptr %dev.i76.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i76.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.69) #9
  br label %if.then23

if.then23:                                        ; preds = %do.end13.i.i, %ti_pipe3_get_dpll_params.exit.thread.i
  %wkupclk.i57 = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %wkupclk.i57 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wkupclk.i57, align 4
  %cmp.i.i58 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i58, label %if.then23.if.end.i_crit_edge, label %if.then.i59

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i59:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %100) #6
  tail call void @clk_unprepare(ptr noundef %100) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i59, %if.then23.if.end.i_crit_edge
  %101 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %refclk.i, align 4
  %cmp.i15.i = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %102) #6
  tail call void @clk_unprepare(ptr noundef %102) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %div_clk.i61 = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 8
  %103 = ptrtoint ptr %div_clk.i61 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %div_clk.i61, align 4
  %cmp.i16.i = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16.i, label %if.end5.i.cleanup_crit_edge, label %if.then7.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %104) #6
  tail call void @clk_unprepare(ptr noundef %104) #6
  br label %cleanup

if.end24:                                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ti_pipe3_calibrate(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then7.i, %if.end5.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end, %if.then2
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %if.then2 ], [ 0, %if.end24 ], [ %ret.0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end5.i.cleanup_crit_edge ], [ -22, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_pipe3_exit(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.then3_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %entry.if.end43_crit_edge
  ]

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

land.lhs.true:                                    ; preds = %entry
  %dpll_reset_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %dpll_reset_syscon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpll_reset_syscon, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then3_crit_edge

land.lhs.true.if.then3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true.if.then3_crit_edge, %entry.if.then3_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !171
  %or = or i32 %9, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i65 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %or) #6, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 10
  br label %do.body

do.body:                                          ; preds = %do.cond22.do.body_crit_edge, %if.then3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !176
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i66 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #6, !srcloc !171
  %16 = and i32 %15, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %16)
  %.not = icmp eq i32 %16, 98304
  br i1 %.not, label %if.end34, label %do.cond22

do.cond22:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %17
  %cmp23 = icmp sgt i32 %sub, -1
  br i1 %cmp23, label %do.cond22.do.body_crit_edge, label %do.end32

do.cond22.do.body_crit_edge:                      ; preds = %do.cond22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end32:                                         ; preds = %do.cond22
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.73, i32 noundef %15) #9
  br label %cleanup

if.end34:                                         ; preds = %do.body
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp36 = icmp eq i32 %.pr, 2
  br i1 %cmp36, label %if.then37, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %dpll_reset_syscon38 = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %dpll_reset_syscon38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dpll_reset_syscon38, align 4
  %dpll_reset_reg = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %dpll_reset_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dpll_reset_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = ptrtoint ptr %dpll_reset_syscon38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dpll_reset_syscon38, align 4
  %27 = ptrtoint ptr %dpll_reset_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dpll_reset_reg, align 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef 262144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end34.if.end43_crit_edge, %entry.if.end43_crit_edge
  %wkupclk.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %wkupclk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wkupclk.i, align 4
  %cmp.i.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end43.if.end.i_crit_edge, label %if.then.i

if.end43.if.end.i_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %30) #6
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end43.if.end.i_crit_edge
  %refclk.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %refclk.i, align 4
  %cmp.i15.i = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %div_clk.i = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %div_clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %div_clk.i, align 4
  %cmp.i16.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16.i, label %if.end5.i.cleanup_crit_edge, label %if.then7.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %34) #6
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %if.end5.i.cleanup_crit_edge, %do.end32, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end32 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ 0, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_pipe3_power_on(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_power_syscon = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_power_syscon, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %control_dev = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %control_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_dev, align 4
  tail call void @omap_control_phy_power(ptr noundef %5, i32 noundef 1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sys_clk = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.75) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %div = udiv i32 %call1, 1000000
  %shl = shl i32 %div, 22
  %10 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_power_syscon, align 4
  %power_reg = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %power_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef -4194304, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %mode = getelementptr inbounds %struct.ti_pipe3, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch = icmp eq i32 %16, 2
  %17 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_power_syscon, align 4
  %19 = ptrtoint ptr %power_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power_reg, align 4
  br i1 %switch, label %if.end10, label %if.else

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef 4177920, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end19

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef 4177920, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = ptrtoint ptr %phy_power_syscon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_power_syscon, align 4
  %23 = ptrtoint ptr %power_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_reg, align 4
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef 4177920, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end10, %if.else
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp21 = icmp eq i32 %26, 1
  br i1 %cmp21, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ti_pipe3_calibrate(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %if.then22 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_pcie_pcs(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_pipe3_calibrate(ptr nocapture noundef readonly %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %settings = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18
  %phy_rx = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !171
  %and = and i32 %2, 133971871
  %3 = ptrtoint ptr %settings to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %settings, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 27
  %ana_losd = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %ana_losd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ana_losd, align 1
  %conv1 = zext i8 %6 to i32
  %shl2 = shl nuw nsw i32 %conv1, 14
  %or = or i32 %shl, %and
  %or3 = or i32 %or, %shl2
  %7 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i120 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %or3) #6, !srcloc !172
  %9 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i121 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #6, !srcloc !171
  %and7 = and i32 %11, -486537217
  %dig_hs_rate = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 9
  %12 = ptrtoint ptr %dig_hs_rate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dig_hs_rate, align 1
  %conv8 = zext i8 %13 to i32
  %shl9 = shl i32 %conv8, 27
  %dig_ovrd_hs_rate = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 10
  %14 = ptrtoint ptr %dig_ovrd_hs_rate to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dig_ovrd_hs_rate, align 1
  %conv10 = zext i8 %15 to i32
  %shl11 = shl i32 %conv10, 26
  %dig_fastlock = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %dig_fastlock to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dig_fastlock, align 1
  %conv13 = zext i8 %17 to i32
  %shl14 = shl nuw nsw i32 %conv13, 23
  %dig_lbw = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 3
  %18 = ptrtoint ptr %dig_lbw to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dig_lbw, align 1
  %conv16 = zext i8 %19 to i32
  %shl17 = shl nuw nsw i32 %conv16, 21
  %dig_stepcnt = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 4
  %20 = ptrtoint ptr %dig_stepcnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dig_stepcnt, align 1
  %conv19 = zext i8 %21 to i32
  %shl20 = shl nuw nsw i32 %conv19, 19
  %dig_stl = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 5
  %22 = ptrtoint ptr %dig_stl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dig_stl, align 1
  %conv22 = zext i8 %23 to i32
  %shl23 = shl nuw nsw i32 %conv22, 16
  %dig_thr = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 6
  %24 = ptrtoint ptr %dig_thr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dig_thr, align 1
  %conv25 = zext i8 %25 to i32
  %shl26 = shl nuw nsw i32 %conv25, 13
  %dig_thr_mode = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 7
  %26 = ptrtoint ptr %dig_thr_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dig_thr_mode, align 1
  %conv28 = zext i8 %27 to i32
  %shl29 = shl nuw nsw i32 %conv28, 12
  %dig_2ndo_sdm_mode = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 8
  %28 = ptrtoint ptr %dig_2ndo_sdm_mode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dig_2ndo_sdm_mode, align 1
  %conv31 = zext i8 %29 to i32
  %shl32 = shl nuw nsw i32 %conv31, 11
  %or12 = or i32 %shl9, %and7
  %or15 = or i32 %or12, %shl11
  %or18 = or i32 %or15, %shl14
  %or21 = or i32 %or18, %shl17
  %or24 = or i32 %or21, %shl20
  %or27 = or i32 %or24, %shl23
  %or30 = or i32 %or27, %shl26
  %or33 = or i32 %or30, %shl29
  %or34 = or i32 %or33, %shl32
  %30 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i122 = getelementptr i8, ptr %31, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %or34) #6, !srcloc !172
  %32 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i123 = getelementptr i8, ptr %33, i32 28
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #6, !srcloc !171
  %and38 = and i32 %34, 1073741823
  %dll_trim_sel = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 11
  %35 = ptrtoint ptr %dll_trim_sel to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dll_trim_sel, align 1
  %conv39 = zext i8 %36 to i32
  %shl40 = shl i32 %conv39, 30
  %or41 = or i32 %shl40, %and38
  %37 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i124 = getelementptr i8, ptr %38, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %or41) #6, !srcloc !172
  %39 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i125 = getelementptr i8, ptr %40, i32 36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #6, !srcloc !171
  %and45 = and i32 %41, 1073741823
  %dll_phint_rate = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 12
  %42 = ptrtoint ptr %dll_phint_rate to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dll_phint_rate, align 1
  %conv46 = zext i8 %43 to i32
  %shl47 = shl i32 %conv46, 30
  %or48 = or i32 %shl47, %and45
  %44 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i126 = getelementptr i8, ptr %45, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %or48) #6, !srcloc !172
  %46 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i127 = getelementptr i8, ptr %47, i32 56
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #6, !srcloc !171
  %and52 = and i32 %48, 121
  %eq_lev = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 13
  %49 = ptrtoint ptr %eq_lev to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %eq_lev, align 1
  %conv53 = zext i8 %50 to i32
  %shl54 = shl nuw nsw i32 %conv53, 16
  %eq_ftc = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 14
  %51 = ptrtoint ptr %eq_ftc to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %eq_ftc, align 1
  %conv55 = zext i8 %52 to i32
  %shl56 = shl nuw nsw i32 %conv55, 11
  %eq_ctl = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 15
  %53 = ptrtoint ptr %eq_ctl to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %eq_ctl, align 1
  %conv58 = zext i8 %54 to i32
  %shl59 = shl nuw nsw i32 %conv58, 7
  %eq_ovrd_lev = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 16
  %55 = ptrtoint ptr %eq_ovrd_lev to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %eq_ovrd_lev, align 1
  %conv61 = zext i8 %56 to i32
  %shl62 = shl nuw nsw i32 %conv61, 2
  %eq_ovrd_ftc = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 18, i32 17
  %57 = ptrtoint ptr %eq_ovrd_ftc to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %eq_ovrd_ftc, align 1
  %conv64 = zext i8 %58 to i32
  %shl65 = shl nuw nsw i32 %conv64, 1
  %or57 = or i32 %shl54, %and52
  %or60 = or i32 %or57, %shl56
  %or63 = or i32 %or60, %shl59
  %or66 = or i32 %or63, %shl62
  %or67 = or i32 %or66, %shl65
  %59 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i128 = getelementptr i8, ptr %60, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %or67) #6, !srcloc !172
  %mode = getelementptr inbounds %struct.ti_pipe3, ptr %phy, i32 0, i32 17
  %61 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp = icmp eq i32 %62, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i129 = getelementptr i8, ptr %64, i32 68
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #6, !srcloc !171
  %and72 = and i32 %65, -1537
  %66 = ptrtoint ptr %phy_rx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy_rx, align 4
  %add.ptr.i130 = getelementptr i8, ptr %67, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %and72) #6, !srcloc !172
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_phy_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89, !90, !92, !94, !95, !96, !98, !100, !101, !102, !104, !106, !107, !108, !110, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_phy_ti_pipe3__291_937_ti_pipe3_driver_init6, !1, !"__initcall__kmod_phy_ti_pipe3__291_937_ti_pipe3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 937, i32 1}
!2 = !{ptr @__exitcall_ti_pipe3_driver_exit, !1, !"__exitcall_ti_pipe3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias292, !4, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!4 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 939, i32 1}
!5 = !{ptr @__UNIQUE_ID_author293, !6, !"__UNIQUE_ID_author293", i1 false, i1 false}
!6 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 940, i32 1}
!7 = !{ptr @__UNIQUE_ID_description294, !8, !"__UNIQUE_ID_description294", i1 false, i1 false}
!8 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 941, i32 1}
!9 = !{ptr @__UNIQUE_ID_file295, !10, !"__UNIQUE_ID_file295", i1 false, i1 false}
!10 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 942, i32 1}
!11 = !{ptr @__UNIQUE_ID_license296, !10, !"__UNIQUE_ID_license296", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 932, i32 11}
!14 = !{ptr @ti_pipe3_driver, !15, !"ti_pipe3_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 928, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 793, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ti_pipe3_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ti_pipe3_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 769, i32 47}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 751, i32 60}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 755, i32 60}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 677, i32 8}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 679, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug289, !33, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 686, i32 4}
!39 = !{ptr @ti_pipe3_get_sysctrl._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ti_pipe3_get_sysctrl._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 692, i32 41}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 694, i32 4}
!45 = !{ptr @ti_pipe3_get_sysctrl._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ti_pipe3_get_sysctrl._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 700, i32 4}
!49 = !{ptr @ti_pipe3_get_sysctrl._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ti_pipe3_get_sysctrl._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 709, i32 11}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 711, i32 4}
!55 = !{ptr @ti_pipe3_get_sysctrl.__UNIQUE_ID_ddebug290, !54, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 718, i32 5}
!58 = !{ptr @ti_pipe3_get_sysctrl._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ti_pipe3_get_sysctrl._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 727, i32 8}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 729, i32 4}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ti_pipe3_get_sysctrl._entry.27, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ti_pipe3_get_sysctrl._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 736, i32 5}
!69 = !{ptr @ti_pipe3_get_sysctrl._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ti_pipe3_get_sysctrl._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 607, i32 34}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 609, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ti_pipe3_get_clk._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ti_pipe3_get_clk._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 618, i32 36}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 620, i32 4}
!82 = !{ptr @ti_pipe3_get_clk._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ti_pipe3_get_clk._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 628, i32 36}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 630, i32 4}
!88 = !{ptr @ti_pipe3_get_clk._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ti_pipe3_get_clk._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 636, i32 27}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 638, i32 4}
!94 = !{ptr @ti_pipe3_get_clk._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ti_pipe3_get_clk._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 643, i32 27}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 645, i32 4}
!100 = !{ptr @ti_pipe3_get_clk._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ti_pipe3_get_clk._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 650, i32 27}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 652, i32 4}
!106 = !{ptr @ti_pipe3_get_clk._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ti_pipe3_get_clk._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 657, i32 36}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 659, i32 4}
!112 = !{ptr @ti_pipe3_get_clk._entry.58, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ti_pipe3_get_clk._entry_ptr.60, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @ops, !115, !"ops", i1 false, i1 false}
!115 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 592, i32 29}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 863, i32 4}
!118 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ti_pipe3_enable_clocks._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ti_pipe3_enable_clocks._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 871, i32 4}
!123 = !{ptr @ti_pipe3_enable_clocks._entry.63, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ti_pipe3_enable_clocks._entry_ptr.65, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 879, i32 4}
!127 = !{ptr @ti_pipe3_enable_clocks._entry.66, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ti_pipe3_enable_clocks._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 399, i32 2}
!131 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @ti_pipe3_dpll_wait_lock._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @ti_pipe3_dpll_wait_lock._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 311, i32 2}
!136 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ti_pipe3_get_dpll_params._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ti_pipe3_get_dpll_params._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 574, i32 4}
!141 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ti_pipe3_exit._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @ti_pipe3_exit._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 351, i32 3}
!146 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ti_pipe3_power_on._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ti_pipe3_power_on._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @ti_pipe3_id_table, !150, !"ti_pipe3_id_table", i1 false, i1 false}
!150 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 907, i32 34}
!151 = !{ptr @data_usb, !152, !"data_usb", i1 false, i1 false}
!152 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 211, i32 26}
!153 = !{ptr @dpll_map_usb, !154, !"dpll_map_usb", i1 false, i1 false}
!154 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 185, i32 30}
!155 = !{ptr @data_sata, !156, !"data_sata", i1 false, i1 false}
!156 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 237, i32 26}
!157 = !{ptr @dpll_map_sata, !158, !"dpll_map_sata", i1 false, i1 false}
!158 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 195, i32 30}
!159 = !{ptr @data_pcie, !160, !"data_pcie", i1 false, i1 false}
!160 = !{!"../drivers/phy/ti/phy-ti-pipe3.c", i32 263, i32 26}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2148975988, i64 2148975993, i64 2148976006, i64 2148976050, i64 2148976084, i64 2148976105}
!171 = !{i64 6360974}
!172 = !{i64 6360556}
!173 = !{i64 2155200043}
!174 = !{i64 2155199885}
!175 = !{i64 2155212863}
!176 = !{i64 2155212705}
