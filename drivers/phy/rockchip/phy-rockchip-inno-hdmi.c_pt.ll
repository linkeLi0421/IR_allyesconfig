; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c"
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
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.post_pll_config = type { i32, i8, i16, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.inno_hdmi_phy_drv_data = type { ptr, ptr, ptr }
%struct.inno_hdmi_phy_ops = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pre_pll_config = type { i32, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.phy_config = type { i32, [14 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.inno_hdmi_phy = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_phy_rockchip_inno_hdmi__295_1275_inno_hdmi_phy_driver_init6 = internal global ptr @inno_hdmi_phy_driver_init, section ".initcall6.init", align 4
@inno_hdmi_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @inno_hdmi_phy_probe, ptr @inno_hdmi_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @inno_hdmi_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_inno_hdmi_phy_driver_exit = internal global ptr @inno_hdmi_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [68 x i8] c"phy_rockchip_inno_hdmi.author=Zheng Yang <zhengyang@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [78 x i8] c"phy_rockchip_inno_hdmi.description=Innosilion HDMI 2.0 Transmitter PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [72 x i8] c"phy_rockchip_inno_hdmi.file=drivers/phy/rockchip/phy-rockchip-inno-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [38 x i8] c"phy_rockchip_inno_hdmi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inno-hdmi-phy\00", [18 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-hdmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_hdmi_phy_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-hdmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_hdmi_phy_drv_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysclk\00", [25 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get sysclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inno_hdmi_phy_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/phy/rockchip/phy-rockchip-inno-hdmi.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry_ptr = internal global ptr @inno_hdmi_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"refpclk\00", [24 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ref clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry_ptr.10 = internal global ptr @inno_hdmi_phy_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"refoclk\00", [24 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get oscillator-ref clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry_ptr.14 = internal global ptr @inno_hdmi_phy_probe._entry.12, section ".printk_index", align 4
@inno_hdmi_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot enable inno phy sysclk: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry_ptr.17 = internal global ptr @inno_hdmi_phy_probe._entry.15, section ".printk_index", align 4
@inno_hdmi_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable refpclk\0A\00", [38 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry_ptr.20 = internal global ptr @inno_hdmi_phy_probe._entry.18, section ".printk_index", align 4
@inno_hdmi_phy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@inno_hdmi_phy_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1024, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"phy_rockchip_inno_hdmi:1209:(&inno_hdmi_phy_regmap_config)->lock\00", [63 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @inno_hdmi_phy_power_on, ptr @inno_hdmi_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to create HDMI PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_probe._entry_ptr.24 = internal global ptr @inno_hdmi_phy_probe._entry.22, section ".printk_index", align 4
@post_pll_cfg_table = internal constant { [8 x %struct.post_pll_config], [32 x i8] } { [8 x %struct.post_pll_config] [%struct.post_pll_config { i32 33750000, i8 1, i16 40, i8 8, i8 1 }, %struct.post_pll_config { i32 33750000, i8 1, i16 80, i8 8, i8 2 }, %struct.post_pll_config { i32 74250000, i8 1, i16 40, i8 8, i8 1 }, %struct.post_pll_config { i32 74250000, i8 18, i16 80, i8 8, i8 2 }, %struct.post_pll_config { i32 148500000, i8 2, i16 40, i8 4, i8 3 }, %struct.post_pll_config { i32 297000000, i8 4, i16 40, i8 2, i8 3 }, %struct.post_pll_config { i32 594000000, i8 8, i16 40, i8 1, i8 3 }, %struct.post_pll_config zeroinitializer], [32 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 467, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TMDS clock is zero!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"inno_hdmi_phy_power_on\00", [41 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_power_on._entry_ptr = internal global ptr @inno_hdmi_phy_power_on._entry, section ".printk_index", align 4
@inno_hdmi_phy_power_on.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.26, ptr @.str.4, ptr @.str.28, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_rockchip_inno_hdmi\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Inno HDMI PHY Power On\0A\00", [40 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_power_off.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inno_hdmi_phy_power_off\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Inno HDMI PHY Power Off\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pin_hd20_pclk\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 861, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"inno_hdmi_phy_clk_register\00", [37 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_clk_register._entry_ptr = internal global ptr @inno_hdmi_phy_clk_register._entry, section ".printk_index", align 4
@inno_hdmi_phy_clk_register._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 867, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register clock provider: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_clk_register._entry_ptr.37 = internal global ptr @inno_hdmi_phy_clk_register._entry.35, section ".printk_index", align 4
@rk3228_hdmi_phy_drv_data = internal constant { %struct.inno_hdmi_phy_drv_data, [20 x i8] } { %struct.inno_hdmi_phy_drv_data { ptr @rk3228_hdmi_phy_ops, ptr @inno_hdmi_phy_rk3228_clk_ops, ptr @rk3228_phy_cfg }, [20 x i8] zeroinitializer }, align 32
@rk3328_hdmi_phy_drv_data = internal constant { %struct.inno_hdmi_phy_drv_data, [20 x i8] } { %struct.inno_hdmi_phy_drv_data { ptr @rk3328_hdmi_phy_ops, ptr @inno_hdmi_phy_rk3328_clk_ops, ptr @rk3328_phy_cfg }, [20 x i8] zeroinitializer }, align 32
@rk3228_hdmi_phy_ops = internal constant { %struct.inno_hdmi_phy_ops, [20 x i8] } { %struct.inno_hdmi_phy_ops { ptr @inno_hdmi_phy_rk3228_init, ptr @inno_hdmi_phy_rk3228_power_on, ptr @inno_hdmi_phy_rk3228_power_off }, [20 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3228_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @inno_hdmi_phy_rk3228_clk_prepare, ptr @inno_hdmi_phy_rk3228_clk_unprepare, ptr @inno_hdmi_phy_rk3228_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inno_hdmi_phy_rk3228_clk_recalc_rate, ptr @inno_hdmi_phy_rk3228_clk_round_rate, ptr null, ptr null, ptr null, ptr @inno_hdmi_phy_rk3228_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3228_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 943, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Post-PLL locking failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"inno_hdmi_phy_rk3228_power_on\00", [34 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3228_power_on._entry_ptr = internal global ptr @inno_hdmi_phy_rk3228_power_on._entry, section ".printk_index", align 4
@inno_hdmi_phy_rk3228_clk_recalc_rate.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"inno_hdmi_phy_rk3228_clk_recalc_rate\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s rate %lu\0A\00", [19 x i8] zeroinitializer }, align 32
@pre_pll_cfg_table = internal constant { [26 x %struct.pre_pll_config], [144 x i8] } { [26 x %struct.pre_pll_config] [%struct.pre_pll_config { i32 27000000, i32 27000000, i8 1, i16 90, i8 3, i8 2, i8 2, i8 10, i8 3, i8 3, i8 4, i8 0, i32 0 }, %struct.pre_pll_config { i32 27000000, i32 33750000, i8 1, i16 90, i8 1, i8 3, i8 3, i8 10, i8 3, i8 3, i8 4, i8 0, i32 0 }, %struct.pre_pll_config { i32 40000000, i32 40000000, i8 1, i16 80, i8 2, i8 2, i8 2, i8 12, i8 2, i8 2, i8 2, i8 0, i32 0 }, %struct.pre_pll_config { i32 59341000, i32 59341000, i8 1, i16 98, i8 3, i8 1, i8 2, i8 1, i8 3, i8 3, i8 4, i8 0, i32 15117931 }, %struct.pre_pll_config { i32 59400000, i32 59400000, i8 1, i16 99, i8 3, i8 1, i8 1, i8 1, i8 3, i8 3, i8 4, i8 0, i32 0 }, %struct.pre_pll_config { i32 59341000, i32 74176250, i8 1, i16 98, i8 0, i8 3, i8 3, i8 1, i8 3, i8 3, i8 4, i8 0, i32 15117931 }, %struct.pre_pll_config { i32 59400000, i32 74250000, i8 1, i16 99, i8 1, i8 2, i8 2, i8 1, i8 3, i8 3, i8 4, i8 0, i32 0 }, %struct.pre_pll_config { i32 74176000, i32 74176000, i8 1, i16 98, i8 1, i8 2, i8 2, i8 1, i8 2, i8 3, i8 4, i8 0, i32 15117931 }, %struct.pre_pll_config { i32 74250000, i32 74250000, i8 1, i16 99, i8 1, i8 2, i8 2, i8 1, i8 2, i8 3, i8 4, i8 0, i32 0 }, %struct.pre_pll_config { i32 74176000, i32 92720000, i8 4, i16 494, i8 1, i8 2, i8 2, i8 1, i8 3, i8 3, i8 4, i8 0, i32 8480791 }, %struct.pre_pll_config { i32 74250000, i32 92812500, i8 4, i16 495, i8 1, i8 2, i8 2, i8 1, i8 3, i8 3, i8 4, i8 0, i32 0 }, %struct.pre_pll_config { i32 148352000, i32 148352000, i8 1, i16 98, i8 1, i8 1, i8 1, i8 1, i8 2, i8 2, i8 2, i8 0, i32 15117931 }, %struct.pre_pll_config { i32 148500000, i32 148500000, i8 1, i16 99, i8 1, i8 1, i8 1, i8 1, i8 2, i8 2, i8 2, i8 0, i32 0 }, %struct.pre_pll_config { i32 148352000, i32 185440000, i8 4, i16 494, i8 0, i8 2, i8 2, i8 1, i8 3, i8 2, i8 2, i8 0, i32 8480791 }, %struct.pre_pll_config { i32 148500000, i32 185625000, i8 4, i16 495, i8 0, i8 2, i8 2, i8 1, i8 3, i8 2, i8 2, i8 0, i32 0 }, %struct.pre_pll_config { i32 296703000, i32 296703000, i8 1, i16 98, i8 0, i8 1, i8 1, i8 1, i8 0, i8 2, i8 2, i8 0, i32 15117931 }, %struct.pre_pll_config { i32 297000000, i32 297000000, i8 1, i16 99, i8 0, i8 1, i8 1, i8 1, i8 0, i8 2, i8 2, i8 0, i32 0 }, %struct.pre_pll_config { i32 296703000, i32 370878750, i8 4, i16 494, i8 1, i8 2, i8 0, i8 1, i8 3, i8 1, i8 1, i8 0, i32 8480791 }, %struct.pre_pll_config { i32 297000000, i32 371250000, i8 4, i16 495, i8 1, i8 2, i8 0, i8 1, i8 3, i8 1, i8 1, i8 0, i32 0 }, %struct.pre_pll_config { i32 593407000, i32 296703500, i8 1, i16 98, i8 0, i8 1, i8 1, i8 1, i8 0, i8 2, i8 1, i8 0, i32 15117931 }, %struct.pre_pll_config { i32 594000000, i32 297000000, i8 1, i16 99, i8 0, i8 1, i8 1, i8 1, i8 0, i8 2, i8 1, i8 0, i32 0 }, %struct.pre_pll_config { i32 593407000, i32 370879375, i8 4, i16 494, i8 1, i8 2, i8 0, i8 1, i8 3, i8 1, i8 1, i8 1, i32 8480791 }, %struct.pre_pll_config { i32 594000000, i32 371250000, i8 4, i16 495, i8 1, i8 2, i8 0, i8 1, i8 3, i8 1, i8 1, i8 1, i32 0 }, %struct.pre_pll_config { i32 593407000, i32 593407000, i8 1, i16 98, i8 0, i8 2, i8 0, i8 1, i8 0, i8 1, i8 1, i8 0, i32 15117931 }, %struct.pre_pll_config { i32 594000000, i32 594000000, i8 1, i16 99, i8 0, i8 2, i8 0, i8 1, i8 0, i8 1, i8 1, i8 0, i32 0 }, %struct.pre_pll_config zeroinitializer], [144 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3228_clk_set_rate.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inno_hdmi_phy_rk3228_clk_set_rate\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s rate %lu tmdsclk %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3228_clk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Pre-PLL locking failed\0A\00", [40 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3228_clk_set_rate._entry_ptr = internal global ptr @inno_hdmi_phy_rk3228_clk_set_rate._entry, section ".printk_index", align 4
@rk3228_phy_cfg = internal constant { <{ { i32, <{ i8, i8, i8, i8, [10 x i8] }> }, { i32, <{ i8, i8, i8, i8, [10 x i8] }> }, { i32, <{ i8, i8, i8, i8, [10 x i8] }> }, %struct.phy_config }>, [48 x i8] } { <{ { i32, <{ i8, i8, i8, i8, [10 x i8] }> }, { i32, <{ i8, i8, i8, i8, [10 x i8] }> }, { i32, <{ i8, i8, i8, i8, [10 x i8] }> }, %struct.phy_config }> <{ { i32, <{ i8, i8, i8, i8, [10 x i8] }> } { i32 165000000, <{ i8, i8, i8, i8, [10 x i8] }> <{ i8 -86, i8 0, i8 68, i8 68, [10 x i8] zeroinitializer }> }, { i32, <{ i8, i8, i8, i8, [10 x i8] }> } { i32 340000000, <{ i8, i8, i8, i8, [10 x i8] }> <{ i8 -86, i8 21, i8 106, i8 -86, [10 x i8] zeroinitializer }> }, { i32, <{ i8, i8, i8, i8, [10 x i8] }> } { i32 594000000, <{ i8, i8, i8, i8, [10 x i8] }> <{ i8 -86, i8 21, i8 122, i8 -86, [10 x i8] zeroinitializer }> }, %struct.phy_config zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@rk3328_hdmi_phy_ops = internal constant { %struct.inno_hdmi_phy_ops, [20 x i8] } { %struct.inno_hdmi_phy_ops { ptr @inno_hdmi_phy_rk3328_init, ptr @inno_hdmi_phy_rk3328_power_on, ptr @inno_hdmi_phy_rk3328_power_off }, [20 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3328_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @inno_hdmi_phy_rk3328_clk_prepare, ptr @inno_hdmi_phy_rk3328_clk_unprepare, ptr @inno_hdmi_phy_rk3328_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inno_hdmi_phy_rk3328_clk_recalc_rate, ptr @inno_hdmi_phy_rk3328_clk_round_rate, ptr null, ptr null, ptr null, ptr @inno_hdmi_phy_rk3328_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rk3328_phy_cfg = internal constant { [4 x %struct.phy_config], [48 x i8] } { [4 x %struct.phy_config] [%struct.phy_config { i32 165000000, [14 x i8] c"\07\0A\0A\0A\00\00\08\08\08\00\AC\CC\CC\CC" }, %struct.phy_config { i32 340000000, [14 x i8] c"\0B\0D\0D\0D\07\15\08\08\08?\AC\CC\CD\DD" }, %struct.phy_config { i32 594000000, [14 x i8] c"\10\1A\1A\1A\07\15\08\08\08\00\AC\CC\CC\CC" }, %struct.phy_config zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpu-version\00", [20 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3328_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.47, ptr @.str.4, i32 1081, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"inno_hdmi_phy_rk3328_power_on\00", [34 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3328_power_on._entry_ptr = internal global ptr @inno_hdmi_phy_rk3328_power_on._entry, section ".printk_index", align 4
@inno_hdmi_phy_rk3328_clk_recalc_rate.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.48, ptr @.str.4, ptr @.str.41, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"inno_hdmi_phy_rk3328_clk_recalc_rate\00", [59 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3328_clk_set_rate.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.49, ptr @.str.4, ptr @.str.43, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inno_hdmi_phy_rk3328_clk_set_rate\00", [62 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3328_clk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.49, ptr @.str.4, i32 819, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@inno_hdmi_phy_rk3328_clk_set_rate._entry_ptr = internal global ptr @inno_hdmi_phy_rk3328_clk_set_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 6, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 6, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 6, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 6, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 6, i64 10, i64 12, i64 16]
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"inno_hdmi_phy_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1267, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1271, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"inno_hdmi_phy_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1256, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1164, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1167, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1171, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1174, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1178, i32 42 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1181, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1188, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1198, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [28 x i8] c"inno_hdmi_phy_regmap_config\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1128, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1208, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"inno_hdmi_phy_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 517, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1227, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"post_pll_cfg_table\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 322, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 467, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 486, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 512, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 850, i32 14 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 854, i32 30 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 861, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 867, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [25 x i8] c"rk3228_hdmi_phy_drv_data\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1116, i32 44 }
@___asan_gen_.180 = private unnamed_addr constant [25 x i8] c"rk3328_hdmi_phy_drv_data\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1122, i32 44 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"rk3228_hdmi_phy_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 962, i32 39 }
@___asan_gen_.186 = private unnamed_addr constant [29 x i8] c"inno_hdmi_phy_rk3228_clk_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 677, i32 29 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 943, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 595, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"pre_pll_cfg_table\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 293, i32 36 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 628, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 668, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [15 x i8] c"rk3228_phy_cfg\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 334, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c"rk3328_hdmi_phy_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1110, i32 39 }
@___asan_gen_.225 = private unnamed_addr constant [29 x i8] c"inno_hdmi_phy_rk3328_clk_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 828, i32 29 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"rk3328_phy_cfg\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 353, i32 32 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 990, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1081, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 749, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 782, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private constant [49 x i8] c"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 819, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_inno_hdmi_phy_driver_exit, ptr @__initcall__kmod_phy_rockchip_inno_hdmi__295_1275_inno_hdmi_phy_driver_init6, ptr @inno_hdmi_phy_clk_register._entry, ptr @inno_hdmi_phy_clk_register._entry.35, ptr @inno_hdmi_phy_clk_register._entry_ptr, ptr @inno_hdmi_phy_clk_register._entry_ptr.37, ptr @inno_hdmi_phy_driver_exit, ptr @inno_hdmi_phy_power_on._entry, ptr @inno_hdmi_phy_power_on._entry_ptr, ptr @inno_hdmi_phy_probe._entry, ptr @inno_hdmi_phy_probe._entry.12, ptr @inno_hdmi_phy_probe._entry.15, ptr @inno_hdmi_phy_probe._entry.18, ptr @inno_hdmi_phy_probe._entry.22, ptr @inno_hdmi_phy_probe._entry.8, ptr @inno_hdmi_phy_probe._entry_ptr, ptr @inno_hdmi_phy_probe._entry_ptr.10, ptr @inno_hdmi_phy_probe._entry_ptr.14, ptr @inno_hdmi_phy_probe._entry_ptr.17, ptr @inno_hdmi_phy_probe._entry_ptr.20, ptr @inno_hdmi_phy_probe._entry_ptr.24, ptr @inno_hdmi_phy_rk3228_clk_set_rate._entry, ptr @inno_hdmi_phy_rk3228_clk_set_rate._entry_ptr, ptr @inno_hdmi_phy_rk3228_power_on._entry, ptr @inno_hdmi_phy_rk3228_power_on._entry_ptr, ptr @inno_hdmi_phy_rk3328_clk_set_rate._entry, ptr @inno_hdmi_phy_rk3328_clk_set_rate._entry_ptr, ptr @inno_hdmi_phy_rk3328_power_on._entry, ptr @inno_hdmi_phy_rk3328_power_on._entry_ptr, ptr @inno_hdmi_phy_driver, ptr @.str, ptr @inno_hdmi_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @inno_hdmi_phy_probe._key, ptr @inno_hdmi_phy_regmap_config, ptr @.str.21, ptr @inno_hdmi_phy_ops, ptr @.str.23, ptr @post_pll_cfg_table, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @rk3228_hdmi_phy_drv_data, ptr @rk3328_hdmi_phy_drv_data, ptr @rk3228_hdmi_phy_ops, ptr @inno_hdmi_phy_rk3228_clk_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pre_pll_cfg_table, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @rk3228_phy_cfg, ptr @rk3328_hdmi_phy_ops, ptr @inno_hdmi_phy_rk3328_clk_ops, ptr @rk3328_phy_cfg, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_pll_cfg_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_clk_register._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_hdmi_phy_drv_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_hdmi_phy_drv_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_hdmi_phy_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_rk3228_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_rk3228_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_pll_cfg_table to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_rk3228_clk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_phy_cfg to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_hdmi_phy_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_rk3328_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_phy_cfg to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_rk3328_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_phy_rk3328_clk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @inno_hdmi_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @inno_hdmi_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %plat_data = getelementptr inbounds %struct.inno_hdmi_phy, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %plat_data, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call4, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call17 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.1) #6
  %sysclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %sysclk, align 4
  %cmp.i202 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call17 to i32
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, i32 noundef %8) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %call26 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.7) #6
  %refpclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %refpclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %refpclk, align 4
  %cmp.i203 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call26 to i32
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %14) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call38 = tail call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull @.str.11) #6
  %refoclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %refoclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call38, ptr %refoclk, align 4
  %cmp.i204 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call38 to i32
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef %20) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  %23 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sysclk, align 4
  %call.i205 = tail call i32 @clk_prepare(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.do.end55_crit_edge

if.end48.do.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

if.end.i:                                         ; preds = %if.end48
  %call1.i = tail call i32 @clk_enable(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end57, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then3.i, %if.end48.do.end55_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i205, %if.end48.do.end55_crit_edge ]
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end.i
  %27 = ptrtoint ptr %refpclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %refpclk, align 4
  %call.i206 = tail call i32 @clk_prepare(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i207, label %if.end.i210, label %if.end57.do.end64_crit_edge

if.end57.do.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

if.end.i210:                                      ; preds = %if.end57
  %call1.i208 = tail call i32 @clk_enable(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %tobool2.not.i209 = icmp eq i32 %call1.i208, 0
  br i1 %tobool2.not.i209, label %if.end67, label %if.then3.i211

if.then3.i211:                                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %28) #6
  br label %do.end64

do.end64:                                         ; preds = %if.then3.i211, %if.end57.do.end64_crit_edge
  %retval.0.i212.ph = phi i32 [ %call1.i208, %if.then3.i211 ], [ %call.i206, %if.end57.do.end64_crit_edge ]
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19) #9
  %31 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sysclk, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  br label %cleanup

if.end67:                                         ; preds = %if.end.i210
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %call.i214 = tail call i32 @devm_add_action(ptr noundef %34, ptr noundef nonnull @inno_hdmi_phy_action, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %if.end72, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %refpclk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %refpclk, align 4
  tail call void @clk_disable(ptr noundef %36) #6
  tail call void @clk_unprepare(ptr noundef %36) #6
  %37 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sysclk, align 4
  tail call void @clk_disable(ptr noundef %38) #6
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call74 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %40, ptr noundef null, ptr noundef %call11, ptr noundef nonnull @inno_hdmi_phy_regmap_config, ptr noundef nonnull @inno_hdmi_phy_probe._key, ptr noundef nonnull @.str.21) #6
  %regmap = getelementptr inbounds %struct.inno_hdmi_phy, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call74, ptr %regmap, align 4
  %cmp.i217 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %call74 to i32
  br label %cleanup

if.end80:                                         ; preds = %if.end72
  %call81 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.inno_hdmi_phy, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call81, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp = icmp sgt i32 %call81, 0
  br i1 %cmp, label %if.then83, label %if.end80.if.end92_crit_edge

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then83:                                        ; preds = %if.end80
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i218 = icmp eq ptr %47, null
  br i1 %tobool.not.i218, label %if.end.i219, label %if.then83.dev_name.exit_crit_edge

if.then83.dev_name.exit_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i219:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i219, %if.then83.dev_name.exit_crit_edge
  %retval.0.i220 = phi ptr [ %49, %if.end.i219 ], [ %47, %if.then83.dev_name.exit_crit_edge ]
  %call88 = tail call i32 @devm_request_threaded_irq(ptr noundef %45, i32 noundef %call81, ptr noundef nonnull @inno_hdmi_phy_rk3328_hardirq, ptr noundef nonnull @inno_hdmi_phy_rk3328_irq, i32 noundef 128, ptr noundef %retval.0.i220, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %dev_name.exit.if.end92_crit_edge, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dev_name.exit.if.end92_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.end92:                                         ; preds = %dev_name.exit.if.end92_crit_edge, %if.end80.if.end92_crit_edge
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %call94 = tail call ptr @devm_phy_create(ptr noundef %51, ptr noundef null, ptr noundef nonnull @inno_hdmi_phy_ops) #6
  %phy = getelementptr inbounds %struct.inno_hdmi_phy, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call94, ptr %phy, align 4
  %cmp.i221 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %do.end100, label %if.end104

do.end100:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.23) #9
  %55 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %cleanup

if.end104:                                        ; preds = %if.end92
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call94, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %59 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy, align 4
  %attrs.i = getelementptr inbounds %struct.phy, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %attrs.i, align 4
  %62 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %plat_data, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool109.not = icmp eq ptr %67, null
  br i1 %tobool109.not, label %if.end104.if.end118_crit_edge, label %if.then110

if.end104.if.end118_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then110:                                       ; preds = %if.end104
  %call114 = tail call i32 %67(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then110.if.end118_crit_edge, label %if.then110.cleanup_crit_edge

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then110.if.end118_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.end118:                                        ; preds = %if.then110.if.end118_crit_edge, %if.end104.if.end118_crit_edge
  %call119 = tail call fastcc i32 @inno_hdmi_phy_clk_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end122:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %call124 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %69, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i.i = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  %70 = ptrtoint ptr %call124 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %70, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.end118.cleanup_crit_edge, %if.then110.cleanup_crit_edge, %do.end100, %dev_name.exit.cleanup_crit_edge, %if.then77, %devm_add_action_or_reset.exit, %do.end64, %do.end55, %if.then41, %if.then29, %if.then20, %if.then13, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %8, %if.then20 ], [ %14, %if.then29 ], [ %20, %if.then41 ], [ %retval.0.i.ph, %do.end55 ], [ %retval.0.i212.ph, %do.end64 ], [ %42, %if.then77 ], [ %57, %do.end100 ], [ %spec.select.i, %if.end122 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i214, %devm_add_action_or_reset.exit ], [ %call88, %dev_name.exit.cleanup_crit_edge ], [ %call114, %if.then110.cleanup_crit_edge ], [ %call119, %if.end118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_phy_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %refpclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %refpclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %refpclk, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %sysclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysclk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_hardirq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %val.i39 = alloca i32, align 4
  %val.i35 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !144
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %dev_id, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %4 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i35) #6
  %5 = ptrtoint ptr %val.i35 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i35, align 4, !annotation !144
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i37 = call i32 @regmap_read(ptr noundef %7, i32 noundef 24, ptr noundef nonnull %val.i35) #6
  %8 = ptrtoint ptr %val.i35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i35, align 4
  %conv.i38 = trunc i32 %9 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i35) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i39) #6
  %10 = ptrtoint ptr %val.i39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i39, align 4, !annotation !144
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i41 = call i32 @regmap_read(ptr noundef %12, i32 noundef 32, ptr noundef nonnull %val.i39) #6
  %13 = ptrtoint ptr %val.i39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i39, align 4
  %conv.i42 = trunc i32 %14 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i39) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not = icmp eq i8 %conv.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %conv.i44 = and i32 %4, 255
  %call.i45 = call i32 @regmap_write(ptr noundef %16, i32 noundef 16, i32 noundef %conv.i44) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i38)
  %tobool6.not = icmp eq i8 %conv.i38, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %conv.i47 = and i32 %9, 255
  %call.i48 = call i32 @regmap_write(ptr noundef %18, i32 noundef 24, i32 noundef %conv.i47) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i42)
  %tobool10.not = icmp eq i8 %conv.i42, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %conv.i50 = and i32 %14, 255
  %call.i51 = call i32 @regmap_write(ptr noundef %20, i32 noundef 32, i32 noundef %conv.i50) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %21 = select i1 %tobool.not, i1 %tobool6.not, i1 false
  %22 = select i1 %21, i1 %tobool10.not, i1 false
  %retval.0 = select i1 %22, i32 1, i32 2
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inno_hdmi_phy_clk_register(ptr noundef %inno) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inno, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %4 = getelementptr inbounds i8, ptr %init, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #6
  %refoclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 5
  %6 = ptrtoint ptr %refoclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refoclk, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %7) #6
  %8 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %12 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.31, ptr %init, align 4
  %plat_data = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 7
  %13 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plat_data, align 4
  %clk_ops = getelementptr inbounds %struct.inno_hdmi_phy_drv_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %clk_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_ops, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ops, align 4
  %call3 = call i32 @of_property_read_string(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull %init) #6
  %hw = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 9
  %init4 = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %init4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %init, ptr %init4, align 4
  %call6 = call ptr @devm_clk_register(ptr noundef %1, ptr noundef %hw) #6
  %phyclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 10
  %19 = ptrtoint ptr %phyclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6, ptr %phyclk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call6 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %20) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %call12) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %call12, %do.end16 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
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
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat_data = getelementptr inbounds %struct.inno_hdmi_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_data, align 4
  %phy_cfg_table = getelementptr inbounds %struct.inno_hdmi_phy_drv_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %phy_cfg_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_cfg_table, align 4
  %pixclock = getelementptr inbounds %struct.inno_hdmi_phy, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixclock, align 4
  %phy.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.phy, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attrs.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge [
    i32 4, label %entry.sw.bb.i_crit_edge
    i32 5, label %entry.sw.bb.i_crit_edge100
    i32 6, label %entry.sw.bb.i_crit_edge101
    i32 10, label %entry.sw.bb.i_crit_edge102
    i32 12, label %entry.sw.bb.i_crit_edge103
    i32 16, label %entry.sw.bb.i_crit_edge104
  ]

entry.sw.bb.i_crit_edge104:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge103:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge102:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge101:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %inno_hdmi_phy_get_tmdsclk.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge100, %entry.sw.bb.i_crit_edge101, %entry.sw.bb.i_crit_edge102, %entry.sw.bb.i_crit_edge103, %entry.sw.bb.i_crit_edge104
  %conv.i = zext i32 %7 to i64
  %conv16.i = zext i32 %11 to i64
  %mul.i = mul nuw nsw i64 %conv16.i, %conv.i
  %div5.i = lshr i64 %mul.i, 3
  %conv2.i = trunc i64 %div5.i to i32
  br label %inno_hdmi_phy_get_tmdsclk.exit

inno_hdmi_phy_get_tmdsclk.exit:                   ; preds = %sw.bb.i, %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge
  %retval.0.i84 = phi i32 [ %conv2.i, %sw.bb.i ], [ %7, %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84)
  %tobool.not = icmp eq i32 %retval.0.i84, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %inno_hdmi_phy_get_tmdsclk.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end:                                           ; preds = %inno_hdmi_phy_get_tmdsclk.exit
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %power_on = getelementptr inbounds %struct.inno_hdmi_phy_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %power_on, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %chip_version = getelementptr inbounds %struct.inno_hdmi_phy, ptr %1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33750000, i32 %retval.0.i84)
  %cmp8.not = icmp ugt i32 %retval.0.i84, 33750000
  br i1 %cmp8.not, label %for.inc.1, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond.preheader
  %19 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip_version, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true.1, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chip_version, align 4
  %and.1 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool9.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool9.not.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

for.inc.1:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250000, i32 %retval.0.i84)
  %cmp8.not.2 = icmp ugt i32 %retval.0.i84, 74250000
  br i1 %cmp8.not.2, label %for.inc.3, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %23 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip_version, align 4
  %and.2 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool9.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool9.not.2, label %land.lhs.true.3, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %25 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip_version, align 4
  %and.3 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool9.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool9.not.3, label %land.lhs.true.3.land.lhs.true.4_crit_edge, label %land.lhs.true.3.for.end_crit_edge

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.3.land.lhs.true.4_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.4

for.inc.3:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 148500000, i32 %retval.0.i84)
  %cmp8.not.4 = icmp ugt i32 %retval.0.i84, 148500000
  br i1 %cmp8.not.4, label %for.inc.4, label %for.inc.3.land.lhs.true.4_crit_edge

for.inc.3.land.lhs.true.4_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %for.inc.3.land.lhs.true.4_crit_edge, %land.lhs.true.3.land.lhs.true.4_crit_edge
  %27 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_version, align 4
  %and.4 = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool9.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool9.not.4, label %land.lhs.true.4.land.lhs.true.5_crit_edge, label %land.lhs.true.4.for.end_crit_edge

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.4.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.5

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 297000000, i32 %retval.0.i84)
  %cmp8.not.5 = icmp ugt i32 %retval.0.i84, 297000000
  br i1 %cmp8.not.5, label %for.inc.5, label %for.inc.4.land.lhs.true.5_crit_edge

for.inc.4.land.lhs.true.5_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %for.inc.4.land.lhs.true.5_crit_edge, %land.lhs.true.4.land.lhs.true.5_crit_edge
  %29 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_version, align 4
  %and.5 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool9.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool9.not.5, label %land.lhs.true.5.land.lhs.true.6_crit_edge, label %land.lhs.true.5.for.end_crit_edge

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.5.land.lhs.true.6_crit_edge:        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.6

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 594000000, i32 %retval.0.i84)
  %cmp8.not.6 = icmp ugt i32 %retval.0.i84, 594000000
  br i1 %cmp8.not.6, label %for.inc.5.for.inc.6_crit_edge, label %for.inc.5.land.lhs.true.6_crit_edge

for.inc.5.land.lhs.true.6_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5.land.lhs.true.6_crit_edge, %land.lhs.true.5.land.lhs.true.6_crit_edge
  %31 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_version, align 4
  %and.6 = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool9.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool9.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.for.end_crit_edge

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %cfg.0.lcssa = phi ptr [ @post_pll_cfg_table, %land.lhs.true.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.post_pll_config], ptr @post_pll_cfg_table, i32 0, i32 1), %land.lhs.true.1.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.post_pll_config], ptr @post_pll_cfg_table, i32 0, i32 2), %land.lhs.true.2.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.post_pll_config], ptr @post_pll_cfg_table, i32 0, i32 3), %land.lhs.true.3.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.post_pll_config], ptr @post_pll_cfg_table, i32 0, i32 4), %land.lhs.true.4.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.post_pll_config], ptr @post_pll_cfg_table, i32 0, i32 5), %land.lhs.true.5.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.post_pll_config], ptr @post_pll_cfg_table, i32 0, i32 6), %land.lhs.true.6.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.post_pll_config], ptr @post_pll_cfg_table, i32 0, i32 7, i32 0), %for.inc.6 ]
  %cmp.not.lcssa = phi i1 [ false, %land.lhs.true.for.end_crit_edge ], [ false, %land.lhs.true.1.for.end_crit_edge ], [ false, %land.lhs.true.2.for.end_crit_edge ], [ false, %land.lhs.true.3.for.end_crit_edge ], [ false, %land.lhs.true.4.for.end_crit_edge ], [ false, %land.lhs.true.5.for.end_crit_edge ], [ false, %land.lhs.true.6.for.end_crit_edge ], [ true, %for.inc.6 ]
  br label %for.cond12

for.cond12:                                       ; preds = %for.cond12.for.cond12_crit_edge, %for.end
  %phy_cfg.0 = phi ptr [ %5, %for.end ], [ %incdec.ptr23, %for.cond12.for.cond12_crit_edge ]
  %33 = ptrtoint ptr %phy_cfg.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phy_cfg.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp14.not = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i84, i32 %34)
  %cmp18.not = icmp ugt i32 %retval.0.i84, %34
  %or.cond = select i1 %cmp14.not, i1 %cmp18.not, i1 false
  %incdec.ptr23 = getelementptr %struct.phy_config, ptr %phy_cfg.0, i32 1
  br i1 %or.cond, label %for.cond12.for.cond12_crit_edge, label %for.end24

for.cond12.for.cond12_crit_edge:                  ; preds = %for.cond12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond12

for.end24:                                        ; preds = %for.cond12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp29 = icmp eq i32 %34, 0
  %or.cond89 = select i1 %cmp.not.lcssa, i1 true, i1 %cmp29
  br i1 %or.cond89, label %for.end24.cleanup_crit_edge, label %do.body33

for.end24.cleanup_crit_edge:                      ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body33:                                        ; preds = %for.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inno_hdmi_phy_power_on.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inno_hdmi_phy_power_on, %if.then38)) #6
          to label %do.end42 [label %if.then38], !srcloc !145

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inno_hdmi_phy_power_on.__UNIQUE_ID_ddebug289, ptr noundef %36, ptr noundef nonnull @.str.28) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body33
  %phyclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %phyclk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phyclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end42.cleanup_crit_edge

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end42
  %call1.i = tail call i32 @clk_enable(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %cleanup

if.end46:                                         ; preds = %if.end.i
  %39 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %plat_data, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %power_on49 = getelementptr inbounds %struct.inno_hdmi_phy_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %power_on49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %power_on49, align 4
  %call50 = tail call i32 %44(ptr noundef %1, ptr noundef %cfg.0.lcssa, ptr noundef %phy_cfg.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end46.cleanup_crit_edge, label %if.then52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %phyclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phyclk, align 4
  tail call void @clk_disable(ptr noundef %46) #6
  tail call void @clk_unprepare(ptr noundef %46) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end46.cleanup_crit_edge, %if.then3.i, %do.end42.cleanup_crit_edge, %for.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call50, %if.then52 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.end24.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %do.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat_data = getelementptr inbounds %struct.inno_hdmi_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %power_off = getelementptr inbounds %struct.inno_hdmi_phy_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_off, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %1) #6
  %phyclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %phyclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phyclk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inno_hdmi_phy_power_off.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inno_hdmi_phy_power_off, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !145

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inno_hdmi_phy_power_off.__UNIQUE_ID_ddebug290, ptr noundef %11, ptr noundef nonnull @.str.30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3228_init(ptr nocapture noundef %inno) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 4, i32 noundef 7) #6
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 8, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 680, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %chip_version = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 8
  %6 = ptrtoint ptr %chip_version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %chip_version, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3228_power_on(ptr nocapture noundef readonly %inno, ptr nocapture noundef readonly %cfg, ptr nocapture noundef readonly %phy_cfg) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i98 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 896, i32 noundef 48, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %prediv = getelementptr inbounds %struct.post_pll_config, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %prediv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prediv, align 4
  %6 = and i8 %5, 31
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv2.i = zext i8 %6 to i32
  %call.i.i100 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 932, i32 noundef 31, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %fbdiv = getelementptr inbounds %struct.post_pll_config, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fbdiv, align 2
  %11 = lshr i16 %10, 1
  %12 = and i16 %11, 128
  %conv5 = zext i16 %12 to i32
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i.i103 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 940, i32 noundef 128, i32 noundef %conv5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fbdiv, align 2
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %19 = and i16 %16, 255
  %conv.i = zext i16 %19 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 936, i32 noundef %conv.i) #6
  %postdiv = getelementptr inbounds %struct.post_pll_config, ptr %cfg, i32 0, i32 3
  %20 = ptrtoint ptr %postdiv to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %postdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp = icmp eq i8 %21, 1
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i106 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 932, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 932, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = shl i8 %21, 3
  %25 = add i8 %24, 48
  %and17 = and i8 %25, 48
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %conv2.i110 = zext i8 %and17 to i32
  %call.i.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 940, i32 noundef 48, i32 noundef %conv2.i110, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %conv.i113 = zext i8 %29 to i32
  %call.i114 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 956, i32 noundef %conv.i113) #6
  %arrayidx.1 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.1, align 1
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %conv.i113.1 = zext i8 %33 to i32
  %call.i114.1 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 960, i32 noundef %conv.i113.1) #6
  %arrayidx.2 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.2, align 1
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %conv.i113.2 = zext i8 %37 to i32
  %call.i114.2 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 964, i32 noundef %conv.i113.2) #6
  %arrayidx.3 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.3, align 1
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %conv.i113.3 = zext i8 %41 to i32
  %call.i114.3 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 968, i32 noundef %conv.i113.3) #6
  %44 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %v, align 4
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call.i.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 896, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call.i.i118 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 900, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call.i.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 900, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 941) #6
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %call33135 = call i32 @regmap_read(ptr noundef %52, i32 noundef 940, ptr noundef nonnull %v) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33135)
  %tobool.not136 = icmp eq i32 %call33135, 0
  br i1 %tobool.not136, label %if.end.lor.lhs.false_crit_edge, label %if.end.do.end63_crit_edge

if.end.do.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then48.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %53 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %v, align 4
  %and34 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call39 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call39, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call39, %add.i
  br i1 %cmp3.i, label %for.end52, label %if.then48

if.then48:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 4
  %call33 = call i32 @regmap_read(ptr noundef %56, i32 noundef 940, ptr noundef nonnull %v) #6
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %if.then48.lor.lhs.false_crit_edge, label %if.then48.do.end63_crit_edge

if.then48.do.end63_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.then48.lor.lhs.false_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end52:                                        ; preds = %land.lhs.true
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %call45 = call i32 @regmap_read(ptr noundef %58, i32 noundef 940, ptr noundef nonnull %v) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool53.not = icmp eq i32 %call45, 0
  br i1 %tobool53.not, label %for.end52.lor.rhs_crit_edge, label %for.end52.do.end63_crit_edge

for.end52.do.end63_crit_edge:                     ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

for.end52.lor.rhs_crit_edge:                      ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end52.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %59 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %v, align 4
  %and54 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %lor.rhs.do.end63_crit_edge, label %if.end64

lor.rhs.do.end63_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

do.end63:                                         ; preds = %lor.rhs.do.end63_crit_edge, %for.end52.do.end63_crit_edge, %if.then48.do.end63_crit_edge, %if.end.do.end63_crit_edge
  %tobool53.not127.ph = phi i32 [ %call33135, %if.end.do.end63_crit_edge ], [ %call45, %for.end52.do.end63_crit_edge ], [ -110, %lor.rhs.do.end63_crit_edge ], [ %call33, %if.then48.do.end63_crit_edge ]
  %61 = ptrtoint ptr %inno to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inno, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end64:                                         ; preds = %lor.rhs
  %63 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000000, i32 %64)
  %cmp65 = icmp ugt i32 %64, 340000000
  br i1 %cmp65, label %if.then67, label %if.end64.if.end68_crit_edge

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 100) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end64.if.end68_crit_edge
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %call.i.i122 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end63
  %tobool53.not127139 = phi i32 [ 0, %if.end68 ], [ %tobool53.not127.ph, %do.end63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %tobool53.not127139
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_phy_rk3228_power_off(ptr nocapture noundef readonly %inno) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 900, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 900, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 896, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3228_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 896, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_phy_rk3228_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 896, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3228_clk_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !144
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 896, ptr noundef nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %5 = lshr i32 %4, 4
  %.lobit = and i32 %5, 1
  %6 = xor i32 %.lobit, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3228_clk_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val.i676 = alloca i32, align 4
  %val.i672 = alloca i32, align 4
  %val.i668 = alloca i32, align 4
  %val.i663 = alloca i32, align 4
  %val.i659 = alloca i32, align 4
  %val.i655 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !144
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 904, ptr noundef nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %4 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %5 = and i8 %conv.i, 31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i655) #6
  %6 = ptrtoint ptr %val.i655 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i655, align 4, !annotation !144
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i657 = call i32 @regmap_read(ptr noundef %8, i32 noundef 904, ptr noundef nonnull %val.i655) #6
  %9 = ptrtoint ptr %val.i655 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i655, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i655) #6
  %11 = shl i32 %10, 1
  %shl = and i32 %11, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i659) #6
  %12 = ptrtoint ptr %val.i659 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i659, align 4, !annotation !144
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i661 = call i32 @regmap_read(ptr noundef %14, i32 noundef 908, ptr noundef nonnull %val.i659) #6
  %15 = ptrtoint ptr %val.i659 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i659, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i659) #6
  %conv8 = and i32 %16, 255
  %or = or i32 %conv8, %shl
  %mul = mul i32 %or, %parent_rate
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i663) #6
  %17 = ptrtoint ptr %val.i663 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i663, align 4, !annotation !144
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i665 = call i32 @regmap_read(ptr noundef %19, i32 noundef 904, ptr noundef nonnull %val.i663) #6
  %20 = ptrtoint ptr %val.i663 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i663, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i663) #6
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.else206, label %if.then194

if.then194:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %narrow653 = mul nuw i8 %5, 5
  %mul17 = zext i8 %narrow653 to i32
  br label %if.end463

if.else206:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i668) #6
  %23 = ptrtoint ptr %val.i668 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i668, align 4, !annotation !144
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i670 = call i32 @regmap_read(ptr noundef %25, i32 noundef 912, ptr noundef nonnull %val.i668) #6
  %26 = ptrtoint ptr %val.i668 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i668, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i668) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i672) #6
  %28 = ptrtoint ptr %val.i672 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i672, align 4, !annotation !144
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i674 = call i32 @regmap_read(ptr noundef %30, i32 noundef 912, ptr noundef nonnull %val.i672) #6
  %31 = ptrtoint ptr %val.i672 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i672, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i672) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i676) #6
  %33 = ptrtoint ptr %val.i676 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %val.i676, align 4, !annotation !144
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i678 = call i32 @regmap_read(ptr noundef %35, i32 noundef 916, ptr noundef nonnull %val.i676) #6
  %36 = ptrtoint ptr %val.i676 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i676, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i676) #6
  %conv.i671 = trunc i32 %27 to i8
  %38 = and i8 %conv.i671, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %39 = icmp ult i8 %38, 2
  %conv.i675 = trunc i32 %32 to i8
  %40 = lshr i8 %conv.i675, 5
  %41 = and i8 %40, 3
  %narrow = add nuw nsw i8 %41, 2
  %cond238.in = select i1 %39, i8 %narrow, i8 %38
  %cond238 = zext i8 %cond238.in to i32
  %conv229 = zext i8 %5 to i32
  %mul239 = mul nuw nsw i32 %cond238, %conv229
  %42 = and i32 %37, 31
  %mul241 = mul nuw nsw i32 %mul239, %42
  %mul242 = shl nuw nsw i32 %mul241, 1
  br label %if.end463

if.end463:                                        ; preds = %if.else206, %if.then194
  %mul242.pn = phi i32 [ %mul242, %if.else206 ], [ %mul17, %if.then194 ]
  %vco.0.off0 = udiv i32 %mul, %mul242.pn
  %pixclock = getelementptr i8, ptr %hw, i32 16
  %43 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %vco.0.off0, ptr %pixclock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inno_hdmi_phy_rk3228_clk_recalc_rate.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inno_hdmi_phy_rk3228_clk_recalc_rate, %if.then474)) #6
          to label %do.end [label %if.then474], !srcloc !145

if.then474:                                       ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %46 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixclock, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inno_hdmi_phy_rk3228_clk_recalc_rate.__UNIQUE_ID_ddebug291, ptr noundef %45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %47) #6
  br label %do.end

do.end:                                           ; preds = %if.then474, %if.end463
  ret i32 %vco.0.off0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3228_clk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = urem i32 %rate, 1000
  %mul = sub i32 %rate, %0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %1 = phi i32 [ 27000000, %entry ], [ %5, %for.inc.for.body_crit_edge ]
  %cfg.015 = phi ptr [ @pre_pll_cfg_table, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul)
  %cmp2 = icmp eq i32 %1, %mul
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %fracdiv = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.015, i32 0, i32 12
  %2 = ptrtoint ptr %fracdiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fracdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.pre_pll_config, ptr %cfg.015, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %. = phi i32 [ %mul, %land.lhs.true.for.end_crit_edge ], [ -22, %for.inc.for.end_crit_edge ]
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3228_clk_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -36
  %phy.i = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attrs.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge [
    i32 4, label %entry.sw.bb.i_crit_edge
    i32 5, label %entry.sw.bb.i_crit_edge183
    i32 6, label %entry.sw.bb.i_crit_edge184
    i32 10, label %entry.sw.bb.i_crit_edge185
    i32 12, label %entry.sw.bb.i_crit_edge186
    i32 16, label %entry.sw.bb.i_crit_edge187
  ]

entry.sw.bb.i_crit_edge187:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge186:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge185:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge184:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge183:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %inno_hdmi_phy_get_tmdsclk.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge183, %entry.sw.bb.i_crit_edge184, %entry.sw.bb.i_crit_edge185, %entry.sw.bb.i_crit_edge186, %entry.sw.bb.i_crit_edge187
  %conv.i = zext i32 %rate to i64
  %conv16.i = zext i32 %3 to i64
  %mul.i = mul nuw nsw i64 %conv16.i, %conv.i
  %div5.i = lshr i64 %mul.i, 3
  %conv2.i = trunc i64 %div5.i to i32
  br label %inno_hdmi_phy_get_tmdsclk.exit

inno_hdmi_phy_get_tmdsclk.exit:                   ; preds = %sw.bb.i, %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge
  %retval.0.i137 = phi i32 [ %conv2.i, %sw.bb.i ], [ %rate, %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %5 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %v, align 4, !annotation !144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inno_hdmi_phy_rk3228_clk_set_rate.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inno_hdmi_phy_rk3228_clk_set_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %inno_hdmi_phy_get_tmdsclk.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inno_hdmi_phy_rk3228_clk_set_rate.__UNIQUE_ID_ddebug292, ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %rate, i32 noundef %retval.0.i137) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %inno_hdmi_phy_get_tmdsclk.exit
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %attrs.i.i.i = getelementptr inbounds %struct.phy, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attrs.i.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %11, label %do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge [
    i32 4, label %do.end.sw.bb.i.i_crit_edge
    i32 5, label %do.end.sw.bb.i.i_crit_edge188
    i32 6, label %do.end.sw.bb.i.i_crit_edge189
    i32 10, label %do.end.sw.bb.i.i_crit_edge190
    i32 12, label %do.end.sw.bb.i.i_crit_edge191
    i32 16, label %do.end.sw.bb.i.i_crit_edge192
  ]

do.end.sw.bb.i.i_crit_edge192:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge191:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge190:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge189:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge188:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %inno_hdmi_phy_get_tmdsclk.exit.i

sw.bb.i.i:                                        ; preds = %do.end.sw.bb.i.i_crit_edge, %do.end.sw.bb.i.i_crit_edge188, %do.end.sw.bb.i.i_crit_edge189, %do.end.sw.bb.i.i_crit_edge190, %do.end.sw.bb.i.i_crit_edge191, %do.end.sw.bb.i.i_crit_edge192
  %conv.i.i = zext i32 %rate to i64
  %conv16.i.i = zext i32 %11 to i64
  %mul.i.i = mul nuw nsw i64 %conv16.i.i, %conv.i.i
  %div5.i.i = lshr i64 %mul.i.i, 3
  %conv2.i.i = trunc i64 %div5.i.i to i32
  br label %inno_hdmi_phy_get_tmdsclk.exit.i

inno_hdmi_phy_get_tmdsclk.exit.i:                 ; preds = %sw.bb.i.i, %do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv2.i.i, %sw.bb.i.i ], [ %rate, %do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %inno_hdmi_phy_get_tmdsclk.exit.i
  %13 = phi i32 [ 27000000, %inno_hdmi_phy_get_tmdsclk.exit.i ], [ %17, %for.inc.i.for.body.i_crit_edge ]
  %cfg.017.i = phi ptr [ @pre_pll_cfg_table, %inno_hdmi_phy_get_tmdsclk.exit.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %rate)
  %cmp2.i = icmp eq i32 %13, %rate
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tmdsclock3.i = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 1
  %14 = ptrtoint ptr %tmdsclock3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tmdsclock3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %retval.0.i.i)
  %cmp4.i = icmp eq i32 %15, %retval.0.i.i
  br i1 %cmp4.i, label %inno_hdmi_phy_get_pre_pll_cfg.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.pre_pll_config, ptr %cfg.017.i, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %for.inc.i.if.then7_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then7_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

inno_hdmi_phy_get_pre_pll_cfg.exit:               ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %cfg.017.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge, label %if.end9

inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge: ; preds = %inno_hdmi_phy_get_pre_pll_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge, %for.inc.i.if.then7_crit_edge
  %retval.0.i138160 = phi ptr [ %cfg.017.i, %inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.i.if.then7_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i138160 to i32
  br label %cleanup

if.end9:                                          ; preds = %inno_hdmi_phy_get_pre_pll_cfg.exit
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 896, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %fbdiv = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 3
  %21 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fbdiv, align 2
  %23 = lshr i16 %22, 1
  %24 = trunc i16 %23 to i8
  %and = and i8 %24, -128
  %vco_div_5_en = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 11
  %25 = ptrtoint ptr %vco_div_5_en to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vco_div_5_en, align 1
  %shl11 = shl i8 %26, 5
  %and12 = and i8 %shl11, 32
  %or = or i8 %and12, %and
  %prediv = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 2
  %27 = ptrtoint ptr %prediv to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %prediv, align 4
  %29 = and i8 %28, 31
  %or16 = or i8 %or, %29
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %conv2.i140 = zext i8 %or16 to i32
  %call.i.i141 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 904, i32 noundef 191, i32 noundef %conv2.i140, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fbdiv, align 2
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %36 = and i16 %33, 255
  %conv.i143 = zext i16 %36 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 908, i32 noundef %conv.i143) #6
  %pclk_div_b = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 8
  %37 = ptrtoint ptr %pclk_div_b to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pclk_div_b, align 4
  %shl24 = shl i8 %38, 5
  %and25 = and i8 %shl24, 96
  %pclk_div_a = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 7
  %39 = ptrtoint ptr %pclk_div_a to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pclk_div_a, align 1
  %41 = and i8 %40, 31
  %or29 = or i8 %and25, %41
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %conv2.i145 = zext i8 %or29 to i32
  %call.i.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 912, i32 noundef 127, i32 noundef %conv2.i145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %pclk_div_c = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 9
  %44 = ptrtoint ptr %pclk_div_c to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pclk_div_c, align 1
  %shl32 = shl i8 %45, 5
  %and33 = and i8 %shl32, 96
  %pclk_div_d = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 10
  %46 = ptrtoint ptr %pclk_div_d to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pclk_div_d, align 2
  %48 = and i8 %47, 31
  %or37 = or i8 %and33, %48
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %conv2.i148 = zext i8 %or37 to i32
  %call.i.i149 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 916, i32 noundef 127, i32 noundef %conv2.i148, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %tmds_div_c = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 6
  %51 = ptrtoint ptr %tmds_div_c to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmds_div_c, align 2
  %shl40 = shl i8 %52, 4
  %and41 = and i8 %shl40, 48
  %tmds_div_a = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 4
  %53 = ptrtoint ptr %tmds_div_a to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tmds_div_a, align 4
  %shl43 = shl i8 %54, 2
  %and44 = and i8 %shl43, 12
  %or45 = or i8 %and44, %and41
  %tmds_div_b = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 5
  %55 = ptrtoint ptr %tmds_div_b to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tmds_div_b, align 1
  %57 = and i8 %56, 3
  %or49 = or i8 %or45, %57
  %58 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i, align 4
  %conv2.i151 = zext i8 %or49 to i32
  %call.i.i152 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 920, i32 noundef 63, i32 noundef %conv2.i151, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %call.i.i154 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 896, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call51 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call51, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 666) #6
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %call65173 = call i32 @regmap_read(ptr noundef %63, i32 noundef 928, ptr noundef nonnull %v) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65173)
  %tobool66.not174 = icmp eq i32 %call65173, 0
  br i1 %tobool66.not174, label %if.end9.lor.lhs.false_crit_edge, label %if.end9.do.end95_crit_edge

if.end9.do.end95_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95

if.end9.lor.lhs.false_crit_edge:                  ; preds = %if.end9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then81.lor.lhs.false_crit_edge, %if.end9.lor.lhs.false_crit_edge
  %64 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %v, align 4
  %and67 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call72 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call72, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call72, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then81

if.then81:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %66 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i, align 4
  %call65 = call i32 @regmap_read(ptr noundef %67, i32 noundef 928, ptr noundef nonnull %v) #6
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then81.lor.lhs.false_crit_edge, label %if.then81.do.end95_crit_edge

if.then81.do.end95_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95

if.then81.lor.lhs.false_crit_edge:                ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %call78 = call i32 @regmap_read(ptr noundef %69, i32 noundef 928, ptr noundef nonnull %v) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool85.not = icmp eq i32 %call78, 0
  br i1 %tobool85.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end95_crit_edge

for.end.do.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %70 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %v, align 4
  %and86 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %lor.rhs.do.end95_crit_edge, label %if.end97

lor.rhs.do.end95_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95

do.end95:                                         ; preds = %lor.rhs.do.end95_crit_edge, %for.end.do.end95_crit_edge, %if.then81.do.end95_crit_edge, %if.end9.do.end95_crit_edge
  %tobool85.not165.ph = phi i32 [ %call65173, %if.end9.do.end95_crit_edge ], [ %call78, %for.end.do.end95_crit_edge ], [ -110, %lor.rhs.do.end95_crit_edge ], [ %call65, %if.then81.do.end95_crit_edge ]
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end97:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %pixclock = getelementptr i8, ptr %hw, i32 16
  %74 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %rate, ptr %pixclock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end95, %if.then7
  %retval.0 = phi i32 [ %18, %if.then7 ], [ %tobool85.not165.ph, %do.end95 ], [ 0, %if.end97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_init(ptr nocapture noundef %inno) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !144
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 4, i32 noundef 7) #6
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i27 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 8, i32 noundef 145) #6
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i29 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 20, i32 noundef 0) #6
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i31 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 28, i32 noundef 0) #6
  %chip_version = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 8
  %9 = ptrtoint ptr %chip_version to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %chip_version, align 4
  %10 = ptrtoint ptr %inno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inno, align 4
  %call = tail call ptr @nvmem_cell_get(ptr noundef %11, ptr noundef nonnull @.str.46) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  %. = select i1 %cmp, i32 -517, i32 0
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = call ptr @nvmem_cell_read(ptr noundef %call, ptr noundef nonnull %len) #6
  call void @nvmem_cell_put(ptr noundef %call) #6
  %cmp.i32 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp9 = icmp eq i32 %13, 1
  br i1 %cmp9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call5, align 1
  %conv = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv, 1
  %16 = ptrtoint ptr %chip_version to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %chip_version, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  call void @kfree(ptr noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %., %if.then ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_power_on(ptr noundef readonly %inno, ptr nocapture noundef readonly %cfg, ptr nocapture noundef readonly %phy_cfg) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i164 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 680, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %fbdiv = getelementptr inbounds %struct.post_pll_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fbdiv, align 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = and i16 %5, 255
  %conv.i = zext i16 %8 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 688, i32 noundef %conv.i) #6
  %postdiv = getelementptr inbounds %struct.post_pll_config, ptr %cfg, i32 0, i32 3
  %9 = ptrtoint ptr %postdiv to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %postdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i167 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 680, i32 noundef 2) #6
  %13 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fbdiv, align 2
  %15 = lshr i16 %14, 1
  %16 = trunc i16 %15 to i8
  %and7 = and i8 %16, -128
  %prediv = getelementptr inbounds %struct.post_pll_config, ptr %cfg, i32 0, i32 1
  %17 = ptrtoint ptr %prediv to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %prediv, align 4
  %19 = and i8 %18, 31
  %or = or i8 %and7, %19
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %conv.i169 = zext i8 %or to i32
  %call.i170 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 684, i32 noundef %conv.i169) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = lshr i8 %10, 1
  %narrow = add nuw i8 %22, 3
  %23 = and i8 %narrow, 3
  %and14 = zext i8 %23 to i32
  %24 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and14, ptr %v, align 4
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i173 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 692, i32 noundef %and14) #6
  %27 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fbdiv, align 2
  %29 = lshr i16 %28, 1
  %30 = trunc i16 %29 to i8
  %and20 = and i8 %30, -128
  %prediv21 = getelementptr inbounds %struct.post_pll_config, ptr %cfg, i32 0, i32 1
  %31 = ptrtoint ptr %prediv21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %prediv21, align 4
  %33 = and i8 %32, 31
  %or25 = or i8 %and20, %33
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %conv.i175 = zext i8 %or25 to i32
  %call.i176 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 684, i32 noundef %conv.i175) #6
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call.i178 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 680, i32 noundef 14) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 0
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %conv.i180 = zext i8 %39 to i32
  %call.i181 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 724, i32 noundef %conv.i180) #6
  %arrayidx.1 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.1, align 1
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %conv.i180.1 = zext i8 %43 to i32
  %call.i181.1 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 728, i32 noundef %conv.i180.1) #6
  %arrayidx.2 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.2, align 1
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %conv.i180.2 = zext i8 %47 to i32
  %call.i181.2 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 732, i32 noundef %conv.i180.2) #6
  %arrayidx.3 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.3, align 1
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %conv.i180.3 = zext i8 %51 to i32
  %call.i181.3 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 736, i32 noundef %conv.i180.3) #6
  %arrayidx.4 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.4, align 1
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %conv.i180.4 = zext i8 %55 to i32
  %call.i181.4 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 740, i32 noundef %conv.i180.4) #6
  %arrayidx.5 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.5, align 1
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %conv.i180.5 = zext i8 %59 to i32
  %call.i181.5 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 744, i32 noundef %conv.i180.5) #6
  %arrayidx.6 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 6
  %62 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.6, align 1
  %64 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i, align 4
  %conv.i180.6 = zext i8 %63 to i32
  %call.i181.6 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 748, i32 noundef %conv.i180.6) #6
  %arrayidx.7 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 7
  %66 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.7, align 1
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %conv.i180.7 = zext i8 %67 to i32
  %call.i181.7 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 752, i32 noundef %conv.i180.7) #6
  %arrayidx.8 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 8
  %70 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.8, align 1
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 4
  %conv.i180.8 = zext i8 %71 to i32
  %call.i181.8 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 756, i32 noundef %conv.i180.8) #6
  %arrayidx.9 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 9
  %74 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.9, align 1
  %76 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i, align 4
  %conv.i180.9 = zext i8 %75 to i32
  %call.i181.9 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 760, i32 noundef %conv.i180.9) #6
  %arrayidx.10 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 10
  %78 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.10, align 1
  %80 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i, align 4
  %conv.i180.10 = zext i8 %79 to i32
  %call.i181.10 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef 764, i32 noundef %conv.i180.10) #6
  %arrayidx.11 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 11
  %82 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.11, align 1
  %84 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i, align 4
  %conv.i180.11 = zext i8 %83 to i32
  %call.i181.11 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 768, i32 noundef %conv.i180.11) #6
  %arrayidx.12 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 12
  %86 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.12, align 1
  %88 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i, align 4
  %conv.i180.12 = zext i8 %87 to i32
  %call.i181.12 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 772, i32 noundef %conv.i180.12) #6
  %arrayidx.13 = getelementptr %struct.phy_config, ptr %phy_cfg, i32 0, i32 1, i32 13
  %90 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.13, align 1
  %92 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap.i, align 4
  %conv.i180.13 = zext i8 %91 to i32
  %call.i181.13 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef 776, i32 noundef %conv.i180.13) #6
  %94 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap.i, align 4
  %call.i.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 800, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %96 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i, align 4
  %call.i.i185.1 = tail call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 804, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %98 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap.i, align 4
  %call.i.i185.2 = tail call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 808, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %100 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap.i, align 4
  %call.i.i185.3 = tail call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 812, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %102 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %phy_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000000, i32 %103)
  %cmp38 = icmp ugt i32 %103, 340000000
  br i1 %cmp38, label %if.then40, label %if.else50

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sysclk = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 4
  %104 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sysclk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %105) #6
  %div41 = udiv i32 %call, 100000
  %106 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div41, ptr %v, align 4
  %shr42 = lshr i32 %div41, 8
  %conv46 = or i32 %shr42, 128
  %107 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i, align 4
  %call.i188 = tail call i32 @regmap_write(ptr noundef %108, i32 noundef 788, i32 noundef %conv46) #6
  %109 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i, align 4
  %conv.i190 = and i32 %div41, 255
  %call.i191 = tail call i32 @regmap_write(ptr noundef %110, i32 noundef 792, i32 noundef %conv.i190) #6
  %111 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i, align 4
  %call.i193 = tail call i32 @regmap_write(ptr noundef %112, i32 noundef 796, i32 noundef 6) #6
  %113 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap.i, align 4
  %call.i.i195 = tail call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 788, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end65

if.else50:                                        ; preds = %if.end
  %115 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap.i, align 4
  %call.i197 = tail call i32 @regmap_write(ptr noundef %116, i32 noundef 788, i32 noundef 128) #6
  %117 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %phy_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000000, i32 %118)
  %cmp52 = icmp ugt i32 %118, 165000000
  br i1 %cmp52, label %if.then54, label %if.else50.if.end55_crit_edge

if.else50.if.end55_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then54:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap.i, align 4
  %call.i.i199 = tail call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 800, i32 noundef 63, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.else50.if.end55_crit_edge
  %121 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap.i, align 4
  %call.i.i203 = tail call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef 804, i32 noundef 63, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %123 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i, align 4
  %call.i.i203.1 = tail call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef 808, i32 noundef 63, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %125 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap.i, align 4
  %call.i.i203.2 = tail call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef 812, i32 noundef 63, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %127 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 3, ptr %v, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end55, %if.then40
  %128 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap.i, align 4
  %call.i.i205 = tail call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 680, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %130 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap.i, align 4
  %call.i.i207 = tail call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 704, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %132 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap.i, align 4
  %call.i.i209 = tail call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 712, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call66 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call66, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1079) #6
  %134 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap.i, align 4
  %call79230 = call i32 @regmap_read(ptr noundef %135, i32 noundef 700, ptr noundef nonnull %v) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79230)
  %tobool.not231 = icmp eq i32 %call79230, 0
  br i1 %tobool.not231, label %if.end65.lor.lhs.false_crit_edge, label %if.end65.do.end109_crit_edge

if.end65.do.end109_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

if.end65.lor.lhs.false_crit_edge:                 ; preds = %if.end65
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then94.lor.lhs.false_crit_edge, %if.end65.lor.lhs.false_crit_edge
  %136 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %v, align 4
  %and80 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call85 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call85, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call85, %add.i
  br i1 %cmp3.i, label %for.end98, label %if.then94

if.then94:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %138 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap.i, align 4
  %call79 = call i32 @regmap_read(ptr noundef %139, i32 noundef 700, ptr noundef nonnull %v) #6
  %tobool.not = icmp eq i32 %call79, 0
  br i1 %tobool.not, label %if.then94.lor.lhs.false_crit_edge, label %if.then94.do.end109_crit_edge

if.then94.do.end109_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

if.then94.lor.lhs.false_crit_edge:                ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end98:                                        ; preds = %land.lhs.true
  %140 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap.i, align 4
  %call91 = call i32 @regmap_read(ptr noundef %141, i32 noundef 700, ptr noundef nonnull %v) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool99.not = icmp eq i32 %call91, 0
  br i1 %tobool99.not, label %for.end98.lor.rhs_crit_edge, label %for.end98.do.end109_crit_edge

for.end98.do.end109_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

for.end98.lor.rhs_crit_edge:                      ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end98.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %142 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %v, align 4
  %and100 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %lor.rhs.do.end109_crit_edge, label %if.end110

lor.rhs.do.end109_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

do.end109:                                        ; preds = %lor.rhs.do.end109_crit_edge, %for.end98.do.end109_crit_edge, %if.then94.do.end109_crit_edge, %if.end65.do.end109_crit_edge
  %tobool99.not220.ph = phi i32 [ %call79230, %if.end65.do.end109_crit_edge ], [ %call91, %for.end98.do.end109_crit_edge ], [ -110, %lor.rhs.do.end109_crit_edge ], [ %call79, %if.then94.do.end109_crit_edge ]
  %144 = ptrtoint ptr %inno to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %inno, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end110:                                        ; preds = %lor.rhs
  %146 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %phy_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000000, i32 %147)
  %cmp112 = icmp ugt i32 %147, 340000000
  br i1 %cmp112, label %if.then114, label %if.end110.if.end115_crit_edge

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 100) #6
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end110.if.end115_crit_edge
  %148 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap.i, align 4
  %call.i.i211 = call i32 @regmap_update_bits_base(ptr noundef %149, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %150 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap.i, align 4
  %call.i213 = call i32 @regmap_write(ptr noundef %151, i32 noundef 20, i32 noundef 34) #6
  %152 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap.i, align 4
  %call.i215 = call i32 @regmap_write(ptr noundef %153, i32 noundef 28, i32 noundef 34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %do.end109
  %tobool99.not220234 = phi i32 [ 0, %if.end115 ], [ %tobool99.not220.ph, %do.end109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %tobool99.not220234
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_phy_rk3328_power_off(ptr nocapture noundef readonly %inno) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.inno_hdmi_phy, ptr %inno, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 712, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 704, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 680, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 20, i32 noundef 0) #6
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i11 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 28, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 640, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_phy_rk3328_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 640, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_clk_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !144
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 640, ptr noundef nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_clk_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val.i732 = alloca i32, align 4
  %val.i728 = alloca i32, align 4
  %val.i724 = alloca i32, align 4
  %val.i720 = alloca i32, align 4
  %val.i715 = alloca i32, align 4
  %val.i711 = alloca i32, align 4
  %val.i707 = alloca i32, align 4
  %val.i703 = alloca i32, align 4
  %val.i699 = alloca i32, align 4
  %val.i695 = alloca i32, align 4
  %val.i691 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !144
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 644, ptr noundef nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %4 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %5 = and i8 %conv.i, 63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i691) #6
  %6 = ptrtoint ptr %val.i691 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i691, align 4, !annotation !144
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i693 = call i32 @regmap_read(ptr noundef %8, i32 noundef 648, ptr noundef nonnull %val.i691) #6
  %9 = ptrtoint ptr %val.i691 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i691, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i691) #6
  %11 = shl i32 %10, 8
  %shl = and i32 %11, 3840
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i695) #6
  %12 = ptrtoint ptr %val.i695 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i695, align 4, !annotation !144
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i697 = call i32 @regmap_read(ptr noundef %14, i32 noundef 652, ptr noundef nonnull %val.i695) #6
  %15 = ptrtoint ptr %val.i695 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i695, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i695) #6
  %conv8 = and i32 %16, 255
  %or = or i32 %conv8, %shl
  %mul = mul i32 %or, %parent_rate
  %conv12 = zext i32 %mul to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i699) #6
  %17 = ptrtoint ptr %val.i699 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i699, align 4, !annotation !144
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i701 = call i32 @regmap_read(ptr noundef %19, i32 noundef 648, ptr noundef nonnull %val.i699) #6
  %20 = ptrtoint ptr %val.i699 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i699, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i699) #6
  %22 = and i32 %21, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i703) #6
  %23 = ptrtoint ptr %val.i703 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i703, align 4, !annotation !144
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i705 = call i32 @regmap_read(ptr noundef %25, i32 noundef 844, ptr noundef nonnull %val.i703) #6
  %26 = ptrtoint ptr %val.i703 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i703, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i703) #6
  %conv17 = and i32 %27, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i707) #6
  %28 = ptrtoint ptr %val.i707 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i707, align 4, !annotation !144
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i709 = call i32 @regmap_read(ptr noundef %30, i32 noundef 840, ptr noundef nonnull %val.i707) #6
  %31 = ptrtoint ptr %val.i707 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i707, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i707) #6
  %conv19 = shl i32 %32, 8
  %shl20 = and i32 %conv19, 65280
  %or21 = or i32 %conv17, %shl20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i711) #6
  %33 = ptrtoint ptr %val.i711 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %val.i711, align 4, !annotation !144
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i713 = call i32 @regmap_read(ptr noundef %35, i32 noundef 836, ptr noundef nonnull %val.i711) #6
  %36 = ptrtoint ptr %val.i711 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i711, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i711) #6
  %conv23 = shl i32 %37, 16
  %shl24 = and i32 %conv23, 16711680
  %or25 = or i32 %shl24, %or21
  %mul26 = mul i32 %or25, %parent_rate
  %add = add i32 %mul26, 8388608
  %div27688 = lshr i32 %add, 24
  %conv28 = zext i32 %div27688 to i64
  %add29 = add nuw nsw i64 %conv28, %conv12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vco.0 = phi i64 [ %add29, %if.then ], [ %conv12, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i715) #6
  %38 = ptrtoint ptr %val.i715 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i715, align 4, !annotation !144
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call.i717 = call i32 @regmap_read(ptr noundef %40, i32 noundef 640, ptr noundef nonnull %val.i715) #6
  %41 = ptrtoint ptr %val.i715 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i715, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i715) #6
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool33.not = icmp eq i32 %43, 0
  br i1 %tobool33.not, label %if.else229, label %if.then34

if.then34:                                        ; preds = %if.end
  %conv35 = zext i8 %5 to i32
  %mul36 = mul nuw nsw i32 %conv35, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %vco.0)
  %cmp213 = icmp ult i64 %vco.0, 4294967296
  br i1 %cmp213, label %if.then217, label %if.else223, !prof !146

if.then217:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %conv218 = trunc i64 %vco.0 to i32
  %div221 = udiv i32 %conv218, %mul36
  br label %if.end493

if.else223:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %44 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul36, i64 %vco.0) #10, !srcloc !147
  %asmresult1.i = extractvalue { i64, i64 } %44, 1
  %extract.t815 = trunc i64 %asmresult1.i to i32
  br label %if.end493

if.else229:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i720) #6
  %45 = ptrtoint ptr %val.i720 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %val.i720, align 4, !annotation !144
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call.i722 = call i32 @regmap_read(ptr noundef %47, i32 noundef 660, ptr noundef nonnull %val.i720) #6
  %48 = ptrtoint ptr %val.i720 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i720, align 4
  %conv.i723 = trunc i32 %49 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i720) #6
  %50 = and i8 %conv.i723, 31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i724) #6
  %51 = ptrtoint ptr %val.i724 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i724, align 4, !annotation !144
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call.i726 = call i32 @regmap_read(ptr noundef %53, i32 noundef 660, ptr noundef nonnull %val.i724) #6
  %54 = ptrtoint ptr %val.i724 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i724, align 4
  %conv.i727 = trunc i32 %55 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i724) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i728) #6
  %56 = ptrtoint ptr %val.i728 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i728, align 4, !annotation !144
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %call.i730 = call i32 @regmap_read(ptr noundef %58, i32 noundef 664, ptr noundef nonnull %val.i728) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i728) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i732) #6
  %59 = ptrtoint ptr %val.i732 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %val.i732, align 4, !annotation !144
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %call.i734 = call i32 @regmap_read(ptr noundef %61, i32 noundef 664, ptr noundef nonnull %val.i732) #6
  %62 = ptrtoint ptr %val.i732 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i732, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i732) #6
  %64 = and i32 %63, 31
  %conv259 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp261 = icmp eq i8 %50, 1
  %65 = lshr i8 %conv.i727, 5
  %66 = and i8 %65, 3
  %narrow = add nuw nsw i8 %66, 2
  %cond268.in = select i1 %cmp261, i8 %narrow, i8 %50
  %cond268 = zext i8 %cond268.in to i32
  %mul269 = mul nuw nsw i32 %cond268, %conv259
  %mul271 = mul nuw nsw i32 %mul269, %64
  %mul272 = shl nuw nsw i32 %mul271, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %vco.0)
  %cmp473 = icmp ult i64 %vco.0, 4294967296
  br i1 %cmp473, label %if.then481, label %if.else487, !prof !146

if.then481:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #8
  %conv482 = trunc i64 %vco.0 to i32
  %div485 = udiv i32 %conv482, %mul272
  br label %if.end493

if.else487:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #8
  %67 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul272, i64 %vco.0) #10, !srcloc !147
  %asmresult1.i760 = extractvalue { i64, i64 } %67, 1
  %extract.t811 = trunc i64 %asmresult1.i760 to i32
  br label %if.end493

if.end493:                                        ; preds = %if.else487, %if.then481, %if.else223, %if.then217
  %vco.1.off0 = phi i32 [ %div485, %if.then481 ], [ %extract.t811, %if.else487 ], [ %div221, %if.then217 ], [ %extract.t815, %if.else223 ]
  %pixclock = getelementptr i8, ptr %hw, i32 16
  %68 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %vco.1.off0, ptr %pixclock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inno_hdmi_phy_rk3328_clk_recalc_rate.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inno_hdmi_phy_rk3328_clk_recalc_rate, %if.then504)) #6
          to label %do.end [label %if.then504], !srcloc !145

if.then504:                                       ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 4
  %71 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pixclock, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inno_hdmi_phy_rk3328_clk_recalc_rate.__UNIQUE_ID_ddebug293, ptr noundef %70, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.48, i32 noundef %72) #6
  br label %do.end

do.end:                                           ; preds = %if.then504, %if.end493
  ret i32 %vco.1.off0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_clk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = urem i32 %rate, 1000
  %mul = sub i32 %rate, %0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %cfg.0 = phi ptr [ @pre_pll_cfg_table, %entry ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %1 = ptrtoint ptr %cfg.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cfg.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %mul)
  %cmp2 = icmp eq i32 %2, %mul
  %or.cond = or i1 %cmp.not, %cmp2
  %incdec.ptr = getelementptr %struct.pre_pll_config, ptr %cfg.0, i32 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %. = select i1 %cmp.not, i32 -22, i32 %2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_phy_rk3328_clk_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -36
  %phy.i = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attrs.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %3, label %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge [
    i32 4, label %entry.sw.bb.i_crit_edge
    i32 5, label %entry.sw.bb.i_crit_edge226
    i32 6, label %entry.sw.bb.i_crit_edge227
    i32 10, label %entry.sw.bb.i_crit_edge228
    i32 12, label %entry.sw.bb.i_crit_edge229
    i32 16, label %entry.sw.bb.i_crit_edge230
  ]

entry.sw.bb.i_crit_edge230:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge229:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge228:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge227:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge226:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %inno_hdmi_phy_get_tmdsclk.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge226, %entry.sw.bb.i_crit_edge227, %entry.sw.bb.i_crit_edge228, %entry.sw.bb.i_crit_edge229, %entry.sw.bb.i_crit_edge230
  %conv.i = zext i32 %rate to i64
  %conv16.i = zext i32 %3 to i64
  %mul.i = mul nuw nsw i64 %conv16.i, %conv.i
  %div5.i = lshr i64 %mul.i, 3
  %conv2.i = trunc i64 %div5.i to i32
  br label %inno_hdmi_phy_get_tmdsclk.exit

inno_hdmi_phy_get_tmdsclk.exit:                   ; preds = %sw.bb.i, %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge
  %retval.0.i165 = phi i32 [ %conv2.i, %sw.bb.i ], [ %rate, %entry.inno_hdmi_phy_get_tmdsclk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inno_hdmi_phy_rk3328_clk_set_rate.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inno_hdmi_phy_rk3328_clk_set_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %inno_hdmi_phy_get_tmdsclk.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inno_hdmi_phy_rk3328_clk_set_rate.__UNIQUE_ID_ddebug294, ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49, i32 noundef %rate, i32 noundef %retval.0.i165) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %inno_hdmi_phy_get_tmdsclk.exit
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %attrs.i.i.i = getelementptr inbounds %struct.phy, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attrs.i.i.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %10, label %do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge [
    i32 4, label %do.end.sw.bb.i.i_crit_edge
    i32 5, label %do.end.sw.bb.i.i_crit_edge231
    i32 6, label %do.end.sw.bb.i.i_crit_edge232
    i32 10, label %do.end.sw.bb.i.i_crit_edge233
    i32 12, label %do.end.sw.bb.i.i_crit_edge234
    i32 16, label %do.end.sw.bb.i.i_crit_edge235
  ]

do.end.sw.bb.i.i_crit_edge235:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge234:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge233:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge232:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge231:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %inno_hdmi_phy_get_tmdsclk.exit.i

sw.bb.i.i:                                        ; preds = %do.end.sw.bb.i.i_crit_edge, %do.end.sw.bb.i.i_crit_edge231, %do.end.sw.bb.i.i_crit_edge232, %do.end.sw.bb.i.i_crit_edge233, %do.end.sw.bb.i.i_crit_edge234, %do.end.sw.bb.i.i_crit_edge235
  %conv.i.i = zext i32 %rate to i64
  %conv16.i.i = zext i32 %10 to i64
  %mul.i.i = mul nuw nsw i64 %conv16.i.i, %conv.i.i
  %div5.i.i = lshr i64 %mul.i.i, 3
  %conv2.i.i = trunc i64 %div5.i.i to i32
  br label %inno_hdmi_phy_get_tmdsclk.exit.i

inno_hdmi_phy_get_tmdsclk.exit.i:                 ; preds = %sw.bb.i.i, %do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv2.i.i, %sw.bb.i.i ], [ %rate, %do.end.inno_hdmi_phy_get_tmdsclk.exit.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %inno_hdmi_phy_get_tmdsclk.exit.i
  %12 = phi i32 [ 27000000, %inno_hdmi_phy_get_tmdsclk.exit.i ], [ %16, %for.inc.i.for.body.i_crit_edge ]
  %cfg.017.i = phi ptr [ @pre_pll_cfg_table, %inno_hdmi_phy_get_tmdsclk.exit.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %rate)
  %cmp2.i = icmp eq i32 %12, %rate
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tmdsclock3.i = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 1
  %13 = ptrtoint ptr %tmdsclock3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmdsclock3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %retval.0.i.i)
  %cmp4.i = icmp eq i32 %14, %retval.0.i.i
  br i1 %cmp4.i, label %inno_hdmi_phy_get_pre_pll_cfg.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.pre_pll_config, ptr %cfg.017.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %for.inc.i.if.then7_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then7_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

inno_hdmi_phy_get_pre_pll_cfg.exit:               ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %cfg.017.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge, label %if.end9

inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge: ; preds = %inno_hdmi_phy_get_pre_pll_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge, %for.inc.i.if.then7_crit_edge
  %retval.0.i166203 = phi ptr [ %cfg.017.i, %inno_hdmi_phy_get_pre_pll_cfg.exit.if.then7_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.i.if.then7_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i166203 to i32
  br label %cleanup

if.end9:                                          ; preds = %inno_hdmi_phy_get_pre_pll_cfg.exit
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 640, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %vco_div_5_en = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 11
  %20 = ptrtoint ptr %vco_div_5_en to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vco_div_5_en, align 1
  %shl = shl i8 %21, 5
  %and = and i8 %shl, 32
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %conv2.i168 = zext i8 %and to i32
  %call.i.i169 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 640, i32 noundef 32, i32 noundef %conv2.i168, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %prediv = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 2
  %24 = ptrtoint ptr %prediv to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prediv, align 4
  %26 = and i8 %25, 63
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %conv.i171 = zext i8 %26 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 644, i32 noundef %conv.i171) #6
  %fracdiv = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 12
  %29 = ptrtoint ptr %fracdiv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fracdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not = icmp eq i32 %30, 0
  %spec.store.select = select i1 %tobool15.not, i32 112, i32 64
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select, ptr %val, align 4
  %fbdiv = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 3
  %32 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fbdiv, align 2
  %34 = lshr i16 %33, 8
  %35 = and i16 %34, 15
  %and20 = zext i16 %35 to i32
  %or21 = or i32 %spec.store.select, %and20
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call.i174 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 648, i32 noundef %or21) #6
  %38 = ptrtoint ptr %fbdiv to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fbdiv, align 2
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %42 = and i16 %39, 255
  %conv.i176 = zext i16 %42 to i32
  %call.i177 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 652, i32 noundef %conv.i176) #6
  %pclk_div_a = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 7
  %43 = ptrtoint ptr %pclk_div_a to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pclk_div_a, align 1
  %45 = and i8 %44, 31
  %pclk_div_b = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 8
  %46 = ptrtoint ptr %pclk_div_b to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pclk_div_b, align 4
  %shl32 = shl i8 %47, 5
  %and33 = and i8 %shl32, 96
  %or34 = or i8 %and33, %45
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %conv.i179 = zext i8 %or34 to i32
  %call.i180 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 660, i32 noundef %conv.i179) #6
  %pclk_div_c = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 9
  %50 = ptrtoint ptr %pclk_div_c to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pclk_div_c, align 1
  %shl37 = shl i8 %51, 5
  %and38 = and i8 %shl37, 96
  %pclk_div_d = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 10
  %52 = ptrtoint ptr %pclk_div_d to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pclk_div_d, align 2
  %54 = and i8 %53, 31
  %or42 = or i8 %and38, %54
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 4
  %conv.i182 = zext i8 %or42 to i32
  %call.i183 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 664, i32 noundef %conv.i182) #6
  %tmds_div_c = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 6
  %57 = ptrtoint ptr %tmds_div_c to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tmds_div_c, align 2
  %59 = and i8 %58, 3
  %tmds_div_a = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 4
  %60 = ptrtoint ptr %tmds_div_a to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tmds_div_a, align 4
  %shl48 = shl i8 %61, 4
  %and49 = and i8 %shl48, 48
  %or50 = or i8 %and49, %59
  %tmds_div_b = getelementptr inbounds %struct.pre_pll_config, ptr %cfg.017.i, i32 0, i32 5
  %62 = ptrtoint ptr %tmds_div_b to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tmds_div_b, align 1
  %shl52 = shl i8 %63, 2
  %and53 = and i8 %shl52, 12
  %or54 = or i8 %or50, %and53
  %64 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i, align 4
  %conv.i185 = zext i8 %or54 to i32
  %call.i186 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 656, i32 noundef %conv.i185) #6
  %66 = ptrtoint ptr %fracdiv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fracdiv, align 4
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %conv.i188 = and i32 %67, 255
  %call.i189 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 844, i32 noundef %conv.i188) #6
  %70 = ptrtoint ptr %fracdiv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fracdiv, align 4
  %shr61 = lshr i32 %71, 8
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 4
  %conv.i191 = and i32 %shr61, 255
  %call.i192 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 840, i32 noundef %conv.i191) #6
  %74 = ptrtoint ptr %fracdiv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fracdiv, align 4
  %shr66 = lshr i32 %75, 16
  %76 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i, align 4
  %conv.i194 = and i32 %shr66, 255
  %call.i195 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 836, i32 noundef %conv.i194) #6
  %78 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i, align 4
  %call.i.i197 = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 640, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call70 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call70, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 817) #6
  %80 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i, align 4
  %call84216 = call i32 @regmap_read(ptr noundef %81, i32 noundef 676, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84216)
  %tobool85.not217 = icmp eq i32 %call84216, 0
  br i1 %tobool85.not217, label %if.end9.lor.lhs.false_crit_edge, label %if.end9.do.end114_crit_edge

if.end9.do.end114_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

if.end9.lor.lhs.false_crit_edge:                  ; preds = %if.end9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then100.lor.lhs.false_crit_edge, %if.end9.lor.lhs.false_crit_edge
  %82 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val, align 4
  %and86 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call91 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call91, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call91, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then100

if.then100:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %84 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i, align 4
  %call84 = call i32 @regmap_read(ptr noundef %85, i32 noundef 676, ptr noundef nonnull %val) #6
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then100.lor.lhs.false_crit_edge, label %if.then100.do.end114_crit_edge

if.then100.do.end114_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

if.then100.lor.lhs.false_crit_edge:               ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %86 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap.i, align 4
  %call97 = call i32 @regmap_read(ptr noundef %87, i32 noundef 676, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool104.not = icmp eq i32 %call97, 0
  br i1 %tobool104.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end114_crit_edge

for.end.do.end114_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %88 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val, align 4
  %and105 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %lor.rhs.do.end114_crit_edge, label %if.end116

lor.rhs.do.end114_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

do.end114:                                        ; preds = %lor.rhs.do.end114_crit_edge, %for.end.do.end114_crit_edge, %if.then100.do.end114_crit_edge, %if.end9.do.end114_crit_edge
  %tobool104.not208.ph = phi i32 [ %call84216, %if.end9.do.end114_crit_edge ], [ %call97, %for.end.do.end114_crit_edge ], [ -110, %lor.rhs.do.end114_crit_edge ], [ %call84, %if.then100.do.end114_crit_edge ]
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end116:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %pixclock = getelementptr i8, ptr %hw, i32 16
  %92 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %rate, ptr %pixclock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end114, %if.then7
  %retval.0 = phi i32 [ %17, %if.then7 ], [ %tobool104.not208.ph, %do.end114 ], [ 0, %if.end116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !102, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !127, !129, !130, !132, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_phy_rockchip_inno_hdmi__295_1275_inno_hdmi_phy_driver_init6, !1, !"__initcall__kmod_phy_rockchip_inno_hdmi__295_1275_inno_hdmi_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1275, i32 1}
!2 = !{ptr @__exitcall_inno_hdmi_phy_driver_exit, !1, !"__exitcall_inno_hdmi_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1277, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1278, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1279, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1271, i32 11}
!12 = !{ptr @inno_hdmi_phy_driver, !13, !"inno_hdmi_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1267, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1164, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1167, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @inno_hdmi_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @inno_hdmi_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1171, i32 42}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1174, i32 3}
!28 = !{ptr @inno_hdmi_phy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @inno_hdmi_phy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1178, i32 42}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1181, i32 3}
!34 = !{ptr @inno_hdmi_phy_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @inno_hdmi_phy_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1188, i32 3}
!38 = !{ptr @inno_hdmi_phy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @inno_hdmi_phy_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1198, i32 3}
!42 = !{ptr @inno_hdmi_phy_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @inno_hdmi_phy_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @inno_hdmi_phy_probe._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1208, i32 17}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1227, i32 3}
!49 = !{ptr @inno_hdmi_phy_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @inno_hdmi_phy_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @inno_hdmi_phy_regmap_config, !52, !"inno_hdmi_phy_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1128, i32 35}
!53 = !{ptr @inno_hdmi_phy_ops, !54, !"inno_hdmi_phy_ops", i1 false, i1 false}
!54 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 517, i32 29}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 467, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @inno_hdmi_phy_power_on._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @inno_hdmi_phy_power_on._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 486, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @inno_hdmi_phy_power_on.__UNIQUE_ID_ddebug289, !61, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!64 = !{ptr @post_pll_cfg_table, !65, !"post_pll_cfg_table", i1 false, i1 false}
!65 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 322, i32 37}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 512, i32 2}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @inno_hdmi_phy_power_off.__UNIQUE_ID_ddebug290, !67, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 850, i32 14}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 854, i32 30}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 861, i32 3}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @inno_hdmi_phy_clk_register._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @inno_hdmi_phy_clk_register._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 867, i32 3}
!81 = !{ptr @inno_hdmi_phy_clk_register._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @inno_hdmi_phy_clk_register._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @inno_hdmi_phy_of_match, !84, !"inno_hdmi_phy_of_match", i1 false, i1 false}
!84 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1256, i32 34}
!85 = !{ptr @rk3228_hdmi_phy_drv_data, !86, !"rk3228_hdmi_phy_drv_data", i1 false, i1 false}
!86 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1116, i32 44}
!87 = !{ptr @rk3228_hdmi_phy_ops, !88, !"rk3228_hdmi_phy_ops", i1 false, i1 false}
!88 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 962, i32 39}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 943, i32 3}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @inno_hdmi_phy_rk3228_power_on._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @inno_hdmi_phy_rk3228_power_on._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @inno_hdmi_phy_rk3228_clk_ops, !95, !"inno_hdmi_phy_rk3228_clk_ops", i1 false, i1 false}
!95 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 677, i32 29}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 595, i32 2}
!98 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @inno_hdmi_phy_rk3228_clk_recalc_rate.__UNIQUE_ID_ddebug291, !97, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!100 = !{ptr @pre_pll_cfg_table, !101, !"pre_pll_cfg_table", i1 false, i1 false}
!101 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 293, i32 36}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 628, i32 2}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @inno_hdmi_phy_rk3228_clk_set_rate.__UNIQUE_ID_ddebug292, !103, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 668, i32 3}
!108 = !{ptr @inno_hdmi_phy_rk3228_clk_set_rate._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @inno_hdmi_phy_rk3228_clk_set_rate._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @rk3228_phy_cfg, !111, !"rk3228_phy_cfg", i1 false, i1 false}
!111 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 334, i32 32}
!112 = !{ptr @rk3328_hdmi_phy_drv_data, !113, !"rk3328_hdmi_phy_drv_data", i1 false, i1 false}
!113 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1122, i32 44}
!114 = !{ptr @rk3328_hdmi_phy_ops, !115, !"rk3328_hdmi_phy_ops", i1 false, i1 false}
!115 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1110, i32 39}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 990, i32 35}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 1081, i32 3}
!120 = !{ptr @inno_hdmi_phy_rk3328_power_on._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @inno_hdmi_phy_rk3328_power_on._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @inno_hdmi_phy_rk3328_clk_ops, !123, !"inno_hdmi_phy_rk3328_clk_ops", i1 false, i1 false}
!123 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 828, i32 29}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 749, i32 2}
!126 = !{ptr @inno_hdmi_phy_rk3328_clk_recalc_rate.__UNIQUE_ID_ddebug293, !125, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 782, i32 2}
!129 = !{ptr @inno_hdmi_phy_rk3328_clk_set_rate.__UNIQUE_ID_ddebug294, !128, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!130 = !{ptr @inno_hdmi_phy_rk3328_clk_set_rate._entry, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 819, i32 3}
!132 = !{ptr @inno_hdmi_phy_rk3328_clk_set_rate._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @rk3328_phy_cfg, !134, !"rk3328_phy_cfg", i1 false, i1 false}
!134 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c", i32 353, i32 32}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{i64 2148758180, i64 2148758185, i64 2148758198, i64 2148758242, i64 2148758276, i64 2148758297}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{i64 2148666899, i64 2148667179, i64 2148667513, i64 2148667847}
