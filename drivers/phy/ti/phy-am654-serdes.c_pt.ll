; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-am654-serdes.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-am654-serdes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.serdes_am654 = type { ptr, [32 x ptr], ptr, ptr, i8, i32, ptr, %struct.clk_onecell_data, [3 x ptr] }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.serdes_am654_clk_mux = type { %struct.clk_hw, ptr, i32, i32, %struct.clk_init_data }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_phy_am654_serdes__289_864_serdes_am654_driver_init6 = internal global ptr @serdes_am654_driver_init, section ".initcall6.init", align 4
@serdes_am654_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @serdes_am654_probe, ptr @serdes_am654_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @serdes_am654_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_serdes_am654_driver_exit = internal global ptr @serdes_am654_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [47 x i8] c"phy_am654_serdes.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [53 x i8] c"phy_am654_serdes.description=TI AM654x SERDES driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [54 x i8] c"phy_am654_serdes.file=drivers/phy/ti/phy-am654-serdes\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [32 x i8] c"phy_am654_serdes.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy-am654\00", [22 x i8] zeroinitializer }, align 32
@serdes_am654_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,phy-am654-serdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@serdes_am654_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@serdes_am654_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 8188, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"phy_am654_serdes:775:(&serdes_am654_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@serdes_am654_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 777, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"serdes_am654_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/phy/ti/phy-am654-serdes.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serdes_am654_probe._entry_ptr = internal global ptr @serdes_am654_probe._entry, section ".printk_index", align 4
@serdes_am654_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 793, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize regfields\0A\00", [32 x i8] zeroinitializer }, align 32
@serdes_am654_probe._entry_ptr.9 = internal global ptr @serdes_am654_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@serdes_am654_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get clock name\0A\00", [38 x i8] zeroinitializer }, align 32
@serdes_am654_probe._entry_ptr.13 = internal global ptr @serdes_am654_probe._entry.11, section ".printk_index", align 4
@serdes_am654_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 810, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to initialize clock %s\0A\00", [33 x i8] zeroinitializer }, align 32
@serdes_am654_probe._entry_ptr.16 = internal global ptr @serdes_am654_probe._entry.14, section ".printk_index", align 4
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @serdes_am654_init, ptr null, ptr @serdes_am654_power_on, ptr @serdes_am654_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serdes_am654_reset, ptr null, ptr @serdes_am654_release, ptr null }, [44 x i8] zeroinitializer }, align 32
@serdes_am654_reg_fields = internal constant { [32 x %struct.reg_field], [160 x i8] } { [32 x %struct.reg_field] [%struct.reg_field { i32 4, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 584, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 24, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 208, i32 24, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 232, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 600, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 620, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 624, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 924, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 124, i32 24, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 2564, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 2872, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 2960, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 2964, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 5124, i32 24, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 5128, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 5132, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 5132, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 5140, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 5144, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 5148, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 5196, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 5256, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 5268, i32 24, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 5272, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 5272, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 8144, i32 29, i32 29, i32 0, i32 0 }, %struct.reg_field { i32 8160, i32 29, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 8160, i32 13, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 8180, i32 29, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 8180, i32 28, i32 28, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@serdes_am654_regfield_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to allocate regmap field %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"serdes_am654_regfield_init\00", [37 x i8] zeroinitializer }, align 32
@serdes_am654_regfield_init._entry_ptr = internal global ptr @serdes_am654_regfield_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,serdes-clk\00", [18 x i8] zeroinitializer }, align 32
@serdes_am654_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fail to get serdes-clk node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serdes_am654_clk_register\00", [38 x i8] zeroinitializer }, align 32
@serdes_am654_clk_register._entry_ptr = internal global ptr @serdes_am654_clk_register._entry, section ".printk_index", align 4
@serdes_am654_clk_register._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 672, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fail to get Syscon regmap\0A\00", [37 x i8] zeroinitializer }, align 32
@serdes_am654_clk_register._entry_ptr.24 = internal global ptr @serdes_am654_clk_register._entry.22, section ".printk_index", align 4
@serdes_am654_clk_register._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 679, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SERDES clock must have parents\0A\00", [32 x i8] zeroinitializer }, align 32
@serdes_am654_clk_register._entry_ptr.27 = internal global ptr @serdes_am654_clk_register._entry.25, section ".printk_index", align 4
@serdes_am654_clk_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serdes_am654_clk_mux_set_parent, ptr @serdes_am654_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@serdes_am654_mux_table = internal constant { [16 x [3 x i32]], [32 x i8] } { [16 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 2, i32 1, i32 1], [3 x i32] [i32 1, i32 2, i32 0], [3 x i32] [i32 2, i32 2, i32 1], [3 x i32] [i32 0, i32 1, i32 1], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 0, i32 2, i32 0], [3 x i32] [i32 1, i32 2, i32 0], [3 x i32] [i32 1, i32 1, i32 0], [3 x i32] [i32 2, i32 1, i32 0], [3 x i32] [i32 1, i32 2, i32 1], [3 x i32] [i32 2, i32 2, i32 1], [3 x i32] [i32 0, i32 1, i32 0], [3 x i32] [i32 1, i32 1, i32 0], [3 x i32] [i32 0, i32 2, i32 1], [3 x i32] [i32 1, i32 2, i32 1]], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to find the parent of %s clock\0A\00", [57 x i8] zeroinitializer }, align 32
@serdes_am654_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable PLL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serdes_am654_power_on\00", [42 x i8] zeroinitializer }, align 32
@serdes_am654_power_on._entry_ptr = internal global ptr @serdes_am654_power_on._entry, section ".printk_index", align 4
@serdes_am654_power_on._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable TX RX\0A\00", [40 x i8] zeroinitializer }, align 32
@serdes_am654_power_on._entry_ptr.33 = internal global ptr @serdes_am654_power_on._entry.31, section ".printk_index", align 4
@serdes_am654_disable_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to disable PLL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"serdes_am654_disable_pll\00", [39 x i8] zeroinitializer }, align 32
@serdes_am654_disable_pll._entry_ptr = internal global ptr @serdes_am654_disable_pll._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@serdes_am654_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to select SERDES Lane Function\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"serdes_am654_xlate\00", [45 x i8] zeroinitializer }, align 32
@serdes_am654_xlate._entry_ptr = internal global ptr @serdes_am654_xlate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"serdes_am654_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 856, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 860, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"serdes_am654_id_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 725, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"serdes_am654_regmap_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 98, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 775, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 777, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 793, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 800, i32 45 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 803, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 809, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 524, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"serdes_am654_reg_fields\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 198, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 744, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 663, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 665, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 672, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 679, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [25 x i8] c"serdes_am654_clk_mux_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 636, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"serdes_am654_mux_table\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 540, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 625, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 310, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 316, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 266, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [37 x i8] c"../drivers/phy/ti/phy-am654-serdes.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 514, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_serdes_am654_driver_exit, ptr @__initcall__kmod_phy_am654_serdes__289_864_serdes_am654_driver_init6, ptr @serdes_am654_clk_register._entry, ptr @serdes_am654_clk_register._entry.22, ptr @serdes_am654_clk_register._entry.25, ptr @serdes_am654_clk_register._entry_ptr, ptr @serdes_am654_clk_register._entry_ptr.24, ptr @serdes_am654_clk_register._entry_ptr.27, ptr @serdes_am654_disable_pll._entry, ptr @serdes_am654_disable_pll._entry_ptr, ptr @serdes_am654_driver_exit, ptr @serdes_am654_power_on._entry, ptr @serdes_am654_power_on._entry.31, ptr @serdes_am654_power_on._entry_ptr, ptr @serdes_am654_power_on._entry_ptr.33, ptr @serdes_am654_probe._entry, ptr @serdes_am654_probe._entry.11, ptr @serdes_am654_probe._entry.14, ptr @serdes_am654_probe._entry.7, ptr @serdes_am654_probe._entry_ptr, ptr @serdes_am654_probe._entry_ptr.13, ptr @serdes_am654_probe._entry_ptr.16, ptr @serdes_am654_probe._entry_ptr.9, ptr @serdes_am654_regfield_init._entry, ptr @serdes_am654_regfield_init._entry_ptr, ptr @serdes_am654_xlate._entry, ptr @serdes_am654_xlate._entry_ptr, ptr @serdes_am654_driver, ptr @.str, ptr @serdes_am654_id_table, ptr @serdes_am654_probe._key, ptr @serdes_am654_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @ops, ptr @serdes_am654_reg_fields, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @serdes_am654_clk_mux_ops, ptr @serdes_am654_mux_table, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_reg_fields to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_regfield_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_clk_register._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_clk_register._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_clk_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_mux_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_power_on._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_disable_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_am654_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @serdes_am654_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serdes_am654_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @serdes_am654_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %clock_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_name) #5
  %2 = ptrtoint ptr %clock_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %clock_name, align 4, !annotation !101
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 172, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @serdes_am654_regmap_config, ptr noundef nonnull @serdes_am654_probe._key, ptr noundef nonnull @.str.1) #5
  %cmp.i118 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @devm_mux_control_get(ptr noundef %dev1, ptr noundef null) #5
  %cmp.i119 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %dev17 = getelementptr inbounds %struct.serdes_am654, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev17, align 4
  %of_node18 = getelementptr inbounds %struct.serdes_am654, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %of_node18, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %call.i, align 4
  %control20 = getelementptr inbounds %struct.serdes_am654, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %control20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %control20, align 4
  %type = getelementptr inbounds %struct.serdes_am654, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.032.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.reg_field], ptr @serdes_am654_reg_fields, i32 0, i32 %i.032.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %arrayidx.i, align 4
  %12 = insertvalue [5 x i32] undef, i32 %.unpack.i, 0
  %.elt23.i = getelementptr inbounds [5 x i32], ptr %arrayidx.i, i32 0, i32 1
  %13 = ptrtoint ptr %.elt23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack24.i = load i32, ptr %.elt23.i, align 4
  %14 = insertvalue [5 x i32] %12, i32 %.unpack24.i, 1
  %.elt25.i = getelementptr inbounds [5 x i32], ptr %arrayidx.i, i32 0, i32 2
  %15 = ptrtoint ptr %.elt25.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack26.i = load i32, ptr %.elt25.i, align 4
  %16 = insertvalue [5 x i32] %14, i32 %.unpack26.i, 2
  %.elt27.i = getelementptr inbounds [5 x i32], ptr %arrayidx.i, i32 0, i32 3
  %17 = ptrtoint ptr %.elt27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack28.i = load i32, ptr %.elt27.i, align 4
  %18 = insertvalue [5 x i32] %16, i32 %.unpack28.i, 3
  %.elt29.i = getelementptr inbounds [5 x i32], ptr %arrayidx.i, i32 0, i32 4
  %19 = ptrtoint ptr %.elt29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack30.i = load i32, ptr %.elt29.i, align 4
  %20 = insertvalue [5 x i32] %18, i32 %.unpack30.i, 4
  %call.i120 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call7, [5 x i32] %20) #5
  %arrayidx3.i = getelementptr %struct.serdes_am654, ptr %call.i, i32 0, i32 1, i32 %i.032.i
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i120, ptr %arrayidx3.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %serdes_am654_regfield_init.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.if.end27_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end27_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

serdes_am654_regfield_init.exit:                  ; preds = %for.body.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %i.032.i) #8
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.i, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %serdes_am654_regfield_init.exit.if.end27_crit_edge, label %do.end26

serdes_am654_regfield_init.exit.if.end27_crit_edge: ; preds = %serdes_am654_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end26:                                         ; preds = %serdes_am654_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end27:                                         ; preds = %serdes_am654_regfield_init.exit.if.end27_crit_edge, %for.inc.i.if.end27_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %serdes_am654_clk_register.exit.thread139.for.body_crit_edge, %if.end27
  %i.0166 = phi i32 [ 0, %if.end27 ], [ %inc, %serdes_am654_clk_register.exit.thread139.for.body_crit_edge ]
  %call.i121 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %clock_name, i32 noundef 1, i32 noundef %i.0166) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i121)
  %tobool29.not = icmp sgt i32 %call.i121, -1
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end34:                                         ; preds = %for.body
  %26 = ptrtoint ptr %clock_name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clock_name, align 4
  %28 = ptrtoint ptr %of_node18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node18, align 4
  %30 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev17, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end34.do.end40_crit_edge, label %if.end.i

if.end34.do.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

if.end.i:                                         ; preds = %if.end34
  %clk_data.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %32 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i85.i = call i32 @__of_parse_phandle_with_args(ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool.not.i.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %serdes_am654_clk_register.exit.thread135.sink.split

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %33 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool3.not.i = icmp eq ptr %34, null
  br i1 %tobool3.not.i, label %of_parse_phandle.exit.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge, label %if.end5.i

of_parse_phandle.exit.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdes_am654_clk_register.exit.thread135.sink.split

if.end5.i:                                        ; preds = %of_parse_phandle.exit.i
  %parent.i = getelementptr inbounds %struct.device_node, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i, align 4
  %call6.i = call ptr @syscon_node_to_regmap(ptr noundef %36) #5
  %cmp.i.i123 = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i123, label %do.end11.i, label %if.end13.i

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.23) #8
  br label %serdes_am654_clk_register.exit

if.end13.i:                                       ; preds = %if.end5.i
  %call14.i = call i32 @of_clk_get_parent_count(ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.i124 = icmp ult i32 %call14.i, 2
  br i1 %cmp.i124, label %if.end13.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge, label %if.end19.i

if.end13.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdes_am654_clk_register.exit.thread135.sink.split

if.end19.i:                                       ; preds = %if.end13.i
  %mul.i = shl i32 %call14.i, 2
  %call.i86.i = call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef %mul.i, i32 noundef 3520) #5
  %tobool21.not.i = icmp eq ptr %call.i86.i, null
  br i1 %tobool21.not.i, label %if.end19.i.serdes_am654_clk_register.exit.thread135_crit_edge, label %if.end23.i

if.end19.i.serdes_am654_clk_register.exit.thread135_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdes_am654_clk_register.exit.thread135

if.end23.i:                                       ; preds = %if.end19.i
  %call24.i = call i32 @of_clk_parent_fill(ptr noundef %29, ptr noundef nonnull %call.i86.i, i32 noundef %call14.i) #5
  %call.i87.i = call ptr @__of_get_address(ptr noundef nonnull %34, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #5
  %tobool26.not.i = icmp eq ptr %call.i87.i, null
  br i1 %tobool26.not.i, label %if.end23.i.serdes_am654_clk_register.exit.thread135_crit_edge, label %if.end28.i

if.end23.i.serdes_am654_clk_register.exit.thread135_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdes_am654_clk_register.exit.thread135

if.end28.i:                                       ; preds = %if.end23.i
  %37 = ptrtoint ptr %call.i87.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call.i87.i, align 4
  %ops.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @serdes_am654_clk_mux_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 128, ptr %flags.i, align 4
  %parent_names29.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %parent_names29.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i86.i, ptr %parent_names29.i, align 4
  %conv.i = trunc i32 %call14.i to i8
  %num_parents30.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 4, i32 5
  %42 = ptrtoint ptr %num_parents30.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %num_parents30.i, align 4
  %43 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %27, ptr %clk_data.i, align 4
  %regmap31.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %regmap31.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call6.i, ptr %regmap31.i, align 4
  %reg32.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %reg32.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %38, ptr %reg32.i, align 4
  %clk_id.i = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %call.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %clk_id.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.0166, ptr %clk_id.i, align 4
  %init33.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %init33.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %clk_data.i, ptr %init33.i, align 4
  %call35.i = call ptr @devm_clk_register(ptr noundef %31, ptr noundef nonnull %call.i.i) #5
  %cmp.i88.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88.i, label %if.end28.i.serdes_am654_clk_register.exit_crit_edge, label %serdes_am654_clk_register.exit.thread139

if.end28.i.serdes_am654_clk_register.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdes_am654_clk_register.exit

serdes_am654_clk_register.exit.thread139:         ; preds = %if.end28.i
  %arrayidx.i125 = getelementptr %struct.serdes_am654, ptr %call.i, i32 0, i32 8, i32 %i.0166
  %48 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call35.i, ptr %arrayidx.i125, align 4
  call void @of_node_put(ptr noundef nonnull %34) #5
  %inc = add nuw nsw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %serdes_am654_clk_register.exit.thread139.for.body_crit_edge

serdes_am654_clk_register.exit.thread139.for.body_crit_edge: ; preds = %serdes_am654_clk_register.exit.thread139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

serdes_am654_clk_register.exit.thread135.sink.split: ; preds = %if.end13.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge, %of_parse_phandle.exit.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge, %of_parse_phandle.exit.thread.i
  %.str.26.sink = phi ptr [ @.str.20, %of_parse_phandle.exit.thread.i ], [ @.str.26, %if.end13.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge ], [ @.str.20, %of_parse_phandle.exit.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge ]
  %retval.0.i91.i.ph.ph = phi ptr [ null, %of_parse_phandle.exit.thread.i ], [ %34, %if.end13.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge ], [ null, %of_parse_phandle.exit.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge ]
  %ret.0.i.ph.ph = phi i32 [ -19, %of_parse_phandle.exit.thread.i ], [ -22, %if.end13.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge ], [ -19, %of_parse_phandle.exit.i.serdes_am654_clk_register.exit.thread135.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %.str.26.sink) #8
  br label %serdes_am654_clk_register.exit.thread135

serdes_am654_clk_register.exit.thread135:         ; preds = %serdes_am654_clk_register.exit.thread135.sink.split, %if.end23.i.serdes_am654_clk_register.exit.thread135_crit_edge, %if.end19.i.serdes_am654_clk_register.exit.thread135_crit_edge
  %retval.0.i91.i.ph = phi ptr [ %retval.0.i91.i.ph.ph, %serdes_am654_clk_register.exit.thread135.sink.split ], [ %34, %if.end23.i.serdes_am654_clk_register.exit.thread135_crit_edge ], [ %34, %if.end19.i.serdes_am654_clk_register.exit.thread135_crit_edge ]
  %ret.0.i.ph = phi i32 [ %ret.0.i.ph.ph, %serdes_am654_clk_register.exit.thread135.sink.split ], [ -12, %if.end19.i.serdes_am654_clk_register.exit.thread135_crit_edge ], [ -22, %if.end23.i.serdes_am654_clk_register.exit.thread135_crit_edge ]
  call void @of_node_put(ptr noundef %retval.0.i91.i.ph) #5
  br label %do.end40

serdes_am654_clk_register.exit:                   ; preds = %if.end28.i.serdes_am654_clk_register.exit_crit_edge, %do.end11.i
  %ret.0.i.in = phi ptr [ %call6.i, %do.end11.i ], [ %call35.i, %if.end28.i.serdes_am654_clk_register.exit_crit_edge ]
  %ret.0.i = ptrtoint ptr %ret.0.i.in to i32
  call void @of_node_put(ptr noundef nonnull %34) #5
  br label %do.end40

do.end40:                                         ; preds = %serdes_am654_clk_register.exit, %serdes_am654_clk_register.exit.thread135, %if.end34.do.end40_crit_edge
  %retval.0.i126134 = phi i32 [ %ret.0.i, %serdes_am654_clk_register.exit ], [ %ret.0.i.ph, %serdes_am654_clk_register.exit.thread135 ], [ -12, %if.end34.do.end40_crit_edge ]
  %49 = ptrtoint ptr %clock_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clock_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %50) #8
  br label %cleanup

for.end:                                          ; preds = %serdes_am654_clk_register.exit.thread139
  %clk_data42 = getelementptr inbounds %struct.serdes_am654, ptr %call.i, i32 0, i32 7
  %clks = getelementptr inbounds %struct.serdes_am654, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %clk_data42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %clks, ptr %clk_data42, align 4
  %clk_num = getelementptr inbounds %struct.serdes_am654, ptr %call.i, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %clk_num, align 4
  %call44 = call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %for.end
  call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call48 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @ops) #5
  %cmp.i127 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.end47.clk_err_crit_edge, label %if.end52

if.end47.clk_err_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_err

if.end52:                                         ; preds = %if.end47
  %driver_data.i.i128 = getelementptr inbounds %struct.device, ptr %call48, i32 0, i32 8
  %53 = ptrtoint ptr %driver_data.i.i128 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i128, align 4
  %call53 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @serdes_am654_xlate) #5
  %cmp.i129 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.end52.clk_err_crit_edge, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end52.clk_err_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_err

clk_err:                                          ; preds = %if.end52.clk_err_crit_edge, %if.end47.clk_err_crit_edge
  %ret.0.in = phi ptr [ %call48, %if.end47.clk_err_crit_edge ], [ %call53, %if.end52.clk_err_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  call void @of_clk_del_provider(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %clk_err, %if.end52.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end40, %do.end33, %do.end26, %if.then14, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %4, %do.end ], [ %5, %if.then14 ], [ %24, %do.end26 ], [ %call.i121, %do.end33 ], [ %retval.0.i126134, %do.end40 ], [ %ret.0, %clk_err ], [ -12, %entry.cleanup_crit_edge ], [ %call44, %for.end.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_name) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  tail call void @of_clk_del_provider(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_control_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @serdes_am654_xlate(ptr noundef %dev, ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_phy_simple_xlate(ptr noundef %dev, ptr noundef %args) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %busy = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %busy, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %control = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @mux_control_select_delay(ptr noundef %5, i32 noundef %7, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #8
  %8 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %args6 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %9 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %busy, align 4
  %10 = ptrtoint ptr %args6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args6, align 4
  %type = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %do.end ], [ %call, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_clk_mux_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  %parents = alloca [3 x i32], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #5
  %reg2 = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg2, align 4
  %clk_id3 = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %clk_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_id3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %parents) #5
  %6 = getelementptr inbounds [3 x i32], ptr %parents, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i32], ptr %parents, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call4 = call i32 @regmap_read(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %val) #5
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = lshr i32 %10, 4
  %shr = and i32 %and, 15
  %11 = mul nuw nsw i32 %shr, 12
  %uglygep = getelementptr i8, ptr @serdes_am654_mux_table, i32 %11
  %12 = call ptr @memcpy(ptr %parents, ptr %uglygep, i32 12)
  %conv = zext i8 %index to i32
  %arrayidx7 = getelementptr [3 x i32], ptr %parents, i32 0, i32 %5
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx7, align 4
  %14 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parents, align 4
  br label %for.body11

for.body11:                                       ; preds = %for.inc26.critedge.for.body11_crit_edge, %entry
  %storemerge84 = phi i32 [ 0, %entry ], [ %inc27, %for.inc26.critedge.for.body11_crit_edge ]
  %arrayidx12 = getelementptr [16 x [3 x i32]], ptr @serdes_am654_mux_table, i32 0, i32 %storemerge84
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp19.not = icmp eq i32 %15, %17
  br i1 %cmp19.not, label %for.cond13, label %for.body11.for.inc26.critedge_crit_edge

for.body11.for.inc26.critedge_crit_edge:          ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.critedge

for.cond13:                                       ; preds = %for.body11
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  %arrayidx18.1 = getelementptr i32, ptr %arrayidx12, i32 1
  %20 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp19.not.1 = icmp eq i32 %19, %21
  br i1 %cmp19.not.1, label %for.cond13.1, label %for.cond13.for.inc26.critedge_crit_edge

for.cond13.for.inc26.critedge_crit_edge:          ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.critedge

for.cond13.1:                                     ; preds = %for.cond13
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %arrayidx18.2 = getelementptr i32, ptr %arrayidx12, i32 2
  %24 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp19.not.2 = icmp eq i32 %23, %25
  br i1 %cmp19.not.2, label %for.cond13.2, label %for.cond13.1.for.inc26.critedge_crit_edge

for.cond13.1.for.inc26.critedge_crit_edge:        ; preds = %for.cond13.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.critedge

for.cond13.2:                                     ; preds = %for.cond13.1
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %storemerge84, 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl, ptr %val, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

for.inc26.critedge:                               ; preds = %for.cond13.1.for.inc26.critedge_crit_edge, %for.cond13.for.inc26.critedge_crit_edge, %for.body11.for.inc26.critedge_crit_edge
  %inc27 = add nuw nsw i32 %storemerge84, 1
  %exitcond.not = icmp eq i32 %inc27, 16
  br i1 %exitcond.not, label %for.end28, label %for.inc26.critedge.for.body11_crit_edge

for.inc26.critedge.for.body11_crit_edge:          ; preds = %for.inc26.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.end28:                                        ; preds = %for.inc26.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %val, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 625, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end28, %for.cond13.2
  %retval.0 = phi i32 [ %call.i, %for.cond13.2 ], [ -22, %for.end28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %parents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @serdes_am654_clk_mux_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %reg2 = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = lshr i32 %6, 4
  %shr = and i32 %and, 15
  %clk_id = getelementptr inbounds %struct.serdes_am654_clk_mux, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_id, align 4
  %arrayidx3 = getelementptr [16 x [3 x i32]], ptr @serdes_am654_mux_table, i32 0, i32 %shr, i32 %8
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  %conv = trunc i32 %10 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_init(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fields.i = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fields.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %6, i32 noundef -1, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx2.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2.i, align 4
  %call.i152.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef 152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or4.i = or i32 %call.i152.i, %call.i.i
  %arrayidx6.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  %call.i153.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef 152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or8.i = or i32 %or4.i, %call.i153.i
  %arrayidx10.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10.i, align 4
  %call.i154.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef 69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or12.i = or i32 %or8.i, %call.i154.i
  %arrayidx14.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx14.i, align 4
  %call.i155.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or16.i = or i32 %or12.i, %call.i155.i
  %arrayidx18.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx18.i, align 4
  %call.i156.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %16, i32 noundef -1, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or20.i = or i32 %or16.i, %call.i156.i
  %arrayidx22.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx22.i, align 4
  %call.i157.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef 131, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or24.i = or i32 %or20.i, %call.i157.i
  %arrayidx26.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx26.i, align 4
  %call.i158.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %20, i32 noundef -1, i32 noundef 131, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or28.i = or i32 %or24.i, %call.i158.i
  %arrayidx30.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx30.i, align 4
  %call.i159.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef 129, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or32.i = or i32 %or28.i, %call.i159.i
  %arrayidx34.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx34.i, align 4
  %call.i160.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef 59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or36.i = or i32 %or32.i, %call.i160.i
  %arrayidx38.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 11
  %25 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx38.i, align 4
  %call.i161.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or40.i = or i32 %or36.i, %call.i161.i
  %arrayidx42.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 12
  %27 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx42.i, align 4
  %call.i162.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %28, i32 noundef -1, i32 noundef 112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or44.i = or i32 %or40.i, %call.i162.i
  %arrayidx46.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 15
  %29 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx46.i, align 4
  %call.i163.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %30, i32 noundef -1, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or48.i = or i32 %or44.i, %call.i163.i
  %arrayidx50.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 16
  %31 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx50.i, align 4
  %call.i164.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %32, i32 noundef -1, i32 noundef 79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or52.i = or i32 %or48.i, %call.i164.i
  %arrayidx54.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 17
  %33 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx54.i, align 4
  %call.i165.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or56.i = or i32 %or52.i, %call.i165.i
  %arrayidx58.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 18
  %35 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx58.i, align 4
  %call.i166.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %36, i32 noundef -1, i32 noundef 79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or60.i = or i32 %or56.i, %call.i166.i
  %arrayidx62.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 19
  %37 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx62.i, align 4
  %call.i167.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %38, i32 noundef -1, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or64.i = or i32 %or60.i, %call.i167.i
  %arrayidx66.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 20
  %39 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx66.i, align 4
  %call.i168.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %40, i32 noundef -1, i32 noundef 127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or68.i = or i32 %or64.i, %call.i168.i
  %arrayidx70.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 21
  %41 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx70.i, align 4
  %call.i169.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or72.i = or i32 %or68.i, %call.i169.i
  %arrayidx74.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 22
  %43 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx74.i, align 4
  %call.i170.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %44, i32 noundef -1, i32 noundef 154, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or76.i = or i32 %or72.i, %call.i170.i
  %arrayidx78.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 23
  %45 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx78.i, align 4
  %call.i171.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef 50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or80.i = or i32 %or76.i, %call.i171.i
  %arrayidx82.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 24
  %47 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx82.i, align 4
  %call.i172.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %48, i32 noundef -1, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or84.i = or i32 %or80.i, %call.i172.i
  %arrayidx86.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 25
  %49 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx86.i, align 4
  %call.i173.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %50, i32 noundef -1, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or88.i = or i32 %or84.i, %call.i173.i
  %arrayidx90.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 26
  %51 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx90.i, align 4
  %call.i174.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %52, i32 noundef -1, i32 noundef 79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or92.i = or i32 %or88.i, %call.i174.i
  %arrayidx94.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 10
  %53 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx94.i, align 4
  %call.i175.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %54, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or96.i = or i32 %or92.i, %call.i175.i
  %arrayidx98.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 13
  %55 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx98.i, align 4
  %call.i176.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %56, i32 noundef -1, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or100.i = or i32 %or96.i, %call.i176.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or100.i)
  %tobool.not.i = icmp eq i32 %or100.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 0, i32 noundef -16777216, i32 noundef 385875968, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 4, i32 noundef 65280, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 4, i32 noundef 255, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 8, i32 noundef 16711680, i32 noundef 3014656, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 8, i32 noundef -16777216, i32 noundef 771751936, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 96, i32 noundef 255, i32 noundef 75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 96, i32 noundef 65280, i32 noundef 38912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 96, i32 noundef 16711680, i32 noundef 6291456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 208, i32 noundef -16777216, i32 noundef 1157627904, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 232, i32 noundef 65280, i32 noundef 3584, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 544, i32 noundef 255, i32 noundef 52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 544, i32 noundef 65280, i32 noundef 13312, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 544, i32 noundef -16777216, i32 noundef 922746880, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 548, i32 noundef 255, i32 noundef 55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 548, i32 noundef 65280, i32 noundef 14080, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 552, i32 noundef 16711680, i32 noundef 3604480, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 552, i32 noundef -16777216, i32 noundef 922746880, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %call.i17.i = tail call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 556, i32 noundef 255, i32 noundef 55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i18.i = tail call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 556, i32 noundef 65280, i32 noundef 14080, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call.i19.i = tail call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 560, i32 noundef 65280, i32 noundef 10752, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %call.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 560, i32 noundef 16711680, i32 noundef 2752512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 576, i32 noundef 16711680, i32 noundef 1048576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %call.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 576, i32 noundef -16777216, i32 noundef 872415232, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %call.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 580, i32 noundef 255, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 580, i32 noundef 16711680, i32 noundef 3407872, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %call.i25.i = tail call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 584, i32 noundef 65280, i32 noundef 3328, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %call.i26.i = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 600, i32 noundef 65280, i32 noundef 5632, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 600, i32 noundef 16711680, i32 noundef 8650752, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 600, i32 noundef -16777216, i32 noundef -234881024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 604, i32 noundef 255, i32 noundef 33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 608, i32 noundef 255, i32 noundef 39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  %call.i31.i = tail call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 608, i32 noundef 65280, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef 616, i32 noundef 65280, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %call.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef 648, i32 noundef 65280, i32 noundef 11264, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef 816, i32 noundef -16777216, i32 noundef -1610612736, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %128, i32 noundef 824, i32 noundef 16711680, i32 noundef 196608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 4
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %130, i32 noundef 824, i32 noundef -16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %call.i37.i = tail call i32 @regmap_update_bits_base(ptr noundef %132, i32 noundef 828, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %call.i38.i = tail call i32 @regmap_update_bits_base(ptr noundef %134, i32 noundef 836, i32 noundef -16777216, i32 noundef 402653184, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %call.i39.i = tail call i32 @regmap_update_bits_base(ptr noundef %136, i32 noundef 844, i32 noundef 255, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %call.i40.i = tail call i32 @regmap_update_bits_base(ptr noundef %138, i32 noundef 924, i32 noundef 16711680, i32 noundef 3866624, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 4
  %call.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 2564, i32 noundef 255, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %call.i42.i = tail call i32 @regmap_update_bits_base(ptr noundef %142, i32 noundef 2580, i32 noundef -16777216, i32 noundef 1006632960, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  %call.i43.i = tail call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef 2584, i32 noundef 65280, i32 noundef 15360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %call.i44.i = tail call i32 @regmap_update_bits_base(ptr noundef %146, i32 noundef 2616, i32 noundef 255, i32 noundef 62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %call.i45.i = tail call i32 @regmap_update_bits_base(ptr noundef %148, i32 noundef 2616, i32 noundef 65280, i32 noundef 15872, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %call.i46.i = tail call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef 2784, i32 noundef 255, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %call.i47.i = tail call i32 @regmap_update_bits_base(ptr noundef %152, i32 noundef 2924, i32 noundef 16711680, i32 noundef 13434880, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %call.i48.i = tail call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 2924, i32 noundef -16777216, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 4
  %call.i49.i = tail call i32 @regmap_update_bits_base(ptr noundef %156, i32 noundef 2968, i32 noundef 16711680, i32 noundef 196608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %call.i50.i = tail call i32 @regmap_update_bits_base(ptr noundef %158, i32 noundef 5120, i32 noundef 255, i32 noundef 63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 4
  %call.i51.i = tail call i32 @regmap_update_bits_base(ptr noundef %160, i32 noundef 5124, i32 noundef 16711680, i32 noundef 7274496, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  %call.i52.i = tail call i32 @regmap_update_bits_base(ptr noundef %162, i32 noundef 5124, i32 noundef -16777216, i32 noundef 1862270976, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %call.i53.i = tail call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 5132, i32 noundef 255, i32 noundef 111, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %call.i54.i = tail call i32 @regmap_update_bits_base(ptr noundef %166, i32 noundef 5132, i32 noundef 65280, i32 noundef 28416, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %call.i55.i = tail call i32 @regmap_update_bits_base(ptr noundef %168, i32 noundef 5136, i32 noundef 65280, i32 noundef 9984, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 4
  %call.i56.i = tail call i32 @regmap_update_bits_base(ptr noundef %170, i32 noundef 5140, i32 noundef 255, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %call.i57.i = tail call i32 @regmap_update_bits_base(ptr noundef %172, i32 noundef 5140, i32 noundef 16711680, i32 noundef 458752, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %call.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %174, i32 noundef 5144, i32 noundef 16711680, i32 noundef 4194304, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  %call.i59.i = tail call i32 @regmap_update_bits_base(ptr noundef %176, i32 noundef 5148, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  %call.i60.i = tail call i32 @regmap_update_bits_base(ptr noundef %178, i32 noundef 5148, i32 noundef 65280, i32 noundef 7936, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %call.i61.i = tail call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef 5160, i32 noundef -16777216, i32 noundef 134217728, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 4
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %182, i32 noundef 5172, i32 noundef -16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef 5188, i32 noundef 255, i32 noundef 148, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  %call.i64.i = tail call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef 5216, i32 noundef -16777216, i32 noundef 2130706432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 4
  %call.i65.i = tail call i32 @regmap_update_bits_base(ptr noundef %188, i32 noundef 5220, i32 noundef 255, i32 noundef 67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 4
  %call.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %190, i32 noundef 5220, i32 noundef 16711680, i32 noundef 7274496, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %call.i67.i = tail call i32 @regmap_update_bits_base(ptr noundef %192, i32 noundef 5220, i32 noundef -16777216, i32 noundef 1124073472, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %call.i68.i = tail call i32 @regmap_update_bits_base(ptr noundef %194, i32 noundef 5252, i32 noundef 16711680, i32 noundef 9371648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 4
  %call.i69.i = tail call i32 @regmap_update_bits_base(ptr noundef %196, i32 noundef 5272, i32 noundef 255, i32 noundef 79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 4
  %call.i70.i = tail call i32 @regmap_update_bits_base(ptr noundef %198, i32 noundef 5272, i32 noundef 16711680, i32 noundef 5177344, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %call.i71.i = tail call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef 124, i32 noundef -16777216, i32 noundef 218103808, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 4
  %call.i72.i = tail call i32 @regmap_update_bits_base(ptr noundef %202, i32 noundef 2960, i32 noundef 65280, i32 noundef 3840, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ %..i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_power_on(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %arrayidx.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 30
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 256) #5
  %arrayidx12.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 31
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12.i, align 4
  %call1358.i = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1358.i)
  %tobool14.not59.i = icmp eq i32 %call1358.i, 0
  br i1 %tobool14.not59.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then28.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not.i = icmp eq i32 %11, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call19.i = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call19.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then28.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = call i32 @regmap_field_read(ptr noundef %13, ptr noundef nonnull %val.i) #5
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then28.i.lor.lhs.false.i_crit_edge, label %if.then28.i.do.end_crit_edge

if.then28.i.do.end_crit_edge:                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then28.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12.i, align 4
  %call25.i = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool30.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool30.not.i, label %lor.rhs.i, label %for.end.i.do.end_crit_edge

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs.i:                                        ; preds = %for.end.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool31.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool31.not.i, label %lor.rhs.i.do.end_crit_edge, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.rhs.i.do.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.rhs.i.do.end_crit_edge, %for.end.i.do.end_crit_edge, %if.then28.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1358.i, %if.end.i.do.end_crit_edge ], [ %call25.i, %for.end.i.do.end_crit_edge ], [ %call.i.i, %entry.do.end_crit_edge ], [ -110, %lor.rhs.i.do.end_crit_edge ], [ %call13.i, %if.then28.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29) #8
  br label %cleanup

if.end:                                           ; preds = %lor.rhs.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %arrayidx.i62 = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i62, align 4
  %call.i.i63 = call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx2.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 29
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx2.i, align 4
  %call.i8.i = call i32 @regmap_field_update_bits_base(ptr noundef %20, i32 noundef -1, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or4.i = or i32 %call.i8.i, %call.i.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.i)
  %tobool.not.i64 = icmp eq i32 %or4.i, 0
  br i1 %tobool.not.i64, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i64 @ktime_get() #5
  %add.i = add i64 %call10, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 321) #5
  %arrayidx = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 14
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call2384 = call i32 @regmap_field_read(ptr noundef %22, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2384)
  %tobool24.not85 = icmp eq i32 %call2384, 0
  br i1 %tobool24.not85, label %if.end9.lor.lhs.false_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.lor.lhs.false_crit_edge:                  ; preds = %if.end9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then38.lor.lhs.false_crit_edge, %if.end9.lor.lhs.false_crit_edge
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool25.not = icmp eq i32 %24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call29 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call29, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then38

if.then38:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %call23 = call i32 @regmap_field_read(ptr noundef %26, ptr noundef nonnull %val) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then38.lor.lhs.false_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38.lor.lhs.false_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %call35 = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool40.not = icmp eq i32 %call35, 0
  br i1 %tobool40.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool41.not = icmp eq i32 %30, 0
  %phi.sel = select i1 %tobool41.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %for.end.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -5, %do.end8 ], [ %call35, %for.end.cleanup_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call2384, %if.end9.cleanup_crit_edge ], [ %call23, %if.then38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_power_off(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx2.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 29
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %call.i1.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %dev1.i = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %arrayidx.i3 = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 30
  %8 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i3, align 4
  %call.i.i4 = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %tobool.not.i = icmp eq i32 %call.i.i4, 0
  br i1 %tobool.not.i, label %entry.serdes_am654_disable_pll.exit_crit_edge, label %do.end.i

entry.serdes_am654_disable_pll.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdes_am654_disable_pll.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34) #8
  br label %serdes_am654_disable_pll.exit

serdes_am654_disable_pll.exit:                    ; preds = %do.end.i, %entry.serdes_am654_disable_pll.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_am654_reset(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %arrayidx.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 30
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.serdes_am654_disable_pll.exit_crit_edge, label %do.end.i

entry.serdes_am654_disable_pll.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdes_am654_disable_pll.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34) #8
  br label %serdes_am654_disable_pll.exit

serdes_am654_disable_pll.exit:                    ; preds = %do.end.i, %entry.serdes_am654_disable_pll.exit_crit_edge
  %arrayidx.i13 = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i13, align 4
  %call.i.i14 = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx2.i = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 29
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %call.i1.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx = getelementptr %struct.serdes_am654, ptr %1, i32 0, i32 1, i32 27
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call.i15 = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or6 = or i32 %call.i15, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serdes_am654_release(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %busy = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %busy, align 4
  %control = getelementptr inbounds %struct.serdes_am654, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %call1 = tail call i32 @mux_control_deselect(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_deselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_select_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_phy_am654_serdes__289_864_serdes_am654_driver_init6, !1, !"__initcall__kmod_phy_am654_serdes__289_864_serdes_am654_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 864, i32 1}
!2 = !{ptr @__exitcall_serdes_am654_driver_exit, !1, !"__exitcall_serdes_am654_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 866, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 867, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 868, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 860, i32 11}
!12 = !{ptr @serdes_am654_driver, !13, !"serdes_am654_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 856, i32 31}
!14 = !{ptr @serdes_am654_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 775, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 777, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @serdes_am654_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @serdes_am654_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 793, i32 3}
!27 = !{ptr @serdes_am654_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @serdes_am654_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 800, i32 45}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 803, i32 4}
!33 = !{ptr @serdes_am654_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @serdes_am654_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 809, i32 4}
!37 = !{ptr @serdes_am654_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @serdes_am654_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @serdes_am654_regmap_config, !40, !"serdes_am654_regmap_config", i1 false, i1 false}
!40 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 98, i32 35}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 744, i32 4}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @serdes_am654_regfield_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @serdes_am654_regfield_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @serdes_am654_reg_fields, !47, !"serdes_am654_reg_fields", i1 false, i1 false}
!47 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 198, i32 31}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 663, i32 39}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 665, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @serdes_am654_clk_register._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @serdes_am654_clk_register._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 672, i32 3}
!57 = !{ptr @serdes_am654_clk_register._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @serdes_am654_clk_register._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 679, i32 3}
!61 = !{ptr @serdes_am654_clk_register._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @serdes_am654_clk_register._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @serdes_am654_clk_mux_ops, !64, !"serdes_am654_clk_mux_ops", i1 false, i1 false}
!64 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 636, i32 29}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 625, i32 3}
!67 = !{ptr @serdes_am654_mux_table, !68, !"serdes_am654_mux_table", i1 false, i1 false}
!68 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 540, i32 1}
!69 = !{ptr @ops, !70, !"ops", i1 false, i1 false}
!70 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 524, i32 29}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 310, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @serdes_am654_power_on._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @serdes_am654_power_on._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 316, i32 3}
!78 = !{ptr @serdes_am654_power_on._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @serdes_am654_power_on._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 266, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @serdes_am654_disable_pll._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @serdes_am654_disable_pll._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 514, i32 3}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @serdes_am654_xlate._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @serdes_am654_xlate._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @serdes_am654_id_table, !91, !"serdes_am654_id_table", i1 false, i1 false}
!91 = !{!"../drivers/phy/ti/phy-am654-serdes.c", i32 725, i32 34}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i8 0, i8 2}
