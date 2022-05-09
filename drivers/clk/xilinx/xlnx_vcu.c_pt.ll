; ModuleID = '/llk/IR_all_yes/drivers/clk/xilinx/xlnx_vcu.c_pt.bc'
source_filename = "../drivers/clk/xilinx/xlnx_vcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xvcu_pll_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.xvcu_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.vcu_pll = type { %struct.clk_hw, ptr, i32, i32 }

@__initcall__kmod_xlnx_vcu__218_739_xvcu_driver_init6 = internal global ptr @xvcu_driver_init, section ".initcall6.init", align 4
@xvcu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xvcu_probe, ptr @xvcu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xvcu_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xvcu_driver_exit = internal global ptr @xvcu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author219 = internal constant [47 x i8] c"xlnx_vcu.author=Dhaval Shah <dshah@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description220 = internal constant [44 x i8] c"xlnx_vcu.description=Xilinx VCU init Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file221 = internal constant [42 x i8] c"xlnx_vcu.file=drivers/clk/xilinx/xlnx_vcu\00", section ".modinfo", align 1
@__UNIQUE_ID_license222 = internal constant [24 x i8] c"xlnx_vcu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx-vcu\00", [21 x i8] zeroinitializer }, align 32
@xvcu_of_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,vcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,vcu-logicoreip-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcu_slcr\00", [23 x i8] zeroinitializer }, align 32
@xvcu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 617, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"get vcu_slcr memory resource failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xvcu_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/xilinx/xlnx_vcu.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr = internal global ptr @xvcu_probe._entry, section ".printk_index", align 4
@xvcu_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 624, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vcu_slcr register mapping failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.9 = internal global ptr @xvcu_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,vcu-settings\00", [46 x i8] zeroinitializer }, align 32
@xvcu_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 632, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"could not find xlnx,vcu-settings: trying direct register access\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.14 = internal global ptr @xvcu_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"logicore\00", [23 x i8] zeroinitializer }, align 32
@xvcu_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 637, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"get logicore memory resource failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.18 = internal global ptr @xvcu_probe._entry.16, section ".printk_index", align 4
@xvcu_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"logicore register mapping failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.21 = internal global ptr @xvcu_probe._entry.19, section ".printk_index", align 4
@xvcu_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vcu_settings_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.40, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 4095, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"xlnx_vcu:649:(&vcu_settings_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@xvcu_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 651, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.25 = internal global ptr @xvcu_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@xvcu_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not get aclk clock\0A\00", [38 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.29 = internal global ptr @xvcu_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@xvcu_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 664, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not get pll_ref clock\0A\00", [35 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.33 = internal global ptr @xvcu_probe._entry.31, section ".printk_index", align 4
@xvcu_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aclk clock enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.36 = internal global ptr @xvcu_probe._entry.34, section ".printk_index", align 4
@xvcu_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 683, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register clock provider\0A\00", [61 x i8] zeroinitializer }, align 32
@xvcu_probe._entry_ptr.39 = internal global ptr @xvcu_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regmap\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vcu_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcu_pll_post\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"venc_core_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"venc_mcu_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdec_core_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdec_mcu_clk\00", [19 x i8] zeroinitializer }, align 32
@vcu_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @xvcu_pll_enable, ptr @xvcu_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @xvcu_pll_recalc_rate, ptr @xvcu_pll_round_rate, ptr null, ptr null, ptr null, ptr @xvcu_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@xvcu_pll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013VCU PLL is not locked\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xvcu_pll_enable\00", [16 x i8] zeroinitializer }, align 32
@xvcu_pll_enable._entry_ptr = internal global ptr @xvcu_pll_enable._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xvcu_pll_cfg = internal constant { [101 x %struct.xvcu_pll_cfg], [584 x i8] } { [101 x %struct.xvcu_pll_cfg] [%struct.xvcu_pll_cfg { i32 25, i32 3, i32 10, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 26, i32 3, i32 10, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 27, i32 4, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 28, i32 4, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 29, i32 4, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 30, i32 4, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 31, i32 6, i32 1, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 32, i32 6, i32 1, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 33, i32 4, i32 10, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 34, i32 5, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 35, i32 5, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 36, i32 5, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 37, i32 5, i32 6, i32 3, i32 63, i32 1000 }, %struct.xvcu_pll_cfg { i32 38, i32 5, i32 6, i32 3, i32 63, i32 975 }, %struct.xvcu_pll_cfg { i32 39, i32 3, i32 12, i32 3, i32 63, i32 950 }, %struct.xvcu_pll_cfg { i32 40, i32 3, i32 12, i32 3, i32 63, i32 925 }, %struct.xvcu_pll_cfg { i32 41, i32 3, i32 12, i32 3, i32 63, i32 900 }, %struct.xvcu_pll_cfg { i32 42, i32 3, i32 12, i32 3, i32 63, i32 875 }, %struct.xvcu_pll_cfg { i32 43, i32 3, i32 12, i32 3, i32 63, i32 850 }, %struct.xvcu_pll_cfg { i32 44, i32 3, i32 12, i32 3, i32 63, i32 850 }, %struct.xvcu_pll_cfg { i32 45, i32 3, i32 12, i32 3, i32 63, i32 825 }, %struct.xvcu_pll_cfg { i32 46, i32 3, i32 12, i32 3, i32 63, i32 800 }, %struct.xvcu_pll_cfg { i32 47, i32 3, i32 12, i32 3, i32 63, i32 775 }, %struct.xvcu_pll_cfg { i32 48, i32 3, i32 12, i32 3, i32 63, i32 775 }, %struct.xvcu_pll_cfg { i32 49, i32 3, i32 12, i32 3, i32 63, i32 750 }, %struct.xvcu_pll_cfg { i32 50, i32 3, i32 12, i32 3, i32 63, i32 750 }, %struct.xvcu_pll_cfg { i32 51, i32 3, i32 2, i32 3, i32 63, i32 725 }, %struct.xvcu_pll_cfg { i32 52, i32 3, i32 2, i32 3, i32 63, i32 700 }, %struct.xvcu_pll_cfg { i32 53, i32 3, i32 2, i32 3, i32 63, i32 700 }, %struct.xvcu_pll_cfg { i32 54, i32 3, i32 2, i32 3, i32 63, i32 675 }, %struct.xvcu_pll_cfg { i32 55, i32 3, i32 2, i32 3, i32 63, i32 675 }, %struct.xvcu_pll_cfg { i32 56, i32 3, i32 2, i32 3, i32 63, i32 650 }, %struct.xvcu_pll_cfg { i32 57, i32 3, i32 2, i32 3, i32 63, i32 650 }, %struct.xvcu_pll_cfg { i32 58, i32 3, i32 2, i32 3, i32 63, i32 625 }, %struct.xvcu_pll_cfg { i32 59, i32 3, i32 2, i32 3, i32 63, i32 625 }, %struct.xvcu_pll_cfg { i32 60, i32 3, i32 2, i32 3, i32 63, i32 625 }, %struct.xvcu_pll_cfg { i32 61, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 62, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 63, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 64, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 65, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 66, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 67, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 68, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 69, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 70, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 71, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 72, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 73, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 74, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 75, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 76, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 77, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 78, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 79, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 80, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 81, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 82, i32 3, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 83, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 84, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 85, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 86, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 87, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 88, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 89, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 90, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 91, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 92, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 93, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 94, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 95, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 96, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 97, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 98, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 99, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 100, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 101, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 102, i32 4, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 103, i32 5, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 104, i32 5, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 105, i32 5, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 106, i32 5, i32 2, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 107, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 108, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 109, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 110, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 111, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 112, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 113, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 114, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 115, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 116, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 117, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 118, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 119, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 120, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 121, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 122, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 123, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 124, i32 3, i32 4, i32 3, i32 63, i32 600 }, %struct.xvcu_pll_cfg { i32 125, i32 3, i32 4, i32 3, i32 63, i32 600 }], [584 x i8] zeroinitializer }, align 32
@xvcu_clk_hw_register_leaf.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"_mux\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"_div\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"xvcu_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 730, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 732, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"xvcu_of_id_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 723, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 615, i32 59 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 617, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 624, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 629, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 631, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 635, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 637, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 643, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"vcu_settings_regmap_config\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 71, i32 29 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 648, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 651, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 656, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 658, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 662, i32 43 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 664, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 670, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 683, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 72, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 539, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 545, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 554, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 559, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 564, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 569, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"vcu_pll_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 391, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 366, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [13 x i8] c"xvcu_pll_cfg\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 98, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 455, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 457, i32 45 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 457, i32 59 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [33 x i8] c"../drivers/clk/xilinx/xlnx_vcu.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 467, i32 59 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author219, ptr @__UNIQUE_ID_description220, ptr @__UNIQUE_ID_file221, ptr @__UNIQUE_ID_license222, ptr @__exitcall_xvcu_driver_exit, ptr @__initcall__kmod_xlnx_vcu__218_739_xvcu_driver_init6, ptr @xvcu_driver_exit, ptr @xvcu_pll_enable._entry, ptr @xvcu_pll_enable._entry_ptr, ptr @xvcu_probe._entry, ptr @xvcu_probe._entry.11, ptr @xvcu_probe._entry.16, ptr @xvcu_probe._entry.19, ptr @xvcu_probe._entry.23, ptr @xvcu_probe._entry.27, ptr @xvcu_probe._entry.31, ptr @xvcu_probe._entry.34, ptr @xvcu_probe._entry.37, ptr @xvcu_probe._entry.7, ptr @xvcu_probe._entry_ptr, ptr @xvcu_probe._entry_ptr.14, ptr @xvcu_probe._entry_ptr.18, ptr @xvcu_probe._entry_ptr.21, ptr @xvcu_probe._entry_ptr.25, ptr @xvcu_probe._entry_ptr.29, ptr @xvcu_probe._entry_ptr.33, ptr @xvcu_probe._entry_ptr.36, ptr @xvcu_probe._entry_ptr.39, ptr @xvcu_probe._entry_ptr.9, ptr @xvcu_driver, ptr @.str, ptr @xvcu_of_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @xvcu_probe._key, ptr @vcu_settings_regmap_config, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @vcu_pll_ops, ptr @.str.47, ptr @.str.48, ptr @xvcu_pll_cfg, ptr @xvcu_clk_hw_register_leaf.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_of_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcu_settings_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcu_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_pll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_pll_cfg to i32), i32 2424, i32 3008, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvcu_clk_hw_register_leaf.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xvcu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xvcu_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xvcu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xvcu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvcu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent.addr.i.i = alloca ptr, align 4
  %init.i.i = alloca %struct.clk_init_data, align 4
  %parent_data.i = alloca [2 x %struct.clk_parent_data], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call10 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %2, i32 noundef %add.i) #7
  %vcu_slcr_ba = getelementptr inbounds %struct.xvcu_device, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %vcu_slcr_ba to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %vcu_slcr_ba, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call19 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.10) #7
  %logicore_reg_ba = getelementptr inbounds %struct.xvcu_device, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %logicore_reg_ba to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %logicore_reg_ba, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end25, label %if.end18.if.end59_crit_edge

if.end18.if.end59_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end25:                                         ; preds = %if.end18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %call27 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #7
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end32, label %if.end34

do.end32:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end34:                                         ; preds = %do.end25
  %7 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call27, align 4
  %end.i156 = getelementptr inbounds %struct.resource, ptr %call27, i32 0, i32 1
  %9 = ptrtoint ptr %end.i156 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i156, align 4
  %sub.i157 = sub i32 1, %8
  %add.i158 = add i32 %sub.i157, %10
  %call38 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %add.i158) #7
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %call47 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %call38, ptr noundef nonnull @vcu_settings_regmap_config, ptr noundef nonnull @xvcu_probe._key, ptr noundef nonnull @.str.22) #7
  %11 = ptrtoint ptr %logicore_reg_ba to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call47, ptr %logicore_reg_ba, align 4
  %cmp.i159 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %do.end54, label %if.end45.if.end59_crit_edge

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  %12 = ptrtoint ptr %logicore_reg_ba to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %logicore_reg_ba, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.end45.if.end59_crit_edge, %if.end18.if.end59_crit_edge
  %call61 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  %aclk = getelementptr inbounds %struct.xvcu_device, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %aclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call61, ptr %aclk, align 4
  %cmp.i160 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %do.end67, label %if.end71

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  %16 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aclk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end71:                                         ; preds = %if.end59
  %call73 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.30) #7
  %pll_ref = getelementptr inbounds %struct.xvcu_device, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %pll_ref to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call73, ptr %pll_ref, align 4
  %cmp.i161 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %do.end79, label %if.end83

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #10
  %20 = ptrtoint ptr %pll_ref to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pll_ref, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end83:                                         ; preds = %if.end71
  %23 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aclk, align 4
  %call.i162 = tail call i32 @clk_prepare(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end83.do.end90_crit_edge

if.end83.do.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.end.i:                                         ; preds = %if.end83
  %call1.i = tail call i32 @clk_enable(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end92, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %do.end90

do.end90:                                         ; preds = %if.then3.i, %if.end83.do.end90_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i162, %if.end83.do.end90_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end92:                                         ; preds = %if.end.i
  %25 = ptrtoint ptr %logicore_reg_ba to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %logicore_reg_ba, align 4
  %call94 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 116, i32 noundef 3) #7
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent_data.i) #7
  %29 = call ptr @memset(ptr %parent_data.i, i32 0, i32 32)
  %30 = ptrtoint ptr %vcu_slcr_ba to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vcu_slcr_ba, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not.i163 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i163, label %xvcu_register_clock_provider.exit.thread, label %if.end.i164

xvcu_register_clock_provider.exit.thread:         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_data.i) #7
  br label %do.end100

if.end.i164:                                      ; preds = %if.end92
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %call.i.i, align 4
  %hws3.i = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i.i, i32 0, i32 1
  %clk_data.i = getelementptr inbounds %struct.xvcu_device, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %clk_data.i, align 4
  %34 = ptrtoint ptr %pll_ref to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pll_ref, align 4
  %call4.i = tail call ptr @__clk_get_name(ptr noundef %35) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.addr.i.i) #7
  %36 = ptrtoint ptr %parent.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call4.i, ptr %parent.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #7
  %37 = getelementptr inbounds i8, ptr %init.i.i, i32 12
  %38 = call ptr @memset(ptr %37, i32 255, i32 12)
  %39 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.41, ptr %init.i.i, align 4
  %parent_names.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %parent_names.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %parent.addr.i.i, ptr %parent_names.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @vcu_pll_ops, ptr %ops.i.i, align 4
  %num_parents.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %num_parents.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4224, ptr %flags2.i.i, align 4
  %call.i71.i = call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef 24, i32 noundef 3264) #7
  %tobool.not.i.i = icmp eq ptr %call.i71.i, null
  br i1 %tobool.not.i.i, label %xvcu_register_pll.exit.thread.i, label %if.end.i.i

xvcu_register_pll.exit.thread.i:                  ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #7
  br label %if.then7.i

if.end.i.i:                                       ; preds = %if.end.i164
  %init5.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i71.i, i32 0, i32 2
  %44 = ptrtoint ptr %init5.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %init.i.i, ptr %init5.i.i, align 4
  %reg_base6.i.i = getelementptr inbounds %struct.vcu_pll, ptr %call.i71.i, i32 0, i32 1
  %45 = ptrtoint ptr %reg_base6.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %31, ptr %reg_base6.i.i, align 4
  %fvco_min.i.i = getelementptr inbounds %struct.vcu_pll, ptr %call.i71.i, i32 0, i32 2
  %46 = ptrtoint ptr %fvco_min.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1500000000, ptr %fvco_min.i.i, align 4
  %fvco_max.i.i = getelementptr inbounds %struct.vcu_pll, ptr %call.i71.i, i32 0, i32 3
  %47 = ptrtoint ptr %fvco_max.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1294967296, ptr %fvco_max.i.i, align 4
  %call8.i.i = call i32 @devm_clk_hw_register(ptr noundef %28, ptr noundef nonnull %call.i71.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end12.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = inttoptr i32 %call8.i.i to ptr
  br label %xvcu_register_pll.exit.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %fvco_min.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fvco_min.i.i, align 4
  %51 = ptrtoint ptr %fvco_max.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fvco_max.i.i, align 4
  call void @clk_hw_set_rate_range(ptr noundef nonnull %call.i71.i, i32 noundef %50, i32 noundef %52) #7
  br label %xvcu_register_pll.exit.i

xvcu_register_pll.exit.i:                         ; preds = %if.end12.i.i, %if.then10.i.i
  %retval.0.i.i = phi ptr [ %48, %if.then10.i.i ], [ %call.i71.i, %if.end12.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #7
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xvcu_register_pll.exit.i.if.then7.i_crit_edge, label %if.end9.i

xvcu_register_pll.exit.i.if.then7.i_crit_edge:    ; preds = %xvcu_register_pll.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %xvcu_register_pll.exit.i.if.then7.i_crit_edge, %xvcu_register_pll.exit.thread.i
  %retval.0.i77.i = phi ptr [ inttoptr (i32 -12 to ptr), %xvcu_register_pll.exit.thread.i ], [ %retval.0.i.i, %xvcu_register_pll.exit.i.if.then7.i_crit_edge ]
  %53 = ptrtoint ptr %retval.0.i77.i to i32
  br label %xvcu_register_clock_provider.exit

if.end9.i:                                        ; preds = %xvcu_register_pll.exit.i
  %pll.i = getelementptr inbounds %struct.xvcu_device, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %pll.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i.i, ptr %pll.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 36
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %56 = and i32 %55, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %56)
  %cmp.not.i.i = icmp eq i32 %56, 256
  br i1 %cmp.not.i.i, label %xvcu_register_pll_post.exit.i, label %if.end9.i.if.then13.i_crit_edge

if.end9.i.if.then13.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

xvcu_register_pll_post.exit.i:                    ; preds = %if.end9.i
  %call14.i.i = call ptr @clk_hw_get_name(ptr noundef %retval.0.i.i) #7
  %call15.i.i = call ptr @clk_hw_register_fixed_factor(ptr noundef %28, ptr noundef nonnull @.str.42, ptr noundef %call14.i.i, i32 noundef 4, i32 noundef 1, i32 noundef 2) #7
  %cmp.i74.i = icmp ugt ptr %call15.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i, label %xvcu_register_pll_post.exit.i.if.then13.i_crit_edge, label %if.end15.i

xvcu_register_pll_post.exit.i.if.then13.i_crit_edge: ; preds = %xvcu_register_pll_post.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.then13.i:                                      ; preds = %xvcu_register_pll_post.exit.i.if.then13.i_crit_edge, %if.end9.i.if.then13.i_crit_edge
  %retval.0.i7380.i = phi ptr [ %call15.i.i, %xvcu_register_pll_post.exit.i.if.then13.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end9.i.if.then13.i_crit_edge ]
  %57 = ptrtoint ptr %retval.0.i7380.i to i32
  br label %xvcu_register_clock_provider.exit

if.end15.i:                                       ; preds = %xvcu_register_pll_post.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll_post.i = getelementptr inbounds %struct.xvcu_device, ptr %call.i, i32 0, i32 6
  %58 = ptrtoint ptr %pll_post.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call15.i.i, ptr %pll_post.i, align 4
  %fw_name.i = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i, i32 0, i32 1
  %59 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.30, ptr %fw_name.i, align 4
  %arrayidx17.i = getelementptr inbounds [2 x %struct.clk_parent_data], ptr %parent_data.i, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call15.i.i, ptr %arrayidx17.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 48
  %call20.i = call fastcc ptr @xvcu_clk_hw_register_leaf(ptr noundef %28, ptr noundef nonnull @.str.43, ptr noundef nonnull %parent_data.i, ptr noundef %add.ptr.i) #7
  %61 = ptrtoint ptr %hws3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call20.i, ptr %hws3.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %31, i32 52
  %call24.i = call fastcc ptr @xvcu_clk_hw_register_leaf(ptr noundef %28, ptr noundef nonnull @.str.44, ptr noundef nonnull %parent_data.i, ptr noundef %add.ptr23.i) #7
  %arrayidx25.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i.i, i32 2
  %62 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call24.i, ptr %arrayidx25.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %31, i32 56
  %call28.i = call fastcc ptr @xvcu_clk_hw_register_leaf(ptr noundef %28, ptr noundef nonnull @.str.45, ptr noundef nonnull %parent_data.i, ptr noundef %add.ptr27.i) #7
  %arrayidx29.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i.i, i32 3
  %63 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call28.i, ptr %arrayidx29.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %31, i32 60
  %call32.i = call fastcc ptr @xvcu_clk_hw_register_leaf(ptr noundef %28, ptr noundef nonnull @.str.46, ptr noundef nonnull %parent_data.i, ptr noundef %add.ptr31.i) #7
  %arrayidx33.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i.i, i32 4
  %64 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call32.i, ptr %arrayidx33.i, align 4
  %call34.i = call i32 @devm_of_clk_add_hw_provider(ptr noundef %28, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i.i) #7
  br label %xvcu_register_clock_provider.exit

xvcu_register_clock_provider.exit:                ; preds = %if.end15.i, %if.then13.i, %if.then7.i
  %retval.0.i165 = phi i32 [ %53, %if.then7.i ], [ %57, %if.then13.i ], [ %call34.i, %if.end15.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i165)
  %tobool96.not = icmp eq i32 %retval.0.i165, 0
  br i1 %tobool96.not, label %if.end102, label %xvcu_register_clock_provider.exit.do.end100_crit_edge

xvcu_register_clock_provider.exit.do.end100_crit_edge: ; preds = %xvcu_register_clock_provider.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end100

do.end100:                                        ; preds = %xvcu_register_clock_provider.exit.do.end100_crit_edge, %xvcu_register_clock_provider.exit.thread
  %retval.0.i165171 = phi i32 [ -12, %xvcu_register_clock_provider.exit.thread ], [ %retval.0.i165, %xvcu_register_clock_provider.exit.do.end100_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  call fastcc void @xvcu_unregister_clock_provider(ptr noundef nonnull %call.i)
  %65 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %aclk, align 4
  call void @clk_disable(ptr noundef %66) #7
  call void @clk_unprepare(ptr noundef %66) #7
  br label %cleanup

if.end102:                                        ; preds = %xvcu_register_clock_provider.exit
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %do.end100, %do.end90, %do.end79, %do.end67, %do.end54, %do.end43, %do.end32, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end54 ], [ %18, %do.end67 ], [ %22, %do.end79 ], [ %retval.0.i.ph, %do.end90 ], [ %retval.0.i165171, %do.end100 ], [ 0, %if.end102 ], [ -12, %do.end43 ], [ -19, %do.end32 ], [ -12, %do.end16 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvcu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xvcu_unregister_clock_provider(ptr noundef nonnull %1)
  %logicore_reg_ba = getelementptr inbounds %struct.xvcu_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %logicore_reg_ba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %logicore_reg_ba, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 116, i32 noundef 0) #7
  %aclk = getelementptr inbounds %struct.xvcu_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xvcu_unregister_clock_provider(ptr nocapture noundef readonly %xvcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_data = getelementptr inbounds %struct.xvcu_device, ptr %xvcu, i32 0, i32 7
  %0 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_data, align 4
  %hws1 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %3) #7
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %3) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %call.i) #7
  tail call void @clk_hw_unregister_mux(ptr noundef %call4.i) #7
  tail call void @clk_hw_unregister_divider(ptr noundef nonnull %call.i) #7
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr %struct.clk_hw_onecell_data, ptr %1, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool.not.i27 = icmp eq ptr %5, null
  %cmp.i28 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i29 = or i1 %tobool.not.i27, %cmp.i28
  br i1 %spec.select.i29, label %if.end.if.end7_crit_edge, label %if.end.i33

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.i33:                                       ; preds = %if.end
  %call.i31 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %5) #7
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %5) #7
  %tobool1.not.i32 = icmp eq ptr %call.i31, null
  br i1 %tobool1.not.i32, label %if.end.i33.if.end7_crit_edge, label %if.end3.i35

if.end.i33.if.end7_crit_edge:                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end3.i35:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i34 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %call.i31) #7
  tail call void @clk_hw_unregister_mux(ptr noundef %call4.i34) #7
  tail call void @clk_hw_unregister_divider(ptr noundef nonnull %call.i31) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end3.i35, %if.end.i33.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %arrayidx8 = getelementptr %struct.clk_hw_onecell_data, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %tobool.not.i37 = icmp eq ptr %7, null
  %cmp.i38 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i39 = or i1 %tobool.not.i37, %cmp.i38
  br i1 %spec.select.i39, label %if.end7.if.end12_crit_edge, label %if.end.i43

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.i43:                                       ; preds = %if.end7
  %call.i41 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %7) #7
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %7) #7
  %tobool1.not.i42 = icmp eq ptr %call.i41, null
  br i1 %tobool1.not.i42, label %if.end.i43.if.end12_crit_edge, label %if.end3.i45

if.end.i43.if.end12_crit_edge:                    ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end3.i45:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i44 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %call.i41) #7
  tail call void @clk_hw_unregister_mux(ptr noundef %call4.i44) #7
  tail call void @clk_hw_unregister_divider(ptr noundef nonnull %call.i41) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end3.i45, %if.end.i43.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %8 = ptrtoint ptr %hws1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hws1, align 4
  %tobool.not.i47 = icmp eq ptr %9, null
  %cmp.i48 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i49 = or i1 %tobool.not.i47, %cmp.i48
  br i1 %spec.select.i49, label %if.end12.if.end17_crit_edge, label %if.end.i53

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end.i53:                                       ; preds = %if.end12
  %call.i51 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %9) #7
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %9) #7
  %tobool1.not.i52 = icmp eq ptr %call.i51, null
  br i1 %tobool1.not.i52, label %if.end.i53.if.end17_crit_edge, label %if.end3.i55

if.end.i53.if.end17_crit_edge:                    ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end3.i55:                                      ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i54 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %call.i51) #7
  tail call void @clk_hw_unregister_mux(ptr noundef %call4.i54) #7
  tail call void @clk_hw_unregister_divider(ptr noundef nonnull %call.i51) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end3.i55, %if.end.i53.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %pll_post = getelementptr inbounds %struct.xvcu_device, ptr %xvcu, i32 0, i32 6
  %10 = ptrtoint ptr %pll_post to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_post, align 4
  tail call void @clk_hw_unregister_fixed_factor(ptr noundef %11) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xvcu_clk_hw_register_leaf(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_data, ptr noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @xvcu_clk_hw_register_leaf.__key, i16 noundef signext 3) #7
  %call3 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef nonnull @.str.51) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.end7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.body
  %call8 = tail call ptr @__clk_hw_register_mux(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %call3, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, ptr noundef %parent_data, i32 noundef 4, ptr noundef %reg, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 16, ptr noundef null, ptr noundef nonnull %call.i) #7
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef nonnull @.str.52) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.unregister_mux_crit_edge, label %if.end15

if.end11.unregister_mux_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_mux

if.end15:                                         ; preds = %if.end11
  %call16 = tail call ptr @__clk_hw_register_divider(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %call12, ptr noundef null, ptr noundef %call8, ptr noundef null, i32 noundef 4, ptr noundef %reg, i8 noundef zeroext 4, i8 noundef zeroext 6, i8 noundef zeroext 21, ptr noundef null, ptr noundef nonnull %call.i) #7
  %cmp.i1 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call16 to i32
  br label %unregister_mux

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @__clk_hw_register_gate(ptr noundef %dev, ptr noundef null, ptr noundef %name, ptr noundef null, ptr noundef %call16, ptr noundef null, i32 noundef 4, ptr noundef %reg, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull %call.i) #7
  %cmp.i2 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call21 to i32
  tail call void @clk_hw_unregister_divider(ptr noundef %call16) #7
  br label %unregister_mux

unregister_mux:                                   ; preds = %if.then23, %if.then18, %if.end11.unregister_mux_crit_edge
  %err.0 = phi i32 [ %0, %if.then18 ], [ %1, %if.then23 ], [ -12, %if.end11.unregister_mux_crit_edge ]
  tail call void @clk_hw_unregister_mux(ptr noundef %call8) #7
  %2 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %unregister_mux, %if.end20.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %unregister_mux ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvcu_pll_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.vcu_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %3 = or i32 %2, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %5 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !120
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 200
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 96
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.cond.i, label %if.end

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %11
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.end

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end:                                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #10
  br label %err

if.end:                                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %13 = and i32 %12, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !120
  br label %err

err:                                              ; preds = %if.end, %do.end
  %retval.0.i30 = phi i32 [ 0, %if.end ], [ -110, %do.end ]
  ret i32 %retval.0.i30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xvcu_pll_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.vcu_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %3 = or i32 %2, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !120
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvcu_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.vcu_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !117
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %shr = and i32 %3, 127
  %mul = mul i32 %shr, %parent_rate
  ret i32 %mul
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @xvcu_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div308 = lshr i32 %1, 1
  %fvco_min = getelementptr inbounds %struct.vcu_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %fvco_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fvco_min, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %rate)
  %fvco_max = getelementptr inbounds %struct.vcu_pll, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %fvco_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fvco_max, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %add = add i32 %div308, %7
  %div189 = udiv i32 %add, %1
  %8 = tail call i32 @llvm.umax.i32(i32 %div189, i32 25)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 125)
  %mul213 = mul i32 %9, %1
  ret i32 %mul213
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvcu_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %rate, %parent_rate
  %reg_base.i = getelementptr inbounds %struct.vcu_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.07.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %cfg.06.i.i = phi ptr [ null, %entry ], [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [101 x %struct.xvcu_pll_cfg], ptr @xvcu_pll_cfg, i32 0, i32 %i.07.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp1.i.i = icmp eq i32 %3, %div
  %spec.select.i.i = select i1 %cmp1.i.i, ptr %arrayidx.i.i, ptr %cfg.06.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %xvcu_find_cfg.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

xvcu_find_cfg.exit.i:                             ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %xvcu_find_cfg.exit.i.xvcu_pll_set_div.exit_crit_edge, label %if.end.i

xvcu_find_cfg.exit.i.xvcu_pll_set_div.exit_crit_edge: ; preds = %xvcu_find_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xvcu_pll_set_div.exit

if.end.i:                                         ; preds = %xvcu_find_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %5 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spec.select.i.i, align 4
  %7 = and i32 %4, -8323073
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %shl.i = shl i32 %6, 8
  %and20.i = and i32 %shl.i, 32512
  %or.i = or i32 %and20.i, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #7, !srcloc !120
  %res.i = getelementptr inbounds %struct.xvcu_pll_cfg, ptr %spec.select.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res.i, align 4
  %cp.i = getelementptr inbounds %struct.xvcu_pll_cfg, ptr %spec.select.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %cp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cp.i, align 4
  %lfhf.i = getelementptr inbounds %struct.xvcu_pll_cfg, ptr %spec.select.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %lfhf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lfhf.i, align 4
  %lock_cnt.i = getelementptr inbounds %struct.xvcu_pll_cfg, ptr %spec.select.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %lock_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lock_cnt.i, align 4
  %lock_dly.i = getelementptr inbounds %struct.xvcu_pll_cfg, ptr %spec.select.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %lock_dly.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lock_dly.i, align 4
  %and46.i = and i32 %11, 15
  %shl71.i = shl i32 %13, 5
  %and72.i = and i32 %shl71.i, 480
  %or73.i = or i32 %and72.i, %and46.i
  %shl98.i = shl i32 %15, 10
  %and99.i = and i32 %shl98.i, 7168
  %or100.i = or i32 %or73.i, %and99.i
  %shl125.i = shl i32 %17, 13
  %and126.i = and i32 %shl125.i, 8380416
  %or127.i = or i32 %or100.i, %and126.i
  %shl152.i = shl i32 %19, 25
  %or154.i = or i32 %or127.i, %shl152.i
  %add.ptr.i191.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or154.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191.i, i32 %20) #7, !srcloc !120
  br label %xvcu_pll_set_div.exit

xvcu_pll_set_div.exit:                            ; preds = %if.end.i, %xvcu_find_cfg.exit.i.xvcu_pll_set_div.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %xvcu_find_cfg.exit.i.xvcu_pll_set_div.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_divider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_fixed_factor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !99, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_xlnx_vcu__218_739_xvcu_driver_init6, !1, !"__initcall__kmod_xlnx_vcu__218_739_xvcu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 739, i32 1}
!2 = !{ptr @__exitcall_xvcu_driver_exit, !1, !"__exitcall_xvcu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author219, !4, !"__UNIQUE_ID_author219", i1 false, i1 false}
!4 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 741, i32 1}
!5 = !{ptr @__UNIQUE_ID_description220, !6, !"__UNIQUE_ID_description220", i1 false, i1 false}
!6 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 742, i32 1}
!7 = !{ptr @__UNIQUE_ID_file221, !8, !"__UNIQUE_ID_file221", i1 false, i1 false}
!8 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 743, i32 1}
!9 = !{ptr @__UNIQUE_ID_license222, !8, !"__UNIQUE_ID_license222", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 732, i32 21}
!12 = !{ptr @xvcu_driver, !13, !"xvcu_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 730, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 615, i32 59}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 617, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xvcu_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @xvcu_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 624, i32 3}
!26 = !{ptr @xvcu_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xvcu_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 629, i32 38}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 631, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xvcu_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @xvcu_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 635, i32 26}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 637, i32 4}
!39 = !{ptr @xvcu_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @xvcu_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 643, i32 4}
!43 = !{ptr @xvcu_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @xvcu_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @xvcu_probe._key, !46, !"_key", i1 false, i1 false}
!46 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 648, i32 4}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 651, i32 4}
!50 = !{ptr @xvcu_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xvcu_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 656, i32 40}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 658, i32 3}
!56 = !{ptr @xvcu_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @xvcu_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 662, i32 43}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 664, i32 3}
!62 = !{ptr @xvcu_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @xvcu_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 670, i32 3}
!66 = !{ptr @xvcu_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @xvcu_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 683, i32 3}
!70 = !{ptr @xvcu_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @xvcu_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 72, i32 10}
!74 = !{ptr @vcu_settings_regmap_config, !75, !"vcu_settings_regmap_config", i1 false, i1 false}
!75 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 71, i32 29}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 539, i32 11}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 545, i32 35}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 554, i32 34}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 559, i32 34}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 564, i32 34}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 569, i32 34}
!88 = !{ptr @vcu_pll_ops, !89, !"vcu_pll_ops", i1 false, i1 false}
!89 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 391, i32 29}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 366, i32 3}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @xvcu_pll_enable._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @xvcu_pll_enable._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @xvcu_pll_cfg, !96, !"xvcu_pll_cfg", i1 false, i1 false}
!96 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 98, i32 34}
!97 = !{ptr @xvcu_clk_hw_register_leaf.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 455, i32 2}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 457, i32 45}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 457, i32 59}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 467, i32 59}
!106 = !{ptr @xvcu_of_id_table, !107, !"xvcu_of_id_table", i1 false, i1 false}
!107 = !{!"../drivers/clk/xilinx/xlnx_vcu.c", i32 723, i32 34}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 5021574}
!118 = !{i64 2152554433}
!119 = !{i64 2152555788}
!120 = !{i64 5021156}
