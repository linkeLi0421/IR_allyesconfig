; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/mvebu/pinctrl-dove.c_pt.bc'
source_filename = "../drivers/pinctrl/mvebu/pinctrl-dove.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mvebu_pinctrl_soc_info = type { i8, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mvebu_mpp_ctrl = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.mvebu_mpp_mode = type { i8, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mvebu_mpp_ctrl_setting = type { i8, ptr, ptr, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mvebu_mpp_ctrl_data = type { %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, i32 }

@__initcall__kmod_pinctrl_dove__210_860_dove_pinctrl_driver_init6 = internal global ptr @dove_pinctrl_driver_init, section ".initcall6.init", align 4
@dove_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dove_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @dove_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dove-pinctrl\00", [19 x i8] zeroinitializer }, align 32
@dove_pinctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dove_pinctrl_info }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dove_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get pdma clock\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dove_pinctrl_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pinctrl/mvebu/pinctrl-dove.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dove_pinctrl_probe._entry_ptr = internal global ptr @dove_pinctrl_probe._entry, section ".printk_index", align 4
@dove_pinctrl_info = internal global { %struct.mvebu_pinctrl_soc_info, [32 x i8] } { %struct.mvebu_pinctrl_soc_info { i8 0, ptr @dove_mpp_controls, ptr null, i32 11, ptr @dove_mpp_modes, i32 33, ptr @dove_mpp_gpio_ranges, i32 3 }, [32 x i8] zeroinitializer }, align 32
@dove_pinctrl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 807, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"falling back to hardcoded MPP4 resource\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dove_pinctrl_probe._entry_ptr.9 = internal global ptr @dove_pinctrl_probe._entry.6, section ".printk_index", align 4
@mpp4_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dove_pinctrl_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 819, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"falling back to hardcoded PMU resource\0A\00", [56 x i8] zeroinitializer }, align 32
@dove_pinctrl_probe._entry_ptr.12 = internal global ptr @dove_pinctrl_probe._entry.10, section ".printk_index", align 4
@pmu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"marvell,dove-global-config\00", [37 x i8] zeroinitializer }, align 32
@gconfmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dove_pinctrl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 833, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"falling back to hardcoded global registers\0A\00", [52 x i8] zeroinitializer }, align 32
@dove_pinctrl_probe._entry_ptr.16 = internal global ptr @dove_pinctrl_probe._entry.14, section ".printk_index", align 4
@dove_pinctrl_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pinctrl_dove:840:(&gc_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@dove_pinctrl_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 847, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[Firmware Bug]: Missing pinctrl regs in DTB. Please update your firmware.\0A\00", [53 x i8] zeroinitializer }, align 32
@dove_pinctrl_probe._entry_ptr.20 = internal global ptr @dove_pinctrl_probe._entry.18, section ".printk_index", align 4
@dove_mpp_controls = internal constant { [11 x %struct.mvebu_mpp_ctrl], [76 x i8] } { [11 x %struct.mvebu_mpp_ctrl] [%struct.mvebu_mpp_ctrl { ptr null, i8 0, i8 16, ptr @.compoundliteral, ptr @dove_pmu_mpp_ctrl_get, ptr @dove_pmu_mpp_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr null, i8 16, i8 8, ptr @.compoundliteral.21, ptr @mvebu_mmio_mpp_ctrl_get, ptr @mvebu_mmio_mpp_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.22, i8 24, i8 16, ptr @.compoundliteral.23, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.24, i8 40, i8 6, ptr @.compoundliteral.25, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.26, i8 46, i8 6, ptr @.compoundliteral.27, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.28, i8 52, i8 6, ptr @.compoundliteral.29, ptr @dove_audio1_ctrl_get, ptr @dove_audio1_ctrl_set, ptr @dove_audio1_ctrl_gpio_req, ptr @dove_audio1_ctrl_gpio_dir }, %struct.mvebu_mpp_ctrl { ptr @.str.30, i8 58, i8 4, ptr @.compoundliteral.31, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.32, i8 62, i8 2, ptr @.compoundliteral.33, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.34, i8 64, i8 8, ptr @.compoundliteral.35, ptr @dove_nand_ctrl_get, ptr @dove_nand_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.36, i8 72, i8 1, ptr @.compoundliteral.37, ptr @dove_audio0_ctrl_get, ptr @dove_audio0_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.38, i8 73, i8 1, ptr @.compoundliteral.39, ptr @dove_twsi_ctrl_get, ptr @dove_twsi_ctrl_set, ptr null, ptr null }], [76 x i8] zeroinitializer }, align 32
@dove_mpp_modes = internal global { [33 x %struct.mvebu_mpp_mode], [88 x i8] } { [33 x %struct.mvebu_mpp_mode] [%struct.mvebu_mpp_mode { i8 0, ptr @.compoundliteral.60 }, %struct.mvebu_mpp_mode { i8 1, ptr @.compoundliteral.64 }, %struct.mvebu_mpp_mode { i8 2, ptr @.compoundliteral.70 }, %struct.mvebu_mpp_mode { i8 3, ptr @.compoundliteral.76 }, %struct.mvebu_mpp_mode { i8 4, ptr @.compoundliteral.81 }, %struct.mvebu_mpp_mode { i8 5, ptr @.compoundliteral.83 }, %struct.mvebu_mpp_mode { i8 6, ptr @.compoundliteral.85 }, %struct.mvebu_mpp_mode { i8 7, ptr @.compoundliteral.87 }, %struct.mvebu_mpp_mode { i8 8, ptr @.compoundliteral.91 }, %struct.mvebu_mpp_mode { i8 9, ptr @.compoundliteral.94 }, %struct.mvebu_mpp_mode { i8 10, ptr @.compoundliteral.97 }, %struct.mvebu_mpp_mode { i8 11, ptr @.compoundliteral.100 }, %struct.mvebu_mpp_mode { i8 12, ptr @.compoundliteral.102 }, %struct.mvebu_mpp_mode { i8 13, ptr @.compoundliteral.104 }, %struct.mvebu_mpp_mode { i8 14, ptr @.compoundliteral.105 }, %struct.mvebu_mpp_mode { i8 15, ptr @.compoundliteral.107 }, %struct.mvebu_mpp_mode { i8 16, ptr @.compoundliteral.110 }, %struct.mvebu_mpp_mode { i8 17, ptr @.compoundliteral.115 }, %struct.mvebu_mpp_mode { i8 18, ptr @.compoundliteral.117 }, %struct.mvebu_mpp_mode { i8 19, ptr @.compoundliteral.118 }, %struct.mvebu_mpp_mode { i8 20, ptr @.compoundliteral.119 }, %struct.mvebu_mpp_mode { i8 21, ptr @.compoundliteral.121 }, %struct.mvebu_mpp_mode { i8 22, ptr @.compoundliteral.122 }, %struct.mvebu_mpp_mode { i8 23, ptr @.compoundliteral.123 }, %struct.mvebu_mpp_mode { i8 24, ptr @.compoundliteral.125 }, %struct.mvebu_mpp_mode { i8 40, ptr @.compoundliteral.126 }, %struct.mvebu_mpp_mode { i8 46, ptr @.compoundliteral.127 }, %struct.mvebu_mpp_mode { i8 52, ptr @.compoundliteral.133 }, %struct.mvebu_mpp_mode { i8 58, ptr @.compoundliteral.135 }, %struct.mvebu_mpp_mode { i8 62, ptr @.compoundliteral.136 }, %struct.mvebu_mpp_mode { i8 64, ptr @.compoundliteral.139 }, %struct.mvebu_mpp_mode { i8 72, ptr @.compoundliteral.141 }, %struct.mvebu_mpp_mode { i8 73, ptr @.compoundliteral.146 }], [88 x i8] zeroinitializer }, align 32
@dove_mpp_gpio_ranges = internal global { [3 x %struct.pinctrl_gpio_range], [52 x i8] } { [3 x %struct.pinctrl_gpio_range] [%struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.147, i32 0, i32 0, i32 0, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.147, i32 1, i32 32, i32 32, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.147, i32 2, i32 64, i32 64, i32 8, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@.compoundliteral.21 = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpp_camera\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpp_sdio0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [6 x i32], [40 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpp_sdio1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [6 x i32], [40 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpp_audio1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [6 x i32], [40 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpp_spi0\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpp_uart1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpp_nand\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"twsi\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rts\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio0\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cd\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcd0\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pmu-nc\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmu-low\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pmu-high\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmic\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdi\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpu-pwr-down\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"standby-pwr-down\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core-pwr-good\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bat-fault\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext0-wakeup\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext1-wakeup\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext2-wakeup\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pmu-blink\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.42, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.44, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.45, ptr @.str.46, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cts\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wp\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcd1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.62, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.63, ptr @.str.46, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prsnt\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"txd\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"buspwr\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [18 x %struct.mvebu_mpp_ctrl_setting], [64 x i8] } { [18 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.65, ptr @.str.66, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.67, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.69, ptr @.str.42, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"act\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rxd\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ledctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lcd-spi\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cs1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [19 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [19 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.65, ptr @.str.71, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.69, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.74, ptr @.str.75, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio1\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi1\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"miso\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.42, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.44, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.79, ptr @.str.80, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.62, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.79, ptr @.str.82, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mosi\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.67, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.79, ptr @.str.84, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sck\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.79, ptr @.str.86, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.54, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rstout\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpu-pwr-good\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [15 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [15 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.88, ptr @.str.89, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pex1\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkreq\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [15 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [15 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.92, ptr @.str.93, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssp\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [15 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [15 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.95, ptr @.str.96, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sata-1\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pex0\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { [19 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [19 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.65, ptr @.str.66, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.98, ptr @.str.71, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.99, ptr @.str.93, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [18 x %struct.mvebu_mpp_ctrl_setting], [64 x i8] } { [18 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.65, ptr @.str.71, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.42, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.36, ptr @.str.101, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.44, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [18 x %struct.mvebu_mpp_ctrl_setting], [64 x i8] } { [18 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.103, ptr @.str.101, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.62, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.95, ptr @.str.101, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.67, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.95, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sfrm\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { [17 x %struct.mvebu_mpp_ctrl_setting], [80 x i8] } { [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.95, ptr @.str.106, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.47, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.48, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.49, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.50, ptr @.str.51, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.52, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.53, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.90, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.56, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.57, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.58, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.59, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdi1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { [6 x %struct.mvebu_mpp_ctrl_setting], [32 x i8] } { [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.42, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.44, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.74, ptr @.str.75, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.108, ptr @.str.109, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ac97-1\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sysclko\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sda\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdi2\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [7 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.111, ptr @.str.112, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.62, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.38, ptr @.str.113, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.108, ptr @.str.114, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdi3\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { [6 x %struct.mvebu_mpp_ctrl_setting], [32 x i8] } { [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.67, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.45, ptr @.str.46, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.108, ptr @.str.116, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { [5 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.77, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.43, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.38, ptr @.str.86, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { [7 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.108, ptr @.str.112, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.74, ptr @.str.80, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.44, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.43, ptr @.str.44, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.79, ptr @.str.80, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cs0\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { [8 x %struct.mvebu_mpp_ctrl_setting], [32 x i8] } { [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.69, ptr @.str.42, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.74, ptr @.str.120, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.62, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.95, ptr @.str.106, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.43, ptr @.str.62, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.79, ptr @.str.82, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { [8 x %struct.mvebu_mpp_ctrl_setting], [32 x i8] } { [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.69, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.74, ptr @.str.84, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.95, ptr @.str.67, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.43, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.79, ptr @.str.84, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { [7 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.74, ptr @.str.86, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.95, ptr @.str.96, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.43, ptr @.str.73, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.79, ptr @.str.86, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { [3 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.124, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { [3 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { [3 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.78, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s1/spdifo\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spdifo\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssp/spdifo\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp/twsi\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { [9 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [9 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.128, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.129, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.130, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 10, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 11, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 12, ptr @.str.131, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 14, ptr @.str.95, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.132, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi0\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { [3 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.134, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { [3 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.69, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpo\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { [3 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.137, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.138, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { [3 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.140, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.108, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi-none\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi-opt1\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi-opt2\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twsi-opt3\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { [5 x %struct.mvebu_mpp_ctrl_setting], [48 x i8] } { [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.142, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.143, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.144, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.145, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvebu-gpio\00", [21 x i8] zeroinitializer }, align 32
@switch.table.dove_twsi_ctrl_set = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 128, i32 0, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 24, i64 40, i64 46, i64 58, i64 62]
@__sancov_gen_cov_switch_values.148 = internal global [7 x i64] [i64 5, i64 32, i64 24, i64 40, i64 46, i64 58, i64 62]
@__sancov_gen_cov_switch_values.149 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 8, i64 10, i64 11, i64 14]
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"dove_pinctrl_driver\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 852, i32 31 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 854, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant [22 x i8] c"dove_pinctrl_of_match\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 752, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 750, i32 20 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 782, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"dove_pinctrl_info\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 740, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 807, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"mpp4_base\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 59, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 819, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [9 x i8] c"pmu_base\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 60, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 829, i32 48 }
@___asan_gen_.207 = private unnamed_addr constant [9 x i8] c"gconfmap\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 61, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 833, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"gc_regmap_config\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 757, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 839, i32 14 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 847, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"dove_mpp_controls\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 355, i32 36 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"dove_mpp_modes\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 369, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"dove_mpp_gpio_ranges\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 734, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 358, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 359, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 360, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 361, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 362, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 363, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 364, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 365, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 366, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 370, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 387, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 404, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 422, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 441, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 458, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 475, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 492, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 509, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 524, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 539, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 554, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 573, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 591, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 626, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 643, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 649, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 656, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 674, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 697, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 706, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 715, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 721, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 724, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 727, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.534 = private constant [40 x i8] c"../drivers/pinctrl/mvebu/pinctrl-dove.c\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 735, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [32 x i8] c"switch.table.dove_twsi_ctrl_set\00", align 1
@llvm.compiler.used = appending global [165 x ptr] [ptr @__initcall__kmod_pinctrl_dove__210_860_dove_pinctrl_driver_init6, ptr @dove_pinctrl_probe._entry, ptr @dove_pinctrl_probe._entry.10, ptr @dove_pinctrl_probe._entry.14, ptr @dove_pinctrl_probe._entry.18, ptr @dove_pinctrl_probe._entry.6, ptr @dove_pinctrl_probe._entry_ptr, ptr @dove_pinctrl_probe._entry_ptr.12, ptr @dove_pinctrl_probe._entry_ptr.16, ptr @dove_pinctrl_probe._entry_ptr.20, ptr @dove_pinctrl_probe._entry_ptr.9, ptr @dove_pinctrl_driver, ptr @.str, ptr @dove_pinctrl_of_match, ptr @clk, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dove_pinctrl_info, ptr @.str.7, ptr @.str.8, ptr @mpp4_base, ptr @.str.11, ptr @pmu_base, ptr @.str.13, ptr @gconfmap, ptr @.str.15, ptr @dove_pinctrl_probe._key, ptr @gc_regmap_config, ptr @.str.17, ptr @.str.19, ptr @dove_mpp_controls, ptr @dove_mpp_modes, ptr @dove_mpp_gpio_ranges, ptr @.compoundliteral, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @switch.table.dove_twsi_ctrl_set], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpp4_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gconfmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_pinctrl_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_mpp_controls to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_mpp_modes to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_mpp_gpio_ranges to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dove_twsi_ctrl_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dove_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fb_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fb_res) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @dove_pinctrl_of_match, ptr noundef %dev) #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %platform_data, align 8
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  store ptr %call3, ptr @clk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %3 = load ptr, ptr @clk, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup86

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #7
  %cmp.i125 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then12, label %if.end14

if.then12:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup86

if.end14:                                         ; preds = %clk_prepare_enable.exit
  %6 = load i32, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @dove_pinctrl_info, i32 0, i32 3), align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end14.cleanup86_crit_edge, label %devm_kcalloc.exit, !prof !184

if.end14.cleanup86_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

devm_kcalloc.exit:                                ; preds = %if.end14
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %9, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup86_crit_edge, label %if.end18

devm_kcalloc.exit.cleanup86_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end18:                                         ; preds = %devm_kcalloc.exit
  store ptr %call5.i.i, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @dove_pinctrl_info, i32 0, i32 2), align 4
  %10 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %call5.i.i, align 4
  %arrayidx.1 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call10, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 7
  %17 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 9
  %19 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call10, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call10, ptr %arrayidx.10, align 4
  %21 = call ptr @memcpy(ptr %fb_res, ptr %call8, i32 32)
  %22 = ptrtoint ptr %fb_res to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fb_res, align 4
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %23 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call8, align 4
  %and = and i32 %24, -1048576
  %add = or i32 %and, 853056
  %call27 = call i32 @adjust_resource(ptr noundef nonnull %fb_res, i32 noundef %add, i32 noundef 4) #7
  br label %if.end28

if.end28:                                         ; preds = %do.end24, %if.end18.if.end28_crit_edge
  %res.0 = phi ptr [ %call19, %if.end18.if.end28_crit_edge ], [ %fb_res, %do.end24 ]
  %call30 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res.0) #7
  store ptr %call30, ptr @mpp4_base, align 4
  %cmp.i126 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call30 to i32
  br label %cleanup86

if.end34:                                         ; preds = %if.end28
  %call35 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end40, label %if.end34.if.end46_crit_edge

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %26 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call8, align 4
  %and43 = and i32 %27, -1048576
  %add44 = or i32 %and43, 884780
  %call45 = call i32 @adjust_resource(ptr noundef nonnull %fb_res, i32 noundef %add44, i32 noundef 8) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end34.if.end46_crit_edge
  %res.1 = phi ptr [ %call35, %if.end34.if.end46_crit_edge ], [ %fb_res, %do.end40 ]
  %call48 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res.1) #7
  store ptr %call48, ptr @pmu_base, align 4
  %cmp.i127 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call48 to i32
  br label %cleanup86

if.end52:                                         ; preds = %if.end46
  %call53 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.13) #7
  store ptr %call53, ptr @gconfmap, align 4
  %cmp.i128 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then55, label %if.end52.if.end76_crit_edge

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then55:                                        ; preds = %if.end52
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %29 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call8, align 4
  %and61 = and i32 %30, -1048576
  %add62 = or i32 %and61, 950316
  %call63 = call i32 @adjust_resource(ptr noundef nonnull %fb_res, i32 noundef %add62, i32 noundef 20) #7
  %call65 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %fb_res) #7
  %cmp.i129 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call65 to i32
  br label %cleanup86

if.end69:                                         ; preds = %if.then55
  %call71 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call65, ptr noundef nonnull @gc_regmap_config, ptr noundef nonnull @dove_pinctrl_probe._key, ptr noundef nonnull @.str.17) #7
  store ptr %call71, ptr @gconfmap, align 4
  %cmp.i130 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then73, label %if.end69.if.end76_crit_edge

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call71 to i32
  br label %cleanup86

if.end76:                                         ; preds = %if.end69.if.end76_crit_edge, %if.end52.if.end76_crit_edge
  %33 = ptrtoint ptr %fb_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fb_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool78.not = icmp eq i32 %34, 0
  br i1 %tobool78.not, label %if.end76.if.end84_crit_edge, label %do.end82

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %if.end84

if.end84:                                         ; preds = %do.end82, %if.end76.if.end84_crit_edge
  %call85 = call i32 @mvebu_pinctrl_probe(ptr noundef %pdev) #7
  br label %cleanup86

cleanup86:                                        ; preds = %if.end84, %if.then73, %if.then67, %if.then50, %if.then32, %devm_kcalloc.exit.cleanup86_crit_edge, %if.end14.cleanup86_crit_edge, %if.then12, %do.end
  %retval.1 = phi i32 [ %4, %do.end ], [ %5, %if.then12 ], [ %25, %if.then32 ], [ %28, %if.then50 ], [ %call85, %if.end84 ], [ -12, %devm_kcalloc.exit.cleanup86_crit_edge ], [ -12, %if.end14.cleanup86_crit_edge ], [ %31, %if.then67 ], [ %32, %if.then73 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fb_res) #7
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pinctrl_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_pmu_mpp_ctrl_get(ptr noundef %data, i32 noundef %pid, ptr noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !185
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  %shl = shl nuw i32 1, %pid
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @mvebu_mmio_mpp_ctrl_get(ptr noundef %data, i32 noundef %pid, ptr noundef %config) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem = shl i32 %pid, 2
  %mul1 = and i32 %rem, 28
  %4 = lshr i32 %pid, 1
  %mul = and i32 %4, 2147483644
  %5 = load ptr, ptr @pmu_base, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !185
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  %shr = lshr i32 %7, %mul1
  %and11 = and i32 %shr, 15
  %or = or i32 %and11, 16
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_pmu_mpp_ctrl_set(ptr noundef %data, i32 noundef %pid, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !185
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  %and = and i32 %config, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %pid
  %neg = xor i32 %shl, -1
  %and3 = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #7, !srcloc !190
  %call5 = tail call i32 @mvebu_mmio_mpp_ctrl_set(ptr noundef %data, i32 noundef %pid, i32 noundef %config) #7
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem = shl i32 %pid, 2
  %mul1 = and i32 %rem, 28
  %7 = lshr i32 %pid, 1
  %mul = and i32 %7, 2147483644
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %shl9 = shl nuw i32 1, %pid
  %or = or i32 %3, %shl9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #7, !srcloc !190
  %11 = load ptr, ptr @pmu_base, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 %mul
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !185
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %shl18 = shl nuw i32 15, %mul1
  %neg19 = xor i32 %shl18, -1
  %and20 = and i32 %13, %neg19
  %and21 = and i32 %config, 15
  %shl22 = shl nuw i32 %and21, %mul1
  %or23 = or i32 %and20, %shl22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %15 = load ptr, ptr @pmu_base, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %14) #7, !srcloc !190
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %do.body
  %retval.0 = phi i32 [ %call5, %do.body ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_get(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_set(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_mpp4_ctrl_get(ptr nocapture noundef readnone %data, i32 noundef %pid, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mpp4_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !185
  %2 = lshr i32 %1, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  %3 = zext i32 %pid to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pid, label %entry.cleanup_crit_edge [
    i32 24, label %entry.sw.epilog_crit_edge
    i32 40, label %sw.bb2
    i32 46, label %sw.bb3
    i32 58, label %sw.bb4
    i32 62, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 16, %sw.bb5 ], [ 32, %sw.bb4 ], [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 4, %entry.sw.epilog_crit_edge ]
  %and = and i32 %mask.0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_mpp4_ctrl_set(ptr nocapture noundef readnone %data, i32 noundef %pid, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mpp4_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !185
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %3 = zext i32 %pid to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %pid, label %entry.cleanup_crit_edge [
    i32 24, label %entry.sw.epilog_crit_edge
    i32 40, label %sw.bb2
    i32 46, label %sw.bb3
    i32 58, label %sw.bb4
    i32 62, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 16, %sw.bb5 ], [ 32, %sw.bb4 ], [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 4, %entry.sw.epilog_crit_edge ]
  %neg = xor i32 %mask.0, -1
  %and = and i32 %2, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config)
  %tobool.not = icmp eq i32 %config, 0
  %or = or i32 %mask.0, %2
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %5 = load ptr, ptr @mpp4_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %4) #7, !srcloc !190
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_audio1_ctrl_get(ptr nocapture noundef readnone %data, i32 noundef %pid, ptr nocapture noundef %config) #2 align 64 {
entry:
  %sspc1 = alloca i32, align 4
  %gmpp = alloca i32, align 4
  %gcfg2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mpp4_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sspc1) #7
  %2 = ptrtoint ptr %sspc1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sspc1, align 4, !annotation !198
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gmpp) #7
  %3 = ptrtoint ptr %gmpp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gmpp, align 4, !annotation !198
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gcfg2) #7
  %4 = ptrtoint ptr %gcfg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %gcfg2, align 4, !annotation !198
  %5 = load ptr, ptr @gconfmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %sspc1) #7
  %6 = load ptr, ptr @gconfmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %gmpp) #7
  %7 = load ptr, ptr @gconfmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %gcfg2) #7
  %8 = lshr i32 %1, 24
  %9 = and i32 %8, 8
  %10 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %config, align 4
  %11 = ptrtoint ptr %sspc1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sspc1, align 4
  %and5 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %entry.if.end9_crit_edge, label %if.then7

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %9, 4
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or8, ptr %config, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  %14 = ptrtoint ptr %gmpp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gmpp, align 4
  %and10 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config, align 4
  %or13 = or i32 %17, 2
  store i32 %or13, ptr %config, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %18 = ptrtoint ptr %gcfg2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gcfg2, align 4
  %and15 = and i32 %19, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config, align 4
  %or18 = or i32 %21, 1
  store i32 %or18, ptr %config, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %config, align 4
  %and20 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp = icmp eq i32 %and20, 0
  br i1 %cmp, label %if.then21, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %and22 = and i32 %23, -6
  %24 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and22, ptr %config, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %config, align 4
  %and24 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then26, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %and27 = and i32 %26, -2
  %27 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and27, ptr %config, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gcfg2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gmpp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sspc1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_audio1_ctrl_set(ptr nocapture noundef readnone %data, i32 noundef %pid, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mpp4_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  %2 = and i32 %1, -134217729
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and2 = and i32 %config, 8
  %4 = or i32 %3, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = load ptr, ptr @mpp4_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !190
  %7 = load ptr, ptr @gconfmap, align 4
  %and3 = lshr i32 %config, 2
  %and3.lobit = and i32 %and3, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef 1, i32 noundef %and3.lobit, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = load ptr, ptr @gconfmap, align 4
  %and6 = and i32 %config, 2
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 16, i32 noundef 2, i32 noundef %and6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = load ptr, ptr @gconfmap, align 4
  %and10 = shl i32 %config, 22
  %10 = and i32 %and10, 4194304
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4, i32 noundef 4194304, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_audio1_ctrl_gpio_req(ptr nocapture noundef readnone %data, i32 noundef %pid) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !198
  %call = call i32 @dove_audio1_ctrl_get(ptr noundef %data, i32 noundef %pid, ptr noundef nonnull %config)
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %config, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %2, label %sw.epilog [
    i32 2, label %entry.sw.bb_crit_edge
    i32 14, label %entry.sw.bb_crit_edge9
    i32 8, label %entry.sw.bb1_crit_edge
    i32 11, label %entry.sw.bb1_crit_edge10
    i32 10, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %pid)
  %cmp = icmp ugt i32 %pid, 55
  %. = select i1 %cmp, i32 0, i32 -524
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %pid)
  %cmp2 = icmp ult i32 %pid, 56
  %.8 = select i1 %cmp2, i32 0, i32 -524
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %sw.epilog ], [ %., %sw.bb ], [ %.8, %sw.bb1 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dove_audio1_ctrl_gpio_dir(ptr nocapture noundef readnone %data, i32 noundef %pid, i1 noundef zeroext %input) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %pid, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %0)
  %1 = icmp ult i32 %0, -6
  %retval.0 = select i1 %1, i32 -524, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_nand_ctrl_get(ptr nocapture noundef readnone %data, i32 noundef %pid, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  %gmpp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gmpp) #7
  %0 = ptrtoint ptr %gmpp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gmpp, align 4, !annotation !198
  %1 = load ptr, ptr @gconfmap, align 4
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %gmpp) #7
  %2 = ptrtoint ptr %gmpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gmpp, align 4
  %and = and i32 %3, 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %config, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gmpp) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_nand_ctrl_set(ptr nocapture noundef readnone %data, i32 noundef %pid, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gconfmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config)
  %tobool.not = icmp ne i32 %config, 0
  %cond = zext i1 %tobool.not to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 16, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_audio0_ctrl_get(ptr nocapture noundef readonly %data, i32 noundef %pid, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  %3 = lshr i32 %2, 8
  %.lobit = and i32 %3, 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.lobit, ptr %config, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_audio0_ctrl_set(ptr nocapture noundef readonly %data, i32 noundef %pid, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  %3 = and i32 %2, -257
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config)
  %tobool.not = icmp eq i32 %config, 0
  %or = or i32 %4, 65536
  %spec.select = select i1 %tobool.not, i32 %4, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #7, !srcloc !190
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_twsi_ctrl_get(ptr nocapture noundef readnone %data, i32 noundef %pid, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  %gcfg1 = alloca i32, align 4
  %gcfg2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gcfg1) #7
  %0 = ptrtoint ptr %gcfg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gcfg1, align 4, !annotation !198
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gcfg2) #7
  %1 = ptrtoint ptr %gcfg2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %gcfg2, align 4, !annotation !198
  %2 = load ptr, ptr @gconfmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %gcfg1) #7
  %3 = load ptr, ptr @gconfmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %gcfg2) #7
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %config, align 4
  %5 = ptrtoint ptr %gcfg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gcfg1, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10.sink.split_crit_edge

entry.if.end10.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.sink.split

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %gcfg2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gcfg2, align 4
  %and2 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end10.sink.split_crit_edge

if.else.if.end10.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.sink.split

if.else5:                                         ; preds = %if.else
  %and6 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else5.if.end10_crit_edge, label %if.else5.if.end10.sink.split_crit_edge

if.else5.if.end10.sink.split_crit_edge:           ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.sink.split

if.else5.if.end10_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10.sink.split:                              ; preds = %if.else5.if.end10.sink.split_crit_edge, %if.else.if.end10.sink.split_crit_edge, %entry.if.end10.sink.split_crit_edge
  %.sink = phi i32 [ 1, %entry.if.end10.sink.split_crit_edge ], [ 2, %if.else.if.end10.sink.split_crit_edge ], [ 3, %if.else5.if.end10.sink.split_crit_edge ]
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %config, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else5.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gcfg2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gcfg1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_twsi_ctrl_set(ptr nocapture noundef readnone %data, i32 noundef %pid, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %config, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dove_twsi_ctrl_set, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.idx.mult = shl i32 %switch.tableidx, 20
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %gcfg1.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %gcfg2.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.idx.mult, %switch.lookup ]
  %2 = load ptr, ptr @gconfmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 0, i32 noundef 128, i32 noundef %gcfg1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %3 = load ptr, ptr @gconfmap, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 3145728, i32 noundef %gcfg2.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !106, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !125, !127, !129, !130, !132, !133, !134, !135, !137, !139, !141, !143, !144, !145, !146, !147, !149, !151, !152, !154, !156, !157, !158, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_pinctrl_dove__210_860_dove_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_dove__210_860_dove_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 860, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 854, i32 11}
!4 = !{ptr @dove_pinctrl_driver, !5, !"dove_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 852, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 782, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dove_pinctrl_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @dove_pinctrl_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 807, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dove_pinctrl_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dove_pinctrl_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 819, i32 3}
!21 = !{ptr @dove_pinctrl_probe._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dove_pinctrl_probe._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 829, i32 48}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 833, i32 3}
!27 = !{ptr @dove_pinctrl_probe._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dove_pinctrl_probe._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dove_pinctrl_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 839, i32 14}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 847, i32 3}
!34 = !{ptr @dove_pinctrl_probe._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dove_pinctrl_probe._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @clk, !37, !"clk", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 750, i32 20}
!38 = !{ptr @dove_pinctrl_info, !39, !"dove_pinctrl_info", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 740, i32 38}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 358, i32 2}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 359, i32 2}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 360, i32 2}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 361, i32 2}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 362, i32 2}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 363, i32 2}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 364, i32 2}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 365, i32 2}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 366, i32 2}
!58 = !{ptr @dove_mpp_controls, !59, !"dove_mpp_controls", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 355, i32 36}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 370, i32 2}
!62 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.43, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.44, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.45, !61, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.46, !61, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.47, !61, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.48, !61, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.49, !61, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.50, !61, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.51, !61, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.52, !61, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.53, !61, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.54, !61, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.55, !61, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.56, !61, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.57, !61, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.58, !61, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.59, !61, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.61, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 387, i32 2}
!83 = !{ptr @.str.62, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.63, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.65, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 404, i32 2}
!87 = !{ptr @.str.66, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.67, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.68, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.69, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.71, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 422, i32 2}
!93 = !{ptr @.str.72, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.73, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.74, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.75, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.77, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 441, i32 2}
!99 = !{ptr @.str.78, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.79, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.80, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.82, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 458, i32 2}
!104 = !{ptr @.str.84, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 475, i32 2}
!106 = !{ptr @.str.86, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 492, i32 2}
!108 = !{ptr @.str.88, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 509, i32 2}
!110 = !{ptr @.str.89, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.90, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.92, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 524, i32 2}
!114 = !{ptr @.str.93, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.95, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 539, i32 2}
!117 = !{ptr @.str.96, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.98, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 554, i32 2}
!120 = !{ptr @.str.99, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.101, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 573, i32 2}
!123 = !{ptr @.str.103, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 591, i32 2}
!125 = !{ptr @.str.106, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 626, i32 2}
!127 = !{ptr @.str.108, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 643, i32 2}
!129 = !{ptr @.str.109, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.111, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 649, i32 2}
!132 = !{ptr @.str.112, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.113, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.114, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.116, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 656, i32 2}
!137 = !{ptr @.str.120, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 674, i32 2}
!139 = !{ptr @.str.124, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 697, i32 2}
!141 = !{ptr @.str.128, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 706, i32 2}
!143 = !{ptr @.str.129, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.130, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.131, !142, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.132, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.134, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 715, i32 2}
!149 = !{ptr @.str.137, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 721, i32 2}
!151 = !{ptr @.str.138, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.140, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 724, i32 2}
!154 = !{ptr @.str.142, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 727, i32 2}
!156 = !{ptr @.str.143, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.144, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.145, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @dove_mpp_modes, !160, !"dove_mpp_modes", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 369, i32 30}
!161 = !{ptr @.str.147, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 735, i32 2}
!163 = !{ptr @dove_mpp_gpio_ranges, !164, !"dove_mpp_gpio_ranges", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 734, i32 34}
!165 = !{ptr @mpp4_base, !166, !"mpp4_base", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 59, i32 22}
!167 = !{ptr @pmu_base, !168, !"pmu_base", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 60, i32 22}
!169 = !{ptr @gconfmap, !170, !"gconfmap", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 61, i32 23}
!171 = !{ptr @gc_regmap_config, !172, !"gc_regmap_config", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 757, i32 35}
!173 = !{ptr @dove_pinctrl_of_match, !174, !"dove_pinctrl_of_match", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/mvebu/pinctrl-dove.c", i32 752, i32 34}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 712384}
!186 = !{i64 2153415648}
!187 = !{i64 2153416232}
!188 = !{i64 2153416817}
!189 = !{i64 2153417229}
!190 = !{i64 711966}
!191 = !{i64 2153417834}
!192 = !{i64 2153418612}
!193 = !{i64 2153418844}
!194 = !{i64 2153419480}
!195 = !{i64 2153420347}
!196 = !{i64 2153420967}
!197 = !{i64 2153423475}
!198 = !{!"auto-init"}
!199 = !{i64 2153424949}
!200 = !{i64 2153425395}
!201 = !{i64 2153421884}
!202 = !{i64 2153422459}
!203 = !{i64 2153422846}
