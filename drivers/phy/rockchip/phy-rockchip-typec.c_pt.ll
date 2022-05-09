; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-typec.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-typec.c"
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
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_reg = type { i16, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rockchip_usb3phy_port_cfg = type { i32, %struct.usb3phy_reg, %struct.usb3phy_reg, %struct.usb3phy_reg, %struct.usb3phy_reg, %struct.usb3phy_reg, %struct.usb3phy_reg, %struct.usb3phy_reg }
%struct.usb3phy_reg = type { i32, i32, i32 }
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
%struct.rockchip_typec_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8 }
%union.extcon_property_value = type { i32 }

@__initcall__kmod_phy_rockchip_typec__289_1226_rockchip_typec_phy_driver_init6 = internal global ptr @rockchip_typec_phy_driver_init, section ".initcall6.init", align 4
@rockchip_typec_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_typec_phy_probe, ptr @rockchip_typec_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_typec_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_typec_phy_driver_exit = internal global ptr @rockchip_typec_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"phy_rockchip_typec.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [65 x i8] c"phy_rockchip_typec.author=Kever Yang <kever.yang@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"phy_rockchip_typec.description=Rockchip USB TYPE-C PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [64 x i8] c"phy_rockchip_typec.file=drivers/phy/rockchip/phy-rockchip-typec\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [34 x i8] c"phy_rockchip_typec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip-typec-phy\00", [45 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-typec-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_usb3phy_port_cfgs }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy configs are not assigned!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_typec_phy_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/rockchip/phy-rockchip-typec.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry_ptr = internal global ptr @rockchip_typec_phy_probe._entry, section ".printk_index", align 4
@rockchip_typec_phy_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no phy-config can be matched with %pOFn node\0A\00", [50 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry_ptr.8 = internal global ptr @rockchip_typec_phy_probe._entry.6, section ".printk_index", align 4
@rockchip_typec_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tcphy->lock\00", [19 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid or missing extcon\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry_ptr.12 = internal global ptr @rockchip_typec_phy_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dp-port\00", [24 x i8] zeroinitializer }, align 32
@rockchip_dp_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @rockchip_dp_phy_power_on, ptr @rockchip_dp_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb3-port\00", [22 x i8] zeroinitializer }, align 32
@rockchip_usb3_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @rockchip_usb3_phy_power_on, ptr @rockchip_usb3_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create phy: %pOFn\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry_ptr.17 = internal global ptr @rockchip_typec_phy_probe._entry.15, section ".printk_index", align 4
@rockchip_typec_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register phy provider\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_typec_phy_probe._entry_ptr.20 = internal global ptr @rockchip_typec_phy_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1047, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not find grf dt node\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcphy_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry_ptr = internal global ptr @tcphy_parse_dt._entry, section ".printk_index", align 4
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcpdcore\00", [23 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 1053, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not get uphy core clock\0A\00", [33 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry_ptr.27 = internal global ptr @tcphy_parse_dt._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcpdphy-ref\00", [20 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not get uphy ref clock\0A\00", [34 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry_ptr.31 = internal global ptr @tcphy_parse_dt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uphy\00", [27 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.3, i32 1065, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no uphy_rst reset control found\0A\00", [63 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry_ptr.35 = internal global ptr @tcphy_parse_dt._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uphy-pipe\00", [22 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.23, ptr @.str.3, i32 1071, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no pipe_rst reset control found\0A\00", [63 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry_ptr.39 = internal global ptr @tcphy_parse_dt._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uphy-tcphy\00", [21 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.23, ptr @.str.3, i32 1077, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no tcphy_rst reset control found\0A\00", [62 x i8] zeroinitializer }, align 32
@tcphy_parse_dt._entry_ptr.43 = internal global ptr @tcphy_parse_dt._entry.41, section ".printk_index", align 4
@rockchip_dp_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 987, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to wait TCPHY enter A2\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_dp_phy_power_on\00", [39 x i8] zeroinitializer }, align 32
@rockchip_dp_phy_power_on._entry_ptr = internal global ptr @rockchip_dp_phy_power_on._entry, section ".printk_index", align 4
@rockchip_dp_phy_power_on._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 1000, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to wait TCPHY enter A0\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_dp_phy_power_on._entry_ptr.48 = internal global ptr @rockchip_dp_phy_power_on._entry.46, section ".printk_index", align 4
@tcphy_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"get superspeed property failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcphy_get_mode\00", [17 x i8] zeroinitializer }, align 32
@tcphy_get_mode._entry_ptr = internal global ptr @tcphy_get_mode._entry, section ".printk_index", align 4
@tcphy_get_mode._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"get polarity property failed\0A\00", [34 x i8] zeroinitializer }, align 32
@tcphy_get_mode._entry_ptr.53 = internal global ptr @tcphy_get_mode._entry.51, section ".printk_index", align 4
@tcphy_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to prepare_enable core clock\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcphy_phy_init\00", [17 x i8] zeroinitializer }, align 32
@tcphy_phy_init._entry_ptr = internal global ptr @tcphy_phy_init._entry, section ".printk_index", align 4
@tcphy_phy_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to prepare_enable ref clock\0A\00", [60 x i8] zeroinitializer }, align 32
@tcphy_phy_init._entry_ptr.58 = internal global ptr @tcphy_phy_init._entry.56, section ".printk_index", align 4
@tcphy_phy_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 779, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wait pma ready timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@tcphy_phy_init._entry_ptr.61 = internal global ptr @tcphy_phy_init._entry.59, section ".printk_index", align 4
@dp_pll_cfg = internal constant { [19 x %struct.phy_reg], [40 x i8] } { [19 x %struct.phy_reg] [%struct.phy_reg { i16 240, i32 656 }, %struct.phy_reg { i16 24, i32 660 }, %struct.phy_reg { i16 12473, i32 644 }, %struct.phy_reg { i16 540, i32 720 }, %struct.phy_reg { i16 0, i32 724 }, %struct.phy_reg { i16 5, i32 728 }, %struct.phy_reg { i16 53, i32 736 }, %struct.phy_reg { i16 32542, i32 740 }, %struct.phy_reg { i16 32, i32 732 }, %struct.phy_reg { i16 0, i32 220 }, %struct.phy_reg { i16 0, i32 1864 }, %struct.phy_reg { i16 0, i32 1856 }, %struct.phy_reg { i16 0, i32 1860 }, %struct.phy_reg { i16 6, i32 1876 }, %struct.phy_reg { i16 69, i32 1880 }, %struct.phy_reg { i16 8, i32 1884 }, %struct.phy_reg { i16 256, i32 1888 }, %struct.phy_reg { i16 7, i32 1892 }, %struct.phy_reg { i16 4, i32 1896 }], [40 x i8] zeroinitializer }, align 32
@usb3_pll_cfg = internal constant { [14 x %struct.phy_reg], [48 x i8] } { [14 x %struct.phy_reg] [%struct.phy_reg { i16 240, i32 528 }, %struct.phy_reg { i16 24, i32 532 }, %struct.phy_reg { i16 208, i32 592 }, %struct.phy_reg { i16 19018, i32 596 }, %struct.phy_reg { i16 52, i32 600 }, %struct.phy_reg { i16 494, i32 608 }, %struct.phy_reg { i16 32515, i32 612 }, %struct.phy_reg { i16 32, i32 604 }, %struct.phy_reg { i16 0, i32 1800 }, %struct.phy_reg { i16 0, i32 1792 }, %struct.phy_reg { i16 0, i32 1796 }, %struct.phy_reg { i16 7, i32 1812 }, %struct.phy_reg { i16 69, i32 1816 }, %struct.phy_reg { i16 8, i32 1820 }], [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rk3399_usb3phy_port_cfgs = internal constant { [3 x %struct.rockchip_usb3phy_port_cfg], [88 x i8] } { [3 x %struct.rockchip_usb3phy_port_cfg] [%struct.rockchip_usb3phy_port_cfg { i32 -8650752, %struct.usb3phy_reg { i32 58752, i32 0, i32 16 }, %struct.usb3phy_reg { i32 58752, i32 3, i32 19 }, %struct.usb3phy_reg { i32 58760, i32 14, i32 30 }, %struct.usb3phy_reg { i32 58816, i32 0, i32 0 }, %struct.usb3phy_reg { i32 9268, i32 0, i32 16 }, %struct.usb3phy_reg { i32 9268, i32 12, i32 28 }, %struct.usb3phy_reg { i32 25192, i32 19, i32 19 } }, %struct.rockchip_usb3phy_port_cfg { i32 -8388608, %struct.usb3phy_reg { i32 58764, i32 0, i32 16 }, %struct.usb3phy_reg { i32 58764, i32 3, i32 19 }, %struct.usb3phy_reg { i32 58772, i32 14, i32 30 }, %struct.usb3phy_reg { i32 58816, i32 16, i32 16 }, %struct.usb3phy_reg { i32 9284, i32 0, i32 16 }, %struct.usb3phy_reg { i32 9284, i32 12, i32 28 }, %struct.usb3phy_reg { i32 25192, i32 3, i32 19 } }, %struct.rockchip_usb3phy_port_cfg zeroinitializer], [88 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"rockchip_typec_phy_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1217, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1221, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"rockchip_typec_phy_dt_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1207, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1117, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1139, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1150, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1160, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1170, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"rockchip_dp_phy_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1035, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1173, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"rockchip_usb3_phy_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 939, i32 29 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1180, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1192, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1045, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1047, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1051, i32 38 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1053, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1057, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1059, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1063, i32 48 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1065, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1069, i32 48 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1071, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1075, i32 49 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1077, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 987, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1000, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 834, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 845, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 730, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 736, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 779, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [11 x i8] c"dp_pll_cfg\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 411, i32 23 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"usb3_pll_cfg\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 394, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant [25 x i8] c"rk3399_usb3phy_port_cfgs\00", align 1
@___asan_gen_.246 = private constant [45 x i8] c"../drivers/phy/rockchip/phy-rockchip-typec.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 433, i32 47 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_rockchip_typec_phy_driver_exit, ptr @__initcall__kmod_phy_rockchip_typec__289_1226_rockchip_typec_phy_driver_init6, ptr @rockchip_dp_phy_power_on._entry, ptr @rockchip_dp_phy_power_on._entry.46, ptr @rockchip_dp_phy_power_on._entry_ptr, ptr @rockchip_dp_phy_power_on._entry_ptr.48, ptr @rockchip_typec_phy_driver_exit, ptr @rockchip_typec_phy_probe._entry, ptr @rockchip_typec_phy_probe._entry.10, ptr @rockchip_typec_phy_probe._entry.15, ptr @rockchip_typec_phy_probe._entry.18, ptr @rockchip_typec_phy_probe._entry.6, ptr @rockchip_typec_phy_probe._entry_ptr, ptr @rockchip_typec_phy_probe._entry_ptr.12, ptr @rockchip_typec_phy_probe._entry_ptr.17, ptr @rockchip_typec_phy_probe._entry_ptr.20, ptr @rockchip_typec_phy_probe._entry_ptr.8, ptr @tcphy_get_mode._entry, ptr @tcphy_get_mode._entry.51, ptr @tcphy_get_mode._entry_ptr, ptr @tcphy_get_mode._entry_ptr.53, ptr @tcphy_parse_dt._entry, ptr @tcphy_parse_dt._entry.25, ptr @tcphy_parse_dt._entry.29, ptr @tcphy_parse_dt._entry.33, ptr @tcphy_parse_dt._entry.37, ptr @tcphy_parse_dt._entry.41, ptr @tcphy_parse_dt._entry_ptr, ptr @tcphy_parse_dt._entry_ptr.27, ptr @tcphy_parse_dt._entry_ptr.31, ptr @tcphy_parse_dt._entry_ptr.35, ptr @tcphy_parse_dt._entry_ptr.39, ptr @tcphy_parse_dt._entry_ptr.43, ptr @tcphy_phy_init._entry, ptr @tcphy_phy_init._entry.56, ptr @tcphy_phy_init._entry.59, ptr @tcphy_phy_init._entry_ptr, ptr @tcphy_phy_init._entry_ptr.58, ptr @tcphy_phy_init._entry_ptr.61, ptr @rockchip_typec_phy_driver, ptr @.str, ptr @rockchip_typec_phy_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @rockchip_typec_phy_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @rockchip_dp_phy_ops, ptr @.str.14, ptr @rockchip_usb3_phy_ops, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @dp_pll_cfg, ptr @usb3_pll_cfg, ptr @rk3399_usb3phy_port_cfgs], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb3_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_typec_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_parse_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_parse_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_parse_dt._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_parse_dt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_parse_dt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_phy_power_on._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_get_mode._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_phy_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcphy_phy_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_pll_cfg to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_pll_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_usb3phy_port_cfgs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_typec_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_typec_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_typec_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_typec_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_typec_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_match_table, align 4
  %call2 = tail call ptr @of_match_device(ptr noundef %5, ptr noundef %dev1) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %if.end6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup86

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7) #6
  %base = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup86

if.end14:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not170 = icmp eq i32 %13, 0
  br i1 %tobool16.not170, label %if.end14.while.end_crit_edge, label %while.body.lr.ph

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end14
  %14 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp182 = icmp eq i32 %13, %15
  br i1 %cmp182, label %while.body.lr.ph.if.then19_crit_edge, label %while.body.lr.ph.while.cond_crit_edge

while.body.lr.ph.while.cond_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.cond

while.body.lr.ph.if.then19_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.body.lr.ph.while.cond_crit_edge
  %index.0171183 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.body.lr.ph.while.cond_crit_edge ]
  %inc = add i32 %index.0171183, 1
  %arrayidx = getelementptr %struct.rockchip_usb3phy_port_cfg, ptr %11, i32 %inc
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq i32 %17, %15
  br i1 %cmp, label %while.body.if.then19_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.if.then19_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %while.body.if.then19_crit_edge, %while.body.lr.ph.if.then19_crit_edge
  %arrayidx172.lcssa = phi ptr [ %11, %while.body.lr.ph.if.then19_crit_edge ], [ %arrayidx, %while.body.if.then19_crit_edge ]
  %port_cfgs = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %port_cfgs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx172.lcssa, ptr %port_cfgs, align 4
  br label %while.end

while.end:                                        ; preds = %if.then19, %while.cond.while.end_crit_edge, %if.end14.while.end_crit_edge
  %port_cfgs22 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %port_cfgs22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_cfgs22, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %do.end27, label %if.end28

do.end27:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %1) #9
  br label %cleanup86

if.end28:                                         ; preds = %while.end
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i154 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %22, ptr noundef nonnull @.str.21) #6
  %grf_regs.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %grf_regs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i154, ptr %grf_regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i154, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end28.tcphy_parse_dt.exit_crit_edge, label %if.end.i

if.end28.tcphy_parse_dt.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcphy_parse_dt.exit

if.end.i:                                         ; preds = %if.end28
  %call5.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.24) #6
  %clk_core.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i, ptr %clk_core.i, align 4
  %cmp.i78.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78.i, label %if.end.i.tcphy_parse_dt.exit_crit_edge, label %if.end13.i

if.end.i.tcphy_parse_dt.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcphy_parse_dt.exit

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #6
  %clk_ref.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14.i, ptr %clk_ref.i, align 4
  %cmp.i79.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.i, label %if.end13.i.tcphy_parse_dt.exit_crit_edge, label %if.end22.i

if.end13.i.tcphy_parse_dt.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcphy_parse_dt.exit

if.end22.i:                                       ; preds = %if.end13.i
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %uphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %uphy_rst.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %uphy_rst.i, align 4
  %cmp.i80.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80.i, label %if.end22.i.tcphy_parse_dt.exit_crit_edge, label %if.end31.i

if.end22.i.tcphy_parse_dt.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcphy_parse_dt.exit

if.end31.i:                                       ; preds = %if.end22.i
  %call.i.i81.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %pipe_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %pipe_rst.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i81.i, ptr %pipe_rst.i, align 4
  %cmp.i82.i = icmp ugt ptr %call.i.i81.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.i, label %if.end31.i.tcphy_parse_dt.exit_crit_edge, label %if.end40.i

if.end31.i.tcphy_parse_dt.exit_crit_edge:         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcphy_parse_dt.exit

if.end40.i:                                       ; preds = %if.end31.i
  %call.i.i83.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %tcphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %tcphy_rst.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i83.i, ptr %tcphy_rst.i, align 4
  %cmp.i84.i = icmp ugt ptr %call.i.i83.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.i, label %if.end40.i.tcphy_parse_dt.exit_crit_edge, label %if.end40.i.if.end32_crit_edge

if.end40.i.if.end32_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end40.i.tcphy_parse_dt.exit_crit_edge:         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcphy_parse_dt.exit

tcphy_parse_dt.exit:                              ; preds = %if.end40.i.tcphy_parse_dt.exit_crit_edge, %if.end31.i.tcphy_parse_dt.exit_crit_edge, %if.end22.i.tcphy_parse_dt.exit_crit_edge, %if.end13.i.tcphy_parse_dt.exit_crit_edge, %if.end.i.tcphy_parse_dt.exit_crit_edge, %if.end28.tcphy_parse_dt.exit_crit_edge
  %.str.42.sink.i = phi ptr [ @.str.22, %if.end28.tcphy_parse_dt.exit_crit_edge ], [ @.str.26, %if.end.i.tcphy_parse_dt.exit_crit_edge ], [ @.str.30, %if.end13.i.tcphy_parse_dt.exit_crit_edge ], [ @.str.34, %if.end22.i.tcphy_parse_dt.exit_crit_edge ], [ @.str.38, %if.end31.i.tcphy_parse_dt.exit_crit_edge ], [ @.str.42, %if.end40.i.tcphy_parse_dt.exit_crit_edge ]
  %tcphy_rst.sink.i = phi ptr [ %grf_regs.i, %if.end28.tcphy_parse_dt.exit_crit_edge ], [ %clk_core.i, %if.end.i.tcphy_parse_dt.exit_crit_edge ], [ %clk_ref.i, %if.end13.i.tcphy_parse_dt.exit_crit_edge ], [ %uphy_rst.i, %if.end22.i.tcphy_parse_dt.exit_crit_edge ], [ %pipe_rst.i, %if.end31.i.tcphy_parse_dt.exit_crit_edge ], [ %tcphy_rst.i, %if.end40.i.tcphy_parse_dt.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.42.sink.i) #9
  %29 = ptrtoint ptr %tcphy_rst.sink.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tcphy_rst.sink.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %tcphy_parse_dt.exit.if.end32_crit_edge, label %tcphy_parse_dt.exit.cleanup86_crit_edge

tcphy_parse_dt.exit.cleanup86_crit_edge:          ; preds = %tcphy_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

tcphy_parse_dt.exit.if.end32_crit_edge:           ; preds = %tcphy_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %tcphy_parse_dt.exit.if.end32_crit_edge, %if.end40.i.if.end32_crit_edge
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @rockchip_typec_phy_probe.__key) #6
  %34 = ptrtoint ptr %port_cfgs22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_cfgs22, align 4
  %tcphy_rst.i155 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 8
  %36 = ptrtoint ptr %tcphy_rst.i155 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tcphy_rst.i155, align 4
  %call.i156 = tail call i32 @reset_control_assert(ptr noundef %37) #6
  %uphy_rst.i157 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %uphy_rst.i157 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %uphy_rst.i157, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %39) #6
  %pipe_rst.i158 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 7
  %40 = ptrtoint ptr %pipe_rst.i158 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pipe_rst.i158, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %41) #6
  %external_psm.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %35, i32 0, i32 3
  %write_enable.i.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %35, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %write_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %write_enable.i.i, align 4
  %shl.i.i = shl nuw i32 1, %43
  %enable_bit.i.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %35, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %enable_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %enable_bit.i.i, align 4
  %shl1.i.i = shl nuw i32 1, %45
  %46 = ptrtoint ptr %grf_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %grf_regs.i, align 4
  %48 = ptrtoint ptr %external_psm.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %external_psm.i, align 4
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %call.i.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %49, i32 noundef %or.i.i) #6
  %usb3tousb2_en.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %35, i32 0, i32 2
  %write_enable.i12.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %35, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %write_enable.i12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %write_enable.i12.i, align 4
  %shl.i13.i = shl nuw i32 1, %51
  %52 = ptrtoint ptr %grf_regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %grf_regs.i, align 4
  %54 = ptrtoint ptr %usb3tousb2_en.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usb3tousb2_en.i, align 4
  %call.i16.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %55, i32 noundef %shl.i13.i) #6
  %mode.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 12
  %56 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %mode.i, align 1
  %call37 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev1, i32 noundef 0) #6
  %extcon = getelementptr inbounds %struct.rockchip_typec_phy, ptr %call.i, i32 0, i32 2
  %57 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call37, ptr %extcon, align 4
  %cmp.i159 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then40, label %if.end32.if.end57_crit_edge

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then40:                                        ; preds = %if.end32
  %magicptr = ptrtoint ptr %call37 to i32
  %58 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %do.end52 [
    i32 -19, label %if.then44
    i32 -517, label %if.then40.if.end53_crit_edge
  ]

if.then40.if.end53_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %extcon, align 4
  br label %if.end57

do.end52:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %if.then40.if.end53_crit_edge
  %60 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %extcon, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %cleanup86

if.end57:                                         ; preds = %if.then44, %if.end32.if.end57_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call58 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp59.not173 = icmp eq ptr %call58, null
  br i1 %cmp59.not173, label %if.end57.for.end_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  br label %for.body

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end57.for.body_crit_edge
  %child_np.0174 = phi ptr [ %call77, %for.inc.for.body_crit_edge ], [ %call58, %if.end57.for.body_crit_edge ]
  %call60 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child_np.0174, ptr noundef nonnull @.str.13) #6
  br i1 %call60, label %for.body.if.end69_crit_edge, label %if.else63

for.body.if.end69_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.else63:                                        ; preds = %for.body
  %call64 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child_np.0174, ptr noundef nonnull @.str.14) #6
  br i1 %call64, label %if.else63.if.end69_crit_edge, label %if.else63.for.inc_crit_edge

if.else63.for.inc_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else63.if.end69_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.end69:                                         ; preds = %if.else63.if.end69_crit_edge, %for.body.if.end69_crit_edge
  %rockchip_usb3_phy_ops.sink = phi ptr [ @rockchip_dp_phy_ops, %for.body.if.end69_crit_edge ], [ @rockchip_usb3_phy_ops, %if.else63.if.end69_crit_edge ]
  %call66 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child_np.0174, ptr noundef nonnull %rockchip_usb3_phy_ops.sink) #6
  %cmp.i160 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %cleanup, label %if.end76

if.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i161 = getelementptr inbounds %struct.device, ptr %call66, i32 0, i32 8
  %63 = ptrtoint ptr %driver_data.i.i161 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i.i161, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull %child_np.0174) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  tail call void @of_node_put(ptr noundef nonnull %child_np.0174) #6
  %64 = ptrtoint ptr %call66 to i32
  br label %cleanup86

for.inc:                                          ; preds = %if.end76, %if.else63.for.inc_crit_edge
  %call77 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child_np.0174) #6
  %cmp59.not = icmp eq ptr %call77, null
  br i1 %cmp59.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end57.for.end_crit_edge
  %call78 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i162 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end83, label %for.end.cleanup86_crit_edge

for.end.cleanup86_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

do.end83:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %65 = ptrtoint ptr %call78 to i32
  br label %cleanup86

cleanup86:                                        ; preds = %do.end83, %for.end.cleanup86_crit_edge, %cleanup, %if.end53, %tcphy_parse_dt.exit.cleanup86_crit_edge, %do.end27, %if.then11, %do.end, %entry.cleanup86_crit_edge
  %retval.2 = phi i32 [ %9, %if.then11 ], [ %64, %cleanup ], [ %65, %do.end83 ], [ %62, %if.end53 ], [ -22, %do.end27 ], [ -22, %do.end ], [ -12, %entry.cleanup86_crit_edge ], [ %31, %tcphy_parse_dt.exit.cleanup86_crit_edge ], [ 0, %for.end.cleanup86_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_typec_phy_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port_cfgs = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_cfgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_cfgs, align 4
  %lock = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call1 = tail call fastcc i32 @tcphy_get_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.unlock_ret_crit_edge, label %if.end

entry.unlock_ret_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.unlock_ret_crit_edge, label %if.end3

if.end.unlock_ret_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.end3:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv)
  %cmp4 = icmp eq i32 %call1, %conv
  br i1 %cmp4, label %if.end3.unlock_ret_crit_edge, label %if.end7

if.end3.unlock_ret_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp8 = icmp ne i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp12.not = icmp eq i8 %5, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %tcphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %tcphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcphy_rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %7) #6
  %uphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %uphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uphy_rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %9) #6
  %pipe_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %pipe_rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe_rst.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %11) #6
  %clk_core.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_core.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %clk_ref.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ref.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %if.end25

if.else:                                          ; preds = %if.end7
  br i1 %cmp12.not, label %if.then21, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = trunc i32 %call1 to i8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then14
  %conv22.sink = phi i8 [ %conv22, %if.then21 ], [ 4, %if.then14 ]
  %call23 = tail call fastcc i32 @tcphy_phy_init(ptr noundef %1, i8 noundef zeroext %conv22.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool26.not = icmp eq i32 %call23, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.end25.unlock_ret_crit_edge

if.end25.unlock_ret_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %if.end25.if.end28_crit_edge, %if.else.if.end28_crit_edge
  %uphy_dp_sel = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 7
  %write_enable.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %write_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %write_enable.i, align 4
  %shl.i = shl nuw i32 1, %17
  %enable_bit.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_bit.i, align 4
  %shl1.i = shl nuw i32 1, %19
  %grf_regs.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %grf_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grf_regs.i, align 4
  %22 = ptrtoint ptr %uphy_dp_sel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uphy_dp_sel, align 4
  %or.i = or i32 %shl1.i, %shl.i
  %call.i201 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef %or.i) #6
  %call30 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call30, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 985) #6
  %base = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr227 = getelementptr i8, ptr %25, i32 196640
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #6, !srcloc !136
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %and44228 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44228)
  %tobool45.not229 = icmp eq i32 %and44228, 0
  br i1 %tobool45.not229, label %if.end28.land.lhs.true49_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end28.land.lhs.true49_crit_edge:               ; preds = %if.end28
  br label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.then64.land.lhs.true49_crit_edge, %if.end28.land.lhs.true49_crit_edge
  %call50 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call50, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %if.then54, label %if.then64

if.then54:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr58 = getelementptr i8, ptr %29, i32 196640
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #6, !srcloc !136
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  br label %for.end

if.then64:                                        ; preds = %land.lhs.true49
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 196640
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !136
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %and44 = and i32 %35, 64
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then64.land.lhs.true49_crit_edge, label %if.then64.for.end_crit_edge

if.then64.for.end_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then64.land.lhs.true49_crit_edge:              ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true49

for.end:                                          ; preds = %if.then64.for.end_crit_edge, %if.then54, %if.end28.for.end_crit_edge
  %val.0 = phi i32 [ %31, %if.then54 ], [ %27, %if.end28.for.end_crit_edge ], [ %35, %if.then64.for.end_crit_edge ]
  %and67 = and i32 %val.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.end.power_on_finish_crit_edge, label %if.end75

for.end.power_on_finish_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_on_finish

if.end75:                                         ; preds = %for.end
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 896
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %39 = lshr i32 %38, 24
  %and.i = and i32 %39, 127
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr6.i = getelementptr i8, ptr %41, i32 960
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %43 = lshr i32 %42, 24
  %and13.i = and i32 %43, 127
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr17.i = getelementptr i8, ptr %45, i32 1056
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %47 = ashr i32 %46, 24
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr28.i = getelementptr i8, ptr %49, i32 1072
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %51 = ashr i32 %50, 24
  %add.i202 = add nuw nsw i32 %and13.i, %and.i
  %div289.i = lshr i32 %add.i202, 1
  %add36.i = add nsw i32 %div289.i, %47
  %add37.i = add nsw i32 %add36.i, %51
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr42.i = getelementptr i8, ptr %53, i32 82048
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %55 = and i32 %54, -2162688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr52.i = getelementptr i8, ptr %57, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %55) #6, !srcloc !145
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr56.i = getelementptr i8, ptr %59, i32 82064
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %61 = and i32 %60, -1057030144
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %add37.masked.i = and i32 %add37.i, 65535
  %conv70.i = or i32 %62, %add37.masked.i
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv70.i) #6
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr72.i = getelementptr i8, ptr %65, i32 82064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %63) #6, !srcloc !145
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10050, i32 noundef 2) #6
  %66 = or i32 %55, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr81.i = getelementptr i8, ptr %68, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %66) #6, !srcloc !145
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr86.i = getelementptr i8, ptr %70, i32 200736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr92.i = getelementptr i8, ptr %72, i32 82052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 65536) #6, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr101.i = getelementptr i8, ptr %75, i32 82052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 196608) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr106.i = getelementptr i8, ptr %77, i32 82072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 0) #6, !srcloc !145
  %78 = or i32 %55, 136314880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr115.i = getelementptr i8, ptr %80, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i, i32 %78) #6, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #6
  %82 = or i32 %55, 404750336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr124.i = getelementptr i8, ptr %84, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %82) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr129.i = getelementptr i8, ptr %86, i32 82084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129.i, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr134.i = getelementptr i8, ptr %88, i32 82076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134.i, i32 17825792) #6, !srcloc !145
  %89 = or i32 %55, -1742733312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr143.i = getelementptr i8, ptr %91, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143.i, i32 %89) #6, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 1073740) #6
  %93 = or i32 %55, -1742667776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr152.i = getelementptr i8, ptr %95, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152.i, i32 %93) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr161.i = getelementptr i8, ptr %97, i32 82052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161.i, i32 16973824) #6, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 4
  %add.ptr170.i = getelementptr i8, ptr %100, i32 82052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170.i, i32 50528256) #6, !srcloc !145
  %101 = and i32 %54, 1197342720
  %102 = or i32 %101, 950009856
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base, align 4
  %add.ptr188.i = getelementptr i8, ptr %104, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188.i, i32 %102) #6, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748) #6
  %106 = or i32 %101, 2023751680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr197.i = getelementptr i8, ptr %108, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197.i, i32 %106) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  %add.ptr202.i = getelementptr i8, ptr %110, i32 82076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202.i, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base, align 4
  %add.ptr207.i = getelementptr i8, ptr %112, i32 82056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.i, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  %add.ptr212.i = getelementptr i8, ptr %114, i32 82068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212.i, i32 0) #6, !srcloc !145
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base, align 4
  %add.ptr216.i = getelementptr i8, ptr %116, i32 82064
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr216.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  %118 = and i32 %117, -8454144
  %119 = or i32 %118, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %120 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base, align 4
  %add.ptr229.i = getelementptr i8, ptr %121, i32 82064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229.i, i32 %119) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 4
  %add.ptr80 = getelementptr i8, ptr %123, i32 196640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 29425664) #6, !srcloc !145
  %call84 = tail call i64 @ktime_get() #6
  %add.i203 = add i64 %call84, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 997) #6
  %124 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base, align 4
  %add.ptr103230 = getelementptr i8, ptr %125, i32 196640
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103230) #6, !srcloc !136
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  %and107231 = and i32 %127, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107231)
  %tobool108.not232 = icmp eq i32 %and107231, 0
  br i1 %tobool108.not232, label %if.end75.land.lhs.true112_crit_edge, label %if.end75.for.end131_crit_edge

if.end75.for.end131_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end131

if.end75.land.lhs.true112_crit_edge:              ; preds = %if.end75
  br label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.then127.land.lhs.true112_crit_edge, %if.end75.land.lhs.true112_crit_edge
  %call113 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call113, i64 %add.i203)
  %cmp3.i205 = icmp sgt i64 %call113, %add.i203
  br i1 %cmp3.i205, label %if.then117, label %if.then127

if.then117:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base, align 4
  %add.ptr121 = getelementptr i8, ptr %129, i32 196640
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #6, !srcloc !136
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  br label %for.end131

if.then127:                                       ; preds = %land.lhs.true112
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %132 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base, align 4
  %add.ptr103 = getelementptr i8, ptr %133, i32 196640
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #6, !srcloc !136
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  %and107 = and i32 %135, 16
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.then127.land.lhs.true112_crit_edge, label %if.then127.for.end131_crit_edge

if.then127.for.end131_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end131

if.then127.land.lhs.true112_crit_edge:            ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true112

for.end131:                                       ; preds = %if.then127.for.end131_crit_edge, %if.then117, %if.end75.for.end131_crit_edge
  %val.1 = phi i32 [ %131, %if.then117 ], [ %127, %if.end75.for.end131_crit_edge ], [ %135, %if.then127.for.end131_crit_edge ]
  %and133 = and i32 %val.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body139, label %power_on_finish.thread

do.body139:                                       ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %136 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base, align 4
  %add.ptr143 = getelementptr i8, ptr %137, i32 196640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 79757312) #6, !srcloc !145
  br label %power_on_finish

power_on_finish.thread:                           ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %mode, align 1
  %140 = or i8 %139, 4
  store i8 %140, ptr %mode, align 1
  br label %unlock_ret

power_on_finish:                                  ; preds = %do.body139, %for.end.power_on_finish_crit_edge
  %.str.47.sink = phi ptr [ @.str.47, %do.body139 ], [ @.str.44, %for.end.power_on_finish_crit_edge ]
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull %.str.47.sink) #9
  %143 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %143)
  %.pr = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp154 = icmp eq i8 %.pr, 0
  br i1 %cmp154, label %if.then156, label %power_on_finish.unlock_ret_crit_edge

power_on_finish.unlock_ret_crit_edge:             ; preds = %power_on_finish
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.then156:                                       ; preds = %power_on_finish
  call void @__sanitizer_cov_trace_pc() #8
  %tcphy_rst.i208 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 8
  %144 = ptrtoint ptr %tcphy_rst.i208 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tcphy_rst.i208, align 4
  %call.i209 = tail call i32 @reset_control_assert(ptr noundef %145) #6
  %uphy_rst.i210 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 6
  %146 = ptrtoint ptr %uphy_rst.i210 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %uphy_rst.i210, align 4
  %call1.i211 = tail call i32 @reset_control_assert(ptr noundef %147) #6
  %pipe_rst.i212 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 7
  %148 = ptrtoint ptr %pipe_rst.i212 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pipe_rst.i212, align 4
  %call2.i213 = tail call i32 @reset_control_assert(ptr noundef %149) #6
  %clk_core.i214 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 4
  %150 = ptrtoint ptr %clk_core.i214 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %clk_core.i214, align 4
  tail call void @clk_disable(ptr noundef %151) #6
  tail call void @clk_unprepare(ptr noundef %151) #6
  %clk_ref.i215 = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 5
  %152 = ptrtoint ptr %clk_ref.i215 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %clk_ref.i215, align 4
  tail call void @clk_disable(ptr noundef %153) #6
  tail call void @clk_unprepare(ptr noundef %153) #6
  br label %unlock_ret

unlock_ret:                                       ; preds = %if.then156, %power_on_finish.unlock_ret_crit_edge, %power_on_finish.thread, %if.end25.unlock_ret_crit_edge, %if.end3.unlock_ret_crit_edge, %if.end.unlock_ret_crit_edge, %entry.unlock_ret_crit_edge
  %ret.2 = phi i32 [ 0, %if.end3.unlock_ret_crit_edge ], [ %call23, %if.end25.unlock_ret_crit_edge ], [ -110, %if.then156 ], [ -110, %power_on_finish.unlock_ret_crit_edge ], [ %call1, %entry.unlock_ret_crit_edge ], [ -19, %if.end.unlock_ret_crit_edge ], [ 0, %power_on_finish.thread ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %mode = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  %4 = and i8 %3, -5
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %mode, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 196640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 79757312) #6, !srcloc !145
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp7 = icmp eq i8 %9, 0
  br i1 %cmp7, label %if.then9, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tcphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %tcphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcphy_rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %11) #6
  %uphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %uphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uphy_rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %13) #6
  %pipe_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %pipe_rst.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_rst.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %15) #6
  %clk_core.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_core.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %clk_ref.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_ref.i, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %unlock

unlock:                                           ; preds = %if.then9, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcphy_get_mode(ptr nocapture noundef %tcphy) unnamed_addr #2 align 64 {
entry:
  %property = alloca %union.extcon_property_value, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extcon = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 2
  %0 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extcon, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property) #6
  %2 = ptrtoint ptr %property to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %property, align 4, !annotation !173
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @extcon_get_state(ptr noundef nonnull %1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %call2 = tail call i32 @extcon_get_state(ptr noundef nonnull %1, i32 noundef 44) #6
  br i1 %tobool1.not, label %if.else, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else.if.end18_crit_edge, label %if.then8

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8:                                         ; preds = %if.else
  %call9 = call i32 @extcon_get_property(ptr noundef nonnull %1, i32 noundef 44, i32 noundef 2, ptr noundef nonnull %property) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %tcphy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcphy, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49) #9
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %property, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool13.not, i32 4, i32 6
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.else.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %id.0 = phi i32 [ 2, %if.else.if.end18_crit_edge ], [ 1, %if.end.if.end18_crit_edge ], [ 44, %if.end12 ]
  %mode.0 = phi i32 [ 2, %if.else.if.end18_crit_edge ], [ 1, %if.end.if.end18_crit_edge ], [ %spec.select, %if.end12 ]
  %call19 = call i32 @extcon_get_property(ptr noundef nonnull %1, i32 noundef %id.0, i32 noundef 1, ptr noundef nonnull %property) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %tcphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcphy, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %property, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27 = icmp ne i32 %10, 0
  %flip = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 11
  %frombool29 = zext i1 %tobool27 to i8
  %11 = ptrtoint ptr %flip to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool29, ptr %flip, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end24 ], [ %mode.0, %if.end26 ], [ %call9, %do.end ], [ 2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcphy_phy_init(ptr noundef %tcphy, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_cfgs = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 9
  %0 = ptrtoint ptr %port_cfgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_cfgs, align 4
  %clk_core = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 4
  %2 = ptrtoint ptr %clk_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_core, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %4 = ptrtoint ptr %tcphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcphy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.54) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_ref = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 5
  %6 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ref, align 4
  %call.i143 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i144 = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i144, label %if.end.i147, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

if.end.i147:                                      ; preds = %if.end
  %call1.i145 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i145)
  %tobool2.not.i146 = icmp eq i32 %call1.i145, 0
  br i1 %tobool2.not.i146, label %if.end8, label %if.then3.i148

if.then3.i148:                                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i148, %if.end.do.end6_crit_edge
  %retval.0.i149.ph = phi i32 [ %call1.i145, %if.then3.i148 ], [ %call.i143, %if.end.do.end6_crit_edge ]
  %8 = ptrtoint ptr %tcphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcphy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.57) #9
  br label %err_clk_core

if.end8:                                          ; preds = %if.end.i147
  %tcphy_rst = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 8
  %10 = ptrtoint ptr %tcphy_rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcphy_rst, align 4
  %call9 = tail call i32 @reset_control_deassert(ptr noundef %11) #6
  %typec_conn_dir = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %1, i32 0, i32 1
  %flip = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 11
  %12 = ptrtoint ptr %flip to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flip, align 4, !range !174
  %write_enable.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %write_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %write_enable.i, align 4
  %shl.i = shl nuw i32 1, %15
  %16 = zext i8 %13 to i32
  %enable_bit.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_bit.i, align 4
  %shl1.i = shl nuw i32 %16, %18
  %grf_regs.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 3
  %19 = ptrtoint ptr %grf_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %grf_regs.i, align 4
  %21 = ptrtoint ptr %typec_conn_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %typec_conn_dir, align 4
  %or.i = or i32 %shl1.i, %shl.i
  %call.i151 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %or.i) #6
  %base.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 1
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 82048
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !136
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  %27 = ptrtoint ptr %flip to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flip, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i152 = icmp eq i8 %28, 0
  %and.i = and i32 %26, 61439
  %conv3.i = or i32 %26, 4096
  %tx_ana_ctrl_reg_1.0.i = select i1 %tobool.not.i152, i32 %conv3.i, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @arm_heavy_mb() #6
  %conv6.i = and i32 %tx_ana_ctrl_reg_1.0.i, 65535
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #6
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %31, i32 82048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %29) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %33, i32 204800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 805830656) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %35, i32 66504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -1879048192) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %37, i32 66696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 1611202560) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %39, i32 66700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 805306368) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr6.1.i = getelementptr i8, ptr %41, i32 68552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1.i, i32 -1879048192) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr14.1.i = getelementptr i8, ptr %43, i32 68744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.1.i, i32 1611202560) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr22.1.i = getelementptr i8, ptr %45, i32 68748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.1.i, i32 805306368) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr6.2.i = getelementptr i8, ptr %47, i32 70600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.2.i, i32 -1879048192) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr14.2.i = getelementptr i8, ptr %49, i32 70792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.2.i, i32 1611202560) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr22.2.i = getelementptr i8, ptr %51, i32 70796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.2.i, i32 805306368) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr6.3.i = getelementptr i8, ptr %53, i32 72648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.3.i, i32 -1879048192) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr14.3.i = getelementptr i8, ptr %55, i32 72840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.3.i, i32 1611202560) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr22.3.i = getelementptr i8, ptr %57, i32 72844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.3.i, i32 805306368) #6, !srcloc !145
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %59, i32 1920
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %61 = and i32 %60, -855638017
  %62 = or i32 %61, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %64, i32 1920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %62) #6, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %mode)
  %cmp = icmp eq i8 %mode, 4
  br i1 %cmp, label %if.then13, label %if.end8.do.body.i_crit_edge

if.end8.do.body.i_crit_edge:                      ; preds = %if.end8
  br label %do.body.i

if.then13:                                        ; preds = %if.end8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %66, i32 196644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 86245376) #6, !srcloc !145
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %if.then13
  %i.011.i = phi i32 [ 0, %if.then13 ], [ %inc.i, %do.body1.i.do.body1.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr [19 x %struct.phy_reg], ptr @dp_pll_cfg, i32 0, i32 %i.011.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i, align 4
  %conv.i157 = zext i16 %68 to i32
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv.i157) #6
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %addr.i = getelementptr [19 x %struct.phy_reg], ptr @dp_pll_cfg, i32 0, i32 %i.011.i, i32 1
  %72 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %addr.i, align 4
  %add.ptr6.i158 = getelementptr i8, ptr %71, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i158, i32 %69) #6, !srcloc !145
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %for.body.preheader, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

for.body.preheader:                               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tcphy_dp_cfg_lane(ptr noundef %tcphy, i32 noundef 0)
  tail call fastcc void @tcphy_dp_cfg_lane(ptr noundef %tcphy, i32 noundef 1)
  tail call fastcc void @tcphy_dp_cfg_lane(ptr noundef %tcphy, i32 noundef 2)
  tail call fastcc void @tcphy_dp_cfg_lane(ptr noundef %tcphy, i32 noundef 3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %75, i32 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -649003008) #6, !srcloc !145
  br label %do.body30

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end8.do.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i164, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end8.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %arrayidx.i160 = getelementptr [14 x %struct.phy_reg], ptr @usb3_pll_cfg, i32 0, i32 %i.05.i
  %76 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.i160, align 4
  %conv.i161 = zext i16 %77 to i32
  %78 = tail call i32 @llvm.bswap.i32(i32 %conv.i161) #6
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %addr.i162 = getelementptr [14 x %struct.phy_reg], ptr @usb3_pll_cfg, i32 0, i32 %i.05.i, i32 1
  %81 = ptrtoint ptr %addr.i162 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %80, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %78) #6, !srcloc !145
  %inc.i164 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i165 = icmp eq i32 %inc.i164, 14
  br i1 %exitcond.not.i165, label %tcphy_cfg_usb3_pll.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

tcphy_cfg_usb3_pll.exit:                          ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr.i167 = getelementptr i8, ptr %84, i32 196644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 86245376) #6, !srcloc !145
  br label %do.body1.i175

do.body1.i175:                                    ; preds = %do.body1.i175.do.body1.i175_crit_edge, %tcphy_cfg_usb3_pll.exit
  %i.011.i168 = phi i32 [ 0, %tcphy_cfg_usb3_pll.exit ], [ %inc.i173, %do.body1.i175.do.body1.i175_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void @arm_heavy_mb() #6
  %arrayidx.i169 = getelementptr [19 x %struct.phy_reg], ptr @dp_pll_cfg, i32 0, i32 %i.011.i168
  %85 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i169, align 4
  %conv.i170 = zext i16 %86 to i32
  %87 = tail call i32 @llvm.bswap.i32(i32 %conv.i170) #6
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %addr.i171 = getelementptr [19 x %struct.phy_reg], ptr @dp_pll_cfg, i32 0, i32 %i.011.i168, i32 1
  %90 = ptrtoint ptr %addr.i171 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i171, align 4
  %add.ptr6.i172 = getelementptr i8, ptr %89, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i172, i32 %87) #6, !srcloc !145
  %inc.i173 = add nuw nsw i32 %i.011.i168, 1
  %exitcond.not.i174 = icmp eq i32 %inc.i173, 19
  br i1 %exitcond.not.i174, label %tcphy_cfg_dp_pll.exit176, label %do.body1.i175.do.body1.i175_crit_edge

do.body1.i175.do.body1.i175_crit_edge:            ; preds = %do.body1.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i175

tcphy_cfg_dp_pll.exit176:                         ; preds = %do.body1.i175
  %92 = ptrtoint ptr %flip to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flip, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool20.not = icmp eq i8 %93, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %tcphy_cfg_dp_pll.exit176
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i178 = getelementptr i8, ptr %95, i32 72704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 -1720254464) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %add.ptr8.i179 = getelementptr i8, ptr %97, i32 72708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i179, i32 -1737031680) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %99, i32 72712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 -1739587584) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr22.i180 = getelementptr i8, ptr %101, i32 72716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i180, i32 -1739587584) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %103, i32 72000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %105, i32 72608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 -1090519040) #6, !srcloc !145
  br label %do.body24

if.else22:                                        ; preds = %tcphy_cfg_dp_pll.exit176
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i182 = getelementptr i8, ptr %95, i32 66560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 -1720254464) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr8.i183 = getelementptr i8, ptr %107, i32 66564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i183, i32 -1737031680) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i, align 4
  %add.ptr15.i184 = getelementptr i8, ptr %109, i32 66568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i184, i32 -1739587584) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr22.i185 = getelementptr i8, ptr %111, i32 66572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i185, i32 -1739587584) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %add.ptr29.i186 = getelementptr i8, ptr %113, i32 65856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i186, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call void @arm_heavy_mb() #6
  %114 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i, align 4
  %add.ptr36.i187 = getelementptr i8, ptr %115, i32 66464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i187, i32 -1090519040) #6, !srcloc !145
  br label %do.body24

do.body24:                                        ; preds = %if.else22, %if.then21
  %.sink201 = phi i32 [ 2, %if.then21 ], [ 1, %if.else22 ]
  %.sink200 = phi i32 [ 0, %if.then21 ], [ 2, %if.else22 ]
  %.sink = phi i32 [ 1, %if.then21 ], [ 3, %if.else22 ]
  tail call fastcc void @tcphy_rx_usb3_cfg_lane(ptr noundef %tcphy, i32 noundef %.sink201)
  tail call fastcc void @tcphy_dp_cfg_lane(ptr noundef %tcphy, i32 noundef %.sink200)
  tail call fastcc void @tcphy_dp_cfg_lane(ptr noundef %tcphy, i32 noundef %.sink)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i, align 4
  %add.ptr28 = getelementptr i8, ptr %117, i32 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 5308416) #6, !srcloc !145
  br label %do.body30

do.body30:                                        ; preds = %do.body24, %for.body.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  %118 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i, align 4
  %add.ptr34 = getelementptr i8, ptr %119, i32 196640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 79757312) #6, !srcloc !145
  %uphy_rst = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 6
  %120 = ptrtoint ptr %uphy_rst to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %uphy_rst, align 4
  %call35 = tail call i32 @reset_control_deassert(ptr noundef %121) #6
  %call36 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call36, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 777) #6
  %122 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i, align 4
  %add.ptr53197 = getelementptr i8, ptr %123, i32 204800
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53197) #6, !srcloc !136
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  %and198 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool56.not199 = icmp eq i32 %and198, 0
  br i1 %tobool56.not199, label %do.body30.land.lhs.true_crit_edge, label %do.body30.for.end76_crit_edge

do.body30.for.end76_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end76

do.body30.land.lhs.true_crit_edge:                ; preds = %do.body30
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then74.land.lhs.true_crit_edge, %do.body30.land.lhs.true_crit_edge
  %call60 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call60, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call60, %add.i
  br i1 %cmp3.i, label %if.then64, label %if.then74

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i, align 4
  %add.ptr68 = getelementptr i8, ptr %127, i32 204800
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #6, !srcloc !136
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  br label %for.end76

if.then74:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i, align 4
  %add.ptr53 = getelementptr i8, ptr %131, i32 204800
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #6, !srcloc !136
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  %and = and i32 %133, 1
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.then74.land.lhs.true_crit_edge, label %if.then74.for.end76_crit_edge

if.then74.for.end76_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end76

if.then74.land.lhs.true_crit_edge:                ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end76:                                        ; preds = %if.then74.for.end76_crit_edge, %if.then64, %do.body30.for.end76_crit_edge
  %val.0 = phi i32 [ %129, %if.then64 ], [ %125, %do.body30.for.end76_crit_edge ], [ %133, %if.then74.for.end76_crit_edge ]
  %and78 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.end85, label %if.end87

do.end85:                                         ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %tcphy to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tcphy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.60) #9
  %136 = ptrtoint ptr %uphy_rst to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %uphy_rst, align 4
  %call90 = tail call i32 @reset_control_assert(ptr noundef %137) #6
  %138 = ptrtoint ptr %tcphy_rst to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tcphy_rst, align 4
  %call92 = tail call i32 @reset_control_assert(ptr noundef %139) #6
  %140 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %clk_ref, align 4
  tail call void @clk_disable(ptr noundef %141) #6
  tail call void @clk_unprepare(ptr noundef %141) #6
  br label %err_clk_core

if.end87:                                         ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #8
  %pipe_rst = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 7
  %142 = ptrtoint ptr %pipe_rst to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pipe_rst, align 4
  %call88 = tail call i32 @reset_control_deassert(ptr noundef %143) #6
  br label %cleanup

err_clk_core:                                     ; preds = %do.end85, %do.end6
  %ret.0 = phi i32 [ %retval.0.i149.ph, %do.end6 ], [ -110, %do.end85 ]
  %144 = ptrtoint ptr %clk_core to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %clk_core, align 4
  tail call void @clk_disable(ptr noundef %145) #6
  tail call void @clk_unprepare(ptr noundef %145) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk_core, %if.end87, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %err_clk_core ], [ 0, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_property(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcphy_dp_cfg_lane(ptr noundef readonly %tcphy, i32 noundef %lane) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %shl = shl i32 %lane, 11
  %shl1 = or i32 %shl, 65540
  %add.ptr = getelementptr i8, ptr %1, i32 %shl1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -54657024) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %shl8 = or i32 %shl, 66560
  %add.ptr9 = getelementptr i8, ptr %3, i32 %shl8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 -1721303040) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %shl16 = or i32 %shl, 66564
  %add.ptr17 = getelementptr i8, ptr %5, i32 %shl16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -1738080256) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %shl24 = or i32 %shl, 66568
  %add.ptr25 = getelementptr i8, ptr %7, i32 %shl24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -1744830464) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %shl32 = or i32 %shl, 66572
  %add.ptr33 = getelementptr i8, ptr %9, i32 %shl32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1744830464) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %shl40 = or i32 %shl, 65856
  %add.ptr41 = getelementptr i8, ptr %11, i32 %shl40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %shl48 = or i32 %shl, 65860
  %add.ptr49 = getelementptr i8, ptr %13, i32 %shl48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %shl56 = or i32 %shl, 65864
  %add.ptr57 = getelementptr i8, ptr %15, i32 %shl56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %shl64 = or i32 %shl, 65868
  %add.ptr65 = getelementptr i8, ptr %17, i32 %shl64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %shl72 = or i32 %shl, 65872
  %add.ptr73 = getelementptr i8, ptr %19, i32 %shl72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %shl80 = or i32 %shl, 65876
  %add.ptr81 = getelementptr i8, ptr %21, i32 %shl80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %shl88 = or i32 %shl, 65880
  %add.ptr89 = getelementptr i8, ptr %23, i32 %shl88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %shl96 = or i32 %shl, 65884
  %add.ptr97 = getelementptr i8, ptr %25, i32 %shl96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %shl104 = or i32 %shl, 65848
  %add.ptr105 = getelementptr i8, ptr %27, i32 %shl104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %shl112 = or i32 %shl, 65844
  %add.ptr113 = getelementptr i8, ptr %29, i32 %shl112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %shl120 = or i32 %shl, 65840
  %add.ptr121 = getelementptr i8, ptr %31, i32 %shl120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %shl128 = or i32 %shl, 65852
  %add.ptr129 = getelementptr i8, ptr %33, i32 %shl128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %shl136 = or i32 %shl, 65820
  %add.ptr137 = getelementptr i8, ptr %35, i32 %shl136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 671154176) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %shl144 = or i32 %shl, 67460
  %add.ptr145 = getelementptr i8, ptr %37, i32 %shl144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 262144) #6, !srcloc !145
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %or148 = or i32 %shl, 66432
  %add.ptr150 = getelementptr i8, ptr %39, i32 %or148
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  %41 = and i32 %40, -7405568
  %42 = or i32 %41, 6291456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr163 = getelementptr i8, ptr %44, i32 %or148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %42) #6, !srcloc !145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcphy_rx_usb3_cfg_lane(ptr nocapture noundef readonly %tcphy, i32 noundef %lane) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.rockchip_typec_phy, ptr %tcphy, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %shl = shl i32 %lane, 11
  %shl1 = or i32 %shl, 131072
  %add.ptr = getelementptr i8, ptr %1, i32 %shl1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -39452672) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %shl7 = or i32 %shl, 131076
  %add.ptr8 = getelementptr i8, ptr %3, i32 %shl7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -39452672) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %shl14 = or i32 %shl, 131080
  %add.ptr15 = getelementptr i8, ptr %5, i32 %shl14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 279183360) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %shl21 = or i32 %shl, 131084
  %add.ptr22 = getelementptr i8, ptr %7, i32 %shl21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 270794752) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %shl28 = or i32 %shl, 131096
  %add.ptr29 = getelementptr i8, ptr %9, i32 %shl28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 -14483456) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %shl35 = or i32 %shl, 131648
  %add.ptr36 = getelementptr i8, ptr %11, i32 %shl35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 318767104) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %shl42 = or i32 %shl, 132844
  %add.ptr43 = getelementptr i8, ptr %13, i32 %shl42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -419233792) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %shl49 = or i32 %shl, 132976
  %add.ptr50 = getelementptr i8, ptr %15, i32 %shl49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 68157440) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %shl56 = or i32 %shl, 131100
  %add.ptr57 = getelementptr i8, ptr %17, i32 %shl56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 270532608) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %or62 = or i32 %shl, 66464
  %add.ptr64 = getelementptr i8, ptr %19, i32 %or62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 -83886080) #6, !srcloc !145
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb3_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port_cfgs = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_cfgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_cfgs, align 4
  %pipe_status = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !173
  %lock = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call1 = tail call fastcc i32 @tcphy_get_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.unlock_ret_crit_edge, label %if.end

entry.unlock_ret_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %port_cfgs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_cfgs, align 4
  %usb3tousb2_en.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 2
  %write_enable.i.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %write_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_enable.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %enable_bit.i.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %enable_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_bit.i.i, align 4
  %shl1.i.i = shl nuw i32 1, %10
  %grf_regs.i.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %grf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grf_regs.i.i, align 4
  %13 = ptrtoint ptr %usb3tousb2_en.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb3tousb2_en.i, align 4
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %call.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %14, i32 noundef %or.i.i) #6
  %usb3_host_disable.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 5
  %write_enable.i1.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %write_enable.i1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %write_enable.i1.i, align 4
  %shl.i2.i = shl nuw i32 1, %16
  %enable_bit.i4.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %enable_bit.i4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_bit.i4.i, align 4
  %shl1.i5.i = shl nuw i32 1, %18
  %19 = ptrtoint ptr %grf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %grf_regs.i.i, align 4
  %21 = ptrtoint ptr %usb3_host_disable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usb3_host_disable.i, align 4
  %or.i7.i = or i32 %shl1.i5.i, %shl.i2.i
  %call.i8.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %or.i7.i) #6
  %usb3_host_port.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 6
  %write_enable.i9.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %6, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %write_enable.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %write_enable.i9.i, align 4
  %shl.i10.i = shl nuw i32 1, %24
  %25 = ptrtoint ptr %grf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %grf_regs.i.i, align 4
  %27 = ptrtoint ptr %usb3_host_port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usb3_host_port.i, align 4
  %call.i16.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %28, i32 noundef %shl.i10.i) #6
  br label %unlock_ret

if.end4:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mode, align 1
  %conv = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv)
  %cmp5 = icmp eq i32 %call1, %conv
  br i1 %cmp5, label %if.end4.unlock_ret_crit_edge, label %if.end8

if.end4.unlock_ret_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp11 = icmp eq i8 %30, 0
  br i1 %cmp11, label %if.then13, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then13:                                        ; preds = %if.end8
  %conv14 = trunc i32 %call1 to i8
  %call15 = tail call fastcc i32 @tcphy_phy_init(ptr noundef %1, i8 noundef zeroext %conv14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %if.then13.unlock_ret_crit_edge

if.then13.unlock_ret_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %grf_regs = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 3
  %enable_bit = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %if.end19
  %timeout.076 = phi i32 [ 0, %if.end19 ], [ %inc, %if.end31.for.body_crit_edge ]
  %31 = ptrtoint ptr %grf_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %grf_regs, align 4
  %33 = ptrtoint ptr %pipe_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pipe_status, align 4
  %call22 = call i32 @regmap_read(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %val) #6
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %37 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %enable_bit, align 4
  %shl = shl nuw i32 1, %38
  %and23 = and i32 %shl, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end31

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode, align 1
  %41 = trunc i32 %and to i8
  %conv29 = or i8 %40, %41
  store i8 %conv29, ptr %mode, align 1
  %42 = ptrtoint ptr %port_cfgs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port_cfgs, align 4
  %usb3tousb2_en.i60 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %43, i32 0, i32 2
  %write_enable.i.i61 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %43, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %write_enable.i.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %write_enable.i.i61, align 4
  %shl.i.i62 = shl nuw i32 1, %45
  %46 = ptrtoint ptr %grf_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %grf_regs, align 4
  %48 = ptrtoint ptr %usb3tousb2_en.i60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %usb3tousb2_en.i60, align 4
  %call.i.i65 = call i32 @regmap_write(ptr noundef %47, i32 noundef %49, i32 noundef %shl.i.i62) #6
  %usb3_host_disable.i66 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %43, i32 0, i32 5
  %write_enable.i1.i67 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %43, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %write_enable.i1.i67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %write_enable.i1.i67, align 4
  %shl.i2.i68 = shl nuw i32 1, %51
  %52 = ptrtoint ptr %grf_regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %grf_regs, align 4
  %54 = ptrtoint ptr %usb3_host_disable.i66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usb3_host_disable.i66, align 4
  %call.i8.i70 = call i32 @regmap_write(ptr noundef %53, i32 noundef %55, i32 noundef %shl.i2.i68) #6
  %usb3_host_port.i71 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %43, i32 0, i32 6
  %write_enable.i9.i72 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %43, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %write_enable.i9.i72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %write_enable.i9.i72, align 4
  %shl.i10.i73 = shl nuw i32 1, %57
  %enable_bit.i12.i74 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %43, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %enable_bit.i12.i74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %enable_bit.i12.i74, align 4
  %shl1.i13.i = shl nuw i32 1, %59
  %60 = ptrtoint ptr %grf_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %grf_regs, align 4
  %62 = ptrtoint ptr %usb3_host_port.i71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usb3_host_port.i71, align 4
  %or.i15.i = or i32 %shl1.i13.i, %shl.i10.i73
  %call.i16.i75 = call i32 @regmap_write(ptr noundef %61, i32 noundef %63, i32 noundef %or.i15.i) #6
  br label %unlock_ret

if.end31:                                         ; preds = %for.body
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %inc = add nuw nsw i32 %timeout.076, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end31
  %64 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp34 = icmp eq i8 %65, 0
  br i1 %cmp34, label %if.then36, label %for.end.unlock_ret_crit_edge

for.end.unlock_ret_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ret

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %tcphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 8
  %66 = ptrtoint ptr %tcphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tcphy_rst.i, align 4
  %call.i = call i32 @reset_control_assert(ptr noundef %67) #6
  %uphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %uphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %uphy_rst.i, align 4
  %call1.i = call i32 @reset_control_assert(ptr noundef %69) #6
  %pipe_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 7
  %70 = ptrtoint ptr %pipe_rst.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pipe_rst.i, align 4
  %call2.i = call i32 @reset_control_assert(ptr noundef %71) #6
  %clk_core.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk_core.i, align 4
  call void @clk_disable(ptr noundef %73) #6
  call void @clk_unprepare(ptr noundef %73) #6
  %clk_ref.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk_ref.i, align 4
  call void @clk_disable(ptr noundef %75) #6
  call void @clk_unprepare(ptr noundef %75) #6
  br label %unlock_ret

unlock_ret:                                       ; preds = %if.then36, %for.end.unlock_ret_crit_edge, %if.then25, %if.then13.unlock_ret_crit_edge, %if.end4.unlock_ret_crit_edge, %if.then2, %entry.unlock_ret_crit_edge
  %ret.1 = phi i32 [ 0, %if.end4.unlock_ret_crit_edge ], [ %call15, %if.then13.unlock_ret_crit_edge ], [ 0, %if.then25 ], [ 0, %if.then2 ], [ %call1, %entry.unlock_ret_crit_edge ], [ -110, %if.then36 ], [ -110, %for.end.unlock_ret_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb3_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %port_cfgs.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_cfgs.i, align 4
  %usb3tousb2_en.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 2
  %write_enable.i.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %write_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_enable.i.i, align 4
  %shl.i.i = shl nuw i32 1, %5
  %grf_regs.i.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %grf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf_regs.i.i, align 4
  %8 = ptrtoint ptr %usb3tousb2_en.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb3tousb2_en.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %9, i32 noundef %shl.i.i) #6
  %usb3_host_disable.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 5
  %write_enable.i1.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %write_enable.i1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %write_enable.i1.i, align 4
  %shl.i2.i = shl nuw i32 1, %11
  %12 = ptrtoint ptr %grf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %grf_regs.i.i, align 4
  %14 = ptrtoint ptr %usb3_host_disable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb3_host_disable.i, align 4
  %call.i8.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %15, i32 noundef %shl.i2.i) #6
  %usb3_host_port.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 6
  %write_enable.i9.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %write_enable.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %write_enable.i9.i, align 4
  %shl.i10.i = shl nuw i32 1, %17
  %enable_bit.i12.i = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, ptr %3, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %enable_bit.i12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_bit.i12.i, align 4
  %shl1.i13.i = shl nuw i32 1, %19
  %20 = ptrtoint ptr %grf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grf_regs.i.i, align 4
  %22 = ptrtoint ptr %usb3_host_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb3_host_port.i, align 4
  %or.i15.i = or i32 %shl1.i13.i, %shl.i10.i
  %call.i16.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef %or.i15.i) #6
  %mode = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp = icmp eq i8 %25, 0
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  %26 = and i8 %25, -4
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp8 = icmp eq i8 %26, 0
  br i1 %cmp8, label %if.then10, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tcphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %tcphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tcphy_rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %29) #6
  %uphy_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %uphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uphy_rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %31) #6
  %pipe_rst.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %pipe_rst.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pipe_rst.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %33) #6
  %clk_core.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_core.i, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  tail call void @clk_unprepare(ptr noundef %35) #6
  %clk_ref.i = getelementptr inbounds %struct.rockchip_typec_phy, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_ref.i, align 4
  tail call void @clk_disable(ptr noundef %37) #6
  tail call void @clk_unprepare(ptr noundef %37) #6
  br label %unlock

unlock:                                           ; preds = %if.then10, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_phy_rockchip_typec__289_1226_rockchip_typec_phy_driver_init6, !1, !"__initcall__kmod_phy_rockchip_typec__289_1226_rockchip_typec_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1226, i32 1}
!2 = !{ptr @__exitcall_rockchip_typec_phy_driver_exit, !1, !"__exitcall_rockchip_typec_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1228, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1229, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1230, i32 1}
!9 = !{ptr @__UNIQUE_ID_file293, !10, !"__UNIQUE_ID_file293", i1 false, i1 false}
!10 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1231, i32 1}
!11 = !{ptr @__UNIQUE_ID_license294, !10, !"__UNIQUE_ID_license294", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1221, i32 11}
!14 = !{ptr @rockchip_typec_phy_driver, !15, !"rockchip_typec_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1217, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1117, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rockchip_typec_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rockchip_typec_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1139, i32 3}
!26 = !{ptr @rockchip_typec_phy_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rockchip_typec_phy_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @rockchip_typec_phy_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1150, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1160, i32 5}
!33 = !{ptr @rockchip_typec_phy_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rockchip_typec_phy_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1170, i32 33}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1173, i32 38}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1180, i32 4}
!41 = !{ptr @rockchip_typec_phy_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rockchip_typec_phy_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1192, i32 3}
!45 = !{ptr @rockchip_typec_phy_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rockchip_typec_phy_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1045, i32 10}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1047, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tcphy_parse_dt._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tcphy_parse_dt._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1051, i32 38}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1053, i32 3}
!58 = !{ptr @tcphy_parse_dt._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tcphy_parse_dt._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1057, i32 37}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1059, i32 3}
!64 = !{ptr @tcphy_parse_dt._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tcphy_parse_dt._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1063, i32 48}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1065, i32 3}
!70 = !{ptr @tcphy_parse_dt._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tcphy_parse_dt._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1069, i32 48}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1071, i32 3}
!76 = !{ptr @tcphy_parse_dt._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tcphy_parse_dt._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1075, i32 49}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1077, i32 3}
!82 = !{ptr @tcphy_parse_dt._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tcphy_parse_dt._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @rockchip_dp_phy_ops, !85, !"rockchip_dp_phy_ops", i1 false, i1 false}
!85 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1035, i32 29}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 987, i32 3}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rockchip_dp_phy_power_on._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @rockchip_dp_phy_power_on._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1000, i32 3}
!93 = !{ptr @rockchip_dp_phy_power_on._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rockchip_dp_phy_power_on._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 834, i32 4}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @tcphy_get_mode._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @tcphy_get_mode._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 845, i32 3}
!102 = !{ptr @tcphy_get_mode._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tcphy_get_mode._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 730, i32 3}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @tcphy_phy_init._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @tcphy_phy_init._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 736, i32 3}
!111 = !{ptr @tcphy_phy_init._entry.56, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @tcphy_phy_init._entry_ptr.58, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 779, i32 3}
!115 = !{ptr @tcphy_phy_init._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @tcphy_phy_init._entry_ptr.61, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @dp_pll_cfg, !118, !"dp_pll_cfg", i1 false, i1 false}
!118 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 411, i32 23}
!119 = !{ptr @usb3_pll_cfg, !120, !"usb3_pll_cfg", i1 false, i1 false}
!120 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 394, i32 23}
!121 = !{ptr @rockchip_usb3_phy_ops, !122, !"rockchip_usb3_phy_ops", i1 false, i1 false}
!122 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 939, i32 29}
!123 = !{ptr @rockchip_typec_phy_dt_ids, !124, !"rockchip_typec_phy_dt_ids", i1 false, i1 false}
!124 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 1207, i32 34}
!125 = !{ptr @rk3399_usb3phy_port_cfgs, !126, !"rk3399_usb3phy_port_cfgs", i1 false, i1 false}
!126 = !{!"../drivers/phy/rockchip/phy-rockchip-typec.c", i32 433, i32 47}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i64 5031849}
!137 = !{i64 2155380856}
!138 = !{i64 2155381382}
!139 = !{i64 2155343228}
!140 = !{i64 2155344554}
!141 = !{i64 2155345885}
!142 = !{i64 2155346494}
!143 = !{i64 2155347108}
!144 = !{i64 2155347444}
!145 = !{i64 5031431}
!146 = !{i64 2155348211}
!147 = !{i64 2155348458}
!148 = !{i64 2155348979}
!149 = !{i64 2155349442}
!150 = !{i64 2155349955}
!151 = !{i64 2155351052}
!152 = !{i64 2155351515}
!153 = !{i64 2155352028}
!154 = !{i64 2155353125}
!155 = !{i64 2155353588}
!156 = !{i64 2155354008}
!157 = !{i64 2155354536}
!158 = !{i64 2155355633}
!159 = !{i64 2155356194}
!160 = !{i64 2155357291}
!161 = !{i64 2155358100}
!162 = !{i64 2155359197}
!163 = !{i64 2155359660}
!164 = !{i64 2155360075}
!165 = !{i64 2155360490}
!166 = !{i64 2155361209}
!167 = !{i64 2155361531}
!168 = !{i64 2155383306}
!169 = !{i64 2155385207}
!170 = !{i64 2155385733}
!171 = !{i64 2155385985}
!172 = !{i64 2155388308}
!173 = !{!"auto-init"}
!174 = !{i8 0, i8 2}
!175 = !{i64 2155342051}
!176 = !{i64 2155342471}
!177 = !{i64 2155317934}
!178 = !{i64 2155318398}
!179 = !{i64 2155318877}
!180 = !{i64 2155319358}
!181 = !{i64 2155320098}
!182 = !{i64 2155320346}
!183 = !{i64 2155321921}
!184 = !{i64 2155322956}
!185 = !{i64 2155365489}
!186 = !{i64 2155321171}
!187 = !{i64 2155323970}
!188 = !{i64 2155324465}
!189 = !{i64 2155324960}
!190 = !{i64 2155325450}
!191 = !{i64 2155325928}
!192 = !{i64 2155365931}
!193 = !{i64 2155366373}
!194 = !{i64 2155368270}
!195 = !{i64 2155368796}
!196 = !{i64 2155331351}
!197 = !{i64 2155331846}
!198 = !{i64 2155332341}
!199 = !{i64 2155332834}
!200 = !{i64 2155333321}
!201 = !{i64 2155333805}
!202 = !{i64 2155334280}
!203 = !{i64 2155334755}
!204 = !{i64 2155335230}
!205 = !{i64 2155335705}
!206 = !{i64 2155336180}
!207 = !{i64 2155336655}
!208 = !{i64 2155337130}
!209 = !{i64 2155337605}
!210 = !{i64 2155338080}
!211 = !{i64 2155338555}
!212 = !{i64 2155339030}
!213 = !{i64 2155339509}
!214 = !{i64 2155340000}
!215 = !{i64 2155340851}
!216 = !{i64 2155341131}
!217 = !{i64 2155326417}
!218 = !{i64 2155326912}
!219 = !{i64 2155327407}
!220 = !{i64 2155327902}
!221 = !{i64 2155328397}
!222 = !{i64 2155328890}
!223 = !{i64 2155329379}
!224 = !{i64 2155329874}
!225 = !{i64 2155330369}
!226 = !{i64 2155330862}
